; ModuleID = './code/334-14082rasa.c'
source_filename = "./code/334-14082rasa.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: lines %d, RaSa %d \0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"total: lines %d, RaSa %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %depth = alloca i32, align 4
  %summaryRasa = alloca i32, align 4
  %totalLines = alloca i32, align 4
  %i = alloca i32, align 4
  %fp = alloca ptr, align 8
  %filename = alloca ptr, align 8
  %rasa = alloca i32, align 4
  %lines = alloca i32, align 4
  %ch = alloca i32, align 4
  %ch1 = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %depth, align 4
  store i32 0, ptr %summaryRasa, align 4
  store i32 0, ptr %totalLines, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  store ptr %4, ptr %filename, align 8
  %5 = load ptr, ptr %filename, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %5, ptr noundef @.str)
  store ptr %call, ptr %fp, align 8
  store i32 0, ptr %rasa, align 4
  store i32 0, ptr %lines, align 4
  %6 = load ptr, ptr %fp, align 8
  %call1 = call i32 @fgetc(ptr noundef %6)
  store i32 %call1, ptr %ch, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %ch, align 4
  %cmp3 = icmp ne i32 %7, -1
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load i32, ptr %ch, align 4
  %conv = trunc i32 %8 to i8
  store i8 %conv, ptr %ch1, align 1
  %9 = load i8, ptr %ch1, align 1
  %conv5 = sext i8 %9 to i32
  switch i32 %conv5, label %sw.epilog [
    i32 59, label %sw.bb
    i32 123, label %sw.bb6
    i32 125, label %sw.bb7
    i32 10, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.body4
  %10 = load i32, ptr %depth, align 4
  %11 = load i32, ptr %rasa, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, ptr %rasa, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %for.body4
  %12 = load i32, ptr %depth, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %depth, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %for.body4
  %13 = load i32, ptr %depth, align 4
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %depth, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body4
  %14 = load i32, ptr %lines, align 4
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, ptr %lines, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body4, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %15 = load ptr, ptr %fp, align 8
  %call10 = call i32 @fgetc(ptr noundef %15)
  store i32 %call10, ptr %ch, align 4
  br label %for.cond2, !llvm.loop !5

for.end:                                          ; preds = %for.cond2
  %16 = load ptr, ptr %fp, align 8
  %call11 = call i32 @fclose(ptr noundef %16)
  %17 = load ptr, ptr %filename, align 8
  %18 = load i32, ptr %lines, align 4
  %19 = load i32, ptr %rasa, align 4
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %17, i32 noundef %18, i32 noundef %19)
  %20 = load i32, ptr %rasa, align 4
  %21 = load i32, ptr %summaryRasa, align 4
  %add13 = add nsw i32 %21, %20
  store i32 %add13, ptr %summaryRasa, align 4
  %22 = load i32, ptr %lines, align 4
  %23 = load i32, ptr %totalLines, align 4
  %add14 = add nsw i32 %23, %22
  store i32 %add14, ptr %totalLines, align 4
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %24, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end17:                                        ; preds = %for.cond
  %25 = load i32, ptr %totalLines, align 4
  %26 = load i32, ptr %summaryRasa, align 4
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %25, i32 noundef %26)
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fgetc(ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

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
!7 = distinct !{!7, !6}
