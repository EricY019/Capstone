; ModuleID = './code/292-31553tst-fdopen.c'
source_filename = "./code/292-31553tst-fdopen.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"test failed: fp != NULL\0A\00", align 1
@__stderrp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"foobar and baz\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"test failed: fd != -1\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"test failed: lseek (fd, 5, SEEK_SET) == 5\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"test failed: getc (fp) == 'r'\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"test failed: getc (fp) == ' '\0A\00", align 1
@buffer = global [256 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %name = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %fd = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %fp, align 8
  store i32 0, ptr %retval1, align 4
  %call = call ptr @tmpnam(ptr noundef null)
  store ptr %call, ptr %name, align 8
  %0 = load ptr, ptr %name, align 8
  %call2 = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str)
  store ptr %call2, ptr %fp, align 8
  %1 = load ptr, ptr %fp, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 @"\01_fputs"(ptr noundef @.str.1, ptr noundef %2)
  store i32 1, ptr %retval1, align 4
  br label %the_end

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fp, align 8
  %call4 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %3)
  %4 = load ptr, ptr %fp, align 8
  %call5 = call i32 @fclose(ptr noundef %4)
  store ptr null, ptr %fp, align 8
  %5 = load ptr, ptr %name, align 8
  %call6 = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef %5, i32 noundef 0)
  store i32 %call6, ptr %fd, align 4
  %6 = load i32, ptr %fd, align 4
  %cmp7 = icmp ne i32 %6, -1
  br i1 %cmp7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %7 = load ptr, ptr @__stderrp, align 8
  %call9 = call i32 @"\01_fputs"(ptr noundef @.str.3, ptr noundef %7)
  store i32 1, ptr %retval1, align 4
  br label %the_end

if.end10:                                         ; preds = %if.end
  %8 = load i32, ptr %fd, align 4
  %call11 = call i64 @lseek(i32 noundef %8, i64 noundef 5, i32 noundef 0)
  %cmp12 = icmp eq i64 %call11, 5
  br i1 %cmp12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  %9 = load ptr, ptr @__stderrp, align 8
  %call14 = call i32 @"\01_fputs"(ptr noundef @.str.4, ptr noundef %9)
  store i32 1, ptr %retval1, align 4
  br label %the_end

if.end15:                                         ; preds = %if.end10
  %10 = load i32, ptr %fd, align 4
  %call16 = call ptr @"\01_fdopen"(i32 noundef %10, ptr noundef @.str.5)
  store ptr %call16, ptr %fp, align 8
  %11 = load ptr, ptr %fp, align 8
  %cmp17 = icmp ne ptr %11, null
  br i1 %cmp17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end15
  %12 = load ptr, ptr @__stderrp, align 8
  %call19 = call i32 @"\01_fputs"(ptr noundef @.str.1, ptr noundef %12)
  store i32 1, ptr %retval1, align 4
  br label %the_end

if.end20:                                         ; preds = %if.end15
  %13 = load ptr, ptr %fp, align 8
  %call21 = call i32 @getc(ptr noundef %13)
  %cmp22 = icmp eq i32 %call21, 114
  br i1 %cmp22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %if.end20
  %14 = load ptr, ptr @__stderrp, align 8
  %call24 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %14)
  store i32 1, ptr %retval1, align 4
  br label %the_end

if.end25:                                         ; preds = %if.end20
  %15 = load ptr, ptr %fp, align 8
  %call26 = call i32 @getc(ptr noundef %15)
  %cmp27 = icmp eq i32 %call26, 32
  br i1 %cmp27, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end25
  %16 = load ptr, ptr @__stderrp, align 8
  %call29 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %16)
  store i32 1, ptr %retval1, align 4
  br label %the_end

if.end30:                                         ; preds = %if.end25
  br label %the_end

the_end:                                          ; preds = %if.end30, %if.then28, %if.then23, %if.then18, %if.then13, %if.then8, %if.then
  %17 = load ptr, ptr %fp, align 8
  %cmp31 = icmp ne ptr %17, null
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %the_end
  %18 = load ptr, ptr %fp, align 8
  %call33 = call i32 @fclose(ptr noundef %18)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %the_end
  %19 = load ptr, ptr %name, align 8
  %call35 = call i32 @unlink(ptr noundef %19)
  %20 = load i32, ptr %retval1, align 4
  ret i32 %20
}

declare ptr @tmpnam(ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare i32 @"\01_open"(ptr noundef, i32 noundef, ...) #1

declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #1

declare ptr @"\01_fdopen"(i32 noundef, ptr noundef) #1

declare i32 @getc(ptr noundef) #1

declare i32 @unlink(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
