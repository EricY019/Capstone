; ModuleID = 'code/137-29445rand104.c'
source_filename = "code/137-29445rand104.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@print_hash_value = dso_local global i32 1, align 4
@g_3 = internal global [7 x [8 x i32]] [[8 x i32] [i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7], [8 x i32] [i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7], [8 x i32] [i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7], [8 x i32] [i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7], [8 x i32] [i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7], [8 x i32] [i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7], [8 x i32] [i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7, i32 1241667217, i32 7]], align 16
@.str = private unnamed_addr constant [10 x i8] c"g_3[i][j]\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_11 = internal global i32 -8, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"g_11\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"before stmt(%d): checksum = %X\0A\00", align 1
@crc32_context = internal global i32 -1, align 4
@crc32_tab = internal global [256 x i32] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [35 x i8] c"...checksum after hashing %s : %X\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"checksum = %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csmith_compute_hash() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [7 x [8 x i32]], [7 x [8 x i32]]* @g_3, i64 0, i64 %idxprom
  %3 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], [8 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %4 = load i32, i32* %arrayidx5, align 4
  %5 = load i32, i32* @print_hash_value, align 4
  call void @transparent_crc(i32 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5)
  %6 = load i32, i32* @print_hash_value, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %j, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end8:                                         ; preds = %for.cond
  %11 = load i32, i32* @g_11, align 4
  %12 = load i32, i32* @print_hash_value, align 4
  call void @transparent_crc(i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transparent_crc(i32 %val, i8* %vname, i32 %flag) #0 {
entry:
  %val.addr = alloca i32, align 4
  %vname.addr = alloca i8*, align 8
  %flag.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  store i8* %vname, i8** %vname.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load i32, i32* %val.addr, align 4
  call void @crc32_8bytes(i32 %0)
  %1 = load i32, i32* %flag.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %vname.addr, align 8
  %3 = load i32, i32* @crc32_context, align 4
  %xor = xor i32 %3, -1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i8* %2, i32 %xor)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %0, i64 %xor)
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
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  call void @crc32_gentab()
  ret void
}

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
  br label %for.cond1, !llvm.loop !8

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
  br label %for.cond, !llvm.loop !9

for.end6:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %print_hash_value = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %print_hash_value, align 4
  call void @platform_main_begin()
  call void @crc32_gentab()
  %call = call signext i8 @func_1()
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
define internal signext i8 @func_1() #0 {
entry:
  %l_2 = alloca i32*, align 8
  %l_4 = alloca i32**, align 8
  %l_5 = alloca i32, align 4
  %l_6 = alloca i32*, align 8
  %l_7 = alloca [7 x [2 x i32*]], align 16
  %l_8 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* getelementptr inbounds ([7 x [8 x i32]], [7 x [8 x i32]]* @g_3, i64 0, i64 1, i64 5), i32** %l_2, align 8
  store i32** %l_2, i32*** %l_4, align 8
  store i32 1844364609, i32* %l_5, align 4
  store i32* getelementptr inbounds ([7 x [8 x i32]], [7 x [8 x i32]]* @g_3, i64 0, i64 0, i64 4), i32** %l_6, align 8
  store i32 2014642505, i32* %l_8, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 7
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [7 x [2 x i32*]], [7 x [2 x i32*]]* %l_7, i64 0, i64 %idxprom
  %3 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [2 x i32*], [2 x i32*]* %arrayidx, i64 0, i64 %idxprom4
  store i32* getelementptr inbounds ([7 x [8 x i32]], [7 x [8 x i32]]* @g_3, i64 0, i64 1, i64 5), i32** %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %4 = load i32, i32* %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %5 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !11

for.end8:                                         ; preds = %for.cond
  call void @step_hash(i32 1)
  %6 = load i32*, i32** %l_2, align 8
  %7 = load i32**, i32*** %l_4, align 8
  store i32* %6, i32** %7, align 8
  call void @step_hash(i32 2)
  %8 = load i32, i32* %l_8, align 4
  %inc9 = add i32 %8, 1
  store i32 %inc9, i32* %l_8, align 4
  call void @step_hash(i32 3)
  %9 = load i32, i32* @g_11, align 4
  %conv = trunc i32 %9 to i8
  ret i8 %conv
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32_8bytes(i32 %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* %val.addr, align 4
  %shr = lshr i32 %0, 0
  %and = and i32 %shr, 255
  %conv = trunc i32 %and to i8
  call void @crc32_byte(i8 zeroext %conv)
  %1 = load i32, i32* %val.addr, align 4
  %shr1 = lshr i32 %1, 8
  %and2 = and i32 %shr1, 255
  %conv3 = trunc i32 %and2 to i8
  call void @crc32_byte(i8 zeroext %conv3)
  %2 = load i32, i32* %val.addr, align 4
  %shr4 = lshr i32 %2, 16
  %and5 = and i32 %shr4, 255
  %conv6 = trunc i32 %and5 to i8
  call void @crc32_byte(i8 zeroext %conv6)
  %3 = load i32, i32* %val.addr, align 4
  %shr7 = lshr i32 %3, 24
  %and8 = and i32 %shr7, 255
  %conv9 = trunc i32 %and8 to i8
  call void @crc32_byte(i8 zeroext %conv9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32_byte(i8 zeroext %b) #0 {
entry:
  %b.addr = alloca i8, align 1
  store i8 %b, i8* %b.addr, align 1
  %0 = load i32, i32* @crc32_context, align 4
  %shr = lshr i32 %0, 8
  %and = and i32 %shr, 16777215
  %1 = load i32, i32* @crc32_context, align 4
  %2 = load i8, i8* %b.addr, align 1
  %conv = zext i8 %2 to i32
  %xor = xor i32 %1, %conv
  %and1 = and i32 %xor, 255
  %idxprom = zext i32 %and1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @crc32_tab, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %xor2 = xor i32 %and, %3
  store i32 %xor2, i32* @crc32_context, align 4
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
