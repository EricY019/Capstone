; ModuleID = 'code/055-33745testrand.c'
source_filename = "code/055-33745testrand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Test FAILED!\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Test succeeded.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%d != %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %j1 = alloca i32, align 4
  %j2 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @rand() #3
  store i32 %call, i32* %i1, align 4
  %call1 = call i32 @rand() #3
  store i32 %call1, i32* %i2, align 4
  call void @srand(i32 1) #3
  %call2 = call i32 @rand() #3
  store i32 %call2, i32* %j1, align 4
  %call3 = call i32 @rand() #3
  store i32 %call3, i32* %j2, align 4
  %0 = load i32, i32* %i1, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %i2, align 4
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %j1, align 4
  %cmp6 = icmp slt i32 %2, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %3 = load i32, i32* %j2, align 4
  %cmp8 = icmp slt i32 %3, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %entry
  %call9 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false7
  %4 = load i32, i32* %j1, align 4
  %5 = load i32, i32* %i1, align 4
  %cmp10 = icmp eq i32 %4, %5
  br i1 %cmp10, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %j2, align 4
  %7 = load i32, i32* %i2, align 4
  %cmp11 = icmp eq i32 %6, %7
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %8 = load i32, i32* %j1, align 4
  %9 = load i32, i32* %i1, align 4
  %cmp14 = icmp ne i32 %8, %9
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.else
  %10 = load i32, i32* %j1, align 4
  %11 = load i32, i32* %i1, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 %11)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.else
  %12 = load i32, i32* %j2, align 4
  %13 = load i32, i32* %i2, align 4
  %cmp18 = icmp ne i32 %12, %13
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end17
  %14 = load i32, i32* %j2, align 4
  %15 = load i32, i32* %i2, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %14, i32 %15)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17
  %call22 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then12
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

declare dso_local i32 @puts(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
