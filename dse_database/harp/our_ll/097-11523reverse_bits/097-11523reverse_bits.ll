; ModuleID = 'code/097-11523reverse_bits.c'
source_filename = "code/097-11523reverse_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"sizeof %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sw : %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca i32, align 4
  %r = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 80, i32* %v, align 4
  %0 = load i32, i32* %v, align 4
  store i32 %0, i32* %r, align 4
  store i32 0, i32* %a, align 4
  store i32 31, i32* %s, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 4)
  %1 = load i32, i32* %v, align 4
  %shr = lshr i32 %1, 1
  store i32 %shr, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %v, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %r, align 4
  %shl = shl i32 %3, 1
  store i32 %shl, i32* %r, align 4
  %4 = load i32, i32* %v, align 4
  %and = and i32 %4, 1
  %5 = load i32, i32* %r, align 4
  %or = or i32 %5, %and
  store i32 %or, i32* %r, align 4
  %6 = load i32, i32* %s, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %v, align 4
  %shr1 = lshr i32 %7, 1
  store i32 %shr1, i32* %v, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %s, align 4
  %9 = load i32, i32* %r, align 4
  %shl2 = shl i32 %9, %8
  store i32 %shl2, i32* %r, align 4
  %10 = load i32, i32* %r, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  store i32 90, i32* %r, align 4
  %11 = load i32, i32* %r, align 4
  %call4 = call i32 @swap_nibble(i32 %11)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %call4)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swap_nibble(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %and = and i32 %0, 240
  %shr = lshr i32 %and, 4
  %1 = load i32, i32* %n.addr, align 4
  %and1 = and i32 %1, 15
  %shl = shl i32 %and1, 4
  %or = or i32 %shr, %shl
  ret i32 %or
}

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
