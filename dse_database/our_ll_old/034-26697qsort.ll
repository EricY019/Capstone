; ModuleID = './code/034-26697qsort.c'
source_filename = "./code/034-26697qsort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %t = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %t, align 4
  %2 = load ptr, ptr %b.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %a.addr, align 8
  store i32 %3, ptr %4, align 4
  %5 = load i32, ptr %t, align 4
  %6 = load ptr, ptr %b.addr, align 8
  store i32 %5, ptr %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @partition(ptr noundef %arr, i32 noundef %lo, i32 noundef %hi) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %pivot = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %lo, ptr %lo.addr, align 4
  store i32 %hi, ptr %hi.addr, align 4
  %0 = load ptr, ptr %arr.addr, align 8
  %1 = load i32, ptr %hi.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %pivot, align 4
  %3 = load i32, ptr %lo.addr, align 4
  %sub = sub nsw i32 %3, 1
  store i32 %sub, ptr %i, align 4
  %4 = load i32, ptr %lo.addr, align 4
  store i32 %4, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %j, align 4
  %6 = load i32, ptr %hi.addr, align 4
  %sub1 = sub nsw i32 %6, 1
  %cmp = icmp sle i32 %5, %sub1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %arr.addr, align 8
  %8 = load i32, ptr %j, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 %idxprom2
  %9 = load i32, ptr %arrayidx3, align 4
  %10 = load i32, ptr %pivot, align 4
  %cmp4 = icmp sle i32 %9, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  %12 = load ptr, ptr %arr.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 %idxprom5
  %14 = load ptr, ptr %arr.addr, align 8
  %15 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %14, i64 %idxprom7
  call void @swap(ptr noundef %arrayidx6, ptr noundef %arrayidx8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %j, align 4
  %inc9 = add nsw i32 %16, 1
  store i32 %inc9, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %arr.addr, align 8
  %18 = load i32, ptr %i, align 4
  %add = add nsw i32 %18, 1
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %17, i64 %idxprom10
  %19 = load ptr, ptr %arr.addr, align 8
  %20 = load i32, ptr %hi.addr, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %19, i64 %idxprom12
  call void @swap(ptr noundef %arrayidx11, ptr noundef %arrayidx13)
  %21 = load i32, ptr %i, align 4
  %add14 = add nsw i32 %21, 1
  ret i32 %add14
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @qsort(ptr noundef %arr, i32 noundef %lo, i32 noundef %hi) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %lo.addr = alloca i32, align 4
  %hi.addr = alloca i32, align 4
  %wall = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %lo, ptr %lo.addr, align 4
  store i32 %hi, ptr %hi.addr, align 4
  %0 = load i32, ptr %lo.addr, align 4
  %1 = load i32, ptr %hi.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %arr.addr, align 8
  %3 = load i32, ptr %lo.addr, align 4
  %4 = load i32, ptr %hi.addr, align 4
  %call = call i32 @partition(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %wall, align 4
  %5 = load ptr, ptr %arr.addr, align 8
  %6 = load i32, ptr %lo.addr, align 4
  %7 = load i32, ptr %wall, align 4
  %sub = sub nsw i32 %7, 1
  call void @qsort(ptr noundef %5, i32 noundef %6, i32 noundef %sub)
  %8 = load ptr, ptr %arr.addr, align 8
  %9 = load i32, ptr %wall, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, ptr %hi.addr, align 4
  call void @qsort(ptr noundef %8, i32 noundef %add, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %i12 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 10, ptr %n, align 4
  %0 = load i32, ptr %n, align 4
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 4
  store i64 %1, ptr %__vla_expr0, align 8
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 0
  store i32 9, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds i32, ptr %vla, i64 1
  store i32 4, ptr %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds i32, ptr %vla, i64 2
  store i32 1, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds i32, ptr %vla, i64 3
  store i32 -18, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr inbounds i32, ptr %vla, i64 4
  store i32 3, ptr %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds i32, ptr %vla, i64 5
  store i32 6, ptr %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds i32, ptr %vla, i64 6
  store i32 7, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds i32, ptr %vla, i64 7
  store i32 2, ptr %arrayidx7, align 4
  %arrayidx8 = getelementptr inbounds i32, ptr %vla, i64 8
  store i32 0, ptr %arrayidx8, align 4
  %arrayidx9 = getelementptr inbounds i32, ptr %vla, i64 9
  store i32 -2, ptr %arrayidx9, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  %6 = load i32, ptr %arrayidx10, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %8 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %8, 1
  call void @qsort(ptr noundef %vla, i32 noundef 0, i32 noundef %sub)
  store i32 0, ptr %i12, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc19, %for.end
  %9 = load i32, ptr %i12, align 4
  %10 = load i32, ptr %n, align 4
  %cmp14 = icmp slt i32 %9, %10
  br i1 %cmp14, label %for.body15, label %for.end21

for.body15:                                       ; preds = %for.cond13
  %11 = load i32, ptr %i12, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %vla, i64 %idxprom16
  %12 = load i32, ptr %arrayidx17, align 4
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  br label %for.inc19

for.inc19:                                        ; preds = %for.body15
  %13 = load i32, ptr %i12, align 4
  %inc20 = add nsw i32 %13, 1
  store i32 %inc20, ptr %i12, align 4
  br label %for.cond13, !llvm.loop !8

for.end21:                                        ; preds = %for.cond13
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %14 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %14)
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
