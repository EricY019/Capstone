; ModuleID = './code/024-12082week2_day1_maopao.c'
source_filename = "./code/024-12082week2_day1_maopao.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.array = private unnamed_addr constant [10 x i32] [i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [10 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 4 @__const.main.array, i64 40, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc27, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %4, 9
  br i1 %cmp3, label %for.body4, label %for.end29

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc24, %for.body4
  %5 = load i32, ptr %j, align 4
  %6 = load i32, ptr %i, align 4
  %sub = sub nsw i32 10, %6
  %sub6 = sub nsw i32 %sub, 1
  %cmp7 = icmp slt i32 %5, %sub6
  br i1 %cmp7, label %for.body8, label %for.end26

for.body8:                                        ; preds = %for.cond5
  %7 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 %idxprom9
  %8 = load i32, ptr %arrayidx10, align 4
  %9 = load i32, ptr %j, align 4
  %add = add nsw i32 %9, 1
  %idxprom11 = sext i32 %add to i64
  %arrayidx12 = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 %idxprom11
  %10 = load i32, ptr %arrayidx12, align 4
  %cmp13 = icmp sgt i32 %8, %10
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %11 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 %idxprom14
  %12 = load i32, ptr %arrayidx15, align 4
  store i32 %12, ptr %temp, align 4
  %13 = load i32, ptr %j, align 4
  %add16 = add nsw i32 %13, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 %idxprom17
  %14 = load i32, ptr %arrayidx18, align 4
  %15 = load i32, ptr %j, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 %idxprom19
  store i32 %14, ptr %arrayidx20, align 4
  %16 = load i32, ptr %temp, align 4
  %17 = load i32, ptr %j, align 4
  %add21 = add nsw i32 %17, 1
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 %idxprom22
  store i32 %16, ptr %arrayidx23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  br label %for.inc24

for.inc24:                                        ; preds = %if.end
  %18 = load i32, ptr %j, align 4
  %inc25 = add nsw i32 %18, 1
  store i32 %inc25, ptr %j, align 4
  br label %for.cond5, !llvm.loop !7

for.end26:                                        ; preds = %for.cond5
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %19 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %19, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond2, !llvm.loop !8

for.end29:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc36, %for.end29
  %20 = load i32, ptr %i, align 4
  %cmp31 = icmp slt i32 %20, 10
  br i1 %cmp31, label %for.body32, label %for.end38

for.body32:                                       ; preds = %for.cond30
  %21 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %21 to i64
  %arrayidx34 = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 %idxprom33
  %22 = load i32, ptr %arrayidx34, align 4
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %22)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body32
  %23 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %23, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond30, !llvm.loop !9

for.end38:                                        ; preds = %for.cond30
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!9 = distinct !{!9, !6}
