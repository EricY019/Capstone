; ModuleID = 'code/227-17609test_perfect_hash.c'
source_filename = "code/227-17609test_perfect_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.num_table = private unnamed_addr constant [11 x i32] [i32 10, i32 100, i32 32, i32 45, i32 58, i32 126, i32 3, i32 29, i32 200, i32 400, i32 0], align 16
@.str = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  switch i32 %0, label %sw.default [
    i32 10, label %sw.bb
    i32 100, label %sw.bb1
    i32 32, label %sw.bb2
    i32 45, label %sw.bb3
    i32 58, label %sw.bb4
    i32 126, label %sw.bb5
    i32 3, label %sw.bb6
    i32 29, label %sw.bb7
    i32 200, label %sw.bb8
    i32 400, label %sw.bb9
    i32 0, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 2, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 3, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 4, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 5, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 6, i32* %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  store i32 7, i32* %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  store i32 8, i32* %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %entry
  store i32 9, i32* %retval, align 4
  br label %return

sw.bb10:                                          ; preds = %entry
  store i32 10, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perfect_hash(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %xor = xor i32 %0, 28
  %rem = srem i32 %xor, 13
  ret i32 %rem
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_table(i32 %n, i32* %num_table, i32 %num) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %num_table.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32* %num_table, i32** %num_table.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %num_table.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  store i32 %6, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num_table = alloca [11 x i32], align 16
  %i = alloca i32, align 4
  %num = alloca i32, align 4
  %val = alloca i32, align 4
  %val6 = alloca i32, align 4
  %val18 = alloca i32, align 4
  %val31 = alloca i32, align 4
  %times = alloca i32, align 4
  %val46 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [11 x i32]* %num_table to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([11 x i32]* @__const.main.num_table to i8*), i64 44, i1 false)
  store i32 0, i32* %i, align 4
  store i32 11, i32* %num, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [11 x i32], [11 x i32]* %num_table, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 @hash(i32 %4)
  store i32 %call, i32* %val, align 4
  %5 = load i32, i32* %val, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %for.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %num, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body5, label %for.end13

for.body5:                                        ; preds = %for.cond3
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [11 x i32], [11 x i32]* %num_table, i64 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  %call9 = call i32 @perfect_hash(i32 %10)
  store i32 %call9, i32* %val6, align 4
  %11 = load i32, i32* %val6, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body5
  %12 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond3, !llvm.loop !7

for.end13:                                        ; preds = %for.cond3
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc24, %for.end13
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %num, align 4
  %cmp16 = icmp slt i32 %13, %14
  br i1 %cmp16, label %for.body17, label %for.end26

for.body17:                                       ; preds = %for.cond15
  %15 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [11 x i32], [11 x i32]* %num_table, i64 0, i64 %idxprom19
  %16 = load i32, i32* %arrayidx20, align 4
  %shl = shl i32 %16, 2
  %17 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [11 x i32], [11 x i32]* %num_table, i64 0, i64 %idxprom21
  %18 = load i32, i32* %arrayidx22, align 4
  %shr = ashr i32 %18, 2
  %xor = xor i32 %shl, %shr
  %and = and i32 %xor, 15
  store i32 %and, i32* %val18, align 4
  %19 = load i32, i32* %val18, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body17
  %20 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond15, !llvm.loop !8

for.end26:                                        ; preds = %for.cond15
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc36, %for.end26
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %num, align 4
  %cmp29 = icmp slt i32 %21, %22
  br i1 %cmp29, label %for.body30, label %for.end38

for.body30:                                       ; preds = %for.cond28
  %23 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %23 to i64
  %arrayidx33 = getelementptr inbounds [11 x i32], [11 x i32]* %num_table, i64 0, i64 %idxprom32
  %24 = load i32, i32* %arrayidx33, align 4
  %arraydecay = getelementptr inbounds [11 x i32], [11 x i32]* %num_table, i64 0, i64 0
  %25 = load i32, i32* %num, align 4
  %call34 = call i32 @search_table(i32 %24, i32* %arraydecay, i32 %25)
  store i32 %call34, i32* %val31, align 4
  %26 = load i32, i32* %val31, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body30
  %27 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %27, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond28, !llvm.loop !9

for.end38:                                        ; preds = %for.cond28
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %times, align 4
  store i32 0, i32* %times, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.end38
  %28 = load i32, i32* %times, align 4
  %cmp41 = icmp slt i32 %28, 10000000
  br i1 %cmp41, label %for.body42, label %for.end55

for.body42:                                       ; preds = %for.cond40
  store i32 0, i32* %i, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc50, %for.body42
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %num, align 4
  %cmp44 = icmp slt i32 %29, %30
  br i1 %cmp44, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond43
  %31 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %31 to i64
  %arrayidx48 = getelementptr inbounds [11 x i32], [11 x i32]* %num_table, i64 0, i64 %idxprom47
  %32 = load i32, i32* %arrayidx48, align 4
  %call49 = call i32 @hash(i32 %32)
  store i32 %call49, i32* %val46, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.body45
  %33 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %33, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond43, !llvm.loop !10

for.end52:                                        ; preds = %for.cond43
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %34 = load i32, i32* %times, align 4
  %inc54 = add nsw i32 %34, 1
  store i32 %inc54, i32* %times, align 4
  br label %for.cond40, !llvm.loop !11

for.end55:                                        ; preds = %for.cond40
  %35 = load i32, i32* %retval, align 4
  ret i32 %35
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
