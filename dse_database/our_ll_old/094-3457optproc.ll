; ModuleID = './code/094-3457optproc.c'
source_filename = "./code/094-3457optproc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@main.optstring = internal global [5 x i8] c"gW:c\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"-c processed\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"-g processed\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"-W processed\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Unknown options!\0A\00", align 1
@optind = external global i32, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"argv[ %d ] = '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %optch = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %call = call i32 @"\01_getopt"(i32 noundef %0, ptr noundef %1, ptr noundef @main.optstring)
  %conv = trunc i32 %call to i8
  store i8 %conv, ptr %optch, align 1
  %conv1 = sext i8 %conv to i32
  %cmp = icmp ne i32 %conv1, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, ptr %optch, align 1
  %conv3 = sext i8 %2 to i32
  switch i32 %conv3, label %sw.default [
    i32 99, label %sw.bb
    i32 103, label %sw.bb5
    i32 87, label %sw.bb7
  ]

sw.bb:                                            ; preds = %while.body
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %sw.epilog

sw.bb7:                                           ; preds = %while.body
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb5, %sw.bb
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %3 = load i32, ptr @optind, align 4
  %4 = load i32, ptr %argc.addr, align 4
  %cmp10 = icmp slt i32 %3, %4
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr @optind, align 4
  %6 = load ptr, ptr %argv.addr, align 8
  %7 = load i32, ptr @optind, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %5, ptr noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr @optind, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr @optind, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @"\01_getopt"(i32 noundef, ptr noundef, ptr noundef) #1

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
