; ModuleID = 'code/250-27179reverse_string.c'
source_filename = "code/250-27179reverse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@__const.test_reverse_single_char.string = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@__const.test_reverse_odd_chars.string = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"cba\00", align 1
@__const.test_reverse_even_chars.string = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"dcba\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"String equality test failed!\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Reverse empty string test failed!\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"Reverse single character string test failed!\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Reverse odd characters string test failed!\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Reverse even characters string test failed!\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"%d tests failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse(i8* %input) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %tmp = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %input, i8** %input.addr, align 8
  store i32 0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %input.addr, align 8
  %1 = load i32, i32* %len, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %len, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %len, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %len, align 4
  %div = sdiv i32 %5, 2
  %cmp = icmp slt i32 %4, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %input.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom1
  %8 = load i8, i8* %arrayidx2, align 1
  store i8 %8, i8* %tmp, align 1
  %9 = load i8*, i8** %input.addr, align 8
  %10 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %10, 1
  %11 = load i32, i32* %i, align 4
  %sub3 = sub nsw i32 %sub, %11
  %idxprom4 = sext i32 %sub3 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 %idxprom4
  %12 = load i8, i8* %arrayidx5, align 1
  %13 = load i8*, i8** %input.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %13, i64 %idxprom6
  store i8 %12, i8* %arrayidx7, align 1
  %15 = load i8, i8* %tmp, align 1
  %16 = load i8*, i8** %input.addr, align 8
  %17 = load i32, i32* %len, align 4
  %sub8 = sub nsw i32 %17, 1
  %18 = load i32, i32* %i, align 4
  %sub9 = sub nsw i32 %sub8, %18
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 %idxprom10
  store i8 %15, i8* %arrayidx11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @equal(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %tmp = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i32 0, i32* %tmp, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i32, i32* %tmp, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %b.addr, align 8
  %4 = load i32, i32* %tmp, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %a.addr, align 8
  %8 = load i32, i32* %tmp, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %7, i64 %idxprom5
  %9 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %9 to i32
  %10 = load i8*, i8** %b.addr, align 8
  %11 = load i32, i32* %tmp, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %12 to i32
  %cmp = icmp ne i32 %conv7, %conv10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %13 = load i32, i32* %tmp, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %tmp, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %14 = load i8*, i8** %a.addr, align 8
  %15 = load i32, i32* %tmp, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 %idxprom12
  %16 = load i8, i8* %arrayidx13, align 1
  %tobool14 = icmp ne i8 %16, 0
  br i1 %tobool14, label %land.end19, label %land.rhs15

land.rhs15:                                       ; preds = %while.end
  %17 = load i8*, i8** %b.addr, align 8
  %18 = load i32, i32* %tmp, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 %idxprom16
  %19 = load i8, i8* %arrayidx17, align 1
  %tobool18 = icmp ne i8 %19, 0
  %lnot = xor i1 %tobool18, true
  br label %land.end19

land.end19:                                       ; preds = %land.rhs15, %while.end
  %20 = phi i1 [ false, %while.end ], [ %lnot, %land.rhs15 ]
  %land.ext = zext i1 %20 to i32
  store i32 %land.ext, i32* %retval, align 4
  br label %return

return:                                           ; preds = %land.end19, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_equal() #0 {
entry:
  %call = call i32 @equal(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %call1 = call i32 @equal(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.end, label %land.lhs.true3

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = call i32 @equal(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true6, label %land.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %call7 = call i32 @equal(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true9, label %land.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %call10 = call i32 @equal(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.end, label %land.lhs.true12

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %call13 = call i32 @equal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true12
  %call15 = call i32 @equal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %tobool16 = icmp ne i32 %call15, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true12, %land.lhs.true9, %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %entry
  %0 = phi i1 [ false, %land.lhs.true12 ], [ false, %land.lhs.true9 ], [ false, %land.lhs.true6 ], [ false, %land.lhs.true3 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool16, %land.rhs ]
  %land.ext = zext i1 %0 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_reverse_empty() #0 {
entry:
  %string = alloca [1 x i8], align 1
  %0 = bitcast [1 x i8]* %string to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 1, i1 false)
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %string, i64 0, i64 0
  call void @reverse(i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [1 x i8], [1 x i8]* %string, i64 0, i64 0
  %call = call i32 @equal(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %arraydecay1)
  ret i32 %call
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_reverse_single_char() #0 {
entry:
  %string = alloca [2 x i8], align 1
  %0 = bitcast [2 x i8]* %string to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.test_reverse_single_char.string, i32 0, i32 0), i64 2, i1 false)
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %string, i64 0, i64 0
  call void @reverse(i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [2 x i8], [2 x i8]* %string, i64 0, i64 0
  %call = call i32 @equal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay1)
  ret i32 %call
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_reverse_odd_chars() #0 {
entry:
  %string = alloca [4 x i8], align 1
  %0 = bitcast [4 x i8]* %string to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_reverse_odd_chars.string, i32 0, i32 0), i64 4, i1 false)
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %string, i64 0, i64 0
  call void @reverse(i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %string, i64 0, i64 0
  %call = call i32 @equal(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_reverse_even_chars() #0 {
entry:
  %string = alloca [5 x i8], align 1
  %0 = bitcast [5 x i8]* %string to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_reverse_even_chars.string, i32 0, i32 0), i64 5, i1 false)
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %string, i64 0, i64 0
  call void @reverse(i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %string, i64 0, i64 0
  %call = call i32 @equal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay1)
  ret i32 %call
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %counter, align 4
  %call = call i32 @test_equal()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %0 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @test_reverse_empty()
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %1 = load i32, i32* %counter, align 4
  %inc6 = add nsw i32 %1, 1
  store i32 %inc6, i32* %counter, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %call8 = call i32 @test_reverse_single_char()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %2 = load i32, i32* %counter, align 4
  %inc12 = add nsw i32 %2, 1
  store i32 %inc12, i32* %counter, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  %call14 = call i32 @test_reverse_odd_chars()
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0))
  %3 = load i32, i32* %counter, align 4
  %inc18 = add nsw i32 %3, 1
  store i32 %inc18, i32* %counter, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13
  %call20 = call i32 @test_reverse_even_chars()
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.end19
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0))
  %4 = load i32, i32* %counter, align 4
  %inc24 = add nsw i32 %4, 1
  store i32 %inc24, i32* %counter, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19
  %5 = load i32, i32* %counter, align 4
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %5)
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
