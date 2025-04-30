; ModuleID = 'code/030-7985gomp.c'
source_filename = "code/030-7985gomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"simd : \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"barrier : \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @simd()
  call void @barrier()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @simd() #0 {
entry:
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %data = alloca i8*, align 8
  store i64 1073741824, i64* %len, align 8
  %0 = load i64, i64* %len, align 8
  %call = call noalias align 16 i8* @malloc(i64 %0) #3
  store i8* %call, i8** %data, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %1)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %conv = trunc i64 %4 to i8
  %conv3 = sext i8 %conv to i32
  %rem = srem i32 %conv3, 256
  %conv4 = trunc i32 %rem to i8
  %5 = load i8*, i8** %data, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6
  store i8 %conv4, i8* %arrayidx, align 1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i8*, i8** %data, align 8
  call void @free(i8* %8) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @barrier() #0 {
entry:
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %data = alloca i8*, align 8
  store i64 268435456, i64* %len, align 8
  %0 = load i64, i64* %len, align 8
  %call = call noalias align 16 i8* @malloc(i64 %0) #3
  store i8* %call, i8** %data, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %1)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %len, align 8
  %div = udiv i64 %3, 2
  %cmp = icmp ult i64 %2, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %conv = trunc i64 %4 to i8
  %conv3 = sext i8 %conv to i32
  %rem = srem i32 %conv3, 256
  %conv4 = trunc i32 %rem to i8
  %5 = load i8*, i8** %data, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6
  store i8 %conv4, i8* %arrayidx, align 1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %8 = load i64, i64* %len, align 8
  %div5 = udiv i64 %8, 2
  store i64 %div5, i64* %i, align 8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc15, %for.end
  %9 = load i64, i64* %i, align 8
  %10 = load i64, i64* %len, align 8
  %cmp7 = icmp ult i64 %9, %10
  br i1 %cmp7, label %for.body9, label %for.end17

for.body9:                                        ; preds = %for.cond6
  %11 = load i64, i64* %i, align 8
  %conv10 = trunc i64 %11 to i8
  %conv11 = sext i8 %conv10 to i32
  %rem12 = srem i32 %conv11, 256
  %conv13 = trunc i32 %rem12 to i8
  %12 = load i8*, i8** %data, align 8
  %13 = load i64, i64* %i, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %12, i64 %13
  store i8 %conv13, i8* %arrayidx14, align 1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !9
  br label %for.inc15

for.inc15:                                        ; preds = %for.body9
  %14 = load i64, i64* %i, align 8
  %inc16 = add i64 %14, 1
  store i64 %inc16, i64* %i, align 8
  br label %for.cond6, !llvm.loop !10

for.end17:                                        ; preds = %for.cond6
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i8*, i8** %data, align 8
  call void @free(i8* %15) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 251}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i64 531}
!8 = distinct !{!8, !6}
!9 = !{i64 646}
!10 = distinct !{!10, !6}
