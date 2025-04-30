; ModuleID = './code/060-12245reverse_integer.c'
source_filename = "./code/060-12245reverse_integer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [30 x i8] c"Reverse and interger %d : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @reverse(i32 noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %res = alloca i32, align 4
  %flag = alloca i32, align 4
  %max_int = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %flag, align 4
  store i32 -2147483648, ptr %max_int, align 4
  store i32 0, ptr %res, align 4
  store i32 0, ptr %val, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %flag, align 4
  %1 = load i32, ptr %x.addr, align 4
  %sub = sub nsw i32 0, %1
  store i32 %sub, ptr %val, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  store i32 %2, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %x.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end3
  %4 = load i32, ptr %val, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %res, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %while.body
  %6 = load i32, ptr %max_int, align 4
  %7 = load i32, ptr %res, align 4
  %div = sdiv i32 %6, %7
  %cmp5 = icmp slt i32 %div, 10
  br i1 %cmp5, label %land.lhs.true6, label %if.end10

land.lhs.true6:                                   ; preds = %land.lhs.true
  %8 = load i32, ptr %max_int, align 4
  %9 = load i32, ptr %res, align 4
  %div7 = sdiv i32 %8, %9
  %cmp8 = icmp sgt i32 %div7, -10
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true6
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %land.lhs.true6, %land.lhs.true, %while.body
  %10 = load i32, ptr %res, align 4
  %mul = mul nsw i32 %10, 10
  %11 = load i32, ptr %val, align 4
  %rem = srem i32 %11, 10
  %add = add nsw i32 %mul, %rem
  store i32 %add, ptr %res, align 4
  %12 = load i32, ptr %val, align 4
  %div11 = sdiv i32 %12, 10
  store i32 %div11, ptr %val, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %13 = load i32, ptr %flag, align 4
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %while.end
  %14 = load i32, ptr %res, align 4
  %sub14 = sub nsw i32 0, %14
  store i32 %sub14, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %while.end
  %15 = load i32, ptr %res, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then13, %if.then9, %if.then2
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @reverse(i32 noundef -1234567)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef -12345670, i32 noundef %call)
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
