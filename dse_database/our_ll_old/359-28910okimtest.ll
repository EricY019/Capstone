; ModuleID = './code/359-28910okimtest.c'
source_filename = "./code/359-28910okimtest.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [20 x i8] c"bgaregga_0-test.vgm\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Writing OKIM6295 Sample 0x%X Playback...\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %i = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %fp, align 8
  store i8 -128, ptr %i, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8, ptr %i, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8, ptr %i, align 1
  %conv2 = sext i8 %1 to i32
  %sub = sub nsw i32 %conv2, 128
  %and = and i32 %sub, 255
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %and)
  %2 = load ptr, ptr %fp, align 8
  %call4 = call i32 @fputc(i32 noundef 97, ptr noundef %2)
  %3 = load ptr, ptr %fp, align 8
  %call5 = call i32 @fputc(i32 noundef 255, ptr noundef %3)
  %4 = load ptr, ptr %fp, align 8
  %call6 = call i32 @fputc(i32 noundef 255, ptr noundef %4)
  %5 = load ptr, ptr %fp, align 8
  %call7 = call i32 @fputc(i32 noundef 184, ptr noundef %5)
  %6 = load ptr, ptr %fp, align 8
  %call8 = call i32 @fputc(i32 noundef 0, ptr noundef %6)
  %7 = load ptr, ptr %fp, align 8
  %call9 = call i32 @fputc(i32 noundef 120, ptr noundef %7)
  %8 = load ptr, ptr %fp, align 8
  %call10 = call i32 @fputc(i32 noundef 184, ptr noundef %8)
  %9 = load ptr, ptr %fp, align 8
  %call11 = call i32 @fputc(i32 noundef 0, ptr noundef %9)
  %10 = load i8, ptr %i, align 1
  %conv12 = sext i8 %10 to i32
  %and13 = and i32 %conv12, 255
  %11 = load ptr, ptr %fp, align 8
  %call14 = call i32 @fputc(i32 noundef %and13, ptr noundef %11)
  %12 = load ptr, ptr %fp, align 8
  %call15 = call i32 @fputc(i32 noundef 184, ptr noundef %12)
  %13 = load ptr, ptr %fp, align 8
  %call16 = call i32 @fputc(i32 noundef 0, ptr noundef %13)
  %14 = load ptr, ptr %fp, align 8
  %call17 = call i32 @fputc(i32 noundef 16, ptr noundef %14)
  %15 = load i8, ptr %i, align 1
  %inc = add i8 %15, 1
  store i8 %inc, ptr %i, align 1
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %fp, align 8
  %call18 = call i32 @fputc(i32 noundef 102, ptr noundef %16)
  %17 = load ptr, ptr %fp, align 8
  %call19 = call i32 @fclose(ptr noundef %17)
  ret i32 0
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @fputc(i32 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

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
