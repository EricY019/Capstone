; ModuleID = 'code/326-35343sum_swap.c'
source_filename = "code/326-35343sum_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pair = type { i32, i32 }

@__const.test_same_sum.a = private unnamed_addr constant [6 x i32] [i32 1, i32 4, i32 2, i32 1, i32 1, i32 2], align 16
@__const.test_same_sum.b = private unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 3, i32 3], align 16
@__const.test_diff_sum.a = private unnamed_addr constant [6 x i32] [i32 1, i32 4, i32 2, i32 1, i32 1, i32 2], align 16
@__const.test_diff_sum.b = private unnamed_addr constant [4 x i32] [i32 3, i32 6, i32 3, i32 3], align 16
@__const.test_neg_num.a = private unnamed_addr constant [6 x i32] [i32 -3, i32 4, i32 2, i32 1, i32 1, i32 2], align 16
@__const.test_neg_num.b = private unnamed_addr constant [4 x i32] [i32 3, i32 6, i32 3, i32 3], align 16
@.str = private unnamed_addr constant [23 x i8] c"Same sum test failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Different sum test failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Negative numbers test failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%d tests failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sum(i32* %array, i32 %length) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %array.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %result, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, i32* %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %result, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sum_swap(i32* %a, i32 %a_len, i32* %b, i32 %b_len, %struct.pair* %result) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %a_len.addr = alloca i32, align 4
  %b.addr = alloca i32*, align 8
  %b_len.addr = alloca i32, align 4
  %result.addr = alloca %struct.pair*, align 8
  %sum_a = alloca i32, align 4
  %sum_b = alloca i32, align 4
  %req = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %a_len, i32* %a_len.addr, align 4
  store i32* %b, i32** %b.addr, align 8
  store i32 %b_len, i32* %b_len.addr, align 4
  store %struct.pair* %result, %struct.pair** %result.addr, align 8
  %0 = load i32*, i32** %a.addr, align 8
  %1 = load i32, i32* %a_len.addr, align 4
  %call = call i32 @sum(i32* %0, i32 %1)
  store i32 %call, i32* %sum_a, align 4
  %2 = load i32*, i32** %b.addr, align 8
  %3 = load i32, i32* %b_len.addr, align 4
  %call1 = call i32 @sum(i32* %2, i32 %3)
  store i32 %call1, i32* %sum_b, align 4
  %4 = load i32, i32* %sum_a, align 4
  %5 = load i32, i32* %sum_b, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end20

if.end:                                           ; preds = %entry
  store i32 0, i32* %req, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %a_len.addr, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %sum_b, align 4
  %9 = load i32, i32* %sum_a, align 4
  %sub = sub nsw i32 %8, %9
  %10 = load i32*, i32** %a.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %mul = mul nsw i32 2, %12
  %add = add nsw i32 %sub, %mul
  store i32 %add, i32* %req, align 4
  %13 = load i32, i32* %req, align 4
  %rem = srem i32 %13, 2
  %cmp3 = icmp ne i32 %rem, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  br label %for.inc18

if.end5:                                          ; preds = %for.body
  %14 = load i32, i32* %req, align 4
  %div = sdiv i32 %14, 2
  store i32 %div, i32* %req, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.end5
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %b_len.addr, align 4
  %cmp7 = icmp slt i32 %15, %16
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %17 = load i32*, i32** %b.addr, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 %idxprom9
  %19 = load i32, i32* %arrayidx10, align 4
  %20 = load i32, i32* %req, align 4
  %cmp11 = icmp eq i32 %19, %20
  br i1 %cmp11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %for.body8
  %21 = load i32*, i32** %a.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %22 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 %idxprom13
  %23 = load i32, i32* %arrayidx14, align 4
  %24 = load %struct.pair*, %struct.pair** %result.addr, align 8
  %one = getelementptr inbounds %struct.pair, %struct.pair* %24, i32 0, i32 0
  store i32 %23, i32* %one, align 4
  %25 = load i32*, i32** %b.addr, align 8
  %26 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %26 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %25, i64 %idxprom15
  %27 = load i32, i32* %arrayidx16, align 4
  %28 = load %struct.pair*, %struct.pair** %result.addr, align 8
  %two = getelementptr inbounds %struct.pair, %struct.pair* %28, i32 0, i32 1
  store i32 %27, i32* %two, align 4
  br label %for.end20

if.end17:                                         ; preds = %for.body8
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond6, !llvm.loop !6

for.end:                                          ; preds = %for.cond6
  br label %for.inc18

for.inc18:                                        ; preds = %for.end, %if.then4
  %30 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %30, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end20:                                        ; preds = %if.then, %if.then12, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_same_sum() #0 {
entry:
  %a = alloca [6 x i32], align 16
  %b = alloca [4 x i32], align 16
  %p = alloca %struct.pair, align 4
  %0 = bitcast [6 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.test_same_sum.a to i8*), i64 24, i1 false)
  %1 = bitcast [4 x i32]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([4 x i32]* @__const.test_same_sum.b to i8*), i64 16, i1 false)
  %one = getelementptr inbounds %struct.pair, %struct.pair* %p, i32 0, i32 0
  store i32 -1, i32* %one, align 4
  %two = getelementptr inbounds %struct.pair, %struct.pair* %p, i32 0, i32 1
  store i32 -1, i32* %two, align 4
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [4 x i32], [4 x i32]* %b, i64 0, i64 0
  call void @sum_swap(i32* %arraydecay, i32 6, i32* %arraydecay1, i32 4, %struct.pair* %p)
  %one2 = getelementptr inbounds %struct.pair, %struct.pair* %p, i32 0, i32 0
  %2 = load i32, i32* %one2, align 4
  %cmp = icmp eq i32 -1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %two3 = getelementptr inbounds %struct.pair, %struct.pair* %p, i32 0, i32 1
  %3 = load i32, i32* %two3, align 4
  %cmp4 = icmp eq i32 -1, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_diff_sum() #0 {
entry:
  %a = alloca [6 x i32], align 16
  %b = alloca [4 x i32], align 16
  %p = alloca %struct.pair, align 4
  %0 = bitcast [6 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.test_diff_sum.a to i8*), i64 24, i1 false)
  %1 = bitcast [4 x i32]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([4 x i32]* @__const.test_diff_sum.b to i8*), i64 16, i1 false)
  %one = getelementptr inbounds %struct.pair, %struct.pair* %p, i32 0, i32 0
  store i32 -1, i32* %one, align 4
  %two = getelementptr inbounds %struct.pair, %struct.pair* %p, i32 0, i32 1
  store i32 -1, i32* %two, align 4
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [4 x i32], [4 x i32]* %b, i64 0, i64 0
  call void @sum_swap(i32* %arraydecay, i32 6, i32* %arraydecay1, i32 4, %struct.pair* %p)
  %one2 = getelementptr inbounds %struct.pair, %struct.pair* %p, i32 0, i32 0
  %2 = load i32, i32* %one2, align 4
  %cmp = icmp eq i32 1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %two3 = getelementptr inbounds %struct.pair, %struct.pair* %p, i32 0, i32 1
  %3 = load i32, i32* %two3, align 4
  %cmp4 = icmp eq i32 3, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_neg_num() #0 {
entry:
  %a = alloca [6 x i32], align 16
  %b = alloca [4 x i32], align 16
  %p = alloca %struct.pair, align 4
  %0 = bitcast [6 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.test_neg_num.a to i8*), i64 24, i1 false)
  %1 = bitcast [4 x i32]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([4 x i32]* @__const.test_neg_num.b to i8*), i64 16, i1 false)
  %one = getelementptr inbounds %struct.pair, %struct.pair* %p, i32 0, i32 0
  store i32 -1, i32* %one, align 4
  %two = getelementptr inbounds %struct.pair, %struct.pair* %p, i32 0, i32 1
  store i32 -1, i32* %two, align 4
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [4 x i32], [4 x i32]* %b, i64 0, i64 0
  call void @sum_swap(i32* %arraydecay, i32 6, i32* %arraydecay1, i32 4, %struct.pair* %p)
  %one2 = getelementptr inbounds %struct.pair, %struct.pair* %p, i32 0, i32 0
  %2 = load i32, i32* %one2, align 4
  %cmp = icmp eq i32 2, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %two3 = getelementptr inbounds %struct.pair, %struct.pair* %p, i32 0, i32 1
  %3 = load i32, i32* %two3, align 4
  %cmp4 = icmp eq i32 6, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %counter, align 4
  %call = call i32 @test_same_sum()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %0 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @test_diff_sum()
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %1 = load i32, i32* %counter, align 4
  %inc6 = add nsw i32 %1, 1
  store i32 %inc6, i32* %counter, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %call8 = call i32 @test_neg_num()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %2 = load i32, i32* %counter, align 4
  %inc12 = add nsw i32 %2, 1
  store i32 %inc12, i32* %counter, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  %3 = load i32, i32* %counter, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %3)
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
