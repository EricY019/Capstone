; ModuleID = 'code/031-12718select_sort.c'
source_filename = "code/031-12718select_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [11 x i32] [i32 9, i32 7, i32 3, i32 4, i32 6, i32 2, i32 0, i32 11, i32 5, i32 10, i32 1], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @select_sort(i32* %a, i32 %a_len) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %a_len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %min = alloca i32, align 4
  %min_pos = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %a_len, i32* %a_len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %a_len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %min, align 4
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %min_pos, align 4
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %a_len.addr, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %9 = load i32*, i32** %a.addr, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  %12 = load i32, i32* %min, align 4
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %13 = load i32*, i32** %a.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  %15 = load i32, i32* %arrayidx8, align 4
  store i32 %15, i32* %min, align 4
  %16 = load i32, i32* %j, align 4
  store i32 %16, i32* %min_pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %18 = load i32*, i32** %a.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %18, i64 %idxprom9
  %20 = load i32, i32* %arrayidx10, align 4
  %21 = load i32*, i32** %a.addr, align 8
  %22 = load i32, i32* %min_pos, align 4
  %idxprom11 = sext i32 %22 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %21, i64 %idxprom11
  store i32 %20, i32* %arrayidx12, align 4
  %23 = load i32, i32* %min, align 4
  %24 = load i32*, i32** %a.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %24, i64 %idxprom13
  store i32 %23, i32* %arrayidx14, align 4
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %26, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [11 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [11 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([11 x i32]* @__const.main.a to i8*), i64 44, i1 false)
  %arraydecay = getelementptr inbounds [11 x i32], [11 x i32]* %a, i64 0, i64 0
  call void @select_sort(i32* %arraydecay, i32 11)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [11 x i32], [11 x i32]* %a, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
