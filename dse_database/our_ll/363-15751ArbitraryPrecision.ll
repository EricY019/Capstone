; ModuleID = 'code/363-15751ArbitraryPrecision.c'
source_filename = "code/363-15751ArbitraryPrecision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c", %4d: \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printArray(i8* %data, i32 %n, i32 %maxPos) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %maxPos.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %maxPos, i32* %maxPos.addr, align 4
  %0 = load i32, i32* %maxPos.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %0)
  %1 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %maxPos.addr, align 4
  %cmp1 = icmp sle i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %conv)
  br label %if.end

if.else:                                          ; preds = %for.body
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ArbitraryPrecision_n(i32 %base, i32 %n) #0 {
entry:
  %base.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %data = alloca [1205 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %maxPos = alloca i32, align 4
  %increase = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %base, i32* %base.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %arraydecay = getelementptr inbounds [1205 x i8], [1205 x i8]* %data, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 0, i64 1205, i1 false)
  %arrayidx = getelementptr inbounds [1205 x i8], [1205 x i8]* %data, i64 0, i64 0
  store i8 1, i8* %arrayidx, align 16
  store i32 0, i32* %maxPos, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc28, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %2)
  store i32 0, i32* %increase, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %maxPos, align 4
  %cmp2 = icmp sle i32 %3, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %temp, align 4
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [1205 x i8], [1205 x i8]* %data, i64 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx4, align 1
  %conv = zext i8 %6 to i32
  %cmp5 = icmp sgt i32 %conv, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [1205 x i8], [1205 x i8]* %data, i64 0, i64 %idxprom7
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %9 = load i32, i32* %base.addr, align 4
  %mul = mul nsw i32 %conv9, %9
  store i32 %mul, i32* %temp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %10 = load i32, i32* %increase, align 4
  %11 = load i32, i32* %temp, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %temp, align 4
  %12 = load i32, i32* %temp, align 4
  %cmp10 = icmp sge i32 %12, 10
  %13 = zext i1 %cmp10 to i64
  %cond = select i1 %cmp10, i32 1, i32 0
  store i32 %cond, i32* %increase, align 4
  %14 = load i32, i32* %temp, align 4
  %rem = srem i32 %14, 10
  %conv12 = trunc i32 %rem to i8
  %15 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [1205 x i8], [1205 x i8]* %data, i64 0, i64 %idxprom13
  store i8 %conv12, i8* %arrayidx14, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  %17 = load i32, i32* %increase, align 4
  %cmp15 = icmp eq i32 %17, 1
  br i1 %cmp15, label %if.then17, label %if.end21

if.then17:                                        ; preds = %for.end
  %18 = load i32, i32* %maxPos, align 4
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, i32* %maxPos, align 4
  %idxprom19 = sext i32 %inc18 to i64
  %arrayidx20 = getelementptr inbounds [1205 x i8], [1205 x i8]* %data, i64 0, i64 %idxprom19
  store i8 1, i8* %arrayidx20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %for.end
  %arraydecay22 = getelementptr inbounds [1205 x i8], [1205 x i8]* %data, i64 0, i64 0
  %19 = load i32, i32* %maxPos, align 4
  call void @printArray(i8* %arraydecay22, i32 1205, i32 %19)
  %20 = load i32, i32* %maxPos, align 4
  %add23 = add nsw i32 %20, 1
  %cmp24 = icmp eq i32 %add23, 1205
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  br label %for.end30

if.end27:                                         ; preds = %if.end21
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %21 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %21, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end30:                                        ; preds = %if.then26, %for.cond
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @ArbitraryPrecision_n(i32 2, i32 4000)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

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
