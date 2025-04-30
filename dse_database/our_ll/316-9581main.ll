; ModuleID = 'code/316-9581main.c'
source_filename = "code/316-9581main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"main.smc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"m7.bin\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %zoom = alloca float, align 4
  %sub = alloca float, align 4
  %byte = alloca [512 x i32], align 16
  %div = alloca float, align 4
  %ozoom = alloca i32, align 4
  %pr = alloca float, align 4
  %tzoom = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp = icmp eq %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call1 = call i32 @fseek(%struct._IO_FILE* %1, i64 131072, i32 0)
  store float 8.320000e+02, float* %zoom, align 4
  %2 = load float, float* %zoom, align 4
  %conv = fpext float %2 to double
  %mul = fmul double %conv, 2.400000e-02
  %conv2 = fptrunc double %mul to float
  store float %conv2, float* %div, align 4
  %3 = load float, float* %zoom, align 4
  store float %3, float* %tzoom, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 128
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load float, float* %zoom, align 4
  %6 = load float, float* %div, align 4
  %div5 = fdiv float %5, %6
  store float %div5, float* %sub, align 4
  %7 = load float, float* %zoom, align 4
  %8 = load float, float* %tzoom, align 4
  %div6 = fdiv float %7, %8
  store float %div6, float* %pr, align 4
  %9 = load float, float* %zoom, align 4
  %conv7 = fptosi float %9 to i32
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [512 x i32], [512 x i32]* %byte, i64 0, i64 %idxprom
  store i32 %conv7, i32* %arrayidx, align 4
  %11 = load float, float* %zoom, align 4
  %conv8 = fptosi float %11 to i32
  store i32 %conv8, i32* %ozoom, align 4
  %12 = load i32, i32* %ozoom, align 4
  %and = and i32 %12, 255
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call9 = call i32 @fputc(i32 %and, %struct._IO_FILE* %13)
  %14 = load i32, i32* %ozoom, align 4
  %shr = ashr i32 %14, 8
  %and10 = and i32 %shr, 255
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call11 = call i32 @fputc(i32 %and10, %struct._IO_FILE* %15)
  %16 = load float, float* %sub, align 4
  %17 = load float, float* %pr, align 4
  %mul12 = fmul float %16, %17
  %18 = load float, float* %zoom, align 4
  %sub13 = fsub float %18, %mul12
  store float %sub13, float* %zoom, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call14 = call i32 @fclose(%struct._IO_FILE* %20)
  %call15 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %call15, %struct._IO_FILE** %file, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc27, %for.end
  %21 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %21, 256
  br i1 %cmp17, label %for.body19, label %for.end29

for.body19:                                       ; preds = %for.cond16
  %22 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds [512 x i32], [512 x i32]* %byte, i64 0, i64 %idxprom20
  %23 = load i32, i32* %arrayidx21, align 4
  store i32 %23, i32* %ozoom, align 4
  %24 = load i32, i32* %ozoom, align 4
  %and22 = and i32 %24, 255
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call23 = call i32 @fputc(i32 %and22, %struct._IO_FILE* %25)
  %26 = load i32, i32* %ozoom, align 4
  %shr24 = ashr i32 %26, 8
  %and25 = and i32 %shr24, 255
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call26 = call i32 @fputc(i32 %and25, %struct._IO_FILE* %27)
  br label %for.inc27

for.inc27:                                        ; preds = %for.body19
  %28 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %28, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond16, !llvm.loop !6

for.end29:                                        ; preds = %for.cond16
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call30 = call i32 @fclose(%struct._IO_FILE* %29)
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end29, %if.then
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

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
!6 = distinct !{!6, !5}
