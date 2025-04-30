; ModuleID = './code/086-1847gentable.c'
source_filename = "./code/086-1847gentable.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@permutations = global [1000000 x ptr] zeroinitializer, align 8
@permCount = global [1000000 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"-%d, \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"-%d\0A\00", align 1
@nums = global [1000000 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %num = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca [10 x i32], align 4
  %j59 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  store i32 %1, ptr %num, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %p, i8 0, i64 40, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load i32, ptr %num, align 4
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %num, align 4
  %rem = srem i32 %3, 10
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %p, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  %5 = load i32, ptr %num, align 4
  %div = sdiv i32 %5, 10
  store i32 %div, ptr %num, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %while.end
  %6 = load i32, ptr %j, align 4
  %cmp3 = icmp slt i32 %6, 10
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [10 x i32], ptr %p, i64 0, i64 %idxprom5
  %8 = load i32, ptr %arrayidx6, align 4
  %cmp7 = icmp sgt i32 %8, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %9 = load i32, ptr %j, align 4
  store i32 %9, ptr %num, align 4
  %10 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [10 x i32], ptr %p, i64 0, i64 %idxprom8
  %11 = load i32, ptr %arrayidx9, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %arrayidx9, align 4
  br label %for.end

if.end:                                           ; preds = %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %j, align 4
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, ptr %j, align 4
  br label %for.cond2, !llvm.loop !7

for.end:                                          ; preds = %if.then, %for.cond2
  store i32 0, ptr %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc23, %for.end
  %13 = load i32, ptr %j, align 4
  %cmp12 = icmp slt i32 %13, 10
  br i1 %cmp12, label %for.body13, label %for.end25

for.body13:                                       ; preds = %for.cond11
  br label %while.cond14

while.cond14:                                     ; preds = %while.body18, %for.body13
  %14 = load i32, ptr %j, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], ptr %p, i64 0, i64 %idxprom15
  %15 = load i32, ptr %arrayidx16, align 4
  %cmp17 = icmp sgt i32 %15, 0
  br i1 %cmp17, label %while.body18, label %while.end22

while.body18:                                     ; preds = %while.cond14
  %16 = load i32, ptr %num, align 4
  %mul = mul nsw i32 10, %16
  %17 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul, %17
  store i32 %add, ptr %num, align 4
  %18 = load i32, ptr %j, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [10 x i32], ptr %p, i64 0, i64 %idxprom19
  %19 = load i32, ptr %arrayidx20, align 4
  %dec21 = add nsw i32 %19, -1
  store i32 %dec21, ptr %arrayidx20, align 4
  br label %while.cond14, !llvm.loop !8

while.end22:                                      ; preds = %while.cond14
  br label %for.inc23

for.inc23:                                        ; preds = %while.end22
  %20 = load i32, ptr %j, align 4
  %inc24 = add nsw i32 %20, 1
  store i32 %inc24, ptr %j, align 4
  br label %for.cond11, !llvm.loop !9

for.end25:                                        ; preds = %for.cond11
  %21 = load i32, ptr %num, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [1000000 x ptr], ptr @permutations, i64 0, i64 %idxprom26
  %22 = load ptr, ptr %arrayidx27, align 8
  %cmp28 = icmp eq ptr %22, null
  br i1 %cmp28, label %if.then29, label %if.end45

if.then29:                                        ; preds = %for.end25
  %23 = load i32, ptr %num, align 4
  %cmp30 = icmp sge i32 %23, 100000
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then29
  %call = call ptr @calloc(i64 noundef 720, i64 noundef 4) #4
  %24 = load i32, ptr %num, align 4
  %idxprom32 = sext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds [1000000 x ptr], ptr @permutations, i64 0, i64 %idxprom32
  store ptr %call, ptr %arrayidx33, align 8
  br label %if.end44

if.else:                                          ; preds = %if.then29
  %25 = load i32, ptr %num, align 4
  %cmp34 = icmp sge i32 %25, 10000
  br i1 %cmp34, label %if.then35, label %if.else39

if.then35:                                        ; preds = %if.else
  %call36 = call ptr @calloc(i64 noundef 120, i64 noundef 4) #4
  %26 = load i32, ptr %num, align 4
  %idxprom37 = sext i32 %26 to i64
  %arrayidx38 = getelementptr inbounds [1000000 x ptr], ptr @permutations, i64 0, i64 %idxprom37
  store ptr %call36, ptr %arrayidx38, align 8
  br label %if.end43

if.else39:                                        ; preds = %if.else
  %call40 = call ptr @calloc(i64 noundef 24, i64 noundef 4) #4
  %27 = load i32, ptr %num, align 4
  %idxprom41 = sext i32 %27 to i64
  %arrayidx42 = getelementptr inbounds [1000000 x ptr], ptr @permutations, i64 0, i64 %idxprom41
  store ptr %call40, ptr %arrayidx42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else39, %if.then35
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then31
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %for.end25
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %num, align 4
  %idxprom46 = sext i32 %29 to i64
  %arrayidx47 = getelementptr inbounds [1000000 x ptr], ptr @permutations, i64 0, i64 %idxprom46
  %30 = load ptr, ptr %arrayidx47, align 8
  %31 = load i32, ptr %num, align 4
  %idxprom48 = sext i32 %31 to i64
  %arrayidx49 = getelementptr inbounds [1000000 x i32], ptr @permCount, i64 0, i64 %idxprom48
  %32 = load i32, ptr %arrayidx49, align 4
  %inc50 = add nsw i32 %32, 1
  store i32 %inc50, ptr %arrayidx49, align 4
  %idxprom51 = sext i32 %32 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %30, i64 %idxprom51
  store i32 %28, ptr %arrayidx52, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %if.end45
  %33 = load i32, ptr %i, align 4
  %inc54 = add nsw i32 %33, 1
  store i32 %inc54, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end55:                                        ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc80, %for.end55
  %34 = load i32, ptr %i, align 4
  %cmp57 = icmp slt i32 %34, 1000000
  br i1 %cmp57, label %for.body58, label %for.end82

for.body58:                                       ; preds = %for.cond56
  %35 = load i32, ptr %i, align 4
  %idxprom60 = sext i32 %35 to i64
  %arrayidx61 = getelementptr inbounds [1000000 x ptr], ptr @permutations, i64 0, i64 %idxprom60
  %36 = load ptr, ptr %arrayidx61, align 8
  %cmp62 = icmp ne ptr %36, null
  br i1 %cmp62, label %if.then63, label %if.end79

if.then63:                                        ; preds = %for.body58
  %37 = load i32, ptr %i, align 4
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %37)
  store i32 1, ptr %j59, align 4
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc75, %if.then63
  %38 = load i32, ptr %j59, align 4
  %39 = load i32, ptr %i, align 4
  %idxprom66 = sext i32 %39 to i64
  %arrayidx67 = getelementptr inbounds [1000000 x i32], ptr @permCount, i64 0, i64 %idxprom66
  %40 = load i32, ptr %arrayidx67, align 4
  %cmp68 = icmp slt i32 %38, %40
  br i1 %cmp68, label %for.body69, label %for.end77

for.body69:                                       ; preds = %for.cond65
  %41 = load i32, ptr %i, align 4
  %idxprom70 = sext i32 %41 to i64
  %arrayidx71 = getelementptr inbounds [1000000 x ptr], ptr @permutations, i64 0, i64 %idxprom70
  %42 = load ptr, ptr %arrayidx71, align 8
  %43 = load i32, ptr %j59, align 4
  %idxprom72 = sext i32 %43 to i64
  %arrayidx73 = getelementptr inbounds i32, ptr %42, i64 %idxprom72
  %44 = load i32, ptr %arrayidx73, align 4
  %call74 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %44)
  br label %for.inc75

for.inc75:                                        ; preds = %for.body69
  %45 = load i32, ptr %j59, align 4
  %inc76 = add nsw i32 %45, 1
  store i32 %inc76, ptr %j59, align 4
  br label %for.cond65, !llvm.loop !11

for.end77:                                        ; preds = %for.cond65
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end79

if.end79:                                         ; preds = %for.end77, %for.body58
  br label %for.inc80

for.inc80:                                        ; preds = %if.end79
  %46 = load i32, ptr %i, align 4
  %inc81 = add nsw i32 %46, 1
  store i32 %inc81, ptr %i, align 4
  br label %for.cond56, !llvm.loop !12

for.end82:                                        ; preds = %for.cond56
  %call83 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef 1000000)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0,1) }

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
!12 = distinct !{!12, !6}
