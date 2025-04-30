; ModuleID = 'code/163-6215randomPhoneNumber.c'
source_filename = "code/163-6215randomPhoneNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.header = private unnamed_addr constant [3 x i32] [i32 13, i32 15, i32 18], align 4
@.str = private unnamed_addr constant [15 x i8] c"\E5\A7\93\E5\90\8D,\E6\89\8B\E6\9C\BA\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\22%lld\22,\22%lld\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %billion = alloca i64, align 8
  %max = alloca i64, align 8
  %header = alloca [3 x i32], align 4
  %num = alloca i64, align 8
  %i = alloca i32, align 4
  %a = alloca i64, align 8
  %number = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i64 1000000000, i64* %billion, align 8
  store i64 3000, i64* %max, align 8
  %0 = bitcast [3 x i32]* %header to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.main.header to i8*), i64 12, i1 false)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %num, align 8
  %call1 = call i64 @time(i64* null) #4
  %conv = trunc i64 %call1 to i32
  call void @srandom(i32 %conv) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %2 = load i64, i64* %num, align 8
  %3 = load i64, i64* %max, align 8
  %cmp3 = icmp slt i64 %2, %3
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call i64 @random() #4
  store i64 %call5, i64* %a, align 8
  %4 = load i64, i64* %a, align 8
  %5 = load i64, i64* %billion, align 8
  %cmp6 = icmp sge i64 %4, %5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i64, i64* %billion, align 8
  %7 = load i64, i64* %a, align 8
  %rem = srem i64 %7, %6
  store i64 %rem, i64* %a, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %header, i64 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %conv8 = sext i32 %9 to i64
  %10 = load i64, i64* %billion, align 8
  %mul = mul nsw i64 %conv8, %10
  %11 = load i64, i64* %a, align 8
  %add = add nsw i64 %mul, %11
  store i64 %add, i64* %number, align 8
  %12 = load i64, i64* %number, align 8
  %13 = load i64, i64* %number, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %12, i64 %13)
  %14 = load i64, i64* %num, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %num, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i64 0, i64* %num, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %15 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %15, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @srandom(i32) #3

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local i64 @random() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
