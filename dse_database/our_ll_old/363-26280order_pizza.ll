; ModuleID = './code/363-26280order_pizza.c'
source_filename = "./code/363-26280order_pizza.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"d:t\00", align 1
@optarg = external global ptr, align 8
@__stderrp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"\D0\9D\D0\B5\D0\B8\D0\B7\D0\B2\D0\B5\D1\81\D1\82\D0\BD\D1\8B\D0\B9 \D0\BF\D0\B0\D1\80\D0\B0\D0\BC\D0\B5\D1\82\D1\80: '%s'\0A\00", align 1
@optind = external global i32, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"\D0\9F\D1\8B\D1\88\D0\BD\D0\BE\D0\B5 \D1\82\D0\B5\D1\81\D1\82\D0\BE.\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\D0\91\D1\83\D0\B4\D0\B5\D1\82 \D0\B4\D0\BE\D1\81\D1\82\D0\B0\D0\B2\D0\BB\D0\B5\D0\BD\D0\BE: %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"\D0\98\D0\BD\D0\B3\D1\80\D0\B8\D0\B4\D0\B8\D0\B5\D0\BD\D1\82\D1\8B:\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %delivery = alloca ptr, align 8
  %thick = alloca i32, align 4
  %count = alloca i32, align 4
  %ch = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr @.str, ptr %delivery, align 8
  store i32 0, ptr %thick, align 4
  store i32 0, ptr %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %call = call i32 @"\01_getopt"(i32 noundef %0, ptr noundef %1, ptr noundef @.str.1)
  %conv = trunc i32 %call to i8
  store i8 %conv, ptr %ch, align 1
  %conv1 = sext i8 %conv to i32
  %cmp = icmp ne i32 %conv1, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8, ptr %ch, align 1
  %conv3 = sext i8 %2 to i32
  switch i32 %conv3, label %sw.default [
    i32 100, label %sw.bb
    i32 116, label %sw.bb4
  ]

sw.bb:                                            ; preds = %while.body
  %3 = load ptr, ptr @optarg, align 8
  store ptr %3, ptr %delivery, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %while.body
  store i32 1, ptr %thick, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %4 = load ptr, ptr @__stderrp, align 8
  %5 = load ptr, ptr @optarg, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.2, ptr noundef %5) #3
  store i32 1, ptr %retval, align 4
  br label %return

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr @optind, align 4
  %7 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %7, %6
  store i32 %sub, ptr %argc.addr, align 4
  %8 = load i32, ptr @optind, align 4
  %9 = load ptr, ptr %argv.addr, align 8
  %idx.ext = sext i32 %8 to i64
  %add.ptr = getelementptr inbounds ptr, ptr %9, i64 %idx.ext
  store ptr %add.ptr, ptr %argv.addr, align 8
  %10 = load i32, ptr %thick, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call6 = call i32 @puts(ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %11 = load ptr, ptr %delivery, align 8
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx, align 1
  %tobool7 = icmp ne i8 %12, 0
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %13 = load ptr, ptr %delivery, align 8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %13)
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end
  %call11 = call i32 @puts(ptr noundef @.str.5)
  store i32 0, ptr %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %14 = load i32, ptr %count, align 4
  %15 = load i32, ptr %argc.addr, align 4
  %cmp12 = icmp slt i32 %14, %15
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %argv.addr, align 8
  %17 = load i32, ptr %count, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds ptr, ptr %16, i64 %idxprom
  %18 = load ptr, ptr %arrayidx14, align 8
  %call15 = call i32 @puts(ptr noundef %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %count, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %count, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %sw.default
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

declare i32 @"\01_getopt"(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @puts(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

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
