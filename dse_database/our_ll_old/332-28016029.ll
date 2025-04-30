; ModuleID = './code/332-28016029.c'
source_filename = "./code/332-28016029.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @divide(i32 noundef %dividend, i32 noundef %divisor) #0 {
entry:
  %retval = alloca i32, align 4
  %dividend.addr = alloca i32, align 4
  %divisor.addr = alloca i32, align 4
  %ans = alloca i32, align 4
  %n = alloca i32, align 4
  %d = alloca i32, align 4
  %a = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %dividend, ptr %dividend.addr, align 4
  store i32 %divisor, ptr %divisor.addr, align 4
  %0 = load i32, ptr %divisor.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %dividend.addr, align 4
  store i32 %1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %divisor.addr, align 4
  %conv = sext i32 %2 to i64
  %cmp1 = icmp eq i64 %conv, -2147483648
  br i1 %cmp1, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %3 = load i32, ptr %dividend.addr, align 4
  %conv4 = sext i32 %3 to i64
  %cmp5 = icmp eq i64 %conv4, -2147483648
  %4 = zext i1 %cmp5 to i64
  %cond = select i1 %cmp5, i32 1, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %5 = load i32, ptr %dividend.addr, align 4
  %cmp8 = icmp sge i32 %5, 0
  br i1 %cmp8, label %if.then10, label %if.else28

if.then10:                                        ; preds = %if.end7
  %6 = load i32, ptr %divisor.addr, align 4
  %cmp11 = icmp sgt i32 %6, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then10
  store i32 0, ptr %ans, align 4
  %7 = load i32, ptr %dividend.addr, align 4
  store i32 %7, ptr %n, align 4
  %8 = load i32, ptr %divisor.addr, align 4
  store i32 %8, ptr %d, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then13
  %9 = load i32, ptr %n, align 4
  %10 = load i32, ptr %d, align 4
  %cmp14 = icmp sge i32 %9, %10
  br i1 %cmp14, label %while.body, label %while.end25

while.body:                                       ; preds = %while.cond
  %11 = load i32, ptr %d, align 4
  store i32 %11, ptr %a, align 4
  store i32 1, ptr %m, align 4
  br label %while.cond16

while.cond16:                                     ; preds = %while.body22, %while.body
  %12 = load i32, ptr %a, align 4
  %shl = shl i32 %12, 1
  %shr = ashr i32 %shl, 1
  %13 = load i32, ptr %a, align 4
  %cmp17 = icmp eq i32 %shr, %13
  br i1 %cmp17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond16
  %14 = load i32, ptr %a, align 4
  %shl19 = shl i32 %14, 1
  %15 = load i32, ptr %n, align 4
  %cmp20 = icmp slt i32 %shl19, %15
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond16
  %16 = phi i1 [ false, %while.cond16 ], [ %cmp20, %land.rhs ]
  br i1 %16, label %while.body22, label %while.end

while.body22:                                     ; preds = %land.end
  %17 = load i32, ptr %a, align 4
  %shl23 = shl i32 %17, 1
  store i32 %shl23, ptr %a, align 4
  %18 = load i32, ptr %m, align 4
  %shl24 = shl i32 %18, 1
  store i32 %shl24, ptr %m, align 4
  br label %while.cond16, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %19 = load i32, ptr %m, align 4
  %20 = load i32, ptr %ans, align 4
  %add = add nsw i32 %20, %19
  store i32 %add, ptr %ans, align 4
  %21 = load i32, ptr %a, align 4
  %22 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %22, %21
  store i32 %sub, ptr %n, align 4
  br label %while.cond, !llvm.loop !7

while.end25:                                      ; preds = %while.cond
  %23 = load i32, ptr %ans, align 4
  store i32 %23, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then10
  %24 = load i32, ptr %dividend.addr, align 4
  %25 = load i32, ptr %divisor.addr, align 4
  %sub26 = sub nsw i32 0, %25
  %call = call i32 @divide(i32 noundef %24, i32 noundef %sub26)
  %sub27 = sub nsw i32 0, %call
  store i32 %sub27, ptr %retval, align 4
  br label %return

if.else28:                                        ; preds = %if.end7
  %26 = load i32, ptr %dividend.addr, align 4
  %conv29 = sext i32 %26 to i64
  %cmp30 = icmp eq i64 %conv29, -2147483648
  br i1 %cmp30, label %if.then32, label %if.end49

if.then32:                                        ; preds = %if.else28
  %27 = load i32, ptr %divisor.addr, align 4
  %cmp33 = icmp eq i32 %27, -1
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then32
  store i32 2147483647, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.then32
  %28 = load i32, ptr %divisor.addr, align 4
  %cmp37 = icmp slt i32 %28, 0
  br i1 %cmp37, label %if.then39, label %if.else44

if.then39:                                        ; preds = %if.end36
  %29 = load i32, ptr %divisor.addr, align 4
  %30 = load i32, ptr %dividend.addr, align 4
  %sub40 = sub nsw i32 %29, %30
  %31 = load i32, ptr %divisor.addr, align 4
  %sub41 = sub nsw i32 0, %31
  %call42 = call i32 @divide(i32 noundef %sub40, i32 noundef %sub41)
  %add43 = add nsw i32 1, %call42
  store i32 %add43, ptr %retval, align 4
  br label %return

if.else44:                                        ; preds = %if.end36
  %32 = load i32, ptr %divisor.addr, align 4
  %sub45 = sub nsw i32 0, %32
  %33 = load i32, ptr %dividend.addr, align 4
  %sub46 = sub nsw i32 %sub45, %33
  %34 = load i32, ptr %divisor.addr, align 4
  %call47 = call i32 @divide(i32 noundef %sub46, i32 noundef %34)
  %sub48 = sub nsw i32 -1, %call47
  store i32 %sub48, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %if.else28
  %35 = load i32, ptr %divisor.addr, align 4
  %cmp50 = icmp slt i32 %35, 0
  br i1 %cmp50, label %if.then52, label %if.else56

if.then52:                                        ; preds = %if.end49
  %36 = load i32, ptr %dividend.addr, align 4
  %sub53 = sub nsw i32 0, %36
  %37 = load i32, ptr %divisor.addr, align 4
  %sub54 = sub nsw i32 0, %37
  %call55 = call i32 @divide(i32 noundef %sub53, i32 noundef %sub54)
  store i32 %call55, ptr %retval, align 4
  br label %return

if.else56:                                        ; preds = %if.end49
  %38 = load i32, ptr %dividend.addr, align 4
  %sub57 = sub nsw i32 0, %38
  %39 = load i32, ptr %divisor.addr, align 4
  %call58 = call i32 @divide(i32 noundef %sub57, i32 noundef %39)
  %sub59 = sub nsw i32 0, %call58
  store i32 %sub59, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else56, %if.then52, %if.else44, %if.then39, %if.then35, %if.else, %while.end25, %if.then3, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @divide(i32 noundef -2147483648, i32 noundef 5)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
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
