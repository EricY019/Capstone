; ModuleID = 'code/028-34626Exercise-2-6.c'
source_filename = "code/028-34626Exercise-2-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @setbits(i8 zeroext 8, i8 zeroext 2, i8 zeroext 1, i8 zeroext 2)
  %conv = trunc i32 %call to i8
  call void @printbits(i8 zeroext %conv)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printbits(i8 zeroext %v) #0 {
entry:
  %v.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store i8 %v, i8* %v.addr, align 1
  store i32 7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* %v.addr, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* %i, align 4
  %shr = ashr i32 %conv, %2
  %and = and i32 %shr, 1
  %add = add nsw i32 48, %and
  %call = call i32 @putchar(i32 %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setbits(i8 zeroext %x, i8 zeroext %p, i8 zeroext %n, i8 zeroext %y) #0 {
entry:
  %x.addr = alloca i8, align 1
  %p.addr = alloca i8, align 1
  %n.addr = alloca i8, align 1
  %y.addr = alloca i8, align 1
  %left = alloca i8, align 1
  %right = alloca i8, align 1
  %substitute = alloca i8, align 1
  store i8 %x, i8* %x.addr, align 1
  store i8 %p, i8* %p.addr, align 1
  store i8 %n, i8* %n.addr, align 1
  store i8 %y, i8* %y.addr, align 1
  %0 = load i8, i8* %x.addr, align 1
  %conv = zext i8 %0 to i32
  %1 = load i8, i8* %p.addr, align 1
  %conv1 = zext i8 %1 to i32
  %sub = sub nsw i32 9, %conv1
  %shr = ashr i32 %conv, %sub
  %conv2 = trunc i32 %shr to i8
  store i8 %conv2, i8* %left, align 1
  %2 = load i8, i8* %left, align 1
  %conv3 = zext i8 %2 to i32
  %3 = load i8, i8* %p.addr, align 1
  %conv4 = zext i8 %3 to i32
  %sub5 = sub nsw i32 9, %conv4
  %shl = shl i32 %conv3, %sub5
  %conv6 = trunc i32 %shl to i8
  store i8 %conv6, i8* %left, align 1
  %4 = load i8, i8* %x.addr, align 1
  %conv7 = zext i8 %4 to i32
  %5 = load i8, i8* %p.addr, align 1
  %conv8 = zext i8 %5 to i32
  %6 = load i8, i8* %n.addr, align 1
  %conv9 = zext i8 %6 to i32
  %add = add nsw i32 %conv8, %conv9
  %sub10 = sub nsw i32 %add, 1
  %shl11 = shl i32 %conv7, %sub10
  %conv12 = trunc i32 %shl11 to i8
  store i8 %conv12, i8* %right, align 1
  %7 = load i8, i8* %right, align 1
  %conv13 = zext i8 %7 to i32
  %8 = load i8, i8* %p.addr, align 1
  %conv14 = zext i8 %8 to i32
  %9 = load i8, i8* %n.addr, align 1
  %conv15 = zext i8 %9 to i32
  %add16 = add nsw i32 %conv14, %conv15
  %sub17 = sub nsw i32 %add16, 1
  %shr18 = ashr i32 %conv13, %sub17
  %conv19 = trunc i32 %shr18 to i8
  store i8 %conv19, i8* %right, align 1
  %10 = load i8, i8* %y.addr, align 1
  %conv20 = zext i8 %10 to i32
  %11 = load i8, i8* %n.addr, align 1
  %conv21 = zext i8 %11 to i32
  %sub22 = sub nsw i32 8, %conv21
  %shl23 = shl i32 %conv20, %sub22
  %conv24 = trunc i32 %shl23 to i8
  store i8 %conv24, i8* %substitute, align 1
  %12 = load i8, i8* %substitute, align 1
  %conv25 = zext i8 %12 to i32
  %13 = load i8, i8* %p.addr, align 1
  %conv26 = zext i8 %13 to i32
  %sub27 = sub nsw i32 %conv26, 1
  %shr28 = ashr i32 %conv25, %sub27
  %conv29 = trunc i32 %shr28 to i8
  store i8 %conv29, i8* %substitute, align 1
  %14 = load i8, i8* %left, align 1
  %conv30 = zext i8 %14 to i32
  %15 = load i8, i8* %right, align 1
  %conv31 = zext i8 %15 to i32
  %or = or i32 %conv30, %conv31
  %16 = load i8, i8* %substitute, align 1
  %conv32 = zext i8 %16 to i32
  %or33 = or i32 %or, %conv32
  ret i32 %or33
}

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

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
