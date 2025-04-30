; ModuleID = './code/274-2603211.c'
source_filename = "./code/274-2603211.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.rain = private unnamed_addr constant [5 x [12 x float]] [[12 x float] [float 0x4011333340000000, float 0x4011333340000000, float 0x4011333340000000, float 3.000000e+00, float 2.000000e+00, float 0x3FF3333340000000, float 0x3FC99999A0000000, float 0x3FC99999A0000000, float 0x3FD99999A0000000, float 0x4003333340000000, float 3.500000e+00, float 0x401A666660000000], [12 x float] [float 8.500000e+00, float 0x4020666660000000, float 0x3FF3333340000000, float 0x3FF99999A0000000, float 0x4003333340000000, float 0.000000e+00, float 0x4014CCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FD3333340000000, float 0x3FECCCCCC0000000, float 0x3FF6666660000000, float 0x401D333340000000], [12 x float] [float 0x4022333340000000, float 8.500000e+00, float 0x401ACCCCC0000000, float 0x4011333340000000, float 0x4000CCCCC0000000, float 0x3FE99999A0000000, float 0x3FC99999A0000000, float 0x3FC99999A0000000, float 0x3FF19999A0000000, float 0x4002666660000000, float 0x4018666660000000, float 0x4020CCCCC0000000], [12 x float] [float 0x401CCCCCC0000000, float 0x4023CCCCC0000000, float 0x4020CCCCC0000000, float 0x400A666660000000, float 0x3FF3333340000000, float 0x3FE99999A0000000, float 0x3FD99999A0000000, float 0.000000e+00, float 0x3FE3333340000000, float 0x3FFB333340000000, float 0x4011333340000000, float 0x4018CCCCC0000000], [12 x float] [float 0x401E666660000000, float 0x4016666660000000, float 0x400E666660000000, float 0x4006666660000000, float 0x400E666660000000, float 0x3FC99999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0x3FF4CCCCC0000000, float 0x4004CCCCC0000000, float 0x4014CCCCC0000000]], align 4
@.str = private unnamed_addr constant [27 x i8] c" YEAR  RAINFALL (inches) \0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"MONTHLY AVERAGES: \0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%5d %15.1f\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\0AThe yearly average is %.1f inches.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%3.1f \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %rain = alloca [5 x [12 x float]], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %rain, ptr align 4 @__const.main.rain, i64 240, i1 false)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %arraydecay = getelementptr inbounds [5 x [12 x float]], ptr %rain, i64 0, i64 0
  call void @yearrf(ptr noundef %arraydecay, i32 noundef 5)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %arraydecay2 = getelementptr inbounds [5 x [12 x float]], ptr %rain, i64 0, i64 0
  call void @monthrf(ptr noundef %arraydecay2, i32 noundef 5)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @yearrf(ptr noundef %rain, i32 noundef %years) #0 {
entry:
  %rain.addr = alloca ptr, align 8
  %years.addr = alloca i32, align 4
  %month = alloca i32, align 4
  %year = alloca i32, align 4
  %subtot = alloca float, align 4
  %total = alloca float, align 4
  store ptr %rain, ptr %rain.addr, align 8
  store i32 %years, ptr %years.addr, align 4
  store float 0.000000e+00, ptr %total, align 4
  store i32 0, ptr %year, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %year, align 4
  %1 = load i32, ptr %years.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %month, align 4
  store float 0.000000e+00, ptr %subtot, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %month, align 4
  %cmp2 = icmp slt i32 %2, 12
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load ptr, ptr %rain.addr, align 8
  %4 = load i32, ptr %year, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds [12 x float], ptr %3, i64 %idx.ext
  %arraydecay = getelementptr inbounds [12 x float], ptr %add.ptr, i64 0, i64 0
  %5 = load i32, ptr %month, align 4
  %idx.ext4 = sext i32 %5 to i64
  %add.ptr5 = getelementptr inbounds float, ptr %arraydecay, i64 %idx.ext4
  %6 = load float, ptr %add.ptr5, align 4
  %7 = load float, ptr %subtot, align 4
  %add = fadd float %7, %6
  store float %add, ptr %subtot, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, ptr %month, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %month, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %9 = load i32, ptr %year, align 4
  %add6 = add nsw i32 2000, %9
  %10 = load float, ptr %subtot, align 4
  %conv = fpext float %10 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %add6, double noundef %conv)
  %11 = load float, ptr %subtot, align 4
  %12 = load float, ptr %total, align 4
  %add7 = fadd float %12, %11
  store float %add7, ptr %total, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %13 = load i32, ptr %year, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, ptr %year, align 4
  br label %for.cond, !llvm.loop !7

for.end10:                                        ; preds = %for.cond
  %14 = load float, ptr %total, align 4
  %15 = load i32, ptr %years.addr, align 4
  %conv11 = sitofp i32 %15 to float
  %div = fdiv float %14, %conv11
  %conv12 = fpext float %div to double
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, double noundef %conv12)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @monthrf(ptr noundef %rain, i32 noundef %years) #0 {
entry:
  %rain.addr = alloca ptr, align 8
  %years.addr = alloca i32, align 4
  %year = alloca i32, align 4
  %month = alloca i32, align 4
  %subtot = alloca float, align 4
  store ptr %rain, ptr %rain.addr, align 8
  store i32 %years, ptr %years.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %month, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %month, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %year, align 4
  store float 0.000000e+00, ptr %subtot, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %year, align 4
  %2 = load i32, ptr %years.addr, align 4
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load ptr, ptr %rain.addr, align 8
  %4 = load i32, ptr %year, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds [12 x float], ptr %3, i64 %idx.ext
  %arraydecay = getelementptr inbounds [12 x float], ptr %add.ptr, i64 0, i64 0
  %5 = load i32, ptr %month, align 4
  %idx.ext4 = sext i32 %5 to i64
  %add.ptr5 = getelementptr inbounds float, ptr %arraydecay, i64 %idx.ext4
  %6 = load float, ptr %add.ptr5, align 4
  %7 = load float, ptr %subtot, align 4
  %add = fadd float %7, %6
  store float %add, ptr %subtot, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %8 = load i32, ptr %year, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %year, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  %9 = load float, ptr %subtot, align 4
  %10 = load i32, ptr %years.addr, align 4
  %conv = sitofp i32 %10 to float
  %div = fdiv float %9, %conv
  %conv6 = fpext float %div to double
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, double noundef %conv6)
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %11 = load i32, ptr %month, align 4
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, ptr %month, align 4
  br label %for.cond, !llvm.loop !9

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  ret void
}

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
