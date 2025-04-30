; ModuleID = './code/371-15176array2d.c'
source_filename = "./code/371-15176array2d.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [13 x i8] c"(%d,%d)=%lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"(%d)=%lf\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print2(i32 noundef %m, i32 noundef %n, ptr noalias noundef %A) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 8
  %0 = load i32, ptr %n.addr, align 4
  %1 = zext i32 %0 to i64
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %m.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %j, align 4
  %8 = load ptr, ptr %A.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = mul nsw i64 %idxprom, %1
  %arrayidx = getelementptr inbounds double, ptr %8, i64 %10
  %11 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds double, ptr %arrayidx, i64 %idxprom4
  %12 = load double, ptr %arrayidx5, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6, i32 noundef %7, double noundef %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, ptr %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %14 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %14, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end8:                                         ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print1(i32 noundef %m, i32 noundef %n, ptr noundef %A) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %A, ptr %A.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %m.addr, align 4
  %2 = load i32, ptr %n.addr, align 4
  %mul = mul nsw i32 %1, %2
  %cmp = icmp slt i32 %0, %mul
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %A.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, ptr %4, i64 %idxprom
  %6 = load double, ptr %arrayidx, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3, double noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %A = alloca ptr, align 8
  %i = alloca i32, align 4
  %B = alloca ptr, align 8
  %i19 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 10, %cond.false ]
  store i32 %cond, ptr %m, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %cond.true2, label %cond.false5

cond.true2:                                       ; preds = %cond.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @atoi(ptr noundef %5)
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true2
  %cond7 = phi i32 [ %call4, %cond.true2 ], [ 5, %cond.false5 ]
  store i32 %cond7, ptr %n, align 4
  %6 = load i32, ptr %m, align 4
  %7 = load i32, ptr %n, align 4
  %mul = mul nsw i32 %6, %7
  %conv = sext i32 %mul to i64
  %mul8 = mul i64 %conv, 8
  %call9 = call ptr @malloc(i64 noundef %mul8) #3
  store ptr %call9, ptr %A, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end6
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %m, align 4
  %10 = load i32, ptr %n, align 4
  %mul10 = mul nsw i32 %9, %10
  %cmp11 = icmp slt i32 %8, %mul10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, ptr %i, align 4
  %conv13 = sitofp i32 %11 to double
  %12 = load ptr, ptr %A, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx14 = getelementptr inbounds double, ptr %12, i64 %idxprom
  store double %conv13, ptr %arrayidx14, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %n, align 4
  %16 = zext i32 %15 to i64
  %17 = load i32, ptr %n, align 4
  %18 = zext i32 %17 to i64
  %19 = load i32, ptr %m, align 4
  %20 = load i32, ptr %n, align 4
  %mul15 = mul nsw i32 %19, %20
  %conv16 = sext i32 %mul15 to i64
  %mul17 = mul i64 %conv16, 8
  %call18 = call ptr @malloc(i64 noundef %mul17) #3
  store ptr %call18, ptr %B, align 8
  store i32 0, ptr %i19, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc37, %for.end
  %21 = load i32, ptr %i19, align 4
  %22 = load i32, ptr %m, align 4
  %cmp21 = icmp slt i32 %21, %22
  br i1 %cmp21, label %for.body23, label %for.end39

for.body23:                                       ; preds = %for.cond20
  store i32 0, ptr %j, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc34, %for.body23
  %23 = load i32, ptr %j, align 4
  %24 = load i32, ptr %n, align 4
  %cmp25 = icmp slt i32 %23, %24
  br i1 %cmp25, label %for.body27, label %for.end36

for.body27:                                       ; preds = %for.cond24
  %25 = load i32, ptr %i19, align 4
  %26 = load i32, ptr %n, align 4
  %mul28 = mul nsw i32 %25, %26
  %27 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul28, %27
  %conv29 = sitofp i32 %add to double
  %28 = load ptr, ptr %B, align 8
  %29 = load i32, ptr %i19, align 4
  %idxprom30 = sext i32 %29 to i64
  %30 = mul nsw i64 %idxprom30, %16
  %arrayidx31 = getelementptr inbounds double, ptr %28, i64 %30
  %31 = load i32, ptr %j, align 4
  %idxprom32 = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds double, ptr %arrayidx31, i64 %idxprom32
  store double %conv29, ptr %arrayidx33, align 8
  br label %for.inc34

for.inc34:                                        ; preds = %for.body27
  %32 = load i32, ptr %j, align 4
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, ptr %j, align 4
  br label %for.cond24, !llvm.loop !10

for.end36:                                        ; preds = %for.cond24
  br label %for.inc37

for.inc37:                                        ; preds = %for.end36
  %33 = load i32, ptr %i19, align 4
  %inc38 = add nsw i32 %33, 1
  store i32 %inc38, ptr %i19, align 4
  br label %for.cond20, !llvm.loop !11

for.end39:                                        ; preds = %for.cond20
  %34 = load i32, ptr %m, align 4
  %35 = load i32, ptr %n, align 4
  %36 = load ptr, ptr %A, align 8
  call void @print1(i32 noundef %34, i32 noundef %35, ptr noundef %36)
  %37 = load i32, ptr %m, align 4
  %38 = load i32, ptr %n, align 4
  %39 = load i32, ptr %n, align 4
  %40 = zext i32 %39 to i64
  %41 = load ptr, ptr %A, align 8
  call void @print2(i32 noundef %37, i32 noundef %38, ptr noundef %41)
  %42 = load i32, ptr %m, align 4
  %43 = load i32, ptr %n, align 4
  %44 = load ptr, ptr %B, align 8
  call void @print1(i32 noundef %42, i32 noundef %43, ptr noundef %44)
  %45 = load i32, ptr %m, align 4
  %46 = load i32, ptr %n, align 4
  %47 = load ptr, ptr %B, align 8
  call void @print2(i32 noundef %45, i32 noundef %46, ptr noundef %47)
  %48 = load ptr, ptr %B, align 8
  call void @free(ptr noundef %48)
  %49 = load ptr, ptr %A, align 8
  call void @free(ptr noundef %49)
  ret i32 0
}

declare i32 @atoi(ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare void @free(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
