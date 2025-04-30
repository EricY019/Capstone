; ModuleID = './code/136-11015tst-environ.c'
source_filename = "./code/136-11015tst-environ.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@putenv_val = global [100 x i8] c"FOOBAR=some longer value\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"FOOBAR\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"There should be no `%s' value\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"setenv #1 failed: %m\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"getenv #2 failed\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"setenv #2 failed: %m\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"getenv #3 failed\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"putenv #1 failed: %m\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"some longer value\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"getenv #4 failed (is \22%s\22)\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"a short one\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"getenv #5 failed\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"XYZZY=some other value\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"getenv #6 failed\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"XYZZY\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"some other value\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"getenv #7 failed\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"a new value\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"setenv #3 failed: %m\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"getenv #8 failed\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"FOOBAR=old name new value\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"old name new value\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"getenv #9 failed\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"getenv #10 failed (\22%s\22 found)\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"X=one character test\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"putenv #2 failed: %m\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"one character test\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"getenv #11 failed\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %valp = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %result, align 4
  %call = call i32 @"\01_unsetenv"(ptr noundef @.str)
  %call1 = call ptr @getenv(ptr noundef @.str)
  %cmp = icmp ne ptr %call1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef @.str)
  store i32 1, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call3 = call i32 @"\01_setenv"(ptr noundef @.str, ptr noundef @.str.2, i32 noundef 0)
  %cmp4 = icmp ne i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 1, ptr %result, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %call8 = call ptr @getenv(ptr noundef @.str)
  store ptr %call8, ptr %valp, align 8
  %0 = load ptr, ptr %valp, align 8
  %cmp9 = icmp eq ptr %0, null
  br i1 %cmp9, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %1 = load ptr, ptr %valp, align 8
  %call10 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.2) #3
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %lor.lhs.false, %if.end7
  %call13 = call i32 @puts(ptr noundef @.str.4)
  store i32 1, ptr %result, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %lor.lhs.false
  %call15 = call i32 @"\01_setenv"(ptr noundef @.str, ptr noundef @.str.5, i32 noundef 0)
  %cmp16 = icmp ne i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  store i32 1, ptr %result, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14
  %call20 = call ptr @getenv(ptr noundef @.str)
  store ptr %call20, ptr %valp, align 8
  %2 = load ptr, ptr %valp, align 8
  %cmp21 = icmp eq ptr %2, null
  br i1 %cmp21, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end19
  %3 = load ptr, ptr %valp, align 8
  %call23 = call i32 @strcmp(ptr noundef %3, ptr noundef @.str.2) #3
  %cmp24 = icmp ne i32 %call23, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %lor.lhs.false22, %if.end19
  %call26 = call i32 @puts(ptr noundef @.str.7)
  store i32 1, ptr %result, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %lor.lhs.false22
  %call28 = call i32 @"\01_putenv"(ptr noundef @putenv_val)
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 1, ptr %result, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27
  %call33 = call ptr @getenv(ptr noundef @.str)
  store ptr %call33, ptr %valp, align 8
  %4 = load ptr, ptr %valp, align 8
  %cmp34 = icmp eq ptr %4, null
  br i1 %cmp34, label %if.then38, label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %if.end32
  %5 = load ptr, ptr %valp, align 8
  %call36 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.9) #3
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %lor.lhs.false35, %if.end32
  %6 = load ptr, ptr %valp, align 8
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %6)
  store i32 1, ptr %result, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %lor.lhs.false35
  %call41 = call ptr @__strcpy_chk(ptr noundef getelementptr inbounds ([100 x i8], ptr @putenv_val, i64 0, i64 7), ptr noundef @.str.11, i64 noundef 93) #3
  %call42 = call ptr @getenv(ptr noundef @.str)
  store ptr %call42, ptr %valp, align 8
  %7 = load ptr, ptr %valp, align 8
  %cmp43 = icmp eq ptr %7, null
  br i1 %cmp43, label %if.then47, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %if.end40
  %8 = load ptr, ptr %valp, align 8
  %call45 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str.11) #3
  %cmp46 = icmp ne i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %lor.lhs.false44, %if.end40
  %call48 = call i32 @puts(ptr noundef @.str.12)
  store i32 1, ptr %result, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %lor.lhs.false44
  %call50 = call ptr @__strcpy_chk(ptr noundef @putenv_val, ptr noundef @.str.13, i64 noundef 100) #3
  %call51 = call ptr @getenv(ptr noundef @.str)
  %cmp52 = icmp ne ptr %call51, null
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end49
  %call54 = call i32 @puts(ptr noundef @.str.14)
  store i32 1, ptr %result, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end49
  %call56 = call ptr @getenv(ptr noundef @.str.15)
  store ptr %call56, ptr %valp, align 8
  %9 = load ptr, ptr %valp, align 8
  %cmp57 = icmp eq ptr %9, null
  br i1 %cmp57, label %if.then61, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %if.end55
  %10 = load ptr, ptr %valp, align 8
  %call59 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.16) #3
  %cmp60 = icmp ne i32 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.end63

if.then61:                                        ; preds = %lor.lhs.false58, %if.end55
  %call62 = call i32 @puts(ptr noundef @.str.17)
  store i32 1, ptr %result, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then61, %lor.lhs.false58
  %call64 = call i32 @"\01_setenv"(ptr noundef @.str, ptr noundef @.str.18, i32 noundef 0)
  %cmp65 = icmp ne i32 %call64, 0
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end63
  %call67 = call i32 (ptr, ...) @printf(ptr noundef @.str.19)
  store i32 1, ptr %result, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end63
  %call69 = call ptr @getenv(ptr noundef @.str)
  store ptr %call69, ptr %valp, align 8
  %11 = load ptr, ptr %valp, align 8
  %cmp70 = icmp eq ptr %11, null
  br i1 %cmp70, label %if.then74, label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.end68
  %12 = load ptr, ptr %valp, align 8
  %call72 = call i32 @strcmp(ptr noundef %12, ptr noundef @.str.18) #3
  %cmp73 = icmp ne i32 %call72, 0
  br i1 %cmp73, label %if.then74, label %if.end76

if.then74:                                        ; preds = %lor.lhs.false71, %if.end68
  %call75 = call i32 @puts(ptr noundef @.str.20)
  store i32 1, ptr %result, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then74, %lor.lhs.false71
  %call77 = call ptr @__strcpy_chk(ptr noundef @putenv_val, ptr noundef @.str.21, i64 noundef 100) #3
  %call78 = call ptr @getenv(ptr noundef @.str)
  store ptr %call78, ptr %valp, align 8
  %13 = load ptr, ptr %valp, align 8
  %cmp79 = icmp eq ptr %13, null
  br i1 %cmp79, label %if.then85, label %lor.lhs.false80

lor.lhs.false80:                                  ; preds = %if.end76
  %14 = load ptr, ptr %valp, align 8
  %call81 = call i32 @strcmp(ptr noundef %14, ptr noundef @.str.18) #3
  %cmp82 = icmp ne i32 %call81, 0
  br i1 %cmp82, label %land.lhs.true, label %if.end87

land.lhs.true:                                    ; preds = %lor.lhs.false80
  %15 = load ptr, ptr %valp, align 8
  %call83 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.22) #3
  %cmp84 = icmp ne i32 %call83, 0
  br i1 %cmp84, label %if.then85, label %if.end87

if.then85:                                        ; preds = %land.lhs.true, %if.end76
  %call86 = call i32 @puts(ptr noundef @.str.23)
  store i32 1, ptr %result, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %land.lhs.true, %lor.lhs.false80
  %call88 = call i32 @"\01_putenv"(ptr noundef @.str)
  %call89 = call ptr @getenv(ptr noundef @.str)
  %cmp90 = icmp ne ptr %call89, null
  br i1 %cmp90, label %if.then91, label %if.end94

if.then91:                                        ; preds = %if.end87
  %call92 = call ptr @getenv(ptr noundef @.str)
  %call93 = call i32 (ptr, ...) @printf(ptr noundef @.str.24, ptr noundef %call92)
  store i32 1, ptr %result, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end87
  %call95 = call ptr @__strcpy_chk(ptr noundef @putenv_val, ptr noundef @.str.25, i64 noundef 100) #3
  %call96 = call i32 @"\01_putenv"(ptr noundef @putenv_val)
  %cmp97 = icmp ne i32 %call96, 0
  br i1 %cmp97, label %if.then98, label %if.end100

if.then98:                                        ; preds = %if.end94
  %call99 = call i32 (ptr, ...) @printf(ptr noundef @.str.26)
  store i32 1, ptr %result, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end94
  %call101 = call ptr @getenv(ptr noundef @.str.27)
  store ptr %call101, ptr %valp, align 8
  %16 = load ptr, ptr %valp, align 8
  %cmp102 = icmp eq ptr %16, null
  br i1 %cmp102, label %if.then106, label %lor.lhs.false103

lor.lhs.false103:                                 ; preds = %if.end100
  %17 = load ptr, ptr %valp, align 8
  %call104 = call i32 @strcmp(ptr noundef %17, ptr noundef @.str.28) #3
  %cmp105 = icmp ne i32 %call104, 0
  br i1 %cmp105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %lor.lhs.false103, %if.end100
  %call107 = call i32 @puts(ptr noundef @.str.29)
  store i32 1, ptr %result, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %lor.lhs.false103
  %18 = load i32, ptr %result, align 4
  ret i32 %18
}

declare i32 @"\01_unsetenv"(ptr noundef) #1

declare ptr @getenv(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_setenv"(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare i32 @puts(ptr noundef) #1

declare i32 @"\01_putenv"(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

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
