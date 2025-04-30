; ModuleID = './code/110-28140exemple_getopt.c'
source_filename = "./code/110-28140exemple_getopt.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [7 x i8] c"abc:XY\00", align 1
@opterr = external global i32, align 4
@__stdoutp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Option a\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Option b\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Option c %s\0A\00", align 1
@optarg = external global ptr, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"Option %c\0A\00", align 1
@__stderrp = external global ptr, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"Option %c fausse\0A\00", align 1
@optopt = external global i32, align 4
@optind = external global i32, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"Arguments restants :\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %liste_options = alloca ptr, align 8
  %option = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr @.str, ptr %liste_options, align 8
  store i32 0, ptr @opterr, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %2 = load ptr, ptr %liste_options, align 8
  %call = call i32 @"\01_getopt"(i32 noundef %0, ptr noundef %1, ptr noundef %2)
  store i32 %call, ptr %option, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %option, align 4
  switch i32 %3, label %sw.epilog [
    i32 97, label %sw.bb
    i32 98, label %sw.bb2
    i32 99, label %sw.bb4
    i32 88, label %sw.bb6
    i32 89, label %sw.bb6
    i32 63, label %sw.bb8
  ]

sw.bb:                                            ; preds = %while.body
  %4 = load ptr, ptr @__stdoutp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1) #3
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.body
  %5 = load ptr, ptr @__stdoutp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.2) #3
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  %6 = load ptr, ptr @__stdoutp, align 8
  %7 = load ptr, ptr @optarg, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.3, ptr noundef %7) #3
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body, %while.body
  %8 = load ptr, ptr @__stdoutp, align 8
  %9 = load i32, ptr %option, align 4
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.4, i32 noundef %9) #3
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.body
  %10 = load ptr, ptr @__stderrp, align 8
  %11 = load i32, ptr @optopt, align 4
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.5, i32 noundef %11) #3
  br label %sw.epilog

sw.epilog:                                        ; preds = %while.body, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr @optind, align 4
  %13 = load i32, ptr %argc.addr, align 4
  %cmp10 = icmp ne i32 %12, %13
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %14 = load ptr, ptr @__stdoutp, align 8
  %call11 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.6) #3
  br label %while.cond12

while.cond12:                                     ; preds = %while.body14, %if.then
  %15 = load i32, ptr @optind, align 4
  %16 = load i32, ptr %argc.addr, align 4
  %cmp13 = icmp ne i32 %15, %16
  br i1 %cmp13, label %while.body14, label %while.end16

while.body14:                                     ; preds = %while.cond12
  %17 = load ptr, ptr @__stdoutp, align 8
  %18 = load ptr, ptr %argv.addr, align 8
  %19 = load i32, ptr @optind, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr @optind, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %18, i64 %idxprom
  %20 = load ptr, ptr %arrayidx, align 8
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.7, ptr noundef %20) #3
  br label %while.cond12, !llvm.loop !7

while.end16:                                      ; preds = %while.cond12
  br label %if.end

if.end:                                           ; preds = %while.end16, %while.end
  ret i32 0
}

declare i32 @"\01_getopt"(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
