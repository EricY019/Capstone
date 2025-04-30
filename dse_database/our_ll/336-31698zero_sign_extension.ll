; ModuleID = 'code/336-31698zero_sign_extension.c'
source_filename = "code/336-31698zero_sign_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c" %.2x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"xs = %d:\09\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"usx = %u:\09\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"x = %d:\09\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ux = %u:\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_bytes(i8* %start, i32 %len) #0 {
entry:
  %start.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %start, i8** %start.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %start.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_int(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = bitcast i32* %x.addr to i8*
  call void @show_bytes(i8* %0, i32 4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_float(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = bitcast float* %x.addr to i8*
  call void @show_bytes(i8* %0, i32 4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_pointer(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = bitcast i8** %x.addr to i8*
  call void @show_bytes(i8* %0, i32 8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sx = alloca i16, align 2
  %usx = alloca i16, align 2
  %x = alloca i32, align 4
  %ux = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i16 -12345, i16* %sx, align 2
  %0 = load i16, i16* %sx, align 2
  store i16 %0, i16* %usx, align 2
  %1 = load i16, i16* %sx, align 2
  %conv = sext i16 %1 to i32
  store i32 %conv, i32* %x, align 4
  %2 = load i16, i16* %usx, align 2
  %conv1 = zext i16 %2 to i32
  store i32 %conv1, i32* %ux, align 4
  %3 = load i16, i16* %sx, align 2
  %conv2 = sext i16 %3 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %conv2)
  %4 = bitcast i16* %sx to i8*
  call void @show_bytes(i8* %4, i32 2)
  %5 = load i16, i16* %usx, align 2
  %conv3 = zext i16 %5 to i32
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %conv3)
  %6 = bitcast i16* %usx to i8*
  call void @show_bytes(i8* %6, i32 2)
  %7 = load i32, i32* %x, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %7)
  %8 = bitcast i32* %x to i8*
  call void @show_bytes(i8* %8, i32 4)
  %9 = load i32, i32* %ux, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %9)
  %10 = bitcast i32* %ux to i8*
  call void @show_bytes(i8* %10, i32 4)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
