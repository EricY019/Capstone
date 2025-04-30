; ModuleID = './code/083-5307ashlti3.c'
source_filename = "./code/083-5307ashlti3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__func__.run = private unnamed_addr constant [4 x i8] c"run\00", align 1
@.str = private unnamed_addr constant [18 x i8] c"083-5307ashlti3.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"x << shift == y\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i128, align 16
  %x1 = alloca i128, align 16
  store i32 0, ptr %retval, align 4
  store i128 1, ptr %x, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i128, ptr %x, align 16
  %tobool = icmp ne i128 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i128, ptr %x, align 16
  call void @run(i128 noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i128, ptr %x, align 16
  %mul = mul i128 %2, 2
  store i128 %mul, ptr %x, align 16
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i128 1, ptr %x1, align 16
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc4, %for.end
  %3 = load i128, ptr %x1, align 16
  %shr = lshr i128 %3, 104
  %cmp = icmp ne i128 %shr, 3224432
  br i1 %cmp, label %for.body3, label %for.end6

for.body3:                                        ; preds = %for.cond2
  %4 = load i128, ptr %x1, align 16
  call void @run(i128 noundef %4)
  br label %for.inc4

for.inc4:                                         ; preds = %for.body3
  %5 = load i128, ptr %x1, align 16
  %mul5 = mul i128 %5, 3
  store i128 %mul5, ptr %x1, align 16
  br label %for.cond2, !llvm.loop !7

for.end6:                                         ; preds = %for.cond2
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @run(i128 noundef %x) #0 {
entry:
  %x.addr = alloca i128, align 16
  %y = alloca i128, align 16
  %shift = alloca i32, align 4
  store i128 %x, ptr %x.addr, align 16
  %0 = load i128, ptr %x.addr, align 16
  store i128 %0, ptr %y, align 16
  store i32 0, ptr %shift, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %shift, align 4
  %cmp = icmp slt i32 %1, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i128, ptr %x.addr, align 16
  %3 = load i32, ptr %shift, align 4
  %sh_prom = zext i32 %3 to i128
  %shl = shl i128 %2, %sh_prom
  %4 = load i128, ptr %y, align 16
  %cmp1 = icmp eq i128 %shl, %4
  %lnot = xor i1 %cmp1, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  call void @__assert_rtn(ptr noundef @__func__.run, ptr noundef @.str, i32 noundef 8, ptr noundef @.str.1) #2
  unreachable

5:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %5
  %6 = load i128, ptr %y, align 16
  %shl2 = shl i128 %6, 1
  store i128 %shl2, ptr %y, align 16
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %7 = load i32, ptr %shift, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %shift, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn }

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
!8 = distinct !{!8, !6}
