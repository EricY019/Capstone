; ModuleID = 'code/348-8804asciitable.c'
source_filename = "code/348-8804asciitable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@__const.main.A = private unnamed_addr constant [63 x i8] c"*              THE ASCII TABLE BY JOSEF ZIEGLER              *\00", align 16
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [7 x i8] c"%.3d  \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %A = alloca [63 x i8], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [63 x i8]* %A to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([63 x i8], [63 x i8]* @__const.main.A, i32 0, i32 0), i64 63, i1 false)
  store i32 -1, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %1 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %while.body, label %while.end11

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end, %while.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  %conv = sext i32 %inc to i64
  %cmp2 = icmp ult i64 %conv, 62
  br i1 %cmp2, label %while.body4, label %while.end

while.body4:                                      ; preds = %while.cond1
  %3 = load i32, i32* %j, align 4
  %rem = srem i32 %3, 2
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @_IO_putc(i32 42, %struct._IO_FILE* %4)
  br label %if.end

if.else:                                          ; preds = %while.body4
  %arraydecay = getelementptr inbounds [63 x i8], [63 x i8]* %A, i64 0, i64 0
  %5 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %6 = load i8, i8* %add.ptr, align 1
  %conv7 = sext i8 %6 to i32
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @_IO_putc(i32 %conv7, %struct._IO_FILE* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond1, !llvm.loop !4

while.end:                                        ; preds = %while.cond1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %8)
  %9 = load i32, i32* %j, align 4
  %inc10 = add nsw i32 %9, 1
  store i32 %inc10, i32* %j, align 4
  store i32 -1, i32* %i, align 4
  br label %while.cond, !llvm.loop !6

while.end11:                                      ; preds = %while.cond
  store i32 33, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end11
  %10 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %10, 127
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %11)
  %12 = load i32, i32* %i, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call i32 @_IO_putc(i32 %12, %struct._IO_FILE* %13)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* %i, align 4
  %rem17 = srem i32 %14, 8
  %cmp18 = icmp eq i32 %rem17, 0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call21 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %15)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %16 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %16, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %retval, align 4
  ret i32 %17
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @_IO_putc(i32, %struct._IO_FILE*) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
