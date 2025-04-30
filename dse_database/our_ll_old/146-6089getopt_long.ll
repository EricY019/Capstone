; ModuleID = './code/146-6089getopt_long.c'
source_filename = "./code/146-6089getopt_long.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.option = type { ptr, i32, ptr, i32 }

@.str = private unnamed_addr constant [8 x i8] c"a:b:c:d\00", align 1
@main.long_options = internal global [4 x %struct.option] [%struct.option { ptr @.str.1, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.2, i32 0, ptr null, i32 110 }, %struct.option { ptr @.str.3, i32 2, ptr null, i32 111 }, %struct.option zeroinitializer], align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"reqarg\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"noarg\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"optarg\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"opt = %c\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"optarg = %s\0A\00", align 1
@optarg = external global ptr, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"optind = %d\0A\00", align 1
@optind = external global i32, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"argv[optind - 1] = %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"option_index = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %opt = alloca i32, align 4
  %digit_optind = alloca i32, align 4
  %option_index = alloca i32, align 4
  %optstring = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %digit_optind, align 4
  store i32 0, ptr %option_index, align 4
  store ptr @.str, ptr %optstring, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %0, 2
  %1 = load ptr, ptr %argv.addr, align 8
  %add.ptr = getelementptr inbounds ptr, ptr %1, i64 2
  %2 = load ptr, ptr %optstring, align 8
  %call = call i32 @getopt_long(i32 noundef %sub, ptr noundef %add.ptr, ptr noundef %2, ptr noundef @main.long_options, ptr noundef %option_index)
  store i32 %call, ptr %opt, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %opt, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %3)
  %4 = load ptr, ptr @optarg, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %4)
  %5 = load i32, ptr @optind, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %5)
  %6 = load ptr, ptr %argv.addr, align 8
  %7 = load i32, ptr @optind, align 4
  %sub4 = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %8)
  %9 = load i32, ptr %option_index, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %9)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
