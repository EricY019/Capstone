; ModuleID = './code/032-10353pointer.c'
source_filename = "./code/032-10353pointer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.A = type { ptr, ptr }
%struct.B = type { i32, ptr }

@.str = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"beautiful!\00", align 1
@__const.getTerm.arrStr = private unnamed_addr constant [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], align 8
@__const.main.amsg = private unnamed_addr constant [19 x i8] c"Array of character\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Pointer to an array of character\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"aku\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"kamu\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"dia\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dan\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"mereka\00", align 1
@__const.main.ss = private unnamed_addr constant [5 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f1(ptr noundef %arr) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  store ptr %arr, ptr %arr.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f2(ptr noundef %arr) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  store ptr %arr, ptr %arr.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @myStrlen(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %p, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %p, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv2 = trunc i64 %sub.ptr.sub to i32
  ret i32 %conv2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @myStrcpy(ptr noundef %s, ptr noundef %t) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %t, ptr %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %t.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %t.addr, align 8
  %1 = load i8, ptr %0, align 1
  %2 = load ptr, ptr %s.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr1, ptr %s.addr, align 8
  store i8 %1, ptr %2, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @myStrcpy1(ptr noundef %s, ptr noundef %t) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %t, ptr %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %t.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %t.addr, align 8
  %1 = load i8, ptr %0, align 1
  %2 = load ptr, ptr %s.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr1, ptr %s.addr, align 8
  store i8 %1, ptr %2, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @myStrcmp(ptr noundef %s, ptr noundef %t) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %t, ptr %t.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load ptr, ptr %t.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  %7 = load ptr, ptr %t.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr6, ptr %t.addr, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %s.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv7 = sext i8 %9 to i32
  %10 = load ptr, ptr %t.addr, align 8
  %11 = load i8, ptr %10, align 1
  %conv8 = sext i8 %11 to i32
  %sub = sub nsw i32 %conv7, %conv8
  store i32 %sub, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @getTerm(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  %arrStr = alloca [3 x ptr], align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrStr, ptr align 8 @__const.getTerm.arrStr, i64 24, i1 false)
  %0 = load i32, ptr %i.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [3 x ptr], ptr %arrStr, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  ret ptr %1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca [10 x i32], align 4
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %amsg = alloca [19 x i8], align 1
  %pmsg = alloca ptr, align 8
  %ss = alloca [5 x ptr], align 8
  %ps = alloca ptr, align 8
  %i15 = alloca i32, align 4
  %A = alloca %struct.A, align 8
  %a = alloca ptr, align 8
  %B = alloca %struct.B, align 8
  %b = alloca ptr, align 8
  %i33 = alloca i32, align 4
  %i54 = alloca i32, align 4
  %s1 = alloca ptr, align 8
  %s2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 4, ptr %x, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %z, i64 0, i64 %idxprom
  store i32 %1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store ptr %x, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %y, align 4
  %6 = load ptr, ptr %p, align 8
  store i32 0, ptr %6, align 4
  %arrayidx1 = getelementptr inbounds [10 x i32], ptr %z, i64 0, i64 0
  store ptr %arrayidx1, ptr %p, align 8
  %arraydecay = getelementptr inbounds [10 x i32], ptr %z, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8
  %7 = load ptr, ptr %p, align 8
  %8 = load i32, ptr %7, align 4
  %inc2 = add nsw i32 %8, 1
  store i32 %inc2, ptr %7, align 4
  %9 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  %arraydecay3 = getelementptr inbounds [10 x i32], ptr %z, i64 0, i64 0
  %add.ptr = getelementptr inbounds i32, ptr %arraydecay3, i64 2
  %10 = load i32, ptr %add.ptr, align 4
  store i32 %10, ptr %y, align 4
  %arrayidx4 = getelementptr inbounds [10 x i32], ptr %z, i64 0, i64 2
  %11 = load i32, ptr %arrayidx4, align 4
  store i32 %11, ptr %y, align 4
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %z, i64 0, i64 2
  call void @f1(ptr noundef %arrayidx5)
  %arrayidx6 = getelementptr inbounds [10 x i32], ptr %z, i64 0, i64 2
  call void @f2(ptr noundef %arrayidx6)
  %arraydecay7 = getelementptr inbounds [10 x i32], ptr %z, i64 0, i64 0
  %add.ptr8 = getelementptr inbounds i32, ptr %arraydecay7, i64 2
  call void @f1(ptr noundef %add.ptr8)
  %arraydecay9 = getelementptr inbounds [10 x i32], ptr %z, i64 0, i64 0
  %add.ptr10 = getelementptr inbounds i32, ptr %arraydecay9, i64 2
  call void @f2(ptr noundef %add.ptr10)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %amsg, ptr align 1 @__const.main.amsg, i64 19, i1 false)
  %arrayidx11 = getelementptr inbounds [19 x i8], ptr %amsg, i64 0, i64 1
  store i8 66, ptr %arrayidx11, align 1
  store ptr @.str.3, ptr %pmsg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ss, ptr align 8 @__const.main.ss, i64 40, i1 false)
  %call = call ptr @malloc(i64 noundef 2) #6
  store ptr %call, ptr %ps, align 8
  %12 = load ptr, ptr %ps, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %12, i64 0
  store ptr @.str.4, ptr %arrayidx12, align 8
  %call13 = call ptr @malloc(i64 noundef 5) #6
  %13 = load ptr, ptr %ps, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %13, i64 1
  store ptr %call13, ptr %arrayidx14, align 8
  store i32 0, ptr %i15, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc22, %for.end
  %14 = load i32, ptr %i15, align 4
  %cmp17 = icmp slt i32 %14, 5
  br i1 %cmp17, label %for.body18, label %for.end24

for.body18:                                       ; preds = %for.cond16
  %15 = load i32, ptr %i15, align 4
  %add = add nsw i32 97, %15
  %conv = trunc i32 %add to i8
  %16 = load ptr, ptr %ps, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %16, i64 1
  %17 = load ptr, ptr %arrayidx19, align 8
  %18 = load i32, ptr %i15, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %17, i64 %idxprom20
  store i8 %conv, ptr %arrayidx21, align 1
  br label %for.inc22

for.inc22:                                        ; preds = %for.body18
  %19 = load i32, ptr %i15, align 4
  %inc23 = add nsw i32 %19, 1
  store i32 %inc23, ptr %i15, align 4
  br label %for.cond16, !llvm.loop !11

for.end24:                                        ; preds = %for.cond16
  %call25 = call ptr @malloc(i64 noundef 16) #6
  store ptr %call25, ptr %a, align 8
  %20 = load ptr, ptr %a, align 8
  %value = getelementptr inbounds %struct.A, ptr %20, i32 0, i32 0
  store ptr @.str.4, ptr %value, align 8
  %call26 = call ptr @malloc(i64 noundef 16) #6
  store ptr %call26, ptr %b, align 8
  %call27 = call ptr @malloc(i64 noundef 32) #6
  %21 = load ptr, ptr %b, align 8
  %child = getelementptr inbounds %struct.B, ptr %21, i32 0, i32 1
  store ptr %call27, ptr %child, align 8
  %call28 = call ptr @malloc(i64 noundef 16) #6
  %22 = load ptr, ptr %b, align 8
  %child29 = getelementptr inbounds %struct.B, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %child29, align 8
  store ptr %call28, ptr %23, align 8
  %call30 = call ptr @malloc(i64 noundef 4) #6
  %24 = load ptr, ptr %b, align 8
  %child31 = getelementptr inbounds %struct.B, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %child31, align 8
  %26 = load ptr, ptr %25, align 8
  %value32 = getelementptr inbounds %struct.A, ptr %26, i32 0, i32 0
  store ptr %call30, ptr %value32, align 8
  store i32 0, ptr %i33, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc43, %for.end24
  %27 = load i32, ptr %i33, align 4
  %cmp35 = icmp slt i32 %27, 4
  br i1 %cmp35, label %for.body37, label %for.end45

for.body37:                                       ; preds = %for.cond34
  %28 = load i32, ptr %i33, align 4
  %add38 = add nsw i32 97, %28
  %conv39 = trunc i32 %add38 to i8
  %29 = load ptr, ptr %b, align 8
  %child40 = getelementptr inbounds %struct.B, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %child40, align 8
  %31 = load ptr, ptr %30, align 8
  %value41 = getelementptr inbounds %struct.A, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %value41, align 8
  %33 = load i32, ptr %i33, align 4
  %idx.ext = sext i32 %33 to i64
  %add.ptr42 = getelementptr inbounds i8, ptr %32, i64 %idx.ext
  store i8 %conv39, ptr %add.ptr42, align 1
  br label %for.inc43

for.inc43:                                        ; preds = %for.body37
  %34 = load i32, ptr %i33, align 4
  %inc44 = add nsw i32 %34, 1
  store i32 %inc44, ptr %i33, align 4
  br label %for.cond34, !llvm.loop !12

for.end45:                                        ; preds = %for.cond34
  %35 = load ptr, ptr %b, align 8
  %child46 = getelementptr inbounds %struct.B, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %child46, align 8
  %37 = load ptr, ptr %36, align 8
  %next = getelementptr inbounds %struct.A, ptr %37, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %call47 = call ptr @malloc(i64 noundef 16) #6
  %38 = load ptr, ptr %b, align 8
  %child48 = getelementptr inbounds %struct.B, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %child48, align 8
  %arrayidx49 = getelementptr inbounds ptr, ptr %39, i64 1
  store ptr %call47, ptr %arrayidx49, align 8
  %call50 = call ptr @malloc(i64 noundef 5) #6
  %40 = load ptr, ptr %b, align 8
  %child51 = getelementptr inbounds %struct.B, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %child51, align 8
  %arrayidx52 = getelementptr inbounds ptr, ptr %41, i64 1
  %42 = load ptr, ptr %arrayidx52, align 8
  %value53 = getelementptr inbounds %struct.A, ptr %42, i32 0, i32 0
  store ptr %call50, ptr %value53, align 8
  store i32 0, ptr %i54, align 4
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc66, %for.end45
  %43 = load i32, ptr %i54, align 4
  %cmp56 = icmp slt i32 %43, 4
  br i1 %cmp56, label %for.body58, label %for.end68

for.body58:                                       ; preds = %for.cond55
  %44 = load i32, ptr %i54, align 4
  %add59 = add nsw i32 102, %44
  %conv60 = trunc i32 %add59 to i8
  %45 = load ptr, ptr %b, align 8
  %child61 = getelementptr inbounds %struct.B, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %child61, align 8
  %arrayidx62 = getelementptr inbounds ptr, ptr %46, i64 1
  %47 = load ptr, ptr %arrayidx62, align 8
  %value63 = getelementptr inbounds %struct.A, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %value63, align 8
  %49 = load i32, ptr %i54, align 4
  %idxprom64 = sext i32 %49 to i64
  %arrayidx65 = getelementptr inbounds i8, ptr %48, i64 %idxprom64
  store i8 %conv60, ptr %arrayidx65, align 1
  br label %for.inc66

for.inc66:                                        ; preds = %for.body58
  %50 = load i32, ptr %i54, align 4
  %inc67 = add nsw i32 %50, 1
  store i32 %inc67, ptr %i54, align 4
  br label %for.cond55, !llvm.loop !13

for.end68:                                        ; preds = %for.cond55
  %51 = load ptr, ptr %b, align 8
  %child69 = getelementptr inbounds %struct.B, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %child69, align 8
  %arrayidx70 = getelementptr inbounds ptr, ptr %52, i64 1
  %53 = load ptr, ptr %arrayidx70, align 8
  %next71 = getelementptr inbounds %struct.A, ptr %53, i32 0, i32 1
  store ptr null, ptr %next71, align 8
  %54 = load ptr, ptr %a, align 8
  call void @free(ptr noundef %54)
  %55 = load ptr, ptr %b, align 8
  call void @free(ptr noundef %55)
  store ptr @.str.4, ptr %s1, align 8
  store ptr null, ptr %s2, align 8
  %56 = load ptr, ptr %s1, align 8
  %call72 = call i64 @strlen(ptr noundef %56) #7
  %mul = mul i64 8, %call72
  %call73 = call ptr @malloc(i64 noundef %mul) #6
  store ptr %call73, ptr %s2, align 8
  %57 = load ptr, ptr %s2, align 8
  %58 = load ptr, ptr %s1, align 8
  %59 = load ptr, ptr %s2, align 8
  %60 = call i64 @llvm.objectsize.i64.p0(ptr %59, i1 false, i1 true, i1 false)
  %call74 = call ptr @__strcpy_chk(ptr noundef %57, ptr noundef %58, i64 noundef %60) #7
  %61 = load ptr, ptr %s2, align 8
  %arrayidx75 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 108, ptr %arrayidx75, align 1
  store ptr @.str.5, ptr %s1, align 8
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare void @free(ptr noundef) #3

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
