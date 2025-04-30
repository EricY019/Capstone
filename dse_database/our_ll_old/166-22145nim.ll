; ModuleID = './code/166-22145nim.c'
source_filename = "./code/166-22145nim.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @X(i64 noundef %n1, i64 noundef %n2, i64 noundef %n3) #0 {
entry:
  %n1.addr = alloca i64, align 8
  %n2.addr = alloca i64, align 8
  %n3.addr = alloca i64, align 8
  store i64 %n1, ptr %n1.addr, align 8
  store i64 %n2, ptr %n2.addr, align 8
  store i64 %n3, ptr %n3.addr, align 8
  %0 = load i64, ptr %n1.addr, align 8
  %1 = load i64, ptr %n2.addr, align 8
  %xor = xor i64 %0, %1
  %2 = load i64, ptr %n3.addr, align 8
  %xor1 = xor i64 %xor, %2
  %conv = trunc i64 %xor1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @power(i32 noundef %base, i32 noundef %exp) #0 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %exp.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %base, ptr %base.addr, align 4
  store i32 %exp, ptr %exp.addr, align 4
  %0 = load i32, ptr %exp.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %exp.addr, align 4
  %rem = urem i32 %1, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.else
  %2 = load i32, ptr %base.addr, align 4
  %3 = load i32, ptr %base.addr, align 4
  %4 = load i32, ptr %exp.addr, align 4
  %sub = sub i32 %4, 1
  %call = call i32 @power(i32 noundef %3, i32 noundef %sub)
  %mul = mul i32 %2, %call
  store i32 %mul, ptr %retval, align 4
  br label %return

if.else2:                                         ; preds = %if.else
  %5 = load i32, ptr %base.addr, align 4
  %6 = load i32, ptr %exp.addr, align 4
  %div = udiv i32 %6, 2
  %call3 = call i32 @power(i32 noundef %5, i32 noundef %div)
  store i32 %call3, ptr %tmp, align 4
  %7 = load i32, ptr %tmp, align 4
  %8 = load i32, ptr %tmp, align 4
  %mul4 = mul i32 %7, %8
  store i32 %mul4, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else2, %if.then1, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %c = alloca i64, align 8
  %n = alloca i64, align 8
  %upper_limit = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 0, ptr %c, align 8
  %call = call i32 @power(i32 noundef 2, i32 noundef 30)
  %add = add i32 %call, 1
  %conv = zext i32 %add to i64
  store i64 %conv, ptr %upper_limit, align 8
  store i64 1, ptr %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %n, align 8
  %1 = load i64, ptr %upper_limit, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %n, align 8
  %3 = load i64, ptr %n, align 8
  %mul = mul i64 2, %3
  %4 = load i64, ptr %n, align 8
  %mul2 = mul i64 3, %4
  %call3 = call i32 @X(i64 noundef %2, i64 noundef %mul, i64 noundef %mul2)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i64, ptr %c, align 8
  %inc = add i64 %5, 1
  store i64 %inc, ptr %c, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, ptr %n, align 8
  %inc6 = add i64 %6, 1
  store i64 %inc6, ptr %n, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %c, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %7)
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
