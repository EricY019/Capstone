; ModuleID = 'code/165-3605memtest.c'
source_filename = "code/165-3605memtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"First ... \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Second ... \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @myalloc_data_(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %tmp = alloca i8**, align 8
  %buffer = alloca i8**, align 8
  %elem_size = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  store i32 0, i32* %i, align 4
  store i8** null, i8*** %tmp, align 8
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias align 16 i8* @calloc(i64 %0, i64 8) #3
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %buffer, align 8
  store i32 0, i32* %i, align 4
  %2 = load i8**, i8*** %buffer, align 8
  store i8** %2, i8*** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %conv = sext i32 %3 to i64
  %4 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %conv, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #3
  %rem = srem i32 %call2, 10
  %add = add nsw i32 256, %rem
  store i32 %add, i32* %elem_size, align 4
  %5 = load i32, i32* %elem_size, align 4
  %conv3 = sext i32 %5 to i64
  %call4 = call noalias align 16 i8* @malloc(i64 %conv3) #3
  %6 = load i8**, i8*** %tmp, align 8
  store i8* %call4, i8** %6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %8 = load i8**, i8*** %tmp, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %incdec.ptr, i8*** %tmp, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %9 = load i8**, i8*** %buffer, align 8
  ret i8** %9
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @myfree_data_(i8** %buffer, i64 %size) #0 {
entry:
  %buffer.addr = alloca i8**, align 8
  %size.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %tmp = alloca i8**, align 8
  store i8** %buffer, i8*** %buffer.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i32 0, i32* %i, align 4
  store i8** null, i8*** %tmp, align 8
  store i32 0, i32* %i, align 4
  %0 = load i8**, i8*** %buffer.addr, align 8
  store i8** %0, i8*** %tmp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64, i64* %size.addr, align 8
  %cmp = icmp ult i64 %conv, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %tmp, align 8
  %4 = load i8*, i8** %3, align 8
  call void @free(i8* %4) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  %6 = load i8**, i8*** %tmp, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %tmp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load i8**, i8*** %buffer.addr, align 8
  %8 = bitcast i8** %7 to i8*
  call void @free(i8* %8) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buffer = alloca i8**, align 8
  %size1 = alloca i64, align 8
  %size2 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i64 3145728, i64* %size1, align 8
  store i64 1048576, i64* %size2, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %0 = load i64, i64* %size1, align 8
  %call1 = call i8** @myalloc_data_(i64 %0)
  store i8** %call1, i8*** %buffer, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %call3 = call i32 @sleep(i32 10)
  %1 = load i8**, i8*** %buffer, align 8
  %2 = load i64, i64* %size1, align 8
  call void @myfree_data_(i8** %1, i64 %2)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %3 = load i64, i64* %size2, align 8
  %call5 = call i8** @myalloc_data_(i64 %3)
  store i8** %call5, i8*** %buffer, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %call7 = call i32 @sleep(i32 10)
  %4 = load i8**, i8*** %buffer, align 8
  %5 = load i64, i64* %size2, align 8
  call void @myfree_data_(i8** %4, i64 %5)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @sleep(i32) #2

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
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
