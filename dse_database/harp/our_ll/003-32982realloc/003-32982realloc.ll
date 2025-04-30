; ModuleID = 'code/003-32982realloc.c'
source_filename = "code/003-32982realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@min_size = dso_local constant i64 1024, align 8
@max_size = dso_local constant i64 1048576, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %ptrs = alloca [100 x i8*], align 16
  %size = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #3
  %conv = sext i32 %call to i64
  %rem = urem i64 %conv, 1047552
  %add = add i64 %rem, 1024
  store i64 %add, i64* %size, align 8
  %call1 = call align 16 i8* @realloc(i8* null, i64 1) #3
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [100 x i8*], [100 x i8*]* %ptrs, i64 0, i64 %1
  store i8* %call1, i8** %arrayidx, align 8
  %2 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds [100 x i8*], [100 x i8*]* %ptrs, i64 0, i64 %2
  %3 = load i8*, i8** %arrayidx2, align 8
  %4 = load i64, i64* %size, align 8
  %call3 = call align 16 i8* @realloc(i8* %3, i64 %4) #3
  %5 = load i64, i64* %i, align 8
  %arrayidx4 = getelementptr inbounds [100 x i8*], [100 x i8*]* %ptrs, i64 0, i64 %5
  store i8* %call3, i8** %arrayidx4, align 8
  %6 = load i64, i64* %i, align 8
  %arrayidx5 = getelementptr inbounds [100 x i8*], [100 x i8*]* %ptrs, i64 0, i64 %6
  %7 = load i8*, i8** %arrayidx5, align 8
  %8 = load i64, i64* %size, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 1, i64 %8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i64 0, i64* %i, align 8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc11, %for.end
  %10 = load i64, i64* %i, align 8
  %cmp7 = icmp ult i64 %10, 100
  br i1 %cmp7, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond6
  %11 = load i64, i64* %i, align 8
  %arrayidx10 = getelementptr inbounds [100 x i8*], [100 x i8*]* %ptrs, i64 0, i64 %11
  %12 = load i8*, i8** %arrayidx10, align 8
  call void @free(i8* %12) #3
  br label %for.inc11

for.inc11:                                        ; preds = %for.body9
  %13 = load i64, i64* %i, align 8
  %inc12 = add i64 %13, 1
  store i64 %inc12, i64* %i, align 8
  br label %for.cond6, !llvm.loop !6

for.end13:                                        ; preds = %for.cond6
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
