; ModuleID = 'code/276-33239pthread.c'
source_filename = "code/276-33239pthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"ERROR code %d calling pthread_create\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Error joining pthread\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @count_to_ten(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %buffer = alloca [100 x i8], align 16
  %tabs = alloca [20 x i8], align 16
  %skip = alloca i32, align 4
  store i8* %x, i8** %x.addr, align 8
  %0 = bitcast [20 x i8]* %tabs to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 20, i1 false)
  %1 = load i8*, i8** %x.addr, align 8
  %2 = bitcast i8* %1 to i32*
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* %skip, align 4
  store i32 0, i32* %jj, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %jj, align 4
  %5 = load i32, i32* %skip, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %tabs, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [20 x i8], [20 x i8]* %tabs, i64 0, i64 0
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %arraydecay1) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %jj, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %jj, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ii, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc12, %for.end
  %7 = load i32, i32* %ii, align 4
  %cmp3 = icmp slt i32 %7, 10
  br i1 %cmp3, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond2
  %arraydecay5 = getelementptr inbounds [100 x i8], [100 x i8]* %buffer, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [20 x i8], [20 x i8]* %tabs, i64 0, i64 0
  %8 = load i32, i32* %ii, align 4
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay6, i32 %8) #4
  %arraydecay8 = getelementptr inbounds [100 x i8], [100 x i8]* %buffer, i64 0, i64 0
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fflush(%struct._IO_FILE* %9)
  %call11 = call i32 @sleep(i32 1)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body4
  %10 = load i32, i32* %ii, align 4
  %inc13 = add nsw i32 %10, 1
  store i32 %inc13, i32* %ii, align 4
  br label %for.cond2, !llvm.loop !6

for.end14:                                        ; preds = %for.cond2
  ret i8* null
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @fflush(%struct._IO_FILE*) #3

declare dso_local i32 @sleep(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ii = alloca i32, align 4
  %rc = alloca i32, align 4
  %num = alloca [6 x i32], align 16
  %new_thread = alloca [6 x i64], align 16
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ii, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ii, align 4
  %2 = load i32, i32* %ii, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %num, i64 0, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %ii, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %ii, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %ii, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.end
  %4 = load i32, i32* %ii, align 4
  %cmp2 = icmp slt i32 %4, 6
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, i32* %ii, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [6 x i64], [6 x i64]* %new_thread, i64 0, i64 %idxprom4
  %6 = load i32, i32* %ii, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [6 x i32], [6 x i32]* %num, i64 0, i64 %idxprom6
  %7 = bitcast i32* %arrayidx7 to i8*
  %call = call i32 @pthread_create(i64* %arrayidx5, %union.pthread_attr_t* null, i8* (i8*)* @count_to_ten, i8* %7) #4
  store i32 %call, i32* %rc, align 4
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i32, i32* %rc, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %9)
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body3
  br label %for.inc10

for.inc10:                                        ; preds = %if.end
  %10 = load i32, i32* %ii, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, i32* %ii, align 4
  br label %for.cond1, !llvm.loop !8

for.end12:                                        ; preds = %for.cond1
  store i32 0, i32* %ii, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc23, %for.end12
  %11 = load i32, i32* %ii, align 4
  %cmp14 = icmp slt i32 %11, 6
  br i1 %cmp14, label %for.body15, label %for.end25

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, i32* %ii, align 4
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [6 x i64], [6 x i64]* %new_thread, i64 0, i64 %idxprom16
  %13 = load i64, i64* %arrayidx17, align 8
  %call18 = call i32 @pthread_join(i64 %13, i8** null)
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.body15
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %for.body15
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22
  %15 = load i32, i32* %ii, align 4
  %inc24 = add nsw i32 %15, 1
  store i32 %inc24, i32* %ii, align 4
  br label %for.cond13, !llvm.loop !9

for.end25:                                        ; preds = %for.cond13
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end25, %if.then20, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare dso_local i32 @pthread_join(i64, i8**) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
