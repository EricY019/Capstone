; ModuleID = 'code/254-5743sizeof.c'
source_filename = "code/254-5743sizeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%10s %5s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"data-type\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%10s %5d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data_type = alloca [5 x i8*], align 16
  %index = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x i8*]* %data_type to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false)
  %1 = bitcast i8* %0 to [5 x i8*]*
  %2 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %2, align 16
  %3 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8** %3, align 8
  %4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8** %4, align 16
  %5 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %5, align 8
  %6 = getelementptr inbounds [5 x i8*], [5 x i8*]* %1, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8** %6, align 16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %index, align 4
  %conv = sext i32 %7 to i64
  %cmp = icmp ult i64 %conv, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %index, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %data_type, i64 0, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %9, i64 8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %index, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
