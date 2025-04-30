; ModuleID = './code/089-31870tst-setjmp.c'
source_filename = "./code/089-31870tst-setjmp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@env = internal global [48 x i32] zeroinitializer, align 4
@last_value = internal global i32 -1, align 4
@.str = private unnamed_addr constant [16 x i8] c"Shouldn't have \00", align 1
@__stdoutp = external global ptr, align 8
@lose = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Saved environment.\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Jumped to %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Test FAILED!\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Test succeeded!\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %value = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @setjmp(ptr noundef @env) #4
  store i32 %call, ptr %value, align 4
  %0 = load i32, ptr %value, align 4
  %1 = load i32, ptr @last_value, align 4
  %add = add nsw i32 %1, 1
  %cmp = icmp ne i32 %0, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__stdoutp, align 8
  %call1 = call i32 @"\01_fputs"(ptr noundef @.str, ptr noundef %2)
  store i32 1, ptr @lose, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %value, align 4
  store i32 %3, ptr @last_value, align 4
  %4 = load i32, ptr %value, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %call2 = call i32 @puts(ptr noundef @.str.1)
  call void @jump(i32 noundef 0)
  br label %sw.default

sw.default:                                       ; preds = %if.end, %sw.bb
  %5 = load i32, ptr %value, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %5)
  %6 = load i32, ptr %value, align 4
  %cmp4 = icmp slt i32 %6, 10
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %sw.default
  %7 = load i32, ptr %value, align 4
  %add6 = add nsw i32 %7, 1
  call void @jump(i32 noundef %add6)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %sw.default
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end7
  %8 = load i32, ptr @lose, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end25, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog
  %9 = load i32, ptr %value, align 4
  %cmp8 = icmp eq i32 %9, 10
  br i1 %cmp8, label %if.then9, label %if.end25

if.then9:                                         ; preds = %land.lhs.true
  store i32 -1, ptr @last_value, align 4
  store i32 0, ptr @lose, align 4
  %call10 = call i32 @setjmp(ptr noundef @env) #4
  store i32 %call10, ptr %value, align 4
  %10 = load i32, ptr %value, align 4
  %11 = load i32, ptr @last_value, align 4
  %add11 = add nsw i32 %11, 1
  %cmp12 = icmp ne i32 %10, %add11
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then9
  %12 = load ptr, ptr @__stdoutp, align 8
  %call14 = call i32 @"\01_fputs"(ptr noundef @.str, ptr noundef %12)
  store i32 1, ptr @lose, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then9
  %13 = load i32, ptr %value, align 4
  store i32 %13, ptr @last_value, align 4
  %14 = load i32, ptr %value, align 4
  switch i32 %14, label %sw.default18 [
    i32 0, label %sw.bb16
  ]

sw.bb16:                                          ; preds = %if.end15
  %call17 = call i32 @puts(ptr noundef @.str.1)
  call void @jump(i32 noundef 0)
  br label %sw.default18

sw.default18:                                     ; preds = %if.end15, %sw.bb16
  %15 = load i32, ptr %value, align 4
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %15)
  %16 = load i32, ptr %value, align 4
  %cmp20 = icmp slt i32 %16, 10
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %sw.default18
  %17 = load i32, ptr %value, align 4
  %add22 = add nsw i32 %17, 1
  call void @jump(i32 noundef %add22)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %sw.default18
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %if.end23
  br label %if.end25

if.end25:                                         ; preds = %sw.epilog24, %land.lhs.true, %sw.epilog
  %18 = load i32, ptr @lose, align 4
  %tobool26 = icmp ne i32 %18, 0
  br i1 %tobool26, label %if.end45, label %land.lhs.true27

land.lhs.true27:                                  ; preds = %if.end25
  %19 = load i32, ptr %value, align 4
  %cmp28 = icmp eq i32 %19, 10
  br i1 %cmp28, label %if.then29, label %if.end45

if.then29:                                        ; preds = %land.lhs.true27
  store i32 -1, ptr @last_value, align 4
  store i32 0, ptr @lose, align 4
  %call30 = call i32 @_setjmp(ptr noundef @env) #4
  store i32 %call30, ptr %value, align 4
  %20 = load i32, ptr %value, align 4
  %21 = load i32, ptr @last_value, align 4
  %add31 = add nsw i32 %21, 1
  %cmp32 = icmp ne i32 %20, %add31
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.then29
  %22 = load ptr, ptr @__stdoutp, align 8
  %call34 = call i32 @"\01_fputs"(ptr noundef @.str, ptr noundef %22)
  store i32 1, ptr @lose, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then29
  %23 = load i32, ptr %value, align 4
  store i32 %23, ptr @last_value, align 4
  %24 = load i32, ptr %value, align 4
  switch i32 %24, label %sw.default38 [
    i32 0, label %sw.bb36
  ]

sw.bb36:                                          ; preds = %if.end35
  %call37 = call i32 @puts(ptr noundef @.str.1)
  call void @jump(i32 noundef 0)
  br label %sw.default38

sw.default38:                                     ; preds = %if.end35, %sw.bb36
  %25 = load i32, ptr %value, align 4
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %25)
  %26 = load i32, ptr %value, align 4
  %cmp40 = icmp slt i32 %26, 10
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %sw.default38
  %27 = load i32, ptr %value, align 4
  %add42 = add nsw i32 %27, 1
  call void @jump(i32 noundef %add42)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %sw.default38
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %if.end43
  br label %if.end45

if.end45:                                         ; preds = %sw.epilog44, %land.lhs.true27, %if.end25
  %28 = load i32, ptr @lose, align 4
  %tobool46 = icmp ne i32 %28, 0
  br i1 %tobool46, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end45
  %29 = load i32, ptr %value, align 4
  %cmp47 = icmp ne i32 %29, 10
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %lor.lhs.false, %if.end45
  %call49 = call i32 @puts(ptr noundef @.str.3)
  br label %if.end51

if.else:                                          ; preds = %lor.lhs.false
  %call50 = call i32 @puts(ptr noundef @.str.4)
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then48
  %30 = load i32, ptr @lose, align 4
  %tobool52 = icmp ne i32 %30, 0
  %31 = zext i1 %tobool52 to i64
  %cond = select i1 %tobool52, i32 1, i32 0
  ret i32 %cond
}

; Function Attrs: returns_twice
declare i32 @setjmp(ptr noundef) #1

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #2

declare i32 @puts(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @jump(i32 noundef %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  %0 = load i32, ptr %val.addr, align 4
  call void @longjmp(ptr noundef @env, i32 noundef %0) #5
  unreachable
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: returns_twice
declare i32 @_setjmp(ptr noundef) #1

; Function Attrs: noreturn
declare void @longjmp(ptr noundef, i32 noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { returns_twice "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
