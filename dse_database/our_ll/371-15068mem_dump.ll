; ModuleID = 'code/371-15068mem_dump.c'
source_filename = "code/371-15068mem_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"mem.dump\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"arr[%d] = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %i = alloca i32, align 4
  %mul = alloca i32, align 4
  %file = alloca %struct._IO_FILE*, align 8
  %i4 = alloca i32, align 4
  %i16 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 10, i32* %N, align 4
  %0 = call i8* @llvm.stacksave()
  store i8* %0, i8** %saved_stack, align 8
  %vla = alloca i32, i64 10, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 9, i32* %mul, align 4
  %2 = load i32, i32* %i, align 4
  %mul1 = mul nsw i32 9, %2
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %mul1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %file, align 8
  %5 = bitcast i32* %vla to i8*
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call2 = call i64 @fwrite(i8* %5, i64 4, i64 10, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call3 = call i32 @fclose(%struct._IO_FILE* %7)
  store i32 0, i32* %i4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc10, %for.end
  %8 = load i32, i32* %i4, align 4
  %cmp6 = icmp slt i32 %8, 10
  br i1 %cmp6, label %for.body7, label %for.end12

for.body7:                                        ; preds = %for.cond5
  %9 = load i32, i32* %i4, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %vla, i64 %idxprom8
  store i32 0, i32* %arrayidx9, align 4
  br label %for.inc10

for.inc10:                                        ; preds = %for.body7
  %10 = load i32, i32* %i4, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %i4, align 4
  br label %for.cond5, !llvm.loop !6

for.end12:                                        ; preds = %for.cond5
  %call13 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call13, %struct._IO_FILE** %file, align 8
  %11 = bitcast i32* %vla to i8*
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call14 = call i64 @fread(i8* %11, i64 4, i64 10, %struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call15 = call i32 @fclose(%struct._IO_FILE* %13)
  store i32 0, i32* %i16, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc23, %for.end12
  %14 = load i32, i32* %i16, align 4
  %cmp18 = icmp slt i32 %14, 10
  br i1 %cmp18, label %for.body19, label %for.end25

for.body19:                                       ; preds = %for.cond17
  %15 = load i32, i32* %i16, align 4
  %16 = load i32, i32* %i16, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %vla, i64 %idxprom20
  %17 = load i32, i32* %arrayidx21, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %15, i32 %17)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body19
  %18 = load i32, i32* %i16, align 4
  %inc24 = add nsw i32 %18, 1
  store i32 %inc24, i32* %i16, align 4
  br label %for.cond17, !llvm.loop !7

for.end25:                                        ; preds = %for.cond17
  store i32 0, i32* %retval, align 4
  %19 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %19)
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
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
