; ModuleID = './code/271-10922triplet.c'
source_filename = "./code/271-10922triplet.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @is_triplet(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %cmp = icmp slt i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %a.addr, align 4
  %2 = load i32, ptr %b.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %b.addr, align 4
  %4 = load i32, ptr %c.addr, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %5 = load i32, ptr %a.addr, align 4
  %6 = load i32, ptr %a.addr, align 4
  %mul = mul nsw i32 %5, %6
  %7 = load i32, ptr %b.addr, align 4
  %8 = load i32, ptr %b.addr, align 4
  %mul4 = mul nsw i32 %7, %8
  %add = add nsw i32 %mul, %mul4
  %9 = load i32, ptr %c.addr, align 4
  %10 = load i32, ptr %c.addr, align 4
  %mul5 = mul nsw i32 %9, %10
  %cmp6 = icmp eq i32 %add, %mul5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %11 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %a, align 4
  store i32 2, ptr %b, align 4
  store i32 3, ptr %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %0 = load i32, ptr %a, align 4
  %1 = load i32, ptr %b, align 4
  %add = add nsw i32 %0, %1
  %2 = load i32, ptr %c, align 4
  %add1 = add nsw i32 %add, %2
  %cmp = icmp ne i32 %add1, 1000
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %3 = load i32, ptr %a, align 4
  %4 = load i32, ptr %b, align 4
  %5 = load i32, ptr %c, align 4
  %call = call i32 @is_triplet(i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %lnot, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %7 = load i32, ptr %a, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %a, align 4
  %8 = load i32, ptr %b, align 4
  %cmp2 = icmp sge i32 %inc, %8
  br i1 %cmp2, label %if.then, label %if.end7

if.then:                                          ; preds = %while.body
  store i32 1, ptr %a, align 4
  %9 = load i32, ptr %b, align 4
  %inc3 = add nsw i32 %9, 1
  store i32 %inc3, ptr %b, align 4
  %10 = load i32, ptr %c, align 4
  %cmp4 = icmp sge i32 %inc3, %10
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 2, ptr %b, align 4
  %11 = load i32, ptr %c, align 4
  %inc6 = add nsw i32 %11, 1
  store i32 %inc6, ptr %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %while.body
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %lor.end
  %12 = load i32, ptr %a, align 4
  %13 = load i32, ptr %b, align 4
  %mul = mul nsw i32 %12, %13
  %14 = load i32, ptr %c, align 4
  %mul8 = mul nsw i32 %mul, %14
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul8)
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
