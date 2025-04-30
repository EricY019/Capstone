; ModuleID = './code/223-32251test-ctype.c'
source_filename = "./code/223-32251test-ctype.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"chr#%-4d%2c%6s%6s%6s%6s%6s%6s%6s%6s%6s%6s%6s%4c%4c\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__stderrp = external global ptr, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Successfulle set locale to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [196 x i8] c"Cannot setup locale. Either your libc does not provide\0Alocale support, or your locale data is corrupt, or you have not set\0ALANG or LC_CTYPE environment variable to proper value. Program aborted.\0A\00", align 1
@.str.6 = private unnamed_addr constant [86 x i8] c"char#  char alnum alpha cntrl digit lower graph print punct space upper xdigit lo up\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @flag(i32 noundef %b) #0 {
entry:
  %b.addr = alloca i32, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %b.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str, ptr @.str.1
  ret ptr %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @describe_char(i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %cp = alloca i8, align 1
  %up = alloca i8, align 1
  %lo = alloca i8, align 1
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %conv = trunc i32 %0 to i8
  store i8 %conv, ptr %cp, align 1
  %1 = load i32, ptr %c.addr, align 4
  %call = call i32 @toupper(i32 noundef %1) #4
  %conv1 = trunc i32 %call to i8
  store i8 %conv1, ptr %up, align 1
  %2 = load i32, ptr %c.addr, align 4
  %call2 = call i32 @tolower(i32 noundef %2) #4
  %conv3 = trunc i32 %call2 to i8
  store i8 %conv3, ptr %lo, align 1
  %3 = load i8, ptr %cp, align 1
  %conv4 = zext i8 %3 to i32
  %call5 = call i32 @isprint(i32 noundef %conv4) #4
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 32, ptr %cp, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8, ptr %up, align 1
  %conv6 = zext i8 %4 to i32
  %call7 = call i32 @isprint(i32 noundef %conv6) #4
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end
  store i8 32, ptr %up, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %5 = load i8, ptr %lo, align 1
  %conv11 = zext i8 %5 to i32
  %call12 = call i32 @isprint(i32 noundef %conv11) #4
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end10
  store i8 32, ptr %lo, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10
  %6 = load i32, ptr %c.addr, align 4
  %7 = load i8, ptr %cp, align 1
  %conv16 = zext i8 %7 to i32
  %8 = load i32, ptr %c.addr, align 4
  %call17 = call i32 @isalnum(i32 noundef %8) #4
  %call18 = call ptr @flag(i32 noundef %call17)
  %9 = load i32, ptr %c.addr, align 4
  %call19 = call i32 @isalpha(i32 noundef %9) #4
  %call20 = call ptr @flag(i32 noundef %call19)
  %10 = load i32, ptr %c.addr, align 4
  %call21 = call i32 @iscntrl(i32 noundef %10) #4
  %call22 = call ptr @flag(i32 noundef %call21)
  %11 = load i32, ptr %c.addr, align 4
  %call23 = call i32 @isdigit(i32 noundef %11) #4
  %call24 = call ptr @flag(i32 noundef %call23)
  %12 = load i32, ptr %c.addr, align 4
  %call25 = call i32 @islower(i32 noundef %12) #4
  %call26 = call ptr @flag(i32 noundef %call25)
  %13 = load i32, ptr %c.addr, align 4
  %call27 = call i32 @isgraph(i32 noundef %13) #4
  %call28 = call ptr @flag(i32 noundef %call27)
  %14 = load i32, ptr %c.addr, align 4
  %call29 = call i32 @isprint(i32 noundef %14) #4
  %call30 = call ptr @flag(i32 noundef %call29)
  %15 = load i32, ptr %c.addr, align 4
  %call31 = call i32 @ispunct(i32 noundef %15) #4
  %call32 = call ptr @flag(i32 noundef %call31)
  %16 = load i32, ptr %c.addr, align 4
  %call33 = call i32 @isspace(i32 noundef %16) #4
  %call34 = call ptr @flag(i32 noundef %call33)
  %17 = load i32, ptr %c.addr, align 4
  %call35 = call i32 @isupper(i32 noundef %17) #4
  %call36 = call ptr @flag(i32 noundef %call35)
  %18 = load i32, ptr %c.addr, align 4
  %call37 = call i32 @isxdigit(i32 noundef %18) #4
  %call38 = call ptr @flag(i32 noundef %call37)
  %19 = load i8, ptr %lo, align 1
  %conv39 = zext i8 %19 to i32
  %20 = load i8, ptr %up, align 1
  %conv40 = zext i8 %20 to i32
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %6, i32 noundef %conv16, ptr noundef %call18, ptr noundef %call20, ptr noundef %call22, ptr noundef %call24, ptr noundef %call26, ptr noundef %call28, ptr noundef %call30, ptr noundef %call32, ptr noundef %call34, ptr noundef %call36, ptr noundef %call38, i32 noundef %conv39, i32 noundef %conv40)
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @iscntrl(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isdigit(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @islower(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isgraph(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @ispunct(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isupper(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i16, align 2
  %cur_locale = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @setlocale(i32 noundef 0, ptr noundef @.str.3)
  store ptr %call, ptr %cur_locale, align 8
  %0 = load ptr, ptr %cur_locale, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr %cur_locale, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.4, ptr noundef %2) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.5) #5
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  store i16 0, ptr %c, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i16, ptr %c, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp sle i32 %conv, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16, ptr %c, align 2
  %conv5 = sext i16 %5 to i32
  call void @describe_char(i32 noundef %conv5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i16, ptr %c, align 2
  %inc = add i16 %6, 1
  store i16 %inc, ptr %c, align 2
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.else
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare ptr @setlocale(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind willreturn memory(read) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
