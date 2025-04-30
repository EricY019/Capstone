; ModuleID = 'code/159-18697rand7.c'
source_filename = "code/159-18697rand7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"%d came up %d times\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rand5() #0 {
entry:
  %call = call i32 @rand() #4
  %rem = srem i32 %call, 5
  ret i32 %rem
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rand7() #0 {
entry:
  %sum = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i32 @rand5()
  %mul = mul nsw i32 %call, 5
  %call1 = call i32 @rand5()
  %add = add nsw i32 %mul, %call1
  store i32 %add, i32* %sum, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load i32, i32* %sum, align 4
  %cmp = icmp sgt i32 %0, 20
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  %1 = load i32, i32* %sum, align 4
  %rem = srem i32 %1, 7
  ret i32 %rem
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %results = alloca [7 x i32], align 16
  %i = alloca i32, align 4
  %i4 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i64 @time(i64* null) #4
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #4
  %0 = bitcast [7 x i32]* %results to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 28, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand7()
  %idxprom = sext i32 %call2 to i64
  %arrayidx = getelementptr inbounds [7 x i32], [7 x i32]* %results, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %3, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc12, %for.end
  %4 = load i32, i32* %i4, align 4
  %cmp6 = icmp slt i32 %4, 7
  br i1 %cmp6, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond5
  %5 = load i32, i32* %i4, align 4
  %6 = load i32, i32* %i4, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [7 x i32], [7 x i32]* %results, i64 0, i64 %idxprom9
  %7 = load i32, i32* %arrayidx10, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %7)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %8 = load i32, i32* %i4, align 4
  %inc13 = add nsw i32 %8, 1
  store i32 %inc13, i32* %i4, align 4
  br label %for.cond5, !llvm.loop !7

for.end14:                                        ; preds = %for.cond5
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
