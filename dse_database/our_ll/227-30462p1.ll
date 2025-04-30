; ModuleID = 'code/227-30462p1.c'
source_filename = "code/227-30462p1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.input1 = private unnamed_addr constant [4 x i32] [i32 2, i32 7, i32 11, i32 15], align 16
@.str = private unnamed_addr constant [11 x i8] c"r1[0] == 0\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"code/227-30462p1.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"r1[1] == 1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @twoSum(i32* %nums, i32 %numsSize, i32 %target) #0 {
entry:
  %nums.addr = alloca i32*, align 8
  %numsSize.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %result = alloca i32*, align 8
  %i = alloca i32, align 4
  %v2 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %nums, i32** %nums.addr, align 8
  store i32 %numsSize, i32* %numsSize.addr, align 4
  store i32 %target, i32* %target.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 8) #4
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %result, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %numsSize.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %target.addr, align 4
  %4 = load i32*, i32** %nums.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %3, %6
  store i32 %sub, i32* %v2, align 4
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %numsSize.addr, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %10 = load i32*, i32** %nums.addr, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  %12 = load i32, i32* %arrayidx5, align 4
  %13 = load i32, i32* %v2, align 4
  %cmp6 = icmp eq i32 %12, %13
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %14 = load i32, i32* %i, align 4
  %15 = load i32*, i32** %result, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 %14, i32* %arrayidx7, align 4
  %16 = load i32, i32* %j, align 4
  %17 = load i32*, i32** %result, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 %16, i32* %arrayidx8, align 4
  br label %for.end

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond1
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %19, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end11:                                        ; preds = %for.cond
  %20 = load i32*, i32** %result, align 8
  ret i32* %20
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %input1 = alloca [4 x i32], align 16
  %r1 = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [4 x i32]* %input1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i32]* @__const.main.input1 to i8*), i64 16, i1 false)
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %input1, i64 0, i64 0
  %call = call i32* @twoSum(i32* %arraydecay, i32 4, i32 9)
  store i32* %call, i32** %r1, align 8
  %1 = load i32*, i32** %r1, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i32*, i32** %r1, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 1
  %5 = load i32, i32* %arrayidx1, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

6:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %6, %cond.true3
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
