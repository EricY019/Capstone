; ModuleID = 'code/369-29163array_product.c'
source_filename = "code/369-29163array_product.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_ones.input = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@__const.test_ones.expected = private unnamed_addr constant [5 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@__const.test_positive.input = private unnamed_addr constant [5 x i32] [i32 4, i32 7, i32 3, i32 1, i32 5], align 16
@__const.test_positive.expected = private unnamed_addr constant [5 x i32] [i32 105, i32 60, i32 140, i32 420, i32 84], align 16
@__const.test_negative.input = private unnamed_addr constant [5 x i32] [i32 -4, i32 7, i32 -3, i32 1, i32 -5], align 16
@__const.test_negative.expected = private unnamed_addr constant [5 x i32] [i32 105, i32 -60, i32 140, i32 -420, i32 84], align 16
@__const.test_one_zero.input = private unnamed_addr constant [5 x i32] [i32 4, i32 7, i32 0, i32 1, i32 5], align 16
@__const.test_one_zero.expected = private unnamed_addr constant [5 x i32] [i32 0, i32 0, i32 140, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [20 x i8] c"Zeros test failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Ones test failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Positive test failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Negative test failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"One zero test failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"%d tests failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calculate(i32* %input, i32* %output, i32 %size) #0 {
entry:
  %input.addr = alloca i32*, align 8
  %output.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %product = alloca i32, align 4
  %i = alloca i32, align 4
  %i3 = alloca i32, align 4
  store i32* %input, i32** %input.addr, align 8
  store i32* %output, i32** %output.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 1, i32* %product, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %product, align 4
  %3 = load i32*, i32** %output.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %5 = load i32*, i32** %input.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* %product, align 4
  %mul = mul nsw i32 %8, %7
  store i32 %mul, i32* %product, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %product, align 4
  %10 = load i32, i32* %size.addr, align 4
  %sub = sub nsw i32 %10, 1
  store i32 %sub, i32* %i3, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc13, %for.end
  %11 = load i32, i32* %i3, align 4
  %cmp5 = icmp sge i32 %11, 0
  br i1 %cmp5, label %for.body6, label %for.end14

for.body6:                                        ; preds = %for.cond4
  %12 = load i32, i32* %product, align 4
  %13 = load i32*, i32** %output.addr, align 8
  %14 = load i32, i32* %i3, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  %15 = load i32, i32* %arrayidx8, align 4
  %mul9 = mul nsw i32 %15, %12
  store i32 %mul9, i32* %arrayidx8, align 4
  %16 = load i32*, i32** %input.addr, align 8
  %17 = load i32, i32* %i3, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 %idxprom10
  %18 = load i32, i32* %arrayidx11, align 4
  %19 = load i32, i32* %product, align 4
  %mul12 = mul nsw i32 %19, %18
  store i32 %mul12, i32* %product, align 4
  br label %for.inc13

for.inc13:                                        ; preds = %for.body6
  %20 = load i32, i32* %i3, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %i3, align 4
  br label %for.cond4, !llvm.loop !6

for.end14:                                        ; preds = %for.cond4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @are_equal(i32* %a, i32* %b, i32 %size) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %b.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp ne i32 %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_zeros() #0 {
entry:
  %input = alloca [5 x i32], align 16
  %expected = alloca [5 x i32], align 16
  %output = alloca [5 x i32], align 16
  %0 = bitcast [5 x i32]* %input to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 20, i1 false)
  %1 = bitcast [5 x i32]* %expected to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %input, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [5 x i32], [5 x i32]* %output, i64 0, i64 0
  call void @calculate(i32* %arraydecay, i32* %arraydecay1, i32 5)
  %arraydecay2 = getelementptr inbounds [5 x i32], [5 x i32]* %output, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [5 x i32], [5 x i32]* %expected, i64 0, i64 0
  %call = call i32 @are_equal(i32* %arraydecay2, i32* %arraydecay3, i32 5)
  ret i32 %call
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_ones() #0 {
entry:
  %input = alloca [5 x i32], align 16
  %expected = alloca [5 x i32], align 16
  %output = alloca [5 x i32], align 16
  %0 = bitcast [5 x i32]* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.test_ones.input to i8*), i64 20, i1 false)
  %1 = bitcast [5 x i32]* %expected to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([5 x i32]* @__const.test_ones.expected to i8*), i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %input, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [5 x i32], [5 x i32]* %output, i64 0, i64 0
  call void @calculate(i32* %arraydecay, i32* %arraydecay1, i32 5)
  %arraydecay2 = getelementptr inbounds [5 x i32], [5 x i32]* %output, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [5 x i32], [5 x i32]* %expected, i64 0, i64 0
  %call = call i32 @are_equal(i32* %arraydecay2, i32* %arraydecay3, i32 5)
  ret i32 %call
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_positive() #0 {
entry:
  %input = alloca [5 x i32], align 16
  %expected = alloca [5 x i32], align 16
  %output = alloca [5 x i32], align 16
  %0 = bitcast [5 x i32]* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.test_positive.input to i8*), i64 20, i1 false)
  %1 = bitcast [5 x i32]* %expected to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([5 x i32]* @__const.test_positive.expected to i8*), i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %input, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [5 x i32], [5 x i32]* %output, i64 0, i64 0
  call void @calculate(i32* %arraydecay, i32* %arraydecay1, i32 5)
  %arraydecay2 = getelementptr inbounds [5 x i32], [5 x i32]* %output, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [5 x i32], [5 x i32]* %expected, i64 0, i64 0
  %call = call i32 @are_equal(i32* %arraydecay2, i32* %arraydecay3, i32 5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_negative() #0 {
entry:
  %input = alloca [5 x i32], align 16
  %expected = alloca [5 x i32], align 16
  %output = alloca [5 x i32], align 16
  %0 = bitcast [5 x i32]* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.test_negative.input to i8*), i64 20, i1 false)
  %1 = bitcast [5 x i32]* %expected to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([5 x i32]* @__const.test_negative.expected to i8*), i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %input, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [5 x i32], [5 x i32]* %output, i64 0, i64 0
  call void @calculate(i32* %arraydecay, i32* %arraydecay1, i32 5)
  %arraydecay2 = getelementptr inbounds [5 x i32], [5 x i32]* %output, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [5 x i32], [5 x i32]* %expected, i64 0, i64 0
  %call = call i32 @are_equal(i32* %arraydecay2, i32* %arraydecay3, i32 5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_one_zero() #0 {
entry:
  %input = alloca [5 x i32], align 16
  %expected = alloca [5 x i32], align 16
  %output = alloca [5 x i32], align 16
  %0 = bitcast [5 x i32]* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.test_one_zero.input to i8*), i64 20, i1 false)
  %1 = bitcast [5 x i32]* %expected to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([5 x i32]* @__const.test_one_zero.expected to i8*), i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %input, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [5 x i32], [5 x i32]* %output, i64 0, i64 0
  call void @calculate(i32* %arraydecay, i32* %arraydecay1, i32 5)
  %arraydecay2 = getelementptr inbounds [5 x i32], [5 x i32]* %output, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [5 x i32], [5 x i32]* %expected, i64 0, i64 0
  %call = call i32 @are_equal(i32* %arraydecay2, i32* %arraydecay3, i32 5)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %counter, align 4
  %call = call i32 @test_zeros()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %0 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @test_ones()
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %1 = load i32, i32* %counter, align 4
  %inc6 = add nsw i32 %1, 1
  store i32 %inc6, i32* %counter, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %call8 = call i32 @test_positive()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %2 = load i32, i32* %counter, align 4
  %inc12 = add nsw i32 %2, 1
  store i32 %inc12, i32* %counter, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  %call14 = call i32 @test_negative()
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %3 = load i32, i32* %counter, align 4
  %inc18 = add nsw i32 %3, 1
  store i32 %inc18, i32* %counter, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13
  %call20 = call i32 @test_one_zero()
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end19
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %4 = load i32, i32* %counter, align 4
  %inc24 = add nsw i32 %4, 1
  store i32 %inc24, i32* %counter, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19
  %5 = load i32, i32* %counter, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %5)
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
