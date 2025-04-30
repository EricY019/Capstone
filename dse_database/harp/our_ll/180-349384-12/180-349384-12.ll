; ModuleID = 'code/180-349384-12.c'
source_filename = "code/180-349384-12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.nums = private unnamed_addr constant [10 x i32] [i32 0, i32 -1, i32 7, i32 -15, i32 123, i32 -325, i32 2567, i32 -10342, i32 2147483647, i32 -2147483648], align 16
@.str = private unnamed_addr constant [6 x i8] c"%11s\0A\00", align 1
@itoa_rec.i = internal global i32 0, align 4
@itoa_rec.sign = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca [128 x i8], align 16
  %nums = alloca [10 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x i32]* %nums to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.nums to i8*), i64 40, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %nums, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %s, i64 0, i64 0
  call void @itoa_rec(i32 %3, i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %s, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %arraydecay1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @itoa_rec(i32 %n, i8* %s) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %un = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i32, i32* @itoa_rec.sign, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* @itoa_rec.sign, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, i32* %n.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, i32* %un, align 4
  %5 = load i32, i32* %un, align 4
  %div = udiv i32 %5, 10
  %tobool2 = icmp ne i32 %div, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %cond.end
  %6 = load i32, i32* %un, align 4
  %div4 = udiv i32 %6, 10
  %7 = load i8*, i8** %s.addr, align 8
  call void @itoa_rec(i32 %div4, i8* %7)
  br label %if.end8

if.else:                                          ; preds = %cond.end
  store i32 0, i32* @itoa_rec.i, align 4
  %8 = load i32, i32* @itoa_rec.sign, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i32, i32* @itoa_rec.i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @itoa_rec.i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %idxprom
  store i8 45, i8* %arrayidx, align 1
  store i32 0, i32* @itoa_rec.sign, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then3
  %11 = load i32, i32* %un, align 4
  %rem = urem i32 %11, 10
  %add = add i32 %rem, 48
  %conv = trunc i32 %add to i8
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i32, i32* @itoa_rec.i, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* @itoa_rec.i, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 %idxprom10
  store i8 %conv, i8* %arrayidx11, align 1
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i32, i32* @itoa_rec.i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 %idxprom12
  store i8 0, i8* %arrayidx13, align 1
  ret void
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
