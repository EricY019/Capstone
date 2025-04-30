; ModuleID = './code/101-10836Ch8p390pe4.c'
source_filename = "./code/101-10836Ch8p390pe4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.rates = private unnamed_addr constant [9 x float] [float 0x40323D70A0000000, float 0x4039A147A0000000, float 0x4017C28F60000000, float 0x4040F5C280000000, float 0x400DAE1480000000, float 0x40406B8520000000, float 0x4041F70A40000000, float 0x40323D70A0000000, float 0x401BAE1480000000], align 4
@.str = private unnamed_addr constant [16 x i8] c"\0AThe array is: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"and \0Athe array's highest number is %.2f, and the lowest %.2f.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %lowRate = alloca float, align 4
  %highRate = alloca float, align 4
  %rates = alloca [9 x float], align 4
  %i = alloca i32, align 4
  %i13 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %rates, ptr align 4 @__const.main.rates, i64 36, i1 false)
  %arrayidx = getelementptr inbounds [9 x float], ptr %rates, i64 0, i64 1
  %0 = load float, ptr %arrayidx, align 4
  store float %0, ptr %lowRate, align 4
  %arrayidx1 = getelementptr inbounds [9 x float], ptr %rates, i64 0, i64 1
  %1 = load float, ptr %arrayidx1, align 4
  store float %1, ptr %highRate, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [9 x float], ptr %rates, i64 0, i64 %idxprom
  %4 = load float, ptr %arrayidx2, align 4
  %5 = load float, ptr %lowRate, align 4
  %cmp3 = fcmp ole float %4, %5
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [9 x float], ptr %rates, i64 0, i64 %idxprom4
  %7 = load float, ptr %arrayidx5, align 4
  store float %7, ptr %lowRate, align 4
  br label %if.end12

if.else:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [9 x float], ptr %rates, i64 0, i64 %idxprom6
  %9 = load float, ptr %arrayidx7, align 4
  %10 = load float, ptr %highRate, align 4
  %cmp8 = fcmp oge float %9, %10
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.else
  %11 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [9 x float], ptr %rates, i64 0, i64 %idxprom10
  %12 = load float, ptr %arrayidx11, align 4
  store float %12, ptr %highRate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %i13, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc20, %for.end
  %14 = load i32, ptr %i13, align 4
  %cmp15 = icmp slt i32 %14, 9
  br i1 %cmp15, label %for.body16, label %for.end22

for.body16:                                       ; preds = %for.cond14
  %15 = load i32, ptr %i13, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [9 x float], ptr %rates, i64 0, i64 %idxprom17
  %16 = load float, ptr %arrayidx18, align 4
  %conv = fpext float %16 to double
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %conv)
  br label %for.inc20

for.inc20:                                        ; preds = %for.body16
  %17 = load i32, ptr %i13, align 4
  %inc21 = add nsw i32 %17, 1
  store i32 %inc21, ptr %i13, align 4
  br label %for.cond14, !llvm.loop !7

for.end22:                                        ; preds = %for.cond14
  %18 = load float, ptr %highRate, align 4
  %conv23 = fpext float %18 to double
  %19 = load float, ptr %lowRate, align 4
  %conv24 = fpext float %19 to double
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %conv23, double noundef %conv24)
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
