; ModuleID = './code/206-17152arf.c'
source_filename = "./code/206-17152arf.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [22 x i8] c"the origin dip ary: \0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"the mult dip ary: \0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ary[%d]=%8.3f \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %dip = alloca [5 x double], align 8
  call void @llvm.memset.p0.i64(ptr align 8 %dip, i8 0, i64 40, i1 false)
  %0 = getelementptr inbounds [5 x double], ptr %dip, i32 0, i32 0
  store double 5.000000e+00, ptr %0, align 8
  %1 = getelementptr inbounds [5 x double], ptr %dip, i32 0, i32 1
  store double 1.020000e+01, ptr %1, align 8
  %2 = getelementptr inbounds [5 x double], ptr %dip, i32 0, i32 2
  store double 3.000000e+00, ptr %2, align 8
  %3 = getelementptr inbounds [5 x double], ptr %dip, i32 0, i32 3
  store double 4.000000e+00, ptr %3, align 8
  %4 = getelementptr inbounds [5 x double], ptr %dip, i32 0, i32 4
  store double 1.000000e+02, ptr %4, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %arraydecay = getelementptr inbounds [5 x double], ptr %dip, i64 0, i64 0
  call void @show_array(ptr noundef %arraydecay, i32 noundef 5)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %arraydecay2 = getelementptr inbounds [5 x double], ptr %dip, i64 0, i64 0
  call void @mult_array(ptr noundef %arraydecay2, double noundef 2.000000e+00, i32 noundef 5)
  %arraydecay3 = getelementptr inbounds [5 x double], ptr %dip, i64 0, i64 0
  call void @show_array(ptr noundef %arraydecay3, i32 noundef 5)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @show_array(ptr noundef %ary, i32 noundef %len) #0 {
entry:
  %ary.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %ary, ptr %ary.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %ary.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, ptr %3, i64 %idxprom
  %5 = load double, ptr %arrayidx, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %2, double noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @mult_array(ptr noundef %ary, double noundef %mult, i32 noundef %len) #0 {
entry:
  %ary.addr = alloca ptr, align 8
  %mult.addr = alloca double, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %ary, ptr %ary.addr, align 8
  store double %mult, ptr %mult.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load double, ptr %mult.addr, align 8
  %3 = load ptr, ptr %ary.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds double, ptr %3, i64 %idxprom
  %5 = load double, ptr %arrayidx, align 8
  %mul = fmul double %5, %2
  store double %mul, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

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
