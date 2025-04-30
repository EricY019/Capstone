; ModuleID = './code/242-13979main.c'
source_filename = "./code/242-13979main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %total = alloca i32, align 4
  %map = alloca [200 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %arraydecay = getelementptr inbounds [200 x i8], ptr %map, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 200, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp sle i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %k, align 4
  %cmp5 = icmp sle i32 %2, 6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, ptr %i, align 4
  %mul = mul nsw i32 8, %3
  %4 = load i32, ptr %j, align 4
  %mul7 = mul nsw i32 10, %4
  %add = add nsw i32 %mul, %mul7
  %5 = load i32, ptr %k, align 4
  %mul8 = mul nsw i32 18, %5
  %add9 = add nsw i32 %add, %mul8
  store i32 %add9, ptr %total, align 4
  %6 = load i32, ptr %total, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [200 x i8], ptr %map, i64 0, i64 %idxprom
  store i8 1, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %7 = load i32, ptr %k, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !5

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %8 = load i32, ptr %j, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %j, align 4
  br label %for.cond1, !llvm.loop !7

for.end12:                                        ; preds = %for.cond1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end12
  %9 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %9, 1
  store i32 %inc14, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end15:                                        ; preds = %for.cond
  store i32 1, ptr %i, align 4
  store i32 0, ptr %total, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc22, %for.end15
  %10 = load i32, ptr %i, align 4
  %cmp17 = icmp slt i32 %10, 200
  br i1 %cmp17, label %for.body18, label %for.end24

for.body18:                                       ; preds = %for.cond16
  %11 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [200 x i8], ptr %map, i64 0, i64 %idxprom19
  %12 = load i8, ptr %arrayidx20, align 1
  %conv = sext i8 %12 to i32
  %13 = load i32, ptr %total, align 4
  %add21 = add nsw i32 %13, %conv
  store i32 %add21, ptr %total, align 4
  br label %for.inc22

for.inc22:                                        ; preds = %for.body18
  %14 = load i32, ptr %i, align 4
  %inc23 = add nsw i32 %14, 1
  store i32 %inc23, ptr %i, align 4
  br label %for.cond16, !llvm.loop !9

for.end24:                                        ; preds = %for.cond16
  %15 = load i32, ptr %total, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
