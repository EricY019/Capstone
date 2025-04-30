; ModuleID = 'code/090-8594test2.c'
source_filename = "code/090-8594test2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.array = private unnamed_addr constant <{ [11 x i32], [9 x i32] }> <{ [11 x i32] [i32 1, i32 4, i32 6, i32 8, i32 10, i32 13, i32 17, i32 18, i32 24, i32 26, i32 30], [9 x i32] zeroinitializer }>, align 16
@.str = private unnamed_addr constant [18 x i8] c"%d's index is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d can't be found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search(i32* %array, i32 %a, i32 %be, i32 %en) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 8
  %a.addr = alloca i32, align 4
  %be.addr = alloca i32, align 4
  %en.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %be, i32* %be.addr, align 4
  store i32 %en, i32* %en.addr, align 4
  %0 = load i32, i32* %be.addr, align 4
  %1 = load i32, i32* %en.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp eq i32 %0, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %be.addr, align 4
  store i32 %2, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %array.addr, align 8
  %4 = load i32, i32* %be.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp eq i32 %5, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %7 = load i32, i32* %be.addr, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %8 = load i32, i32* %be.addr, align 4
  %9 = load i32, i32* %en.addr, align 4
  %add = add nsw i32 %8, %9
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %mid, align 4
  %10 = load i32*, i32** %array.addr, align 8
  %11 = load i32, i32* %mid, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  %12 = load i32, i32* %arrayidx5, align 4
  %13 = load i32, i32* %a.addr, align 4
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end3
  %14 = load i32, i32* %mid, align 4
  store i32 %14, i32* %be.addr, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end3
  %15 = load i32, i32* %mid, align 4
  store i32 %15, i32* %en.addr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %16 = load i32*, i32** %array.addr, align 8
  %17 = load i32, i32* %a.addr, align 4
  %18 = load i32, i32* %be.addr, align 4
  %19 = load i32, i32* %en.addr, align 4
  %call = call i32 @search(i32* %16, i32 %17, i32 %18, i32 %19)
  store i32 %call, i32* %result, align 4
  %20 = load i32, i32* %result, align 4
  store i32 %20, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then2, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [20 x i32], align 16
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [20 x i32]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast (<{ [11 x i32], [9 x i32] }>* @__const.main.array to i8*), i64 80, i1 false)
  store i32 -1, i32* %index, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [20 x i32], [20 x i32]* %array, i64 0, i64 0
  %2 = load i32, i32* %i, align 4
  %call = call i32 @search(i32* %arraydecay, i32 %2, i32 1, i32 18)
  store i32 %call, i32* %index, align 4
  %3 = load i32, i32* %index, align 4
  %cmp1 = icmp ne i32 %3, -1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %index, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [20 x i32], [20 x i32]* %array, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %index, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %6)
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
