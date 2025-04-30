; ModuleID = './code/111-10727lftocr.c'
source_filename = "./code/111-10727lftocr.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"usage: %s [file]\0A\00", align 1
@__stdinp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: unable to open file %s\0A\00", align 1
@__stdoutp = external global ptr, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %fd = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, ptr noundef %3) #3
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr @__stdinp, align 8
  store ptr %5, ptr %fd, align 8
  br label %if.end10

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @"\01_fopen"(ptr noundef %7, ptr noundef @.str.1)
  store ptr %call4, ptr %fd, align 8
  %tobool = icmp ne ptr %call4, null
  br i1 %tobool, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.else
  %8 = load ptr, ptr @__stderrp, align 8
  %9 = load ptr, ptr %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx6, align 8
  %11 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %11, i64 1
  %12 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.2, ptr noundef %10, ptr noundef %12) #3
  store i32 -2, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then2
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.then14, %if.end10
  %13 = load ptr, ptr %fd, align 8
  %call11 = call i32 @fgetc(ptr noundef %13)
  store i32 %call11, ptr %c, align 4
  %cmp12 = icmp ne i32 %call11, -1
  br i1 %cmp12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, ptr %c, align 4
  %cmp13 = icmp eq i32 %14, 13
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %while.body
  br label %while.cond, !llvm.loop !5

if.else15:                                        ; preds = %while.body
  %15 = load i32, ptr %c, align 4
  %cmp16 = icmp eq i32 %15, 10
  br i1 %cmp16, label %if.then17, label %if.else19

if.then17:                                        ; preds = %if.else15
  %16 = load ptr, ptr @__stdoutp, align 8
  %call18 = call i32 @fputc(i32 noundef 13, ptr noundef %16)
  br label %if.end21

if.else19:                                        ; preds = %if.else15
  %17 = load i32, ptr %c, align 4
  %18 = load ptr, ptr @__stdoutp, align 8
  %call20 = call i32 @fputc(i32 noundef %17, ptr noundef %18)
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then5, %if.then
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

declare i32 @fgetc(ptr noundef) #2

declare i32 @fputc(i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
