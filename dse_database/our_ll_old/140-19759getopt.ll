; ModuleID = './code/140-19759getopt.c'
source_filename = "./code/140-19759getopt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [14 x i8] c"no arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ab:c\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"optind: %d\0A\00", align 1
@optind = external global i32, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"option: a\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"option: b\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"argument of -b: %s\0A\00", align 1
@optarg = external global ptr, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"option: c\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"unknow option: %c\0A\00", align 1
@optopt = external global i32, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %arg = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %1 = load i32, ptr %argc.addr, align 4
  %2 = load ptr, ptr %argv.addr, align 8
  %call1 = call i32 @"\01_getopt"(i32 noundef %1, ptr noundef %2, ptr noundef @.str.1)
  store i32 %call1, ptr %arg, align 4
  %cmp2 = icmp ne i32 %call1, -1
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr @optind, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %3)
  %4 = load i32, ptr %arg, align 4
  switch i32 %4, label %sw.default [
    i32 97, label %sw.bb
    i32 98, label %sw.bb5
    i32 99, label %sw.bb8
  ]

sw.bb:                                            ; preds = %while.body
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %sw.epilog

sw.bb5:                                           ; preds = %while.body
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %5 = load ptr, ptr @optarg, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %5)
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %6 = load i32, ptr @optopt, align 4
  %conv = trunc i32 %6 to i8
  %conv10 = sext i8 %conv to i32
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %conv10)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb5, %sw.bb
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_getopt"(i32 noundef, ptr noundef, ptr noundef) #1

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
