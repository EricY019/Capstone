; ModuleID = 'code/070-22791recursion.c'
source_filename = "code/070-22791recursion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.factorials = private unnamed_addr constant [21 x i64] [i64 1, i64 1, i64 2, i64 6, i64 24, i64 120, i64 720, i64 5040, i64 40320, i64 362880, i64 3628800, i64 39916800, i64 479001600, i64 6227020800, i64 87178291200, i64 1307674368000, i64 20922789888000, i64 355687428096000, i64 6402373705728000, i64 121645100408832000, i64 2432902008176640000], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @factorial(i64 %x) #0 {
entry:
  %retval = alloca i64, align 8
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %x.addr, align 8
  %2 = load i64, i64* %x.addr, align 8
  %sub = sub i64 %2, 1
  %call = call i64 @factorial(i64 %sub)
  %mul = mul i64 %1, %call
  store i64 %mul, i64* %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, i64* %retval, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %factorials = alloca [21 x i64], align 16
  %i = alloca i32, align 4
  %ret = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [21 x i64]* %factorials to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([21 x i64]* @__const.main.factorials to i8*), i64 168, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %conv = zext i32 %2 to i64
  %call = call i64 @factorial(i64 %conv)
  store i64 %call, i64* %ret, align 8
  %3 = load i64, i64* %ret, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx = getelementptr inbounds [21 x i64], [21 x i64]* %factorials, i64 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  %cmp1 = icmp ne i64 %3, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %add = add i32 %6, 1
  store i32 %add, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
