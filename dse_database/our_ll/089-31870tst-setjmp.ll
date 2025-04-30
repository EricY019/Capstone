; ModuleID = 'code/089-31870tst-setjmp.c'
source_filename = "code/089-31870tst-setjmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@env = internal global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16
@last_value = internal global i32 -1, align 4
@.str = private unnamed_addr constant [16 x i8] c"Shouldn't have \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@lose = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Saved environment.\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Jumped to %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Test FAILED!\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Test succeeded!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @env, i64 0, i64 0)) #4
  store i32 %call, i32* %value, align 4
  %0 = load i32, i32* %value, align 4
  %1 = load i32, i32* @last_value, align 4
  %add = add nsw i32 %1, 1
  %cmp = icmp ne i32 %0, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* %2)
  store i32 1, i32* @lose, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %value, align 4
  store i32 %3, i32* @last_value, align 4
  %4 = load i32, i32* %value, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %call2 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  call void @jump(i32 0)
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb
  %5 = load i32, i32* %value, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %6 = load i32, i32* %value, align 4
  %cmp4 = icmp slt i32 %6, 10
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %sw.default
  %7 = load i32, i32* %value, align 4
  %add6 = add nsw i32 %7, 1
  call void @jump(i32 %add6)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end7
  %8 = load i32, i32* @lose, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog
  %9 = load i32, i32* %value, align 4
  %cmp8 = icmp eq i32 %9, 10
  br i1 %cmp8, label %if.then9, label %if.end25

if.then9:                                         ; preds = %land.lhs.true
  store i32 -1, i32* @last_value, align 4
  store i32 0, i32* @lose, align 4
  %call10 = call i32 @setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @env, i64 0, i64 0)) #4
  store i32 %call10, i32* %value, align 4
  %10 = load i32, i32* %value, align 4
  %11 = load i32, i32* @last_value, align 4
  %add11 = add nsw i32 %11, 1
  %cmp12 = icmp ne i32 %10, %add11
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* %12)
  store i32 1, i32* @lose, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then9
  %13 = load i32, i32* %value, align 4
  store i32 %13, i32* @last_value, align 4
  %14 = load i32, i32* %value, align 4
  switch i32 %14, label %sw.default18 [
    i32 0, label %sw.bb16
  ]

sw.bb16:                                          ; preds = %if.end15
  %call17 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  call void @jump(i32 0)
  br label %sw.default18

sw.default18:                                     ; preds = %if.end15, %sw.bb16
  %15 = load i32, i32* %value, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %16 = load i32, i32* %value, align 4
  %cmp20 = icmp slt i32 %16, 10
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %sw.default18
  %17 = load i32, i32* %value, align 4
  %add22 = add nsw i32 %17, 1
  call void @jump(i32 %add22)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %sw.default18
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %if.end23
  br label %if.end25

if.end25:                                         ; preds = %sw.epilog24, %land.lhs.true, %sw.epilog
  %18 = load i32, i32* @lose, align 4
  %tobool26 = icmp ne i32 %18, 0
  br i1 %tobool26, label %if.end45, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end25
  %19 = load i32, i32* %value, align 4
  %cmp28 = icmp eq i32 %19, 10
  br i1 %cmp28, label %if.then29, label %if.end45

if.then29:                                        ; preds = %land.lhs.true27
  store i32 -1, i32* @last_value, align 4
  store i32 0, i32* @lose, align 4
  %call30 = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @env, i64 0, i64 0)) #4
  store i32 %call30, i32* %value, align 4
  %20 = load i32, i32* %value, align 4
  %21 = load i32, i32* @last_value, align 4
  %add31 = add nsw i32 %21, 1
  %cmp32 = icmp ne i32 %20, %add31
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.then29
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call34 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct._IO_FILE* %22)
  store i32 1, i32* @lose, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then29
  %23 = load i32, i32* %value, align 4
  store i32 %23, i32* @last_value, align 4
  %24 = load i32, i32* %value, align 4
  switch i32 %24, label %sw.default38 [
    i32 0, label %sw.bb36
  ]

sw.bb36:                                          ; preds = %if.end35
  %call37 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  call void @jump(i32 0)
  br label %sw.default38

sw.default38:                                     ; preds = %if.end35, %sw.bb36
  %25 = load i32, i32* %value, align 4
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %26 = load i32, i32* %value, align 4
  %cmp40 = icmp slt i32 %26, 10
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %sw.default38
  %27 = load i32, i32* %value, align 4
  %add42 = add nsw i32 %27, 1
  call void @jump(i32 %add42)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %sw.default38
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %if.end43
  br label %if.end45

if.end45:                                         ; preds = %sw.epilog44, %land.lhs.true27, %if.end25
  %28 = load i32, i32* @lose, align 4
  %tobool46 = icmp ne i32 %28, 0
  br i1 %tobool46, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end45
  %29 = load i32, i32* %value, align 4
  %cmp47 = icmp ne i32 %29, 10
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %lor.lhs.false, %if.end45
  %call49 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end51

if.else:                                          ; preds = %lor.lhs.false
  %call50 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then48
  %30 = load i32, i32* @lose, align 4
  %tobool52 = icmp ne i32 %30, 0
  %31 = zext i1 %tobool52 to i64
  %cond = select i1 %tobool52, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind returns_twice
declare dso_local i32 @_setjmp(%struct.__jmp_buf_tag*) #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

declare dso_local i32 @puts(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jump(i32 %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* %val.addr, align 4
  call void @longjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @env, i64 0, i64 0), i32 %0) #5
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind returns_twice
declare dso_local i32 @setjmp(%struct.__jmp_buf_tag*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @longjmp(%struct.__jmp_buf_tag*, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind returns_twice "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind returns_twice }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
