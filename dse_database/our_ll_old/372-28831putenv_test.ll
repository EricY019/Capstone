; ModuleID = './code/372-28831putenv_test.c'
source_filename = "./code/372-28831putenv_test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [13 x i8] c"foobar=blubb\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"test1: putenv 1 failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"test1: getenv 1 failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"blubb\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"test1: value mismatch\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"test1: putenv 2 failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"test1: getenv 2 failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"success\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @test1() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca ptr, align 8
  %call = call i32 @"\01_putenv"(ptr noundef @.str)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call ptr @getenv(ptr noundef @.str.2)
  store ptr %call2, ptr %s, align 8
  %0 = load ptr, ptr %s, align 8
  %cmp3 = icmp eq ptr %0, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %1 = load ptr, ptr %s, align 8
  %call7 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.4) #3
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %call12 = call i32 @"\01_putenv"(ptr noundef @.str.2)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end11
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end11
  %call17 = call ptr @getenv(ptr noundef @.str.2)
  store ptr %call17, ptr %s, align 8
  %2 = load ptr, ptr %s, align 8
  %cmp18 = icmp ne ptr %2, null
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end16
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then19, %if.then14, %if.then9, %if.then4, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

declare i32 @"\01_putenv"(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare ptr @getenv(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @test1()
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
