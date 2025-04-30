; ModuleID = 'code/206-3603arg_thread.c'
source_filename = "code/206-3603arg_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.FunctionArgument = type { i32, i8* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"OK!!\0A\00", align 1
@__const.main.func_arg = private unnamed_addr constant %struct.FunctionArgument { i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"pthread_create returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"pthread_join returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @func(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %func_arg = alloca %struct.FunctionArgument*, align 8
  %ii = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  %0 = load i8*, i8** %p.addr, align 8
  %1 = bitcast i8* %0 to %struct.FunctionArgument*
  store %struct.FunctionArgument* %1, %struct.FunctionArgument** %func_arg, align 8
  store i32 0, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %ii, align 4
  %3 = load %struct.FunctionArgument*, %struct.FunctionArgument** %func_arg, align 8
  %count = getelementptr inbounds %struct.FunctionArgument, %struct.FunctionArgument* %3, i32 0, i32 0
  %4 = load i32, i32* %count, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %6)
  %call2 = call i32 @sleep(i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %9 = load %struct.FunctionArgument*, %struct.FunctionArgument** %func_arg, align 8
  %message = getelementptr inbounds %struct.FunctionArgument, %struct.FunctionArgument* %9, i32 0, i32 1
  %10 = load i8*, i8** %message, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  ret i8* null
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %rc = alloca i32, align 4
  %child = alloca i64, align 8
  %func_arg = alloca %struct.FunctionArgument, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %rc, align 4
  %0 = bitcast %struct.FunctionArgument* %func_arg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.FunctionArgument* @__const.main.func_arg to i8*), i64 16, i1 false)
  %1 = bitcast %struct.FunctionArgument* %func_arg to i8*
  %call = call i32 @pthread_create(i64* %child, %union.pthread_attr_t* null, i8* (i8*)* @func, i8* %1) #4
  store i32 %call, i32* %rc, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %3 = load i32, i32* %rc, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  %4 = load i64, i64* %child, align 8
  %call2 = call i32 @pthread_join(i64 %4, i8** null)
  store i32 %call2, i32* %rc, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = load i32, i32* %rc, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %6)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

declare dso_local i32 @pthread_join(i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
