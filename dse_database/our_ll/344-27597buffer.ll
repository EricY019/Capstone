; ModuleID = 'code/344-27597buffer.c'
source_filename = "code/344-27597buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@__const.main.buff1 = private unnamed_addr constant [50 x i8] c"How now brown cow.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [12 x i8] c"buff1 = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"buffer = %s\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"length of buffer = %ld, buffer[%ld] = %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buffer = alloca i8*, align 8
  %buff1 = alloca [50 x i8], align 16
  %x = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 50) #5
  store i8* %call, i8** %buffer, align 8
  %0 = bitcast [50 x i8]* %buff1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([50 x i8], [50 x i8]* @__const.main.buff1, i32 0, i32 0), i64 50, i1 false)
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %buff1, i64 0, i64 0
  store i8* %arraydecay, i8** %buffer, align 8
  %arraydecay1 = getelementptr inbounds [50 x i8], [50 x i8]* %buff1, i64 0, i64 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %arraydecay1)
  %1 = load i8*, i8** %buffer, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %1)
  %2 = load i8*, i8** %buffer, align 8
  %call4 = call i64 @strlen(i8* %2) #6
  store i64 %call4, i64* %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %x, align 8
  %cmp = icmp ne i64 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %buffer, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fputc(i32 %conv, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fputc(i32 10, %struct._IO_FILE* %7)
  %8 = load i8*, i8** %buffer, align 8
  %call7 = call i64 @strlen(i8* %8) #6
  %9 = load i64, i64* %x, align 8
  %10 = load i8*, i8** %buffer, align 8
  %11 = load i8, i8* %10, align 1
  %conv8 = sext i8 %11 to i32
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %call7, i64 %9, i32 %conv8)
  %12 = load i8*, i8** %buffer, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %buffer, align 8
  %13 = load i8, i8* %12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %x, align 8
  %dec = add nsw i64 %14, -1
  store i64 %dec, i64* %x, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
