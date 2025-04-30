; ModuleID = 'code/156-12686main.c'
source_filename = "code/156-12686main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Hello world! %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @validate(i32 %number) #0 {
entry:
  %number.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %count = alloca [5 x i32], align 16
  %digit = alloca i32, align 4
  store i32 %number, i32* %number.addr, align 4
  store i32 1, i32* %res, align 4
  %0 = bitcast [5 x i32]* %count to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 20, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %number.addr, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %number.addr, align 4
  %rem = srem i32 %2, 10
  store i32 %rem, i32* %digit, align 4
  %3 = load i32, i32* %digit, align 4
  %rem1 = srem i32 %3, 2
  %cmp2 = icmp ne i32 %rem1, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 0, i32* %res, align 4
  br label %while.end

if.else:                                          ; preds = %while.body
  %4 = load i32, i32* %digit, align 4
  %sub = sub nsw i32 %4, 1
  %div = sdiv i32 %sub, 2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %count, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  %6 = load i32, i32* %number.addr, align 4
  %div3 = sdiv i32 %6, 10
  store i32 %div3, i32* %number.addr, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %if.then, %while.cond
  %arrayidx4 = getelementptr inbounds [5 x i32], [5 x i32]* %count, i64 0, i64 0
  %7 = load i32, i32* %arrayidx4, align 16
  %rem5 = srem i32 %7, 2
  %cmp6 = icmp eq i32 %rem5, 1
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %arrayidx7 = getelementptr inbounds [5 x i32], [5 x i32]* %count, i64 0, i64 1
  %8 = load i32, i32* %arrayidx7, align 4
  %rem8 = srem i32 %8, 2
  %cmp9 = icmp eq i32 %rem8, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %while.end
  store i32 0, i32* %res, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %9 = load i32, i32* %res, align 4
  ret i32 %9
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ctr = alloca i32, align 4
  %have = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %have, align 4
  store i32 11111111, i32* %ctr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ctr, align 4
  %cmp = icmp slt i32 %0, 100000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ctr, align 4
  %call = call i32 @validate(i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %have, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %have, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %ctr, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, i32* %ctr, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %have, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %4)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
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
