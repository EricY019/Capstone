; ModuleID = 'code/198-6902_8.c'
source_filename = "code/198-6902_8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"original:   \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\0Aafter rotr: \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"illegal move\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 52942, i32* %x, align 4
  store i32 6, i32* %n, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %0 = bitcast i32* %x to i8*
  call void @printBits(i64 4, i8* %0)
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* %n, align 4
  %call1 = call i32 @rightrot(i32 %1, i32 %2)
  store i32 %call1, i32* %x, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %3 = bitcast i32* %x to i8*
  call void @printBits(i64 4, i8* %3)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBits(i64 %size, i8* %ptr) #0 {
entry:
  %size.addr = alloca i64, align 8
  %ptr.addr = alloca i8*, align 8
  %b = alloca i8*, align 8
  %byte = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  store i8* %0, i8** %b, align 8
  %1 = load i64, i64* %size.addr, align 8
  %sub = sub i64 %1, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 7, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %cmp3 = icmp sge i32 %3, 0
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %4 = load i8*, i8** %b, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load i32, i32* %j, align 4
  %shr = ashr i32 %conv6, %7
  %and = and i32 %shr, 1
  %conv7 = trunc i32 %and to i8
  store i8 %conv7, i8* %byte, align 1
  %8 = load i8, i8* %byte, align 1
  %conv8 = zext i8 %8 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %conv8)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %9 = load i32, i32* %j, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %for.cond2
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %dec10 = add nsw i32 %10, -1
  store i32 %dec10, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end11:                                        ; preds = %for.cond
  %call12 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rightrot(i32 %x, i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %sz = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 32, i32* %sz, align 4
  %0 = load i32, i32* %n.addr, align 4
  %1 = load i32, i32* %sz, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %n.addr, align 4
  %shr = lshr i32 %2, %3
  %4 = load i32, i32* %x.addr, align 4
  %5 = load i32, i32* %sz, align 4
  %6 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %5, %6
  %shl = shl i32 %4, %sub
  %or = or i32 %shr, %shl
  store i32 %or, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
