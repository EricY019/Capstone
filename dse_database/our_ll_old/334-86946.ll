; ModuleID = './code/334-86946.c'
source_filename = "./code/334-86946.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.source = private unnamed_addr constant [2 x [5 x double]] [[5 x double] [double 1.100000e+00, double 2.200000e+00, double 3.300000e+00, double 4.400000e+00, double 5.500000e+00], [5 x double] [double 6.600000e+00, double 7.700000e+00, double 8.800000e+00, double 9.900000e+00, double 1.100000e+00]], align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %source = alloca [2 x [5 x double]], align 8
  %target1 = alloca [2 x [5 x double]], align 8
  %target2 = alloca [2 x [5 x double]], align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %source, ptr align 8 @__const.main.source, i64 80, i1 false)
  %arrayidx = getelementptr inbounds [2 x [5 x double]], ptr %source, i64 0, i64 0
  %arraydecay = getelementptr inbounds [5 x double], ptr %arrayidx, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [2 x [5 x double]], ptr %target1, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [5 x double], ptr %arrayidx1, i64 0, i64 0
  call void @copy_arr(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 5)
  %arrayidx3 = getelementptr inbounds [2 x [5 x double]], ptr %source, i64 0, i64 1
  %arraydecay4 = getelementptr inbounds [5 x double], ptr %arrayidx3, i64 0, i64 0
  %arrayidx5 = getelementptr inbounds [2 x [5 x double]], ptr %target1, i64 0, i64 1
  %arraydecay6 = getelementptr inbounds [5 x double], ptr %arrayidx5, i64 0, i64 0
  call void @copy_arr(ptr noundef %arraydecay4, ptr noundef %arraydecay6, i32 noundef 5)
  %arraydecay7 = getelementptr inbounds [2 x [5 x double]], ptr %source, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [5 x double], ptr %arraydecay7, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [2 x [5 x double]], ptr %target2, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [5 x double], ptr %arraydecay9, i64 0, i64 0
  call void @copy_ptr(ptr noundef %arraydecay8, ptr noundef %arraydecay10, i32 noundef 5)
  %arraydecay11 = getelementptr inbounds [2 x [5 x double]], ptr %source, i64 0, i64 0
  %add.ptr = getelementptr inbounds [5 x double], ptr %arraydecay11, i64 1
  %arraydecay12 = getelementptr inbounds [5 x double], ptr %add.ptr, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [2 x [5 x double]], ptr %target2, i64 0, i64 0
  %add.ptr14 = getelementptr inbounds [5 x double], ptr %arraydecay13, i64 1
  %arraydecay15 = getelementptr inbounds [5 x double], ptr %add.ptr14, i64 0, i64 0
  call void @copy_ptr(ptr noundef %arraydecay12, ptr noundef %arraydecay15, i32 noundef 5)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @copy_arr(ptr noundef %source, ptr noundef %target, i32 noundef %n) #0 {
entry:
  %source.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %source, ptr %source.addr, align 8
  store ptr %target, ptr %target.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %source.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds double, ptr %2, i64 %idxprom
  %4 = load double, ptr %arrayidx, align 8
  %5 = load ptr, ptr %target.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds double, ptr %5, i64 %idxprom1
  store double %4, ptr %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @copy_ptr(ptr noundef %source, ptr noundef %target, i32 noundef %n) #0 {
entry:
  %source.addr = alloca ptr, align 8
  %target.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %source, ptr %source.addr, align 8
  store ptr %target, ptr %target.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %n.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %source.addr, align 8
  %incdec.ptr = getelementptr inbounds double, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %source.addr, align 8
  %2 = load double, ptr %1, align 8
  %3 = load ptr, ptr %target.addr, align 8
  %incdec.ptr1 = getelementptr inbounds double, ptr %3, i32 1
  store ptr %incdec.ptr1, ptr %target.addr, align 8
  store double %2, ptr %3, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
