; ModuleID = 'code/123-28487bbcl.c'
source_filename = "code/123-28487bbcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.node = type { %struct.node*, %struct.node*, i64, [0 x i8] }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [5 x i8] c"\1B[1H\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\1B[0J\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@front = internal global %struct.node* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Cannont allocate memmory\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s\1B[0K\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %buff = alloca i8*, align 8
  %size = alloca i64, align 8
  %len = alloca i64, align 8
  %name = alloca i8*, align 8
  %position = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* null, i8** %buff, align 8
  store i64 0, i64* %size, align 8
  store i32 0, i32* %position, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %sw.default, %if.then11, %if.then, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i64 @getline(i8** %buff, i64* %size, %struct._IO_FILE* %0)
  store i64 %call, i64* %len, align 8
  %cmp = icmp sgt i64 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %buff, align 8
  %call1 = call i8* @strchr(i8* %1, i32 32) #5
  %2 = load i8*, i8** %buff, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 2
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %position, align 4
  %3 = load i32, i32* %position, align 4
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %4 = load i64, i64* %len, align 8
  %5 = load i32, i32* %position, align 4
  %add4 = add nsw i32 %5, 3
  %conv5 = sext i32 %add4 to i64
  %cmp6 = icmp slt i64 %4, %conv5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %while.cond, !llvm.loop !4

if.end:                                           ; preds = %land.lhs.true, %while.body
  %6 = load i8*, i8** %buff, align 8
  %7 = load i32, i32* %position, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv8 = sext i8 %8 to i32
  switch i32 %conv8, label %sw.default [
    i32 33, label %sw.bb
    i32 118, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load i8*, i8** %buff, align 8
  %10 = load i32, i32* %position, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %add.ptr9 = getelementptr inbounds i8, i8* %add.ptr, i64 3
  store i8* %add.ptr9, i8** %name, align 8
  %11 = load i8*, i8** %name, align 8
  %call10 = call i8* @endname(i8* %11, i8 signext 40)
  %tobool = icmp ne i8* %call10, null
  br i1 %tobool, label %if.end12, label %if.then11

if.then11:                                        ; preds = %sw.bb
  br label %while.cond, !llvm.loop !4

if.end12:                                         ; preds = %sw.bb
  %12 = load i8*, i8** %name, align 8
  %call13 = call i32 @delete(i8* %12)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  %13 = load i8*, i8** %buff, align 8
  %14 = load i32, i32* %position, align 4
  %idx.ext15 = sext i32 %14 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %13, i64 %idx.ext15
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr16, i64 2
  store i8* %add.ptr17, i8** %name, align 8
  %15 = load i8*, i8** %name, align 8
  %call18 = call i8* @endname(i8* %15, i8 signext 10)
  %16 = load i8*, i8** %buff, align 8
  %17 = load i32, i32* %position, align 4
  %sub = sub nsw i32 %17, 1
  %idxprom19 = sext i32 %sub to i64
  %arrayidx20 = getelementptr inbounds i8, i8* %16, i64 %idxprom19
  %18 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %18 to i32
  %cmp22 = icmp eq i32 %conv21, 43
  br i1 %cmp22, label %if.then24, label %if.else

if.then24:                                        ; preds = %sw.bb14
  %19 = load i8*, i8** %name, align 8
  %call25 = call i32 @add(i8* %19)
  br label %if.end27

if.else:                                          ; preds = %sw.bb14
  %20 = load i8*, i8** %name, align 8
  %call26 = call i32 @away(i8* %20)
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then24
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %while.cond, !llvm.loop !4

sw.epilog:                                        ; preds = %if.end27, %if.end12
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  call void @print()
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call30 = call i32 @fflush(%struct._IO_FILE* %21)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  call void @clear()
  %22 = load i8*, i8** %buff, align 8
  call void @free(i8* %22) #6
  ret i32 0
}

declare dso_local i64 @getline(i8**, i64*, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @endname(i8* %name, i8 signext %end) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %end.addr = alloca i8, align 1
  %ob = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8 %end, i8* %end.addr, align 1
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8, i8* %end.addr, align 1
  %conv = sext i8 %1 to i32
  %call = call i8* @strchr(i8* %0, i32 %conv) #5
  store i8* %call, i8** %ob, align 8
  %2 = load i8*, i8** %ob, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %ob, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %ob, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %n = alloca %struct.node*, align 8
  %next = alloca %struct.node*, align 8
  %prev = alloca %struct.node*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %struct.node* @find(i8* %0, %struct.node** null)
  store %struct.node* %call, %struct.node** %n, align 8
  %1 = load %struct.node*, %struct.node** %n, align 8
  %tobool = icmp ne %struct.node* %1, null
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load %struct.node*, %struct.node** %n, align 8
  %next1 = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  %3 = load %struct.node*, %struct.node** %next1, align 8
  store %struct.node* %3, %struct.node** %next, align 8
  %4 = load %struct.node*, %struct.node** %n, align 8
  %prev2 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load %struct.node*, %struct.node** %prev2, align 8
  store %struct.node* %5, %struct.node** %prev, align 8
  %6 = load %struct.node*, %struct.node** %next, align 8
  %cmp = icmp ne %struct.node* %6, null
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %7 = load %struct.node*, %struct.node** %prev, align 8
  %8 = load %struct.node*, %struct.node** %next, align 8
  %prev4 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  store %struct.node* %7, %struct.node** %prev4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %9 = load %struct.node*, %struct.node** %prev, align 8
  %cmp5 = icmp eq %struct.node* %9, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %10 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %10, %struct.node** @front, align 8
  br label %if.end8

if.else:                                          ; preds = %if.end
  %11 = load %struct.node*, %struct.node** %next, align 8
  %12 = load %struct.node*, %struct.node** %prev, align 8
  %next7 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 0
  store %struct.node* %11, %struct.node** %next7, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %13 = load %struct.node*, %struct.node** %n, align 8
  %14 = bitcast %struct.node* %13 to i8*
  call void @free(i8* %14) #6
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %entry
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %len = alloca i64, align 8
  %la = alloca %struct.node*, align 8
  %new = alloca %struct.node*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %add = add i64 %call, 1
  store i64 %add, i64* %len, align 8
  store %struct.node* null, %struct.node** %la, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call1 = call %struct.node* @find(i8* %1, %struct.node** %la)
  %tobool = icmp ne %struct.node* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %len, align 8
  %add2 = add i64 24, %2
  %call3 = call noalias align 16 i8* @malloc(i64 %add2) #6
  %3 = bitcast i8* %call3 to %struct.node*
  store %struct.node* %3, %struct.node** %new, align 8
  %4 = load %struct.node*, %struct.node** %new, align 8
  %cmp = icmp eq %struct.node* %4, null
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %5 = load %struct.node*, %struct.node** %new, align 8
  %name6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name6, i64 0, i64 0
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %arraydecay, i8* align 1 %6, i64 %7, i1 false)
  %8 = load %struct.node*, %struct.node** %la, align 8
  %9 = load %struct.node*, %struct.node** %new, align 8
  %prev = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  store %struct.node* %8, %struct.node** %prev, align 8
  %10 = load %struct.node*, %struct.node** %la, align 8
  %cmp7 = icmp ne %struct.node* %10, null
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %11 = load %struct.node*, %struct.node** %la, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  %12 = load %struct.node*, %struct.node** %next, align 8
  %13 = load %struct.node*, %struct.node** %new, align 8
  %next9 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 0
  store %struct.node* %12, %struct.node** %next9, align 8
  %14 = load %struct.node*, %struct.node** %new, align 8
  %15 = load %struct.node*, %struct.node** %la, align 8
  %next10 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  store %struct.node* %14, %struct.node** %next10, align 8
  br label %if.end12

if.else:                                          ; preds = %if.end5
  %16 = load %struct.node*, %struct.node** @front, align 8
  %17 = load %struct.node*, %struct.node** %new, align 8
  %next11 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  store %struct.node* %16, %struct.node** %next11, align 8
  %18 = load %struct.node*, %struct.node** %new, align 8
  store %struct.node* %18, %struct.node** @front, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %19 = load %struct.node*, %struct.node** %new, align 8
  %next13 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  %20 = load %struct.node*, %struct.node** %next13, align 8
  %tobool14 = icmp ne %struct.node* %20, null
  br i1 %tobool14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  %21 = load %struct.node*, %struct.node** %new, align 8
  %22 = load %struct.node*, %struct.node** %new, align 8
  %next16 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 0
  %23 = load %struct.node*, %struct.node** %next16, align 8
  %prev17 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 1
  store %struct.node* %21, %struct.node** %prev17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then4, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @away(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @find(i8* %name, %struct.node** %ret) #0 {
entry:
  %retval = alloca %struct.node*, align 8
  %name.addr = alloca i8*, align 8
  %ret.addr = alloca %struct.node**, align 8
  %n = alloca %struct.node*, align 8
  %comparison = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store %struct.node** %ret, %struct.node*** %ret.addr, align 8
  %0 = load %struct.node*, %struct.node** @front, align 8
  store %struct.node* %0, %struct.node** %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %entry
  %1 = load %struct.node*, %struct.node** %n, align 8
  %tobool = icmp ne %struct.node* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load %struct.node*, %struct.node** %n, align 8
  %name1 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name1, i64 0, i64 0
  %call = call i32 @strcasecmp(i8* %2, i8* %arraydecay) #5
  store i32 %call, i32* %comparison, align 4
  %4 = load %struct.node**, %struct.node*** %ret.addr, align 8
  %tobool2 = icmp ne %struct.node** %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = load i32, i32* %comparison, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.node*, %struct.node** %n, align 8
  %7 = load %struct.node**, %struct.node*** %ret.addr, align 8
  store %struct.node* %6, %struct.node** %7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %8 = load i32, i32* %comparison, align 4
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store %struct.node* null, %struct.node** %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %9 = load i32, i32* %comparison, align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  br label %while.end

if.end8:                                          ; preds = %if.end5
  %10 = load %struct.node*, %struct.node** %n, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  %11 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %11, %struct.node** %n, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then7, %while.cond
  %12 = load %struct.node*, %struct.node** %n, align 8
  store %struct.node* %12, %struct.node** %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then4
  %13 = load %struct.node*, %struct.node** %retval, align 8
  ret %struct.node* %13
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #3

declare dso_local void @perror(i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print() #0 {
entry:
  %n = alloca %struct.node*, align 8
  %0 = load %struct.node*, %struct.node** @front, align 8
  store %struct.node* %0, %struct.node** %n, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.node*, %struct.node** %n, align 8
  %tobool = icmp ne %struct.node* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node*, %struct.node** %n, align 8
  %name = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 3
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %name, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay)
  %3 = load %struct.node*, %struct.node** %n, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 0
  %4 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %4, %struct.node** %n, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear() #0 {
entry:
  %n = alloca %struct.node*, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.node*, %struct.node** @front, align 8
  %tobool = icmp ne %struct.node* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.node*, %struct.node** @front, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 0
  %2 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %2, %struct.node** %n, align 8
  %3 = load %struct.node*, %struct.node** @front, align 8
  %4 = bitcast %struct.node* %3 to i8*
  call void @free(i8* %4) #6
  %5 = load %struct.node*, %struct.node** %n, align 8
  store %struct.node* %5, %struct.node** @front, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

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
