; ModuleID = 'code/058-22161branch_preditction.c'
source_filename = "code/058-22161branch_preditction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Running %s: \00", align 1
@__func__.sorted_if = private unnamed_addr constant [10 x i8] c"sorted_if\00", align 1
@sdata = dso_local global [100000 x i32] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [18 x i8] c"sum = %llu, took \00", align 1
@__func__.sorted_bitwise = private unnamed_addr constant [15 x i8] c"sorted_bitwise\00", align 1
@__func__.sorted_ternary = private unnamed_addr constant [15 x i8] c"sorted_ternary\00", align 1
@__func__.unsorted_if = private unnamed_addr constant [12 x i8] c"unsorted_if\00", align 1
@data = dso_local global [100000 x i32] zeroinitializer, align 16
@__func__.unsorted_bitwise = private unnamed_addr constant [17 x i8] c"unsorted_bitwise\00", align 1
@__func__.unsorted_ternary = private unnamed_addr constant [17 x i8] c"unsorted_ternary\00", align 1
@__const.main.functions = private unnamed_addr constant [6 x void ()*] [void ()* @sorted_if, void ()* @sorted_bitwise, void ()* @sorted_ternary, void ()* @unsorted_if, void ()* @unsorted_bitwise, void ()* @unsorted_ternary], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"%.f ms\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %sub = sub nsw i32 %2, %5
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sorted_if() #0 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i64, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.sorted_if, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  store i64 0, i64* %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], [100000 x i32]* @sdata, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %2, 128
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [100000 x i32], [100000 x i32]* @sdata, i64 0, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64, i64* %sum, align 8
  %add = add nsw i64 %5, %conv
  store i64 %add, i64* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %sum, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %7)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sorted_bitwise() #0 {
entry:
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %sum = alloca i64, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.sorted_bitwise, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  store i64 0, i64* %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], [100000 x i32]* @sdata, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %2, 128
  %shr = ashr i32 %sub, 31
  store i32 %shr, i32* %t, align 4
  %3 = load i32, i32* %t, align 4
  %neg = xor i32 %3, -1
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [100000 x i32], [100000 x i32]* @sdata, i64 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %neg, %5
  %conv = sext i32 %and to i64
  %6 = load i64, i64* %sum, align 8
  %add = add nsw i64 %6, %conv
  store i64 %add, i64* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %sum, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sorted_ternary() #0 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i64, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.sorted_ternary, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  store i64 0, i64* %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], [100000 x i32]* @sdata, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %2, 192
  %conv = zext i1 %cmp1 to i32
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [100000 x i32], [100000 x i32]* @sdata, i64 0, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  %mul = mul nsw i32 %conv, %4
  %conv4 = sext i32 %mul to i64
  %5 = load i64, i64* %sum, align 8
  %add = add nsw i64 %5, %conv4
  store i64 %add, i64* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %sum, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unsorted_if() #0 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i64, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.unsorted_if, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  store i64 0, i64* %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], [100000 x i32]* @data, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %2, 128
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [100000 x i32], [100000 x i32]* @data, i64 0, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  %conv = sext i32 %4 to i64
  %5 = load i64, i64* %sum, align 8
  %add = add nsw i64 %5, %conv
  store i64 %add, i64* %sum, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %sum, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unsorted_bitwise() #0 {
entry:
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %sum = alloca i64, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.unsorted_bitwise, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  store i64 0, i64* %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], [100000 x i32]* @data, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %2, 128
  %shr = ashr i32 %sub, 31
  store i32 %shr, i32* %t, align 4
  %3 = load i32, i32* %t, align 4
  %neg = xor i32 %3, -1
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [100000 x i32], [100000 x i32]* @data, i64 0, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %and = and i32 %neg, %5
  %conv = sext i32 %and to i64
  %6 = load i64, i64* %sum, align 8
  %add = add nsw i64 %6, %conv
  store i64 %add, i64* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %sum, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unsorted_ternary() #0 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i64, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.unsorted_ternary, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  store i64 0, i64* %sum, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], [100000 x i32]* @data, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %2, 192
  %conv = zext i1 %cmp1 to i32
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [100000 x i32], [100000 x i32]* @data, i64 0, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  %mul = mul nsw i32 %conv, %4
  %conv4 = sext i32 %mul to i64
  %5 = load i64, i64* %sum, align 8
  %add = add nsw i64 %5, %conv4
  store i64 %add, i64* %sum, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %sum, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %functions = alloca [6 x void ()*], align 16
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %elapsed = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [6 x void ()*]* %functions to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x void ()*]* @__const.main.functions to i8*), i64 48, i1 false)
  store i32 6, i32* %i, align 4
  %call = call i64 @time(i64* null) #4
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %1, 100000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #4
  %rem = srem i32 %call2, 256
  %2 = load i32, i32* %c, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100000 x i32], [100000 x i32]* @data, i64 0, i64 %idxprom
  store i32 %rem, i32* %arrayidx, align 4
  %3 = load i32, i32* %c, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [100000 x i32], [100000 x i32]* @sdata, i64 0, i64 %idxprom3
  store i32 %rem, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %c, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  call void @qsort(i8* bitcast ([100000 x i32]* @sdata to i8*), i64 100000, i64 4, i32 (i8*, i8*)* @compare)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %5 = load i32, i32* %i, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %i, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call i64 @clock() #4
  store i64 %call5, i64* %elapsed, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [6 x void ()*], [6 x void ()*]* %functions, i64 0, i64 %idxprom6
  %7 = load void ()*, void ()** %arrayidx7, align 8
  call void %7()
  %call8 = call i64 @clock() #4
  %8 = load i64, i64* %elapsed, align 8
  %sub = sub nsw i64 %call8, %8
  %conv9 = sitofp i64 %sub to double
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double %conv9)
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind
declare dso_local i64 @clock() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!12 = distinct !{!12, !5}
