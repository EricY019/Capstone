; ModuleID = 'code/387-27335xbug.c'
source_filename = "code/387-27335xbug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Buffer = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.main.filename = private unnamed_addr constant [7 x i8] c"xbug.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"cannot open file\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LD_LIBRARY_PATH\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/bin/cat\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"cannot run \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitBuffer(%struct._Buffer* %b) #0 {
entry:
  %b.addr = alloca %struct._Buffer*, align 8
  store %struct._Buffer* %b, %struct._Buffer** %b.addr, align 8
  %0 = load %struct._Buffer*, %struct._Buffer** %b.addr, align 8
  %room = getelementptr inbounds %struct._Buffer, %struct._Buffer* %0, i32 0, i32 1
  store i32 10000, i32* %room, align 8
  %1 = load %struct._Buffer*, %struct._Buffer** %b.addr, align 8
  %used = getelementptr inbounds %struct._Buffer, %struct._Buffer* %1, i32 0, i32 2
  store i32 0, i32* %used, align 4
  %call = call noalias align 16 i8* @malloc(i64 10000) #4
  %2 = load %struct._Buffer*, %struct._Buffer** %b.addr, align 8
  %buff = getelementptr inbounds %struct._Buffer, %struct._Buffer* %2, i32 0, i32 0
  store i8* %call, i8** %buff, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AppendToBuffer(%struct._Buffer* %b, i8* %str, i32 %len) #0 {
entry:
  %b.addr = alloca %struct._Buffer*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct._Buffer* %b, %struct._Buffer** %b.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._Buffer*, %struct._Buffer** %b.addr, align 8
  %used = getelementptr inbounds %struct._Buffer, %struct._Buffer* %0, i32 0, i32 2
  %1 = load i32, i32* %used, align 4
  %2 = load i32, i32* %len.addr, align 4
  %add = add nsw i32 %1, %2
  %3 = load %struct._Buffer*, %struct._Buffer** %b.addr, align 8
  %room = getelementptr inbounds %struct._Buffer, %struct._Buffer* %3, i32 0, i32 1
  %4 = load i32, i32* %room, align 8
  %cmp = icmp sgt i32 %add, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._Buffer*, %struct._Buffer** %b.addr, align 8
  %buff = getelementptr inbounds %struct._Buffer, %struct._Buffer* %5, i32 0, i32 0
  %6 = load i8*, i8** %buff, align 8
  %7 = load %struct._Buffer*, %struct._Buffer** %b.addr, align 8
  %room1 = getelementptr inbounds %struct._Buffer, %struct._Buffer* %7, i32 0, i32 1
  %8 = load i32, i32* %room1, align 8
  %mul = mul nsw i32 2, %8
  %conv = sext i32 %mul to i64
  %mul2 = mul i64 %conv, 1
  %call = call align 16 i8* @realloc(i8* %6, i64 %mul2) #4
  %9 = load %struct._Buffer*, %struct._Buffer** %b.addr, align 8
  %buff3 = getelementptr inbounds %struct._Buffer, %struct._Buffer* %9, i32 0, i32 0
  store i8* %call, i8** %buff3, align 8
  %10 = load %struct._Buffer*, %struct._Buffer** %b.addr, align 8
  %room4 = getelementptr inbounds %struct._Buffer, %struct._Buffer* %10, i32 0, i32 1
  %11 = load i32, i32* %room4, align 8
  %mul5 = mul nsw i32 %11, 2
  store i32 %mul5, i32* %room4, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %12 = load %struct._Buffer*, %struct._Buffer** %b.addr, align 8
  %buff6 = getelementptr inbounds %struct._Buffer, %struct._Buffer* %12, i32 0, i32 0
  %13 = load i8*, i8** %buff6, align 8
  %14 = load %struct._Buffer*, %struct._Buffer** %b.addr, align 8
  %used7 = getelementptr inbounds %struct._Buffer, %struct._Buffer* %14, i32 0, i32 2
  %15 = load i32, i32* %used7, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %idx.ext
  %16 = load i8*, i8** %str.addr, align 8
  %17 = load i32, i32* %len.addr, align 4
  %conv8 = sext i32 %17 to i64
  %call9 = call i8* @strncpy(i8* %add.ptr, i8* %16, i64 %conv8) #4
  %18 = load i32, i32* %len.addr, align 4
  %19 = load %struct._Buffer*, %struct._Buffer** %b.addr, align 8
  %used10 = getelementptr inbounds %struct._Buffer, %struct._Buffer* %19, i32 0, i32 2
  %20 = load i32, i32* %used10, align 4
  %add11 = add nsw i32 %20, %18
  store i32 %add11, i32* %used10, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReadFile(%struct._Buffer* %buffer, %struct._IO_FILE* %input) #0 {
entry:
  %buffer.addr = alloca %struct._Buffer*, align 8
  %input.addr = alloca %struct._IO_FILE*, align 8
  %buf = alloca [8193 x i8], align 16
  %bytes = alloca i32, align 4
  store %struct._Buffer* %buffer, %struct._Buffer** %buffer.addr, align 8
  store %struct._IO_FILE* %input, %struct._IO_FILE** %input.addr, align 8
  %0 = load %struct._Buffer*, %struct._Buffer** %buffer.addr, align 8
  %used = getelementptr inbounds %struct._Buffer, %struct._Buffer* %0, i32 0, i32 2
  store i32 0, i32* %used, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call = call i32 @feof(%struct._IO_FILE* %1) #4
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arraydecay = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i64 0, i64 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %input.addr, align 8
  %call1 = call i64 @fread(i8* %arraydecay, i64 1, i64 8192, %struct._IO_FILE* %2)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %bytes, align 4
  %cmp = icmp sgt i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load %struct._Buffer*, %struct._Buffer** %buffer.addr, align 8
  %arraydecay3 = getelementptr inbounds [8193 x i8], [8193 x i8]* %buf, i64 0, i64 0
  %5 = load i32, i32* %bytes, align 4
  call void @AppendToBuffer(%struct._Buffer* %4, i8* %arraydecay3, i32 %5)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %6 = load %struct._Buffer*, %struct._Buffer** %buffer.addr, align 8
  call void @AppendToBuffer(%struct._Buffer* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %filename = alloca [7 x i8], align 1
  %input = alloca %struct._IO_FILE*, align 8
  %buffer = alloca %struct._Buffer, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [7 x i8]* %filename to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.filename, i32 0, i32 0), i64 7, i1 false)
  call void @InitBuffer(%struct._Buffer* %buffer)
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %filename, i64 0, i64 0
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call %struct._IO_FILE* @freopen(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct._IO_FILE* %1)
  %tobool = icmp ne %struct._IO_FILE* %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @unsetenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #4
  %call3 = call %struct._IO_FILE* @popen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %input, align 8
  %tobool4 = icmp ne %struct._IO_FILE* %call3, null
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  call void @ReadFile(%struct._Buffer* %buffer, %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %input, align 8
  %call8 = call i32 @pclose(%struct._IO_FILE* %5)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @unsetenv(i8*) #1

declare dso_local %struct._IO_FILE* @popen(i8*, i8*) #2

declare dso_local i32 @pclose(%struct._IO_FILE*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
