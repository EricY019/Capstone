; ModuleID = 'code/277-26942sumArraysOnHost.c'
source_filename = "code/277-26942sumArraysOnHost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sumArraysOnHost(float* %A, float* %B, float* %C, i32 %N) #0 {
entry:
  %A.addr = alloca float*, align 8
  %B.addr = alloca float*, align 8
  %C.addr = alloca float*, align 8
  %N.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  store float* %A, float** %A.addr, align 8
  store float* %B, float** %B.addr, align 8
  store float* %C, float** %C.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idx, align 4
  %1 = load i32, i32* %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load float*, float** %A.addr, align 8
  %3 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = load float*, float** %B.addr, align 8
  %6 = load i32, i32* %idx, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds float, float* %5, i64 %idxprom1
  %7 = load float, float* %arrayidx2, align 4
  %add = fadd float %4, %7
  %8 = load float*, float** %C.addr, align 8
  %9 = load i32, i32* %idx, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds float, float* %8, i64 %idxprom3
  store float %add, float* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialData(float* %ip, i32 %size) #0 {
entry:
  %ip.addr = alloca float*, align 8
  %size.addr = alloca i32, align 4
  %t = alloca i64, align 8
  %i = alloca i32, align 4
  store float* %ip, float** %ip.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %call = call i64 @time(i64* %t) #2
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #2
  %and = and i32 %call2, 255
  %conv3 = sitofp i32 %and to float
  %div = fdiv float %conv3, 1.000000e+01
  %2 = load float*, float** %ip.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, float* %2, i64 %idxprom
  store float %div, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %nElem = alloca i32, align 4
  %nBytes = alloca i64, align 8
  %h_A = alloca float*, align 8
  %h_B = alloca float*, align 8
  %h_C = alloca float*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1024, i32* %nElem, align 4
  %0 = load i32, i32* %nElem, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  store i64 %mul, i64* %nBytes, align 8
  %1 = load i64, i64* %nBytes, align 8
  %call = call noalias align 16 i8* @malloc(i64 %1) #2
  %2 = bitcast i8* %call to float*
  store float* %2, float** %h_A, align 8
  %3 = load i64, i64* %nBytes, align 8
  %call1 = call noalias align 16 i8* @malloc(i64 %3) #2
  %4 = bitcast i8* %call1 to float*
  store float* %4, float** %h_B, align 8
  %5 = load i64, i64* %nBytes, align 8
  %call2 = call noalias align 16 i8* @malloc(i64 %5) #2
  %6 = bitcast i8* %call2 to float*
  store float* %6, float** %h_C, align 8
  %7 = load float*, float** %h_A, align 8
  %8 = load i32, i32* %nElem, align 4
  call void @initialData(float* %7, i32 %8)
  %9 = load float*, float** %h_B, align 8
  %10 = load i32, i32* %nElem, align 4
  call void @initialData(float* %9, i32 %10)
  %11 = load float*, float** %h_A, align 8
  %12 = load float*, float** %h_B, align 8
  %13 = load float*, float** %h_C, align 8
  %14 = load i32, i32* %nElem, align 4
  call void @sumArraysOnHost(float* %11, float* %12, float* %13, i32 %14)
  %15 = load float*, float** %h_A, align 8
  %16 = bitcast float* %15 to i8*
  call void @free(i8* %16) #2
  %17 = load float*, float** %h_B, align 8
  %18 = bitcast float* %17 to i8*
  call void @free(i8* %18) #2
  %19 = load float*, float** %h_C, align 8
  %20 = bitcast float* %19 to i8*
  call void @free(i8* %20) #2
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
