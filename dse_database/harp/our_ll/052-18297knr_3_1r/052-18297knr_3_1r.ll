; ModuleID = 'code/052-18297knr_3_1r.c'
source_filename = "code/052-18297knr_3_1r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"malloc issue\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\0A Finding the position of %d in the vertex: \00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\0A\09 The index of %d in v is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\0A\09The element doesn't exist in v\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %x = alloca i32, align 4
  %v = alloca i32*, align 8
  %location = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %x, align 4
  store i32* null, i32** %v, align 8
  store i32 0, i32* %location, align 4
  store i32 0, i32* %i, align 4
  %call = call noalias align 16 i8* @malloc(i64 1600000000) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %v, align 8
  %1 = load i32*, i32** %v, align 8
  %tobool = icmp ne i32* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %call1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 400000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %3
  %add = add nsw i32 %mul, 1
  %4 = load i32*, i32** %v, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %x, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %8 = load i32, i32* %x, align 4
  %9 = load i32*, i32** %v, align 8
  %call3 = call i32 @binsearch(i32 %8, i32* %9, i32 400000000)
  store i32 %call3, i32* %location, align 4
  %10 = load i32, i32* %location, align 4
  %cmp4 = icmp sgt i32 %10, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.end
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %location, align 4
  %add6 = add nsw i32 %12, 1
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %add6)
  br label %if.end9

if.else:                                          ; preds = %for.end
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %13 = load i32*, i32** %v, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14) #3
  %15 = load i32, i32* %ret, align 4
  store i32 %15, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @binsearch(i32 %x, i32* %v, i32 %n) #0 {
entry:
  %x.addr = alloca i32, align 4
  %v.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32* %v, i32** %v.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 -1, i32* %ret, align 4
  store i32 0, i32* %low, align 4
  store i32 0, i32* %high, align 4
  store i32 0, i32* %mid, align 4
  store i32 0, i32* %low, align 4
  %0 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %high, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %low, align 4
  %2 = load i32, i32* %high, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %low, align 4
  %4 = load i32, i32* %high, align 4
  %add = add nsw i32 %3, %4
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %mid, align 4
  %5 = load i32, i32* %x.addr, align 4
  %6 = load i32*, i32** %v.addr, align 8
  %7 = load i32, i32* %mid, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp sgt i32 %5, %8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* %mid, align 4
  %add2 = add nsw i32 %9, 1
  store i32 %add2, i32* %low, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load i32, i32* %mid, align 4
  store i32 %10, i32* %high, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %x.addr, align 4
  %12 = load i32*, i32** %v.addr, align 8
  %13 = load i32, i32* %mid, align 4
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %12, i64 %idxprom3
  %14 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp eq i32 %11, %14
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.end
  %15 = load i32, i32* %mid, align 4
  store i32 %15, i32* %ret, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %while.end
  %16 = load i32, i32* %ret, align 4
  ret i32 %16
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
