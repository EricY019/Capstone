; ModuleID = 'code/080-17205bubblesort.c'
source_filename = "code/080-17205bubblesort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c", %d\00", align 1
@__const.main.v = private unnamed_addr constant [11 x i32] [i32 1, i32 7, i32 14, i32 12, i32 12, i32 3, i32 5, i32 4, i32 732, i32 1000, i32 1], align 16
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printarray(i32 %size, i32* %v) #0 {
entry:
  %size.addr = alloca i32, align 4
  %v.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32* %v, i32** %v.addr, align 8
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %v.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %v.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx2, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mini(i32 %size, i32* %v) #0 {
entry:
  %size.addr = alloca i32, align 4
  %v.addr = alloca i32*, align 8
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32* %v, i32** %v.addr, align 8
  store i32 0, i32* %min, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %v.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %v.addr, align 8
  %6 = load i32, i32* %min, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp slt i32 %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %min, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swapi(i32* %v, i32 %j, i32 %i) #0 {
entry:
  %v.addr = alloca i32*, align 8
  %j.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32* %v, i32** %v.addr, align 8
  store i32 %j, i32* %j.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32*, i32** %v.addr, align 8
  %1 = load i32, i32* %j.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %temp, align 4
  %3 = load i32*, i32** %v.addr, align 8
  %4 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32*, i32** %v.addr, align 8
  %7 = load i32, i32* %j.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 %idxprom3
  store i32 %5, i32* %arrayidx4, align 4
  %8 = load i32, i32* %temp, align 4
  %9 = load i32*, i32** %v.addr, align 8
  %10 = load i32, i32* %i.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %idxprom5
  store i32 %8, i32* %arrayidx6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bubblesort(i32 %size, i32* %v) #0 {
entry:
  %size.addr = alloca i32, align 4
  %v.addr = alloca i32*, align 8
  %max = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32* %v, i32** %v.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %size.addr, align 4
  %2 = load i32*, i32** %v.addr, align 8
  %call = call i32 @mini(i32 %1, i32* %2)
  store i32 %call, i32* %max, align 4
  %3 = load i32*, i32** %v.addr, align 8
  %4 = load i32, i32* %max, align 4
  call void @swapi(i32* %3, i32 %4, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %size.addr, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %size.addr, align 4
  %6 = load i32*, i32** %v.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %6, i32 1
  store i32* %incdec.ptr, i32** %v.addr, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %v = alloca [11 x i32], align 16
  %size = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [11 x i32]* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([11 x i32]* @__const.main.v to i8*), i64 44, i1 false)
  store i32 11, i32* %size, align 4
  %1 = load i32, i32* %size, align 4
  %arraydecay = getelementptr inbounds [11 x i32], [11 x i32]* %v, i64 0, i64 0
  call void @printarray(i32 %1, i32* %arraydecay)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %2 = load i32, i32* %size, align 4
  %arraydecay1 = getelementptr inbounds [11 x i32], [11 x i32]* %v, i64 0, i64 0
  call void @bubblesort(i32 %2, i32* %arraydecay1)
  %3 = load i32, i32* %size, align 4
  %arraydecay2 = getelementptr inbounds [11 x i32], [11 x i32]* %v, i64 0, i64 0
  call void @printarray(i32 %3, i32* %arraydecay2)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
