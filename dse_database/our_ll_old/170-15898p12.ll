; ModuleID = './code/170-15898p12.c'
source_filename = "./code/170-15898p12.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @nfactors(i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %f = alloca i64, align 8
  %c = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  store i32 2, ptr %c, align 4
  store i64 2, ptr %f, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %f, align 8
  %1 = load i64, ptr %f, align 8
  %mul = mul nsw i64 %0, %1
  %2 = load i64, ptr %n.addr, align 8
  %cmp = icmp slt i64 %mul, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %n.addr, align 8
  %4 = load i64, ptr %f, align 8
  %rem = srem i64 %3, %4
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %c, align 4
  %add = add nsw i32 %5, 2
  store i32 %add, ptr %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, ptr %f, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, ptr %f, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %f, align 8
  %8 = load i64, ptr %f, align 8
  %mul2 = mul nsw i64 %7, %8
  %9 = load i64, ptr %n.addr, align 8
  %cmp3 = icmp eq i64 %mul2, %9
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %for.end
  %10 = load i32, ptr %c, align 4
  %inc5 = add nsw i32 %10, 1
  store i32 %inc5, ptr %c, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %for.end
  %11 = load i32, ptr %c, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca i64, align 8
  %i = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 0, ptr %t, align 8
  store i64 1, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %t, align 8
  %call = call i32 @nfactors(i64 noundef %0)
  %cmp = icmp slt i32 %call, 500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8
  %2 = load i64, ptr %t, align 8
  %add = add nsw i64 %2, %1
  store i64 %add, ptr %t, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8
  %inc = add nsw i64 %3, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %4 = load i64, ptr %t, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %4)
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
!7 = distinct !{!7, !6}
