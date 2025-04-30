; ModuleID = 'code/226-31115binary_search.c'
source_filename = "code/226-31115binary_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@array = dso_local global [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Found in %d attempts\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Not Found in %d attempts\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bSearch(i32 %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %arrayLen = alloca i32, align 4
  %count = alloca i32, align 4
  %oldi = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  store i32 10, i32* %arrayLen, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %oldi, align 4
  %0 = load i32, i32* %arrayLen, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end37, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %arrayLen, align 4
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
  %6 = load i32, i32* %oldi, align 4
  %7 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %temp, align 4
  %9 = load i32, i32* %count, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %count, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @array, i64 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32, i32* %val.addr, align 4
  %cmp3 = icmp sgt i32 %11, %12
  br i1 %cmp3, label %if.then4, label %if.else27

if.then4:                                         ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %oldi, align 4
  %cmp5 = icmp sgt i32 %13, %14
  br i1 %cmp5, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.then4
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %oldi, align 4
  %sub = sub nsw i32 %15, %16
  %div7 = sdiv i32 %sub, 2
  %cmp8 = icmp ne i32 %div7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %oldi, align 4
  %sub10 = sub nsw i32 %18, %19
  %div11 = sdiv i32 %sub10, 2
  %sub12 = sub nsw i32 %17, %div11
  store i32 %sub12, i32* %i, align 4
  br label %if.end14

if.else:                                          ; preds = %if.then6
  %20 = load i32, i32* %i, align 4
  %sub13 = sub nsw i32 %20, 1
  store i32 %sub13, i32* %i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  br label %if.end26

if.else15:                                        ; preds = %if.then4
  %21 = load i32, i32* %oldi, align 4
  %22 = load i32, i32* %i, align 4
  %div16 = sdiv i32 %22, 2
  %sub17 = sub nsw i32 %21, %div16
  %cmp18 = icmp ne i32 %sub17, 0
  br i1 %cmp18, label %if.then19, label %if.else23

if.then19:                                        ; preds = %if.else15
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %oldi, align 4
  %25 = load i32, i32* %i, align 4
  %sub20 = sub nsw i32 %24, %25
  %div21 = sdiv i32 %sub20, 2
  %sub22 = sub nsw i32 %23, %div21
  store i32 %sub22, i32* %i, align 4
  br label %if.end25

if.else23:                                        ; preds = %if.else15
  %26 = load i32, i32* %i, align 4
  %sub24 = sub nsw i32 %26, 1
  store i32 %sub24, i32* %i, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then19
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end14
  br label %if.end37

if.else27:                                        ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %27 to i64
  %arrayidx29 = getelementptr inbounds [10 x i32], [10 x i32]* @array, i64 0, i64 %idxprom28
  %28 = load i32, i32* %arrayidx29, align 4
  %29 = load i32, i32* %val.addr, align 4
  %cmp30 = icmp slt i32 %28, %29
  br i1 %cmp30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.else27
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %oldi, align 4
  %32 = load i32, i32* %i, align 4
  %add = add nsw i32 %31, %32
  %div32 = sdiv i32 %add, 2
  %add33 = add nsw i32 %30, %div32
  store i32 %add33, i32* %i, align 4
  br label %if.end36

if.else34:                                        ; preds = %if.else27
  %33 = load i32, i32* %count, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %return

if.end36:                                         ; preds = %if.then31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end26
  %34 = load i32, i32* %temp, align 4
  store i32 %34, i32* %oldi, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then, %land.end
  %35 = load i32, i32* %count, align 4
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %return

return:                                           ; preds = %for.end, %if.else34
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  call void @bSearch(i32 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  call void @bSearch(i32 11)
  call void @bSearch(i32 0)
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
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
!6 = distinct !{!6, !5}
