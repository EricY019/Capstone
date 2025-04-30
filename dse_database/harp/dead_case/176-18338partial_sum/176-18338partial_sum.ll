; ModuleID = 'code/176-18338partial_sum.c'
source_filename = "code/176-18338partial_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@total_sum = dso_local global i32 0, align 4
@__const.main.num1 = private unnamed_addr constant [2 x i32] [i32 1, i32 4999], align 4
@__const.main.num2 = private unnamed_addr constant [2 x i32] [i32 5000, i32 10000], align 4
@.str = private unnamed_addr constant [35 x i8] c"The main thread continues running\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"total_sum=%d and it should be 50005000\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @partial_sum(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %j = alloca i32, align 4
  %ni = alloca i32, align 4
  %nf = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %j, align 4
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %ni, align 4
  %3 = load i8*, i8** %arg.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 1
  %5 = load i32, i32* %arrayidx1, align 4
  store i32 %5, i32* %nf, align 4
  %6 = load i32, i32* %ni, align 4
  store i32 %6, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %nf, align 4
  %cmp = icmp sle i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* @total_sum, align 4
  %10 = load i32, i32* %j, align 4
  %add = add nsw i32 %9, %10
  store i32 %add, i32* @total_sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(i8* null) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %th1 = alloca i64, align 8
  %th2 = alloca i64, align 8
  %num1 = alloca [2 x i32], align 4
  %num2 = alloca [2 x i32], align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [2 x i32]* %num1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([2 x i32]* @__const.main.num1 to i8*), i64 8, i1 false)
  %1 = bitcast [2 x i32]* %num2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([2 x i32]* @__const.main.num2 to i8*), i64 8, i1 false)
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %num1, i64 0, i64 0
  %2 = bitcast i32* %arraydecay to i8*
  %call = call i32 @pthread_create(i64* %th1, %union.pthread_attr_t* null, i8* (i8*)* @partial_sum, i8* %2) #6
  %arraydecay1 = getelementptr inbounds [2 x i32], [2 x i32]* %num2, i64 0, i64 0
  %3 = bitcast i32* %arraydecay1 to i8*
  %call2 = call i32 @pthread_create(i64* %th2, %union.pthread_attr_t* null, i8* (i8*)* @partial_sum, i8* %3) #6
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %4 = load i64, i64* %th1, align 8
  %call4 = call i32 @pthread_join(i64 %4, i8** null)
  %5 = load i64, i64* %th2, align 8
  %call5 = call i32 @pthread_join(i64 %5, i8** null)
  %6 = load i32, i32* @total_sum, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

declare dso_local i32 @printf(i8*, ...) #4

declare dso_local i32 @pthread_join(i64, i8**) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
