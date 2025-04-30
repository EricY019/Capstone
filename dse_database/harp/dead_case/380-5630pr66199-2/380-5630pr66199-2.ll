; ModuleID = 'code/380-5630pr66199-2.c'
source_filename = "code/380-5630pr66199-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global [1024 x i32] zeroinitializer, align 16
@w = dso_local global [1024 x i32] zeroinitializer, align 16
@u = dso_local global [1024 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f1(i64 %a, i64 %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %d = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  store i64 %0, i64* %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %d, align 8
  %2 = load i64, i64* %b.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %d, align 8
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @v, i64 0, i64 %3
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i64, i64* %d, align 8
  %arrayidx1 = getelementptr inbounds [1024 x i32], [1024 x i32]* @w, i64 0, i64 %5
  %6 = load i32, i32* %arrayidx1, align 4
  %add = add nsw i32 %4, %6
  %7 = load i64, i64* %d, align 8
  %arrayidx2 = getelementptr inbounds [1024 x i32], [1024 x i32]* @u, i64 0, i64 %7
  store i32 %add, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, i64* %d, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %d, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2(i64 %a, i64 %b, i64 %c) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %d = alloca i64, align 8
  %e = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  store i64 %b, i64* %b.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load i64, i64* %a.addr, align 8
  store i64 %0, i64* %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %d, align 8
  %2 = load i64, i64* %b.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %d, align 8
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @v, i64 0, i64 %3
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i64, i64* %d, align 8
  %arrayidx1 = getelementptr inbounds [1024 x i32], [1024 x i32]* @w, i64 0, i64 %5
  %6 = load i32, i32* %arrayidx1, align 4
  %add = add nsw i32 %4, %6
  %7 = load i64, i64* %d, align 8
  %arrayidx2 = getelementptr inbounds [1024 x i32], [1024 x i32]* @u, i64 0, i64 %7
  store i32 %add, i32* %arrayidx2, align 4
  %8 = load i64, i64* %c.addr, align 8
  %add3 = add nsw i64 %8, 5
  store i64 %add3, i64* %c.addr, align 8
  %9 = load i64, i64* %c.addr, align 8
  store i64 %9, i64* %e, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, i64* %d, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, i64* %d, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f3(i64 %a1, i64 %b1, i64 %a2, i64 %b2) #0 {
entry:
  %a1.addr = alloca i64, align 8
  %b1.addr = alloca i64, align 8
  %a2.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %d1 = alloca i64, align 8
  %d2 = alloca i64, align 8
  store i64 %a1, i64* %a1.addr, align 8
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %a2, i64* %a2.addr, align 8
  store i64 %b2, i64* %b2.addr, align 8
  %0 = load i64, i64* %a1.addr, align 8
  store i64 %0, i64* %d1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %1 = load i64, i64* %d1, align 8
  %2 = load i64, i64* %b1.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %a2.addr, align 8
  store i64 %3, i64* %d2, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, i64* %d2, align 8
  %5 = load i64, i64* %b2.addr, align 8
  %cmp2 = icmp slt i64 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i64, i64* %d1, align 8
  %mul = mul nsw i64 %6, 32
  %7 = load i64, i64* %d2, align 8
  %add = add nsw i64 %mul, %7
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @v, i64 0, i64 %add
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i64, i64* %d1, align 8
  %mul4 = mul nsw i64 %9, 32
  %10 = load i64, i64* %d2, align 8
  %add5 = add nsw i64 %mul4, %10
  %arrayidx6 = getelementptr inbounds [1024 x i32], [1024 x i32]* @w, i64 0, i64 %add5
  %11 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %8, %11
  %12 = load i64, i64* %d1, align 8
  %mul8 = mul nsw i64 %12, 32
  %13 = load i64, i64* %d2, align 8
  %add9 = add nsw i64 %mul8, %13
  %arrayidx10 = getelementptr inbounds [1024 x i32], [1024 x i32]* @u, i64 0, i64 %add9
  store i32 %add7, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %14 = load i64, i64* %d2, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %d2, align 8
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %15 = load i64, i64* %d1, align 8
  %inc12 = add nsw i64 %15, 1
  store i64 %inc12, i64* %d1, align 8
  br label %for.cond, !llvm.loop !8

for.end13:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f4(i64 %a1, i64 %b1, i64 %a2, i64 %b2) #0 {
entry:
  %a1.addr = alloca i64, align 8
  %b1.addr = alloca i64, align 8
  %a2.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %d1 = alloca i64, align 8
  %d2 = alloca i64, align 8
  store i64 %a1, i64* %a1.addr, align 8
  store i64 %b1, i64* %b1.addr, align 8
  store i64 %a2, i64* %a2.addr, align 8
  store i64 %b2, i64* %b2.addr, align 8
  %0 = load i64, i64* %a1.addr, align 8
  store i64 %0, i64* %d1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %1 = load i64, i64* %d1, align 8
  %2 = load i64, i64* %b1.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %a2.addr, align 8
  store i64 %3, i64* %d2, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, i64* %d2, align 8
  %5 = load i64, i64* %b2.addr, align 8
  %cmp2 = icmp slt i64 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i64, i64* %d1, align 8
  %mul = mul nsw i64 %6, 32
  %7 = load i64, i64* %d2, align 8
  %add = add nsw i64 %mul, %7
  %arrayidx = getelementptr inbounds [1024 x i32], [1024 x i32]* @v, i64 0, i64 %add
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i64, i64* %d1, align 8
  %mul4 = mul nsw i64 %9, 32
  %10 = load i64, i64* %d2, align 8
  %add5 = add nsw i64 %mul4, %10
  %arrayidx6 = getelementptr inbounds [1024 x i32], [1024 x i32]* @w, i64 0, i64 %add5
  %11 = load i32, i32* %arrayidx6, align 4
  %add7 = add nsw i32 %8, %11
  %12 = load i64, i64* %d1, align 8
  %mul8 = mul nsw i64 %12, 32
  %13 = load i64, i64* %d2, align 8
  %add9 = add nsw i64 %mul8, %13
  %arrayidx10 = getelementptr inbounds [1024 x i32], [1024 x i32]* @u, i64 0, i64 %add9
  store i32 %add7, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %14 = load i64, i64* %d2, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %d2, align 8
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %15 = load i64, i64* %d1, align 8
  %inc12 = add nsw i64 %15, 1
  store i64 %inc12, i64* %d1, align 8
  br label %for.cond, !llvm.loop !10

for.end13:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @f1(i64 0, i64 1024)
  call void @f2(i64 0, i64 1024, i64 17)
  call void @f3(i64 0, i64 32, i64 0, i64 32)
  call void @f4(i64 0, i64 32, i64 0, i64 32)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
