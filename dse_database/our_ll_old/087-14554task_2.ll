; ModuleID = './code/087-14554task_2.c'
source_filename = "./code/087-14554task_2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c", %llu\00", align 1
@.str.2 = private unnamed_addr constant [180 x i8] c"27280388024614569596, 44140595050111976643, 71420983074726546239, 115561578124838522882, 186982561199565069121, 302544139324403592003, 489526700523968661124,792070839848372253127\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %first = alloca i64, align 8
  %second = alloca i64, align 8
  %i = alloca i32, align 4
  %third = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 2, ptr %first, align 8
  store i64 1, ptr %second, align 8
  %0 = load i64, ptr %first, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %0)
  %1 = load i64, ptr %second, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %1)
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 93
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %first, align 8
  %4 = load i64, ptr %second, align 8
  %add = add i64 %3, %4
  store i64 %add, ptr %third, align 8
  %5 = load i64, ptr %third, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %5)
  %6 = load i64, ptr %second, align 8
  store i64 %6, ptr %first, align 8
  %7 = load i64, ptr %third, align 8
  store i64 %7, ptr %second, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret i32 0
}

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
