; ModuleID = './code/262-323617.c'
source_filename = "./code/262-323617.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"%.4f \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_array_5(ptr noundef %array) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %array.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds double, ptr %1, i64 %idx.ext
  %3 = load double, ptr %add.ptr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, double noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @cleandata(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 0, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %p.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds double, ptr %1, i64 %idx.ext
  %3 = load double, ptr %add.ptr, align 8
  %cmp1 = fcmp oge double %3, 1.000000e-03
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %p.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idx.ext2 = sext i32 %5 to i64
  %add.ptr3 = getelementptr inbounds double, ptr %4, i64 %idx.ext2
  %6 = load double, ptr %add.ptr3, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %8 = load i32, ptr %j, align 4
  %idx.ext4 = sext i32 %8 to i64
  %add.ptr5 = getelementptr inbounds double, ptr %7, i64 %idx.ext4
  store double %6, ptr %add.ptr5, align 8
  %9 = load i32, ptr %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %10, 1
  store i32 %inc6, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc12, %for.end
  %11 = load i32, ptr %j, align 4
  %cmp8 = icmp slt i32 %11, 5
  br i1 %cmp8, label %for.body9, label %for.end14

for.body9:                                        ; preds = %for.cond7
  %12 = load ptr, ptr %p.addr, align 8
  %13 = load i32, ptr %j, align 4
  %idx.ext10 = sext i32 %13 to i64
  %add.ptr11 = getelementptr inbounds double, ptr %12, i64 %idx.ext10
  store double 0.000000e+00, ptr %add.ptr11, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.body9
  %14 = load i32, ptr %j, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, ptr %j, align 4
  br label %for.cond7, !llvm.loop !8

for.end14:                                        ; preds = %for.cond7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data = alloca [5 x double], align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %data, i8 0, i64 40, i1 false)
  %0 = getelementptr inbounds [5 x double], ptr %data, i32 0, i32 0
  store double 8.900000e-01, ptr %0, align 8
  %1 = getelementptr inbounds [5 x double], ptr %data, i32 0, i32 1
  store double 7.800000e-01, ptr %1, align 8
  %2 = getelementptr inbounds [5 x double], ptr %data, i32 0, i32 2
  store double 9.000000e-04, ptr %2, align 8
  %3 = getelementptr inbounds [5 x double], ptr %data, i32 0, i32 3
  store double 6.700000e-01, ptr %3, align 8
  %4 = getelementptr inbounds [5 x double], ptr %data, i32 0, i32 4
  store double 5.600000e-01, ptr %4, align 8
  %arraydecay = getelementptr inbounds [5 x double], ptr %data, i64 0, i64 0
  call void @print_array_5(ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [5 x double], ptr %data, i64 0, i64 0
  call void @cleandata(ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [5 x double], ptr %data, i64 0, i64 0
  call void @print_array_5(ptr noundef %arraydecay2)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
