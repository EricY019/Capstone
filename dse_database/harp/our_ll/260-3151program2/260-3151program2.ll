; ModuleID = 'code/260-3151program2.c'
source_filename = "code/260-3151program2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_t = type { i32, double, [10 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@__const.main.nums = private unnamed_addr constant [6 x i32] [i32 1, i32 1, i32 2, i32 3, i32 5, i32 8], align 16
@.str = private unnamed_addr constant [9 x i8] c"data.bin\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.node = private unnamed_addr constant %struct.node_t { i32 13, double 3.141500e+00, [10 x i8] c"mydata\00\00\00\00" }, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"struct.bin\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"node.data = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"node.dbl = %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"node.str = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nums = alloca [6 x i32], align 16
  %len = alloca i32, align 4
  %output_bin = alloca %struct._IO_FILE*, align 8
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %input_bin = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %node = alloca %struct.node_t, align 8
  %output_bin2 = alloca %struct._IO_FILE*, align 8
  %input_node = alloca %struct.node_t, align 8
  %input_bin2 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [6 x i32]* %nums to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([6 x i32]* @__const.main.nums to i8*), i64 24, i1 false)
  store i32 6, i32* %len, align 4
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %output_bin, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %output_bin, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %nums, i64 0, i64 0
  %2 = bitcast i32* %arraydecay to i8*
  %3 = load i32, i32* %len, align 4
  %conv = sext i32 %3 to i64
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %output_bin, align 8
  %call1 = call i64 @fwrite(i8* %2, i64 4, i64 %conv, %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %output_bin, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %len, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %7, align 16
  store i64 %7, i64* %__vla_expr0, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %input_bin, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %input_bin, align 8
  %tobool4 = icmp ne %struct._IO_FILE* %9, null
  br i1 %tobool4, label %if.then5, label %if.end12

if.then5:                                         ; preds = %if.end
  %10 = bitcast i32* %vla to i8*
  %11 = load i32, i32* %len, align 4
  %conv6 = sext i32 %11 to i64
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %input_bin, align 8
  %call7 = call i64 @fread(i8* %10, i64 4, i64 %conv6, %struct._IO_FILE* %12)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %len, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %input_bin, align 8
  %call11 = call i32 @fclose(%struct._IO_FILE* %18)
  br label %if.end12

if.end12:                                         ; preds = %for.end, %if.end
  %19 = bitcast %struct.node_t* %node to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.node_t* @__const.main.node to i8*), i64 32, i1 false)
  %call13 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call13, %struct._IO_FILE** %output_bin2, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %output_bin2, align 8
  %tobool14 = icmp ne %struct._IO_FILE* %20, null
  br i1 %tobool14, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  %21 = bitcast %struct.node_t* %node to i8*
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %output_bin2, align 8
  %call16 = call i64 @fwrite(i8* %21, i64 32, i64 1, %struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %output_bin2, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* %23)
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end12
  %call19 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call19, %struct._IO_FILE** %input_bin2, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %input_bin2, align 8
  %tobool20 = icmp ne %struct._IO_FILE* %24, null
  br i1 %tobool20, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end18
  %25 = bitcast %struct.node_t* %input_node to i8*
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %input_bin2, align 8
  %call22 = call i64 @fread(i8* %25, i64 32, i64 1, %struct._IO_FILE* %26)
  %data = getelementptr inbounds %struct.node_t, %struct.node_t* %input_node, i32 0, i32 0
  %27 = load i32, i32* %data, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %27)
  %dbl = getelementptr inbounds %struct.node_t, %struct.node_t* %input_node, i32 0, i32 1
  %28 = load double, double* %dbl, align 8
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), double %28)
  %str = getelementptr inbounds %struct.node_t, %struct.node_t* %input_node, i32 0, i32 2
  %arraydecay25 = getelementptr inbounds [10 x i8], [10 x i8]* %str, i64 0, i64 0
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i8* %arraydecay25)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %input_bin2, align 8
  %call27 = call i32 @fclose(%struct._IO_FILE* %29)
  br label %if.end28

if.end28:                                         ; preds = %if.then21, %if.end18
  store i32 0, i32* %retval, align 4
  %30 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %30)
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
