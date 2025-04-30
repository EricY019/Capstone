; ModuleID = 'code/012-7113rand18.c'
source_filename = "code/012-7113rand18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_hash_value = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [32 x i8] c"before stmt(%d): checksum = %X\0A\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"checksum = %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csmith_compute_hash() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @step_hash(i32 %stmt_id) #0 {
entry:
  %stmt_id.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %stmt_id, i32* %stmt_id.addr, align 4
  store i32 0, i32* %i, align 4
  call void @csmith_compute_hash()
  %0 = load i32, i32* %stmt_id.addr, align 4
  %1 = load i32, i32* @crc32_context, align 4
  %conv = zext i32 %1 to i64
  %xor = xor i64 %conv, 4294967295
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %0, i64 %xor)
  store i32 -1, i32* @crc32_context, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i64 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  call void @crc32_gentab()
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32_gentab() #0 {
entry:
  %crc = alloca i32, align 4
  %poly = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 -306674912, i32* %poly, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end6

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  store i32 %1, i32* %crc, align 4
  store i32 8, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %crc, align 4
  %and = and i32 %3, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %4 = load i32, i32* %crc, align 4
  %shr = lshr i32 %4, 1
  %5 = load i32, i32* %poly, align 4
  %xor = xor i32 %shr, %5
  store i32 %xor, i32* %crc, align 4
  br label %if.end

if.else:                                          ; preds = %for.body3
  %6 = load i32, i32* %crc, align 4
  %shr4 = lshr i32 %6, 1
  store i32 %shr4, i32* %crc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %j, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  %8 = load i32, i32* %crc, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i64 0, i64 %idxprom
  store i32 %8, i32* %arrayidx, align 4
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end6:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %print_hash_value, align 4
  call void @platform_main_begin()
  call void @crc32_gentab()
  %call = call signext i16 @func_1()
  call void @csmith_compute_hash()
  %0 = load i32, i32* @crc32_context, align 4
  %conv = zext i32 %0 to i64
  %xor = xor i64 %conv, 4294967295
  %conv1 = trunc i64 %xor to i32
  %1 = load i32, i32* %print_hash_value, align 4
  call void @platform_main_end(i32 %conv1, i32 %1)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_main_begin() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @func_1() #0 {
entry:
  %l_2 = alloca i16, align 2
  store i16 -703, i16* %l_2, align 2
  call void @step_hash(i32 1)
  %0 = load i16, i16* %l_2, align 2
  ret i16 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @platform_main_end(i32 %x, i32 %flag) #0 {
entry:
  %x.addr = alloca i32, align 4
  %flag.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* %flag.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
