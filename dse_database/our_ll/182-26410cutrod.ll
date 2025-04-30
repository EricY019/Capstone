; ModuleID = 'code/182-26410cutrod.c'
source_filename = "code/182-26410cutrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.p = private unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 5, i32 8, i32 9, i32 10, i32 17, i32 17, i32 20, i32 24, i32 30], align 16
@.str = private unnamed_addr constant [12 x i8] c"the max:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"my cut:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca [11 x i32], align 16
  %max = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [11 x i32]* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([11 x i32]* @__const.main.p to i8*), i64 44, i1 false)
  %arraydecay = getelementptr inbounds [11 x i32], [11 x i32]* %p, i64 0, i64 0
  %call = call i32 @cut_rod(i32* %arraydecay, i32 12)
  store i32 %call, i32* %max, align 4
  %1 = load i32, i32* %max, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cut_rod(i32* %p, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %0)
  store i32 0, i32* %q, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sle i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %q, align 4
  %5 = load i32*, i32** %p.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32*, i32** %p.addr, align 8
  %9 = load i32, i32* %n.addr, align 4
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %9, %10
  %call2 = call i32 @cut_rod(i32* %8, i32 %sub)
  %add = add nsw i32 %7, %call2
  %cmp3 = icmp sgt i32 %4, %add
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load i32, i32* %q, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load i32*, i32** %p.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 %idxprom4
  %14 = load i32, i32* %arrayidx5, align 4
  %15 = load i32*, i32** %p.addr, align 8
  %16 = load i32, i32* %n.addr, align 4
  %17 = load i32, i32* %i, align 4
  %sub6 = sub nsw i32 %16, %17
  %call7 = call i32 @cut_rod(i32* %15, i32 %sub6)
  %add8 = add nsw i32 %14, %call7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %add8, %cond.false ]
  store i32 %cond, i32* %q, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %q, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
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
