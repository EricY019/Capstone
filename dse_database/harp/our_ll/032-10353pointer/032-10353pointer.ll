; ModuleID = 'code/032-10353pointer.c'
source_filename = "code/032-10353pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i8*, %struct.A* }
%struct.B = type { i32, %struct.A** }

@.str = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"beautiful!\00", align 1
@__const.getTerm.arrStr = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0)], align 16
@__const.main.amsg = private unnamed_addr constant [19 x i8] c"Array of character\00", align 16
@.str.3 = private unnamed_addr constant [33 x i8] c"Pointer to an array of character\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"aku\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"kamu\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dia\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dan\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"mereka\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f1(i32* %arr) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  store i32* %arr, i32** %arr.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2(i32* %arr) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  store i32* %arr, i32** %arr.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @myStrlen(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  store i8* %0, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %4 = load i8*, i8** %p, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv2 = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @myStrcpy(i8* %s, i8* %t) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %t.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %t.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %s.addr, align 8
  store i8 %1, i8* %2, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @myStrcpy1(i8* %s, i8* %t) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %t.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %t.addr, align 8
  %1 = load i8, i8* %0, align 1
  %2 = load i8*, i8** %s.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr1, i8** %s.addr, align 8
  store i8 %1, i8* %2, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @myStrcmp(i8* %s, i8* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %t.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %t.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  %7 = load i8*, i8** %t.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr6, i8** %t.addr, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv7 = sext i8 %9 to i32
  %10 = load i8*, i8** %t.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = sext i8 %11 to i32
  %sub = sub nsw i32 %conv7, %conv8
  store i32 %sub, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getTerm(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %arrStr = alloca [3 x i8*], align 16
  store i32 %i, i32* %i.addr, align 4
  %0 = bitcast [3 x i8*]* %arrStr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([3 x i8*]* @__const.getTerm.arrStr to i8*), i64 24, i1 false)
  %1 = load i32, i32* %i.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %arrStr, i64 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  ret i8* %2
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca [10 x i32], align 16
  %p = alloca i32*, align 8
  %i = alloca i32, align 4
  %amsg = alloca [19 x i8], align 16
  %pmsg = alloca i8*, align 8
  %ss = alloca [5 x i8*], align 16
  %ps = alloca i8**, align 8
  %i15 = alloca i32, align 4
  %A = alloca %struct.A, align 8
  %a = alloca %struct.A*, align 8
  %B = alloca %struct.B, align 8
  %b = alloca %struct.B*, align 8
  %i33 = alloca i32, align 4
  %i54 = alloca i32, align 4
  %s1 = alloca i8*, align 8
  %s2 = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 4, i32* %x, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %z, i64 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32* %x, i32** %p, align 8
  %4 = load i32*, i32** %p, align 8
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %y, align 4
  %6 = load i32*, i32** %p, align 8
  store i32 0, i32* %6, align 4
  %arrayidx1 = getelementptr inbounds [10 x i32], [10 x i32]* %z, i64 0, i64 0
  store i32* %arrayidx1, i32** %p, align 8
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %z, i64 0, i64 0
  store i32* %arraydecay, i32** %p, align 8
  %7 = load i32*, i32** %p, align 8
  %8 = load i32, i32* %7, align 4
  %inc2 = add nsw i32 %8, 1
  store i32 %inc2, i32* %7, align 4
  %9 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  %arraydecay3 = getelementptr inbounds [10 x i32], [10 x i32]* %z, i64 0, i64 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay3, i64 2
  %10 = load i32, i32* %add.ptr, align 4
  store i32 %10, i32* %y, align 4
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %z, i64 0, i64 2
  %11 = load i32, i32* %arrayidx4, align 8
  store i32 %11, i32* %y, align 4
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %z, i64 0, i64 2
  call void @f1(i32* %arrayidx5)
  %arrayidx6 = getelementptr inbounds [10 x i32], [10 x i32]* %z, i64 0, i64 2
  call void @f2(i32* %arrayidx6)
  %arraydecay7 = getelementptr inbounds [10 x i32], [10 x i32]* %z, i64 0, i64 0
  %add.ptr8 = getelementptr inbounds i32, i32* %arraydecay7, i64 2
  call void @f1(i32* %add.ptr8)
  %arraydecay9 = getelementptr inbounds [10 x i32], [10 x i32]* %z, i64 0, i64 0
  %add.ptr10 = getelementptr inbounds i32, i32* %arraydecay9, i64 2
  call void @f2(i32* %add.ptr10)
  %12 = bitcast [19 x i8]* %amsg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.main.amsg, i32 0, i32 0), i64 19, i1 false)
  %arrayidx11 = getelementptr inbounds [19 x i8], [19 x i8]* %amsg, i64 0, i64 1
  store i8 66, i8* %arrayidx11, align 1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8** %pmsg, align 8
  %13 = bitcast [5 x i8*]* %ss to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false)
  %14 = bitcast i8* %13 to [5 x i8*]*
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8** %16, align 8
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 3
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i8** %18, align 8
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 4
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8** %19, align 16
  %call = call noalias align 16 i8* @malloc(i64 2) #5
  %20 = bitcast i8* %call to i8**
  store i8** %20, i8*** %ps, align 8
  %21 = load i8**, i8*** %ps, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %21, i64 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %arrayidx12, align 8
  %call13 = call noalias align 16 i8* @malloc(i64 5) #5
  %22 = load i8**, i8*** %ps, align 8
  %arrayidx14 = getelementptr inbounds i8*, i8** %22, i64 1
  store i8* %call13, i8** %arrayidx14, align 8
  store i32 0, i32* %i15, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc22, %for.end
  %23 = load i32, i32* %i15, align 4
  %cmp17 = icmp slt i32 %23, 5
  br i1 %cmp17, label %for.body18, label %for.end24

for.body18:                                       ; preds = %for.cond16
  %24 = load i32, i32* %i15, align 4
  %add = add nsw i32 97, %24
  %conv = trunc i32 %add to i8
  %25 = load i8**, i8*** %ps, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %25, i64 1
  %26 = load i8*, i8** %arrayidx19, align 8
  %27 = load i32, i32* %i15, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %26, i64 %idxprom20
  store i8 %conv, i8* %arrayidx21, align 1
  br label %for.inc22

for.inc22:                                        ; preds = %for.body18
  %28 = load i32, i32* %i15, align 4
  %inc23 = add nsw i32 %28, 1
  store i32 %inc23, i32* %i15, align 4
  br label %for.cond16, !llvm.loop !10

for.end24:                                        ; preds = %for.cond16
  %call25 = call noalias align 16 i8* @malloc(i64 16) #5
  %29 = bitcast i8* %call25 to %struct.A*
  store %struct.A* %29, %struct.A** %a, align 8
  %30 = load %struct.A*, %struct.A** %a, align 8
  %value = getelementptr inbounds %struct.A, %struct.A* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %value, align 8
  %call26 = call noalias align 16 i8* @malloc(i64 16) #5
  %31 = bitcast i8* %call26 to %struct.B*
  store %struct.B* %31, %struct.B** %b, align 8
  %call27 = call noalias align 16 i8* @malloc(i64 32) #5
  %32 = bitcast i8* %call27 to %struct.A**
  %33 = load %struct.B*, %struct.B** %b, align 8
  %child = getelementptr inbounds %struct.B, %struct.B* %33, i32 0, i32 1
  store %struct.A** %32, %struct.A*** %child, align 8
  %call28 = call noalias align 16 i8* @malloc(i64 16) #5
  %34 = bitcast i8* %call28 to %struct.A*
  %35 = load %struct.B*, %struct.B** %b, align 8
  %child29 = getelementptr inbounds %struct.B, %struct.B* %35, i32 0, i32 1
  %36 = load %struct.A**, %struct.A*** %child29, align 8
  store %struct.A* %34, %struct.A** %36, align 8
  %call30 = call noalias align 16 i8* @malloc(i64 4) #5
  %37 = load %struct.B*, %struct.B** %b, align 8
  %child31 = getelementptr inbounds %struct.B, %struct.B* %37, i32 0, i32 1
  %38 = load %struct.A**, %struct.A*** %child31, align 8
  %39 = load %struct.A*, %struct.A** %38, align 8
  %value32 = getelementptr inbounds %struct.A, %struct.A* %39, i32 0, i32 0
  store i8* %call30, i8** %value32, align 8
  store i32 0, i32* %i33, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc43, %for.end24
  %40 = load i32, i32* %i33, align 4
  %cmp35 = icmp slt i32 %40, 4
  br i1 %cmp35, label %for.body37, label %for.end45

for.body37:                                       ; preds = %for.cond34
  %41 = load i32, i32* %i33, align 4
  %add38 = add nsw i32 97, %41
  %conv39 = trunc i32 %add38 to i8
  %42 = load %struct.B*, %struct.B** %b, align 8
  %child40 = getelementptr inbounds %struct.B, %struct.B* %42, i32 0, i32 1
  %43 = load %struct.A**, %struct.A*** %child40, align 8
  %44 = load %struct.A*, %struct.A** %43, align 8
  %value41 = getelementptr inbounds %struct.A, %struct.A* %44, i32 0, i32 0
  %45 = load i8*, i8** %value41, align 8
  %46 = load i32, i32* %i33, align 4
  %idx.ext = sext i32 %46 to i64
  %add.ptr42 = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  store i8 %conv39, i8* %add.ptr42, align 1
  br label %for.inc43

for.inc43:                                        ; preds = %for.body37
  %47 = load i32, i32* %i33, align 4
  %inc44 = add nsw i32 %47, 1
  store i32 %inc44, i32* %i33, align 4
  br label %for.cond34, !llvm.loop !11

for.end45:                                        ; preds = %for.cond34
  %48 = load %struct.B*, %struct.B** %b, align 8
  %child46 = getelementptr inbounds %struct.B, %struct.B* %48, i32 0, i32 1
  %49 = load %struct.A**, %struct.A*** %child46, align 8
  %50 = load %struct.A*, %struct.A** %49, align 8
  %next = getelementptr inbounds %struct.A, %struct.A* %50, i32 0, i32 1
  store %struct.A* null, %struct.A** %next, align 8
  %call47 = call noalias align 16 i8* @malloc(i64 16) #5
  %51 = bitcast i8* %call47 to %struct.A*
  %52 = load %struct.B*, %struct.B** %b, align 8
  %child48 = getelementptr inbounds %struct.B, %struct.B* %52, i32 0, i32 1
  %53 = load %struct.A**, %struct.A*** %child48, align 8
  %arrayidx49 = getelementptr inbounds %struct.A*, %struct.A** %53, i64 1
  store %struct.A* %51, %struct.A** %arrayidx49, align 8
  %call50 = call noalias align 16 i8* @malloc(i64 5) #5
  %54 = load %struct.B*, %struct.B** %b, align 8
  %child51 = getelementptr inbounds %struct.B, %struct.B* %54, i32 0, i32 1
  %55 = load %struct.A**, %struct.A*** %child51, align 8
  %arrayidx52 = getelementptr inbounds %struct.A*, %struct.A** %55, i64 1
  %56 = load %struct.A*, %struct.A** %arrayidx52, align 8
  %value53 = getelementptr inbounds %struct.A, %struct.A* %56, i32 0, i32 0
  store i8* %call50, i8** %value53, align 8
  store i32 0, i32* %i54, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc66, %for.end45
  %57 = load i32, i32* %i54, align 4
  %cmp56 = icmp slt i32 %57, 4
  br i1 %cmp56, label %for.body58, label %for.end68

for.body58:                                       ; preds = %for.cond55
  %58 = load i32, i32* %i54, align 4
  %add59 = add nsw i32 102, %58
  %conv60 = trunc i32 %add59 to i8
  %59 = load %struct.B*, %struct.B** %b, align 8
  %child61 = getelementptr inbounds %struct.B, %struct.B* %59, i32 0, i32 1
  %60 = load %struct.A**, %struct.A*** %child61, align 8
  %arrayidx62 = getelementptr inbounds %struct.A*, %struct.A** %60, i64 1
  %61 = load %struct.A*, %struct.A** %arrayidx62, align 8
  %value63 = getelementptr inbounds %struct.A, %struct.A* %61, i32 0, i32 0
  %62 = load i8*, i8** %value63, align 8
  %63 = load i32, i32* %i54, align 4
  %idxprom64 = sext i32 %63 to i64
  %arrayidx65 = getelementptr inbounds i8, i8* %62, i64 %idxprom64
  store i8 %conv60, i8* %arrayidx65, align 1
  br label %for.inc66

for.inc66:                                        ; preds = %for.body58
  %64 = load i32, i32* %i54, align 4
  %inc67 = add nsw i32 %64, 1
  store i32 %inc67, i32* %i54, align 4
  br label %for.cond55, !llvm.loop !12

for.end68:                                        ; preds = %for.cond55
  %65 = load %struct.B*, %struct.B** %b, align 8
  %child69 = getelementptr inbounds %struct.B, %struct.B* %65, i32 0, i32 1
  %66 = load %struct.A**, %struct.A*** %child69, align 8
  %arrayidx70 = getelementptr inbounds %struct.A*, %struct.A** %66, i64 1
  %67 = load %struct.A*, %struct.A** %arrayidx70, align 8
  %next71 = getelementptr inbounds %struct.A, %struct.A* %67, i32 0, i32 1
  store %struct.A* null, %struct.A** %next71, align 8
  %68 = load %struct.A*, %struct.A** %a, align 8
  %69 = bitcast %struct.A* %68 to i8*
  call void @free(i8* %69) #5
  %70 = load %struct.B*, %struct.B** %b, align 8
  %71 = bitcast %struct.B* %70 to i8*
  call void @free(i8* %71) #5
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %s1, align 8
  store i8* null, i8** %s2, align 8
  %72 = load i8*, i8** %s1, align 8
  %call72 = call i64 @strlen(i8* %72) #6
  %mul = mul i64 8, %call72
  %call73 = call noalias align 16 i8* @malloc(i64 %mul) #5
  store i8* %call73, i8** %s2, align 8
  %73 = load i8*, i8** %s2, align 8
  %74 = load i8*, i8** %s1, align 8
  %call74 = call i8* @strcpy(i8* %73, i8* %74) #5
  %75 = load i8*, i8** %s2, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %75, i64 1
  store i8 108, i8* %arrayidx75, align 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %s1, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
