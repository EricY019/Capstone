; ModuleID = 'code/332-6806lonely_integer.c'
source_filename = "code/332-6806lonely_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_one_element.array = private unnamed_addr constant [1 x i32] [i32 4], align 4
@__const.test_many_elements.array = private unnamed_addr constant [7 x i32] [i32 6, i32 4, i32 9, i32 5, i32 6, i32 9, i32 4], align 16
@__const.test_negative_elements.array = private unnamed_addr constant [7 x i32] [i32 6, i32 -4, i32 -9, i32 -5, i32 6, i32 -9, i32 -4], align 16
@.str = private unnamed_addr constant [26 x i8] c"Empty array test failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"One element test failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Many elements test failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Negative elements test failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%d tests failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find(i32* %array, i32 %size) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %array.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %result, align 4
  %xor = xor i32 %5, %4
  store i32 %xor, i32* %result, align 4
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
define dso_local i32 @test_empty_array() #0 {
entry:
  %call = call i32 @find(i32* null, i32 0)
  %cmp = icmp eq i32 0, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_one_element() #0 {
entry:
  %array = alloca [1 x i32], align 4
  %0 = bitcast [1 x i32]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([1 x i32]* @__const.test_one_element.array to i8*), i64 4, i1 false)
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %array, i64 0, i64 0
  %call = call i32 @find(i32* %arraydecay, i32 1)
  %cmp = icmp eq i32 4, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_many_elements() #0 {
entry:
  %array = alloca [7 x i32], align 16
  %0 = bitcast [7 x i32]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x i32]* @__const.test_many_elements.array to i8*), i64 28, i1 false)
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %array, i64 0, i64 0
  %call = call i32 @find(i32* %arraydecay, i32 7)
  %cmp = icmp eq i32 5, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_negative_elements() #0 {
entry:
  %array = alloca [7 x i32], align 16
  %0 = bitcast [7 x i32]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x i32]* @__const.test_negative_elements.array to i8*), i64 28, i1 false)
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %array, i64 0, i64 0
  %call = call i32 @find(i32* %arraydecay, i32 7)
  %cmp = icmp eq i32 -5, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %counter, align 4
  %call = call i32 @test_empty_array()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %0 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @test_one_element()
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %1 = load i32, i32* %counter, align 4
  %inc6 = add nsw i32 %1, 1
  store i32 %inc6, i32* %counter, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %call8 = call i32 @test_many_elements()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %2 = load i32, i32* %counter, align 4
  %inc12 = add nsw i32 %2, 1
  store i32 %inc12, i32* %counter, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  %call14 = call i32 @test_negative_elements()
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %3 = load i32, i32* %counter, align 4
  %inc18 = add nsw i32 %3, 1
  store i32 %inc18, i32* %counter, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13
  %4 = load i32, i32* %counter, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %4)
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
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
