; ModuleID = './code/226-13334game31.c'
source_filename = "./code/226-13334game31.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node_t = type { i32, i32, [7 x i32], ptr, [7 x ptr] }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @nodeCreate(ptr noundef %parent, i32 noundef %cardNum) #0 {
entry:
  %parent.addr = alloca ptr, align 8
  %cardNum.addr = alloca i32, align 4
  %nodeNew = alloca ptr, align 8
  %i = alloca i32, align 4
  %i15 = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  store i32 %cardNum, ptr %cardNum.addr, align 4
  %call = call ptr @malloc(i64 noundef 104) #2
  store ptr %call, ptr %nodeNew, align 8
  %0 = load ptr, ptr %parent.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8
  %2 = load ptr, ptr %nodeNew, align 8
  %parent1 = getelementptr inbounds %struct.node_t, ptr %2, i32 0, i32 3
  store ptr %1, ptr %parent1, align 8
  %3 = load ptr, ptr %nodeNew, align 8
  %4 = load ptr, ptr %parent.addr, align 8
  %child = getelementptr inbounds %struct.node_t, ptr %4, i32 0, i32 4
  %5 = load i32, ptr %cardNum.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [7 x ptr], ptr %child, i64 0, i64 %idxprom
  store ptr %3, ptr %arrayidx, align 8
  %6 = load ptr, ptr %parent.addr, align 8
  %turnNum = getelementptr inbounds %struct.node_t, ptr %6, i32 0, i32 0
  %7 = load i32, ptr %turnNum, align 8
  %add = add nsw i32 %7, 1
  %8 = load ptr, ptr %nodeNew, align 8
  %turnNum2 = getelementptr inbounds %struct.node_t, ptr %8, i32 0, i32 0
  store i32 %add, ptr %turnNum2, align 8
  %9 = load ptr, ptr %parent.addr, align 8
  %sum = getelementptr inbounds %struct.node_t, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %sum, align 4
  %11 = load i32, ptr %cardNum.addr, align 4
  %add3 = add nsw i32 %10, %11
  %12 = load ptr, ptr %nodeNew, align 8
  %sum4 = getelementptr inbounds %struct.node_t, ptr %12, i32 0, i32 1
  store i32 %add3, ptr %sum4, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %13, 7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %parent.addr, align 8
  %cardsLeft = getelementptr inbounds %struct.node_t, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [7 x i32], ptr %cardsLeft, i64 0, i64 %idxprom6
  %16 = load i32, ptr %arrayidx7, align 4
  %17 = load ptr, ptr %nodeNew, align 8
  %cardsLeft8 = getelementptr inbounds %struct.node_t, ptr %17, i32 0, i32 2
  %18 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds [7 x i32], ptr %cardsLeft8, i64 0, i64 %idxprom9
  store i32 %16, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %nodeNew, align 8
  %cardsLeft11 = getelementptr inbounds %struct.node_t, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %cardNum.addr, align 4
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds [7 x i32], ptr %cardsLeft11, i64 0, i64 %idxprom12
  %22 = load i32, ptr %arrayidx13, align 4
  %sub = sub nsw i32 %22, 1
  store i32 %sub, ptr %arrayidx13, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %23 = load ptr, ptr %nodeNew, align 8
  %parent14 = getelementptr inbounds %struct.node_t, ptr %23, i32 0, i32 3
  store ptr null, ptr %parent14, align 8
  store i32 1, ptr %i15, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc22, %if.else
  %24 = load i32, ptr %i15, align 4
  %cmp17 = icmp slt i32 %24, 7
  br i1 %cmp17, label %for.body18, label %for.end24

for.body18:                                       ; preds = %for.cond16
  %25 = load ptr, ptr %nodeNew, align 8
  %cardsLeft19 = getelementptr inbounds %struct.node_t, ptr %25, i32 0, i32 2
  %26 = load i32, ptr %i15, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds [7 x i32], ptr %cardsLeft19, i64 0, i64 %idxprom20
  store i32 4, ptr %arrayidx21, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %for.body18
  %27 = load i32, ptr %i15, align 4
  %inc23 = add nsw i32 %27, 1
  store i32 %inc23, ptr %i15, align 4
  br label %for.cond16, !llvm.loop !7

for.end24:                                        ; preds = %for.cond16
  %28 = load ptr, ptr %nodeNew, align 8
  %cardsLeft25 = getelementptr inbounds %struct.node_t, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %cardNum.addr, align 4
  %idxprom26 = sext i32 %29 to i64
  %arrayidx27 = getelementptr inbounds [7 x i32], ptr %cardsLeft25, i64 0, i64 %idxprom26
  %30 = load i32, ptr %arrayidx27, align 4
  %sub28 = sub nsw i32 %30, 1
  store i32 %sub28, ptr %arrayidx27, align 4
  %31 = load i32, ptr %cardNum.addr, align 4
  %32 = load ptr, ptr %nodeNew, align 8
  %sum29 = getelementptr inbounds %struct.node_t, ptr %32, i32 0, i32 1
  store i32 %31, ptr %sum29, align 4
  %33 = load ptr, ptr %nodeNew, align 8
  %turnNum30 = getelementptr inbounds %struct.node_t, ptr %33, i32 0, i32 0
  store i32 0, ptr %turnNum30, align 8
  br label %if.end

if.end:                                           ; preds = %for.end24, %for.end
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
