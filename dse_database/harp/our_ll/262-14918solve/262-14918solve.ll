; ModuleID = 'code/262-14918solve.c'
source_filename = "code/262-14918solve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [4 x i32] [i32 2, i32 3, i32 4, i32 1], align 16
@__const.main.b = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 1], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @maxArea(i32* %a, i32 %n) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %max = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  %i = alloca i32, align 4
  %area = alloca i32, align 4
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 -1, i32* %max, align 4
  store i32 0, i32* %left, align 4
  %0 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %right, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %a.addr, align 8
  %4 = load i32, i32* %left, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32*, i32** %a.addr, align 8
  %7 = load i32, i32* %right, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp sle i32 %5, %8
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %9 = load i32*, i32** %a.addr, align 8
  %10 = load i32, i32* %left, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %9, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load i32*, i32** %a.addr, align 8
  %13 = load i32, i32* %right, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %12, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %14, %cond.false ]
  %15 = load i32, i32* %right, align 4
  %16 = load i32, i32* %left, align 4
  %sub8 = sub nsw i32 %15, %16
  %mul = mul nsw i32 %cond, %sub8
  store i32 %mul, i32* %area, align 4
  %17 = load i32, i32* %max, align 4
  %18 = load i32, i32* %area, align 4
  %cmp9 = icmp slt i32 %17, %18
  br i1 %cmp9, label %cond.true10, label %cond.false11

cond.true10:                                      ; preds = %cond.end
  %19 = load i32, i32* %area, align 4
  br label %cond.end12

cond.false11:                                     ; preds = %cond.end
  %20 = load i32, i32* %max, align 4
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false11, %cond.true10
  %cond13 = phi i32 [ %19, %cond.true10 ], [ %20, %cond.false11 ]
  store i32 %cond13, i32* %max, align 4
  %21 = load i32*, i32** %a.addr, align 8
  %22 = load i32, i32* %left, align 4
  %idxprom14 = sext i32 %22 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %21, i64 %idxprom14
  %23 = load i32, i32* %arrayidx15, align 4
  %24 = load i32*, i32** %a.addr, align 8
  %25 = load i32, i32* %right, align 4
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  %26 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp sle i32 %23, %26
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end12
  %27 = load i32*, i32** %a.addr, align 8
  %28 = load i32, i32* %left, align 4
  %idxprom19 = sext i32 %28 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %27, i64 %idxprom19
  %29 = load i32, i32* %arrayidx20, align 4
  store i32 %29, i32* %l, align 4
  %30 = load i32, i32* %left, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %left, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %31 = load i32, i32* %left, align 4
  %32 = load i32, i32* %right, align 4
  %cmp21 = icmp slt i32 %31, %32
  br i1 %cmp21, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %33 = load i32*, i32** %a.addr, align 8
  %34 = load i32, i32* %left, align 4
  %idxprom22 = sext i32 %34 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %33, i64 %idxprom22
  %35 = load i32, i32* %arrayidx23, align 4
  %36 = load i32, i32* %l, align 4
  %cmp24 = icmp sle i32 %35, %36
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %37 = phi i1 [ false, %while.cond ], [ %cmp24, %land.rhs ]
  br i1 %37, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %38 = load i32, i32* %left, align 4
  %inc25 = add nsw i32 %38, 1
  store i32 %inc25, i32* %left, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  br label %if.end

if.else:                                          ; preds = %cond.end12
  %39 = load i32*, i32** %a.addr, align 8
  %40 = load i32, i32* %right, align 4
  %idxprom26 = sext i32 %40 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %39, i64 %idxprom26
  %41 = load i32, i32* %arrayidx27, align 4
  store i32 %41, i32* %r, align 4
  %42 = load i32, i32* %right, align 4
  %dec = add nsw i32 %42, -1
  store i32 %dec, i32* %right, align 4
  br label %while.cond28

while.cond28:                                     ; preds = %while.body35, %if.else
  %43 = load i32, i32* %left, align 4
  %44 = load i32, i32* %right, align 4
  %cmp29 = icmp slt i32 %43, %44
  br i1 %cmp29, label %land.rhs30, label %land.end34

land.rhs30:                                       ; preds = %while.cond28
  %45 = load i32*, i32** %a.addr, align 8
  %46 = load i32, i32* %right, align 4
  %idxprom31 = sext i32 %46 to i64
  %arrayidx32 = getelementptr inbounds i32, i32* %45, i64 %idxprom31
  %47 = load i32, i32* %arrayidx32, align 4
  %48 = load i32, i32* %r, align 4
  %cmp33 = icmp sle i32 %47, %48
  br label %land.end34

land.end34:                                       ; preds = %land.rhs30, %while.cond28
  %49 = phi i1 [ false, %while.cond28 ], [ %cmp33, %land.rhs30 ]
  br i1 %49, label %while.body35, label %while.end37

while.body35:                                     ; preds = %land.end34
  %50 = load i32, i32* %right, align 4
  %dec36 = add nsw i32 %50, -1
  store i32 %dec36, i32* %right, align 4
  br label %while.cond28, !llvm.loop !6

while.end37:                                      ; preds = %land.end34
  br label %if.end

if.end:                                           ; preds = %while.end37, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %51 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %51, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %52 = load i32, i32* %max, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca [4 x i32], align 16
  %b = alloca [3 x i32], align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [4 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i32]* @__const.main.a to i8*), i64 16, i1 false)
  %1 = bitcast [3 x i32]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([3 x i32]* @__const.main.b to i8*), i64 12, i1 false)
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0
  %call = call i32 @maxArea(i32* %arraydecay, i32 4)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %call)
  %arraydecay2 = getelementptr inbounds [3 x i32], [3 x i32]* %b, i64 0, i64 0
  %call3 = call i32 @maxArea(i32* %arraydecay2, i32 3)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %call3)
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
