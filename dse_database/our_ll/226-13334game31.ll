; ModuleID = 'code/226-13334game31.c'
source_filename = "code/226-13334game31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_t = type { i32, i32, [7 x i32], %struct.node_t*, [7 x %struct.node_t*] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nodeCreate(%struct.node_t* %parent, i32 %cardNum) #0 {
entry:
  %parent.addr = alloca %struct.node_t*, align 8
  %cardNum.addr = alloca i32, align 4
  %nodeNew = alloca %struct.node_t*, align 8
  %i = alloca i32, align 4
  %i15 = alloca i32, align 4
  store %struct.node_t* %parent, %struct.node_t** %parent.addr, align 8
  store i32 %cardNum, i32* %cardNum.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 104) #2
  %0 = bitcast i8* %call to %struct.node_t*
  store %struct.node_t* %0, %struct.node_t** %nodeNew, align 8
  %1 = load %struct.node_t*, %struct.node_t** %parent.addr, align 8
  %cmp = icmp ne %struct.node_t* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.node_t*, %struct.node_t** %parent.addr, align 8
  %3 = load %struct.node_t*, %struct.node_t** %nodeNew, align 8
  %parent1 = getelementptr inbounds %struct.node_t, %struct.node_t* %3, i32 0, i32 3
  store %struct.node_t* %2, %struct.node_t** %parent1, align 8
  %4 = load %struct.node_t*, %struct.node_t** %nodeNew, align 8
  %5 = load %struct.node_t*, %struct.node_t** %parent.addr, align 8
  %child = getelementptr inbounds %struct.node_t, %struct.node_t* %5, i32 0, i32 4
  %6 = load i32, i32* %cardNum.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [7 x %struct.node_t*], [7 x %struct.node_t*]* %child, i64 0, i64 %idxprom
  store %struct.node_t* %4, %struct.node_t** %arrayidx, align 8
  %7 = load %struct.node_t*, %struct.node_t** %parent.addr, align 8
  %turnNum = getelementptr inbounds %struct.node_t, %struct.node_t* %7, i32 0, i32 0
  %8 = load i32, i32* %turnNum, align 8
  %add = add nsw i32 %8, 1
  %9 = load %struct.node_t*, %struct.node_t** %nodeNew, align 8
  %turnNum2 = getelementptr inbounds %struct.node_t, %struct.node_t* %9, i32 0, i32 0
  store i32 %add, i32* %turnNum2, align 8
  %10 = load %struct.node_t*, %struct.node_t** %parent.addr, align 8
  %sum = getelementptr inbounds %struct.node_t, %struct.node_t* %10, i32 0, i32 1
  %11 = load i32, i32* %sum, align 4
  %12 = load i32, i32* %cardNum.addr, align 4
  %add3 = add nsw i32 %11, %12
  %13 = load %struct.node_t*, %struct.node_t** %nodeNew, align 8
  %sum4 = getelementptr inbounds %struct.node_t, %struct.node_t* %13, i32 0, i32 1
  store i32 %add3, i32* %sum4, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %14, 7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.node_t*, %struct.node_t** %parent.addr, align 8
  %cardsLeft = getelementptr inbounds %struct.node_t, %struct.node_t* %15, i32 0, i32 2
  %16 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds [7 x i32], [7 x i32]* %cardsLeft, i64 0, i64 %idxprom6
  %17 = load i32, i32* %arrayidx7, align 4
  %18 = load %struct.node_t*, %struct.node_t** %nodeNew, align 8
  %cardsLeft8 = getelementptr inbounds %struct.node_t, %struct.node_t* %18, i32 0, i32 2
  %19 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds [7 x i32], [7 x i32]* %cardsLeft8, i64 0, i64 %idxprom9
  store i32 %17, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %21 = load %struct.node_t*, %struct.node_t** %nodeNew, align 8
  %cardsLeft11 = getelementptr inbounds %struct.node_t, %struct.node_t* %21, i32 0, i32 2
  %22 = load i32, i32* %cardNum.addr, align 4
  %idxprom12 = sext i32 %22 to i64
  %arrayidx13 = getelementptr inbounds [7 x i32], [7 x i32]* %cardsLeft11, i64 0, i64 %idxprom12
  %23 = load i32, i32* %arrayidx13, align 4
  %sub = sub nsw i32 %23, 1
  store i32 %sub, i32* %arrayidx13, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %24 = load %struct.node_t*, %struct.node_t** %nodeNew, align 8
  %parent14 = getelementptr inbounds %struct.node_t, %struct.node_t* %24, i32 0, i32 3
  store %struct.node_t* null, %struct.node_t** %parent14, align 8
  store i32 1, i32* %i15, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc22, %if.else
  %25 = load i32, i32* %i15, align 4
  %cmp17 = icmp slt i32 %25, 7
  br i1 %cmp17, label %for.body18, label %for.end24

for.body18:                                       ; preds = %for.cond16
  %26 = load %struct.node_t*, %struct.node_t** %nodeNew, align 8
  %cardsLeft19 = getelementptr inbounds %struct.node_t, %struct.node_t* %26, i32 0, i32 2
  %27 = load i32, i32* %i15, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds [7 x i32], [7 x i32]* %cardsLeft19, i64 0, i64 %idxprom20
  store i32 4, i32* %arrayidx21, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %for.body18
  %28 = load i32, i32* %i15, align 4
  %inc23 = add nsw i32 %28, 1
  store i32 %inc23, i32* %i15, align 4
  br label %for.cond16, !llvm.loop !6

for.end24:                                        ; preds = %for.cond16
  %29 = load %struct.node_t*, %struct.node_t** %nodeNew, align 8
  %cardsLeft25 = getelementptr inbounds %struct.node_t, %struct.node_t* %29, i32 0, i32 2
  %30 = load i32, i32* %cardNum.addr, align 4
  %idxprom26 = sext i32 %30 to i64
  %arrayidx27 = getelementptr inbounds [7 x i32], [7 x i32]* %cardsLeft25, i64 0, i64 %idxprom26
  %31 = load i32, i32* %arrayidx27, align 4
  %sub28 = sub nsw i32 %31, 1
  store i32 %sub28, i32* %arrayidx27, align 4
  %32 = load i32, i32* %cardNum.addr, align 4
  %33 = load %struct.node_t*, %struct.node_t** %nodeNew, align 8
  %sum29 = getelementptr inbounds %struct.node_t, %struct.node_t* %33, i32 0, i32 1
  store i32 %32, i32* %sum29, align 4
  %34 = load %struct.node_t*, %struct.node_t** %nodeNew, align 8
  %turnNum30 = getelementptr inbounds %struct.node_t, %struct.node_t* %34, i32 0, i32 0
  store i32 0, i32* %turnNum30, align 8
  br label %if.end

if.end:                                           ; preds = %for.end24, %for.end
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
