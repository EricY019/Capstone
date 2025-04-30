; ModuleID = './code/120-31197IFS.c'
source_filename = "./code/120-31197IFS.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.point = type { double, double }

@.str = private unnamed_addr constant [8 x i8] c"out.dat\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%f\09%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define double @drand() #0 {
entry:
  %call = call i32 @rand()
  %conv = sitofp i32 %call to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  ret double %div
}

declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define %struct.point @random_element(ptr noundef %array, i64 noundef %n) #0 {
entry:
  %retval = alloca %struct.point, align 8
  %array.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %array, ptr %array.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %array.addr, align 8
  %call = call i32 @rand()
  %1 = load i64, ptr %n.addr, align 8
  %conv = trunc i64 %1 to i32
  %rem = srem i32 %call, %conv
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds %struct.point, ptr %0, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %arrayidx, i64 16, i1 false)
  %2 = load %struct.point, ptr %retval, align 8
  ret %struct.point %2
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @chaos_game(ptr noundef %in, i64 noundef %in_n, ptr noundef %out, i64 noundef %out_n) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %in_n.addr = alloca i64, align 8
  %out.addr = alloca ptr, align 8
  %out_n.addr = alloca i64, align 8
  %cur_point = alloca %struct.point, align 8
  %i = alloca i32, align 4
  %tmp = alloca %struct.point, align 8
  store ptr %in, ptr %in.addr, align 8
  store i64 %in_n, ptr %in_n.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store i64 %out_n, ptr %out_n.addr, align 8
  %x = getelementptr inbounds %struct.point, ptr %cur_point, i32 0, i32 0
  %call = call double @drand()
  store double %call, ptr %x, align 8
  %y = getelementptr inbounds %struct.point, ptr %cur_point, i32 0, i32 1
  %call1 = call double @drand()
  store double %call1, ptr %y, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, ptr %out_n.addr, align 8
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %out.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.point, ptr %2, i64 %idxprom
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx, ptr align 8 %cur_point, i64 16, i1 false)
  %4 = load ptr, ptr %in.addr, align 8
  %5 = load i64, ptr %in_n.addr, align 8
  %call3 = call %struct.point @random_element(ptr noundef %4, i64 noundef %5)
  %6 = getelementptr inbounds %struct.point, ptr %tmp, i32 0, i32 0
  %7 = extractvalue %struct.point %call3, 0
  store double %7, ptr %6, align 8
  %8 = getelementptr inbounds %struct.point, ptr %tmp, i32 0, i32 1
  %9 = extractvalue %struct.point %call3, 1
  store double %9, ptr %8, align 8
  %x4 = getelementptr inbounds %struct.point, ptr %cur_point, i32 0, i32 0
  %10 = load double, ptr %x4, align 8
  %x5 = getelementptr inbounds %struct.point, ptr %tmp, i32 0, i32 0
  %11 = load double, ptr %x5, align 8
  %add = fadd double %10, %11
  %mul = fmul double 5.000000e-01, %add
  %x6 = getelementptr inbounds %struct.point, ptr %cur_point, i32 0, i32 0
  store double %mul, ptr %x6, align 8
  %y7 = getelementptr inbounds %struct.point, ptr %cur_point, i32 0, i32 1
  %12 = load double, ptr %y7, align 8
  %y8 = getelementptr inbounds %struct.point, ptr %tmp, i32 0, i32 1
  %13 = load double, ptr %y8, align 8
  %add9 = fadd double %12, %13
  %mul10 = fmul double 5.000000e-01, %add9
  %y11 = getelementptr inbounds %struct.point, ptr %cur_point, i32 0, i32 1
  store double %mul10, ptr %y11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %shape_points = alloca [3 x %struct.point], align 8
  %out_points = alloca [1000 x %struct.point], align 8
  %fp = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %x = getelementptr inbounds %struct.point, ptr %shape_points, i32 0, i32 0
  store double 0.000000e+00, ptr %x, align 8
  %y = getelementptr inbounds %struct.point, ptr %shape_points, i32 0, i32 1
  store double 0.000000e+00, ptr %y, align 8
  %arrayinit.element = getelementptr inbounds %struct.point, ptr %shape_points, i64 1
  %x1 = getelementptr inbounds %struct.point, ptr %arrayinit.element, i32 0, i32 0
  store double 5.000000e-01, ptr %x1, align 8
  %y2 = getelementptr inbounds %struct.point, ptr %arrayinit.element, i32 0, i32 1
  %0 = call double @llvm.sqrt.f64(double 7.500000e-01)
  store double %0, ptr %y2, align 8
  %arrayinit.element3 = getelementptr inbounds %struct.point, ptr %shape_points, i64 2
  %x4 = getelementptr inbounds %struct.point, ptr %arrayinit.element3, i32 0, i32 0
  store double 1.000000e+00, ptr %x4, align 8
  %y5 = getelementptr inbounds %struct.point, ptr %arrayinit.element3, i32 0, i32 1
  store double 0.000000e+00, ptr %y5, align 8
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  %arraydecay = getelementptr inbounds [3 x %struct.point], ptr %shape_points, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [1000 x %struct.point], ptr %out_points, i64 0, i64 0
  call void @chaos_game(ptr noundef %arraydecay, i64 noundef 3, ptr noundef %arraydecay6, i64 noundef 1000)
  %call7 = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call7, ptr %fp, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %fp, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1000 x %struct.point], ptr %out_points, i64 0, i64 %idxprom
  %x9 = getelementptr inbounds %struct.point, ptr %arrayidx, i32 0, i32 0
  %4 = load double, ptr %x9, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %5 to i64
  %arrayidx11 = getelementptr inbounds [1000 x %struct.point], ptr %out_points, i64 0, i64 %idxprom10
  %y12 = getelementptr inbounds %struct.point, ptr %arrayidx11, i32 0, i32 1
  %6 = load double, ptr %y12, align 8
  %call13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.2, double noundef %4, double noundef %6) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %fp, align 8
  %call14 = call i32 @fclose(ptr noundef %8)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

declare i32 @fclose(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind }

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
