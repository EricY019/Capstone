; ModuleID = './code/380-5630pr66199-2.c'
source_filename = "./code/380-5630pr66199-2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@v = global [1024 x i32] zeroinitializer, align 4
@w = global [1024 x i32] zeroinitializer, align 4
@u = global [1024 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f1(i64 noundef %a, i64 noundef %b) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %d = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  store i64 %0, ptr %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %d, align 8
  %2 = load i64, ptr %b.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %d, align 8
  %arrayidx = getelementptr inbounds [1024 x i32], ptr @v, i64 0, i64 %3
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load i64, ptr %d, align 8
  %arrayidx1 = getelementptr inbounds [1024 x i32], ptr @w, i64 0, i64 %5
  %6 = load i32, ptr %arrayidx1, align 4
  %add = add nsw i32 %4, %6
  %7 = load i64, ptr %d, align 8
  %arrayidx2 = getelementptr inbounds [1024 x i32], ptr @u, i64 0, i64 %7
  store i32 %add, ptr %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i64, ptr %d, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, ptr %d, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f2(i64 noundef %a, i64 noundef %b, i64 noundef %c) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %d = alloca i64, align 8
  %e = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  store i64 %c, ptr %c.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  store i64 %0, ptr %d, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %d, align 8
  %2 = load i64, ptr %b.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %d, align 8
  %arrayidx = getelementptr inbounds [1024 x i32], ptr @v, i64 0, i64 %3
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load i64, ptr %d, align 8
  %arrayidx1 = getelementptr inbounds [1024 x i32], ptr @w, i64 0, i64 %5
  %6 = load i32, ptr %arrayidx1, align 4
  %add = add nsw i32 %4, %6
  %7 = load i64, ptr %d, align 8
  %arrayidx2 = getelementptr inbounds [1024 x i32], ptr @u, i64 0, i64 %7
  store i32 %add, ptr %arrayidx2, align 4
  %8 = load i64, ptr %c.addr, align 8
  %add3 = add nsw i64 %8, 5
  store i64 %add3, ptr %c.addr, align 8
  %9 = load i64, ptr %c.addr, align 8
  store i64 %9, ptr %e, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i64, ptr %d, align 8
  %inc = add nsw i64 %10, 1
  store i64 %inc, ptr %d, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f3(i64 noundef %a1, i64 noundef %b1, i64 noundef %a2, i64 noundef %b2) #0 {
entry:
  %a1.addr = alloca i64, align 8
  %b1.addr = alloca i64, align 8
  %a2.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %d1 = alloca i64, align 8
  %d2 = alloca i64, align 8
  store i64 %a1, ptr %a1.addr, align 8
  store i64 %b1, ptr %b1.addr, align 8
  store i64 %a2, ptr %a2.addr, align 8
  store i64 %b2, ptr %b2.addr, align 8
  %0 = load i64, ptr %a1.addr, align 8
  store i64 %0, ptr %d1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %1 = load i64, ptr %d1, align 8
  %2 = load i64, ptr %b1.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %a2.addr, align 8
  store i64 %3, ptr %d2, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, ptr %d2, align 8
  %5 = load i64, ptr %b2.addr, align 8
  %cmp2 = icmp slt i64 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i64, ptr %d1, align 8
  %mul = mul nsw i64 %6, 32
  %7 = load i64, ptr %d2, align 8
  %add = add nsw i64 %mul, %7
  %arrayidx = getelementptr inbounds [1024 x i32], ptr @v, i64 0, i64 %add
  %8 = load i32, ptr %arrayidx, align 4
  %9 = load i64, ptr %d1, align 8
  %mul4 = mul nsw i64 %9, 32
  %10 = load i64, ptr %d2, align 8
  %add5 = add nsw i64 %mul4, %10
  %arrayidx6 = getelementptr inbounds [1024 x i32], ptr @w, i64 0, i64 %add5
  %11 = load i32, ptr %arrayidx6, align 4
  %add7 = add nsw i32 %8, %11
  %12 = load i64, ptr %d1, align 8
  %mul8 = mul nsw i64 %12, 32
  %13 = load i64, ptr %d2, align 8
  %add9 = add nsw i64 %mul8, %13
  %arrayidx10 = getelementptr inbounds [1024 x i32], ptr @u, i64 0, i64 %add9
  store i32 %add7, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %14 = load i64, ptr %d2, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, ptr %d2, align 8
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %15 = load i64, ptr %d1, align 8
  %inc12 = add nsw i64 %15, 1
  store i64 %inc12, ptr %d1, align 8
  br label %for.cond, !llvm.loop !9

for.end13:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f4(i64 noundef %a1, i64 noundef %b1, i64 noundef %a2, i64 noundef %b2) #0 {
entry:
  %a1.addr = alloca i64, align 8
  %b1.addr = alloca i64, align 8
  %a2.addr = alloca i64, align 8
  %b2.addr = alloca i64, align 8
  %d1 = alloca i64, align 8
  %d2 = alloca i64, align 8
  store i64 %a1, ptr %a1.addr, align 8
  store i64 %b1, ptr %b1.addr, align 8
  store i64 %a2, ptr %a2.addr, align 8
  store i64 %b2, ptr %b2.addr, align 8
  %0 = load i64, ptr %a1.addr, align 8
  store i64 %0, ptr %d1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %1 = load i64, ptr %d1, align 8
  %2 = load i64, ptr %b1.addr, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %3 = load i64, ptr %a2.addr, align 8
  store i64 %3, ptr %d2, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i64, ptr %d2, align 8
  %5 = load i64, ptr %b2.addr, align 8
  %cmp2 = icmp slt i64 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i64, ptr %d1, align 8
  %mul = mul nsw i64 %6, 32
  %7 = load i64, ptr %d2, align 8
  %add = add nsw i64 %mul, %7
  %arrayidx = getelementptr inbounds [1024 x i32], ptr @v, i64 0, i64 %add
  %8 = load i32, ptr %arrayidx, align 4
  %9 = load i64, ptr %d1, align 8
  %mul4 = mul nsw i64 %9, 32
  %10 = load i64, ptr %d2, align 8
  %add5 = add nsw i64 %mul4, %10
  %arrayidx6 = getelementptr inbounds [1024 x i32], ptr @w, i64 0, i64 %add5
  %11 = load i32, ptr %arrayidx6, align 4
  %add7 = add nsw i32 %8, %11
  %12 = load i64, ptr %d1, align 8
  %mul8 = mul nsw i64 %12, 32
  %13 = load i64, ptr %d2, align 8
  %add9 = add nsw i64 %mul8, %13
  %arrayidx10 = getelementptr inbounds [1024 x i32], ptr @u, i64 0, i64 %add9
  store i32 %add7, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %14 = load i64, ptr %d2, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, ptr %d2, align 8
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %15 = load i64, ptr %d1, align 8
  %inc12 = add nsw i64 %15, 1
  store i64 %inc12, ptr %d1, align 8
  br label %for.cond, !llvm.loop !11

for.end13:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @f1(i64 noundef 0, i64 noundef 1024)
  call void @f2(i64 noundef 0, i64 noundef 1024, i64 noundef 17)
  call void @f3(i64 noundef 0, i64 noundef 32, i64 noundef 0, i64 noundef 32)
  call void @f4(i64 noundef 0, i64 noundef 32, i64 noundef 0, i64 noundef 32)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
