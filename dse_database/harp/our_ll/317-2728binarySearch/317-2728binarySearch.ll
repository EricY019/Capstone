; ModuleID = 'code/317-2728binarySearch.c'
source_filename = "code/317-2728binarySearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arr = dso_local global [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%d Found\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%d Not found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @binarySearch(i32* %ar, i32 %num, i32 %sizeOfArray) #0 {
entry:
  %ar.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %sizeOfArray.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %iOld = alloca i32, align 4
  store i32* %ar, i32** %ar.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %sizeOfArray, i32* %sizeOfArray.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 -1, i32* %iOld, align 4
  %0 = load i32, i32* %sizeOfArray.addr, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end16, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %sizeOfArray.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %cmp1 = icmp sge i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  %6 = load i32, i32* %iOld, align 4
  %7 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %8 = load i32*, i32** %ar.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %11 = load i32, i32* %num.addr, align 4
  %cmp3 = icmp eq i32 %10, %11
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %12 = load i32, i32* %num.addr, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  br label %return

if.else:                                          ; preds = %if.end
  %13 = load i32*, i32** %ar.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 %idxprom6
  %15 = load i32, i32* %arrayidx7, align 4
  %16 = load i32, i32* %num.addr, align 4
  %cmp8 = icmp sgt i32 %15, %16
  br i1 %cmp8, label %if.then9, label %if.else12

if.then9:                                         ; preds = %if.else
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %iOld, align 4
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %i, align 4
  %div10 = sdiv i32 %19, 2
  %sub = sub nsw i32 %18, %div10
  %sub11 = sub nsw i32 %sub, 1
  store i32 %sub11, i32* %i, align 4
  br label %if.end15

if.else12:                                        ; preds = %if.else
  %20 = load i32, i32* %i, align 4
  store i32 %20, i32* %iOld, align 4
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %sizeOfArray.addr, align 4
  %23 = load i32, i32* %i, align 4
  %sub13 = sub nsw i32 %22, %23
  %div14 = sdiv i32 %sub13, 2
  %add = add nsw i32 %21, %div14
  store i32 %add, i32* %i, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else12, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then, %land.end
  %24 = load i32, i32* %num.addr, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  br label %return

return:                                           ; preds = %for.end, %if.then4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @binarySearch(i32* getelementptr inbounds ([10 x i32], [10 x i32]* @arr, i64 0, i64 0), i32 8, i32 10)
  call void @binarySearch(i32* getelementptr inbounds ([10 x i32], [10 x i32]* @arr, i64 0, i64 0), i32 -1, i32 10)
  call void @binarySearch(i32* getelementptr inbounds ([10 x i32], [10 x i32]* @arr, i64 0, i64 0), i32 10, i32 10)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
