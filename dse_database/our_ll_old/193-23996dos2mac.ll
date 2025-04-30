; ModuleID = './code/193-23996dos2mac.c'
source_filename = "./code/193-23996dos2mac.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [12 x i8] c"DOS2MAC.TMP\00", align 1
@szTempFile = global ptr @.str, align 8
@__stdinp = external global ptr, align 8
@__stdoutp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %fpIn = alloca ptr, align 8
  %fpOut = alloca ptr, align 8
  %nChar = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stdinp, align 8
  store ptr %1, ptr %fpIn, align 8
  %2 = load ptr, ptr @__stdoutp, align 8
  store ptr %2, ptr %fpOut, align 8
  br label %if.end14

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %4, ptr noundef @.str.1)
  store ptr %call, ptr %fpIn, align 8
  %5 = load ptr, ptr %fpIn, align 8
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  %6 = load i32, ptr %argc.addr, align 4
  %cmp3 = icmp slt i32 %6, 3
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr @szTempFile, align 8
  %call5 = call ptr @"\01_fopen"(ptr noundef %7, ptr noundef @.str.2)
  store ptr %call5, ptr %fpOut, align 8
  br label %if.end9

if.else6:                                         ; preds = %if.end
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %8, i64 2
  %9 = load ptr, ptr %arrayidx7, align 8
  %call8 = call ptr @"\01_fopen"(ptr noundef %9, ptr noundef @.str.2)
  store ptr %call8, ptr %fpOut, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.then4
  %10 = load ptr, ptr %fpOut, align 8
  %cmp10 = icmp eq ptr %10, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end9
  %11 = load ptr, ptr %fpIn, align 8
  %call12 = call i32 @fclose(ptr noundef %11)
  store i32 1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end20, %if.end14
  %12 = load ptr, ptr %fpIn, align 8
  %call15 = call i32 @fgetc(ptr noundef %12)
  store i32 %call15, ptr %nChar, align 4
  %cmp16 = icmp ne i32 %call15, -1
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load i32, ptr %nChar, align 4
  %cmp17 = icmp ne i32 %13, 10
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %while.body
  %14 = load i32, ptr %nChar, align 4
  %15 = load ptr, ptr %fpOut, align 8
  %call19 = call i32 @fputc(i32 noundef %14, ptr noundef %15)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %while.body
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %16 = load i32, ptr %argc.addr, align 4
  %cmp21 = icmp sgt i32 %16, 1
  br i1 %cmp21, label %if.then22, label %if.end32

if.then22:                                        ; preds = %while.end
  %17 = load ptr, ptr %fpIn, align 8
  %call23 = call i32 @fclose(ptr noundef %17)
  %18 = load ptr, ptr %fpOut, align 8
  %call24 = call i32 @fclose(ptr noundef %18)
  %19 = load i32, ptr %argc.addr, align 4
  %cmp25 = icmp slt i32 %19, 3
  br i1 %cmp25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.then22
  %20 = load ptr, ptr %argv.addr, align 8
  %arrayidx27 = getelementptr inbounds ptr, ptr %20, i64 1
  %21 = load ptr, ptr %arrayidx27, align 8
  %call28 = call i32 @remove(ptr noundef %21)
  %22 = load ptr, ptr @szTempFile, align 8
  %23 = load ptr, ptr %argv.addr, align 8
  %arrayidx29 = getelementptr inbounds ptr, ptr %23, i64 1
  %24 = load ptr, ptr %arrayidx29, align 8
  %call30 = call i32 @rename(ptr noundef %22, ptr noundef %24)
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.then22
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %while.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then11, %if.then2
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare i32 @fgetc(ptr noundef) #1

declare i32 @fputc(i32 noundef, ptr noundef) #1

declare i32 @remove(ptr noundef) #1

declare i32 @rename(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
