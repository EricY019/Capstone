; ModuleID = 'code/166-22145nim.c'
source_filename = "code/166-22145nim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X(i64 %n1, i64 %n2, i64 %n3) #0 {
entry:
  %n1.addr = alloca i64, align 8
  %n2.addr = alloca i64, align 8
  %n3.addr = alloca i64, align 8
  store i64 %n1, i64* %n1.addr, align 8
  store i64 %n2, i64* %n2.addr, align 8
  store i64 %n3, i64* %n3.addr, align 8
  %0 = load i64, i64* %n1.addr, align 8
  %1 = load i64, i64* %n2.addr, align 8
  %xor = xor i64 %0, %1
  %2 = load i64, i64* %n3.addr, align 8
  %xor1 = xor i64 %xor, %2
  %conv = trunc i64 %xor1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power(i32 %base, i32 %exp) #0 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %exp.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %exp, i32* %exp.addr, align 4
  %0 = load i32, i32* %exp.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %exp.addr, align 4
  %rem = urem i32 %1, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then1, label %if.else2

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %base.addr, align 4
  %3 = load i32, i32* %base.addr, align 4
  %4 = load i32, i32* %exp.addr, align 4
  %sub = sub i32 %4, 1
  %call = call i32 @power(i32 %3, i32 %sub)
  %mul = mul i32 %2, %call
  store i32 %mul, i32* %retval, align 4
  br label %return

if.else2:                                         ; preds = %if.else
  %5 = load i32, i32* %base.addr, align 4
  %6 = load i32, i32* %exp.addr, align 4
  %div = udiv i32 %6, 2
  %call3 = call i32 @power(i32 %5, i32 %div)
  store i32 %call3, i32* %tmp, align 4
  %7 = load i32, i32* %tmp, align 4
  %8 = load i32, i32* %tmp, align 4
  %mul4 = mul i32 %7, %8
  store i32 %mul4, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else2, %if.then1, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %c = alloca i64, align 8
  %n = alloca i64, align 8
  %upper_limit = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i64 0, i64* %c, align 8
  %call = call i32 @power(i32 2, i32 30)
  %add = add i32 %call, 1
  %conv = zext i32 %add to i64
  store i64 %conv, i64* %upper_limit, align 8
  store i64 1, i64* %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %n, align 8
  %1 = load i64, i64* %upper_limit, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %n, align 8
  %3 = load i64, i64* %n, align 8
  %mul = mul i64 2, %3
  %4 = load i64, i64* %n, align 8
  %mul2 = mul i64 3, %4
  %call3 = call i32 @X(i64 %2, i64 %mul, i64 %mul2)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i64, i64* %c, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %c, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, i64* %n, align 8
  %inc6 = add i64 %6, 1
  store i64 %inc6, i64* %n, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %c, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %7)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
