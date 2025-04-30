; ModuleID = './code/171-32038p404.c'
source_filename = "./code/171-32038p404.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@sum = global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @testing(i64 noundef %b, i64 noundef %c, i64 noundef %x) #0 {
entry:
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %x.addr = alloca i64, align 8
  %a = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %b, ptr %b.addr, align 8
  store i64 %c, ptr %c.addr, align 8
  store i64 %x, ptr %x.addr, align 8
  %0 = load i64, ptr %b.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %b.addr, align 8
  %sub = sub nsw i64 0, %1
  store i64 %sub, ptr %b.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %x.addr, align 8
  %3 = load i64, ptr %c.addr, align 8
  %cmp1 = icmp sge i64 %2, %3
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i64, ptr %x.addr, align 8
  %5 = load i64, ptr %b.addr, align 8
  %cmp2 = icmp sge i64 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  br label %for.end

if.end4:                                          ; preds = %lor.lhs.false
  %6 = load i64, ptr %b.addr, align 8
  %7 = load i64, ptr %c.addr, align 8
  %mul = mul nsw i64 %6, %7
  %div = sdiv i64 %mul, 2
  store i64 %div, ptr %a, align 8
  %8 = load i64, ptr %a, align 8
  %div5 = sdiv i64 100000000000000000, %8
  store i64 %div5, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %9 = load i64, ptr %i, align 8
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i64, ptr %i, align 8
  %11 = load i64, ptr @sum, align 8
  %add = add nsw i64 %11, %10
  store i64 %add, ptr @sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, ptr %i, align 8
  %div6 = sdiv i64 %12, -25
  store i64 %div6, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then3, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @gen(i64 noundef %a, i64 noundef %b, i64 noundef %c) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %d = alloca i64, align 8
  %e = alloca i64, align 8
  %f = alloca i64, align 8
  %g = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  store i64 %c, ptr %c.addr, align 8
  %0 = load i64, ptr %c.addr, align 8
  %1 = load i64, ptr %c.addr, align 8
  %mul = mul nsw i64 %0, %1
  %cmp = icmp sge i64 %mul, 100000000000000000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %a.addr, align 8
  %mul1 = mul nsw i64 2, %2
  %3 = load i64, ptr %b.addr, align 8
  %sub = sub nsw i64 %mul1, %3
  %4 = load i64, ptr %b.addr, align 8
  %mul2 = mul nsw i64 2, %4
  %5 = load i64, ptr %a.addr, align 8
  %add = add nsw i64 %mul2, %5
  %6 = load i64, ptr %c.addr, align 8
  call void @testing(i64 noundef %sub, i64 noundef %add, i64 noundef %6)
  %7 = load i64, ptr %b.addr, align 8
  %mul3 = mul nsw i64 2, %7
  %8 = load i64, ptr %a.addr, align 8
  %sub4 = sub nsw i64 %mul3, %8
  %9 = load i64, ptr %a.addr, align 8
  %mul5 = mul nsw i64 2, %9
  %10 = load i64, ptr %b.addr, align 8
  %add6 = add nsw i64 %mul5, %10
  %11 = load i64, ptr %c.addr, align 8
  call void @testing(i64 noundef %sub4, i64 noundef %add6, i64 noundef %11)
  %12 = load i64, ptr %a.addr, align 8
  %13 = load i64, ptr %b.addr, align 8
  %add7 = add nsw i64 %12, %13
  %14 = load i64, ptr %c.addr, align 8
  %add8 = add nsw i64 %add7, %14
  %mul9 = mul nsw i64 2, %add8
  store i64 %mul9, ptr %g, align 8
  %15 = load i64, ptr %g, align 8
  %16 = load i64, ptr %a.addr, align 8
  %sub10 = sub nsw i64 %15, %16
  store i64 %sub10, ptr %d, align 8
  %17 = load i64, ptr %g, align 8
  %18 = load i64, ptr %b.addr, align 8
  %sub11 = sub nsw i64 %17, %18
  store i64 %sub11, ptr %e, align 8
  %19 = load i64, ptr %g, align 8
  %20 = load i64, ptr %c.addr, align 8
  %add12 = add nsw i64 %19, %20
  store i64 %add12, ptr %f, align 8
  call void @gen(i64 noundef %sub10, i64 noundef %sub11, i64 noundef %add12)
  %21 = load i64, ptr %a.addr, align 8
  %mul13 = mul nsw i64 %21, 2
  store i64 %mul13, ptr %a.addr, align 8
  %mul14 = mul nsw i64 2, %mul13
  store i64 %mul14, ptr %g, align 8
  %22 = load i64, ptr %d, align 8
  %23 = load i64, ptr %a.addr, align 8
  %sub15 = sub nsw i64 %22, %23
  %24 = load i64, ptr %e, align 8
  %25 = load i64, ptr %g, align 8
  %sub16 = sub nsw i64 %24, %25
  %26 = load i64, ptr %f, align 8
  %27 = load i64, ptr %g, align 8
  %sub17 = sub nsw i64 %26, %27
  call void @gen(i64 noundef %sub15, i64 noundef %sub16, i64 noundef %sub17)
  %28 = load i64, ptr %b.addr, align 8
  %mul18 = mul nsw i64 %28, 2
  store i64 %mul18, ptr %b.addr, align 8
  %mul19 = mul nsw i64 2, %mul18
  store i64 %mul19, ptr %g, align 8
  %29 = load i64, ptr %d, align 8
  %30 = load i64, ptr %g, align 8
  %sub20 = sub nsw i64 %29, %30
  %31 = load i64, ptr %e, align 8
  %32 = load i64, ptr %b.addr, align 8
  %sub21 = sub nsw i64 %31, %32
  %33 = load i64, ptr %f, align 8
  %34 = load i64, ptr %g, align 8
  %sub22 = sub nsw i64 %33, %34
  call void @gen(i64 noundef %sub20, i64 noundef %sub21, i64 noundef %sub22)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i64 0, ptr @sum, align 8
  call void @gen(i64 noundef 3, i64 noundef 4, i64 noundef 5)
  %0 = load i64, ptr @sum, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %0)
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
