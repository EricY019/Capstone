; ModuleID = 'code/120-31197IFS.c'
source_filename = "code/120-31197IFS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point = type { double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"out.dat\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%f\09%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @drand() #0 {
entry:
  %call = call i32 @rand() #4
  %conv = sitofp i32 %call to double
  %div = fdiv double %conv, 0x41DFFFFFFFC00000
  ret double %div
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { double, double } @random_element(%struct.point* %array, i64 %n) #0 {
entry:
  %retval = alloca %struct.point, align 8
  %array.addr = alloca %struct.point*, align 8
  %n.addr = alloca i64, align 8
  store %struct.point* %array, %struct.point** %array.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load %struct.point*, %struct.point** %array.addr, align 8
  %call = call i32 @rand() #4
  %1 = load i64, i64* %n.addr, align 8
  %conv = trunc i64 %1 to i32
  %rem = srem i32 %call, %conv
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds %struct.point, %struct.point* %0, i64 %idxprom
  %2 = bitcast %struct.point* %retval to i8*
  %3 = bitcast %struct.point* %arrayidx to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 16, i1 false)
  %4 = bitcast %struct.point* %retval to { double, double }*
  %5 = load { double, double }, { double, double }* %4, align 8
  ret { double, double } %5
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chaos_game(%struct.point* %in, i64 %in_n, %struct.point* %out, i64 %out_n) #0 {
entry:
  %in.addr = alloca %struct.point*, align 8
  %in_n.addr = alloca i64, align 8
  %out.addr = alloca %struct.point*, align 8
  %out_n.addr = alloca i64, align 8
  %cur_point = alloca %struct.point, align 8
  %i = alloca i32, align 4
  %tmp = alloca %struct.point, align 8
  store %struct.point* %in, %struct.point** %in.addr, align 8
  store i64 %in_n, i64* %in_n.addr, align 8
  store %struct.point* %out, %struct.point** %out.addr, align 8
  store i64 %out_n, i64* %out_n.addr, align 8
  %x = getelementptr inbounds %struct.point, %struct.point* %cur_point, i32 0, i32 0
  %call = call double @drand()
  store double %call, double* %x, align 8
  %y = getelementptr inbounds %struct.point, %struct.point* %cur_point, i32 0, i32 1
  %call1 = call double @drand()
  store double %call1, double* %y, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* %out_n.addr, align 8
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.point*, %struct.point** %out.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.point, %struct.point* %2, i64 %idxprom
  %4 = bitcast %struct.point* %arrayidx to i8*
  %5 = bitcast %struct.point* %cur_point to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  %6 = load %struct.point*, %struct.point** %in.addr, align 8
  %7 = load i64, i64* %in_n.addr, align 8
  %call3 = call { double, double } @random_element(%struct.point* %6, i64 %7)
  %8 = bitcast %struct.point* %tmp to { double, double }*
  %9 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 0
  %10 = extractvalue { double, double } %call3, 0
  store double %10, double* %9, align 8
  %11 = getelementptr inbounds { double, double }, { double, double }* %8, i32 0, i32 1
  %12 = extractvalue { double, double } %call3, 1
  store double %12, double* %11, align 8
  %x4 = getelementptr inbounds %struct.point, %struct.point* %cur_point, i32 0, i32 0
  %13 = load double, double* %x4, align 8
  %x5 = getelementptr inbounds %struct.point, %struct.point* %tmp, i32 0, i32 0
  %14 = load double, double* %x5, align 8
  %add = fadd double %13, %14
  %mul = fmul double 5.000000e-01, %add
  %x6 = getelementptr inbounds %struct.point, %struct.point* %cur_point, i32 0, i32 0
  store double %mul, double* %x6, align 8
  %y7 = getelementptr inbounds %struct.point, %struct.point* %cur_point, i32 0, i32 1
  %15 = load double, double* %y7, align 8
  %y8 = getelementptr inbounds %struct.point, %struct.point* %tmp, i32 0, i32 1
  %16 = load double, double* %y8, align 8
  %add9 = fadd double %15, %16
  %mul10 = fmul double 5.000000e-01, %add9
  %y11 = getelementptr inbounds %struct.point, %struct.point* %cur_point, i32 0, i32 1
  store double %mul10, double* %y11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %shape_points = alloca [3 x %struct.point], align 16
  %out_points = alloca [1000 x %struct.point], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %arrayinit.begin = getelementptr inbounds [3 x %struct.point], [3 x %struct.point]* %shape_points, i64 0, i64 0
  %x = getelementptr inbounds %struct.point, %struct.point* %arrayinit.begin, i32 0, i32 0
  store double 0.000000e+00, double* %x, align 16
  %y = getelementptr inbounds %struct.point, %struct.point* %arrayinit.begin, i32 0, i32 1
  store double 0.000000e+00, double* %y, align 8
  %arrayinit.element = getelementptr inbounds %struct.point, %struct.point* %arrayinit.begin, i64 1
  %x1 = getelementptr inbounds %struct.point, %struct.point* %arrayinit.element, i32 0, i32 0
  store double 5.000000e-01, double* %x1, align 16
  %y2 = getelementptr inbounds %struct.point, %struct.point* %arrayinit.element, i32 0, i32 1
  %call = call double @sqrt(double 7.500000e-01) #4
  store double %call, double* %y2, align 8
  %arrayinit.element3 = getelementptr inbounds %struct.point, %struct.point* %arrayinit.element, i64 1
  %x4 = getelementptr inbounds %struct.point, %struct.point* %arrayinit.element3, i32 0, i32 0
  store double 1.000000e+00, double* %x4, align 16
  %y5 = getelementptr inbounds %struct.point, %struct.point* %arrayinit.element3, i32 0, i32 1
  store double 0.000000e+00, double* %y5, align 8
  %call6 = call i64 @time(i64* null) #4
  %conv = trunc i64 %call6 to i32
  call void @srand(i32 %conv) #4
  %arraydecay = getelementptr inbounds [3 x %struct.point], [3 x %struct.point]* %shape_points, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [1000 x %struct.point], [1000 x %struct.point]* %out_points, i64 0, i64 0
  call void @chaos_game(%struct.point* %arraydecay, i64 3, %struct.point* %arraydecay7, i64 1000)
  %call8 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %fp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x %struct.point], [1000 x %struct.point]* %out_points, i64 0, i64 %idxprom
  %x10 = getelementptr inbounds %struct.point, %struct.point* %arrayidx, i32 0, i32 0
  %3 = load double, double* %x10, align 16
  %4 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %4 to i64
  %arrayidx12 = getelementptr inbounds [1000 x %struct.point], [1000 x %struct.point]* %out_points, i64 0, i64 %idxprom11
  %y13 = getelementptr inbounds %struct.point, %struct.point* %arrayidx12, i32 0, i32 1
  %5 = load double, double* %y13, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %3, double %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call15 = call i32 @fclose(%struct._IO_FILE* %7)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
