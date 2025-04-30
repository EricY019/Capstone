; ModuleID = 'code/141-29763qsort.c'
source_filename = "code/141-29763qsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.array = private unnamed_addr constant [10 x i32] [i32 1, i32 3, i32 8, i32 2, i32 4, i32 9, i32 6, i32 5, i32 7, i32 0], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [10 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x i32]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.array to i8*), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 0
  call void @array_dump(i32* %arraydecay, i64 10)
  %arraydecay1 = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 0
  call void @quick_sort(i32* %arraydecay1, i64 10)
  %arraydecay2 = getelementptr inbounds [10 x i32], [10 x i32]* %array, i64 0, i64 0
  call void @array_dump(i32* %arraydecay2, i64 10)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @array_dump(i32* %array, i64 %array_length) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %array_length.addr = alloca i64, align 8
  %index = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i64 %array_length, i64* %array_length.addr, align 8
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %index, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* %array_length.addr, align 8
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %array.addr, align 8
  %3 = load i32, i32* %index, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %index, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quick_sort(i32* %array, i64 %array_length) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %array_length.addr = alloca i64, align 8
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %key_index = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i64 %array_length, i64* %array_length.addr, align 8
  store i32 0, i32* %start, align 4
  %0 = load i64, i64* %array_length.addr, align 8
  %sub = sub i64 %0, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %end, align 4
  store i32 0, i32* %key_index, align 4
  %1 = load i64, i64* %array_length.addr, align 8
  %cmp = icmp ult i64 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.end33, %if.end
  %2 = load i32, i32* %start, align 4
  %3 = load i32, i32* %end, align 4
  %cmp2 = icmp ne i32 %2, %3
  br i1 %cmp2, label %while.body, label %while.end34

while.body:                                       ; preds = %while.cond
  br label %while.cond4

while.cond4:                                      ; preds = %if.end15, %while.body
  %4 = load i32, i32* %start, align 4
  %5 = load i32, i32* %end, align 4
  %cmp5 = icmp ne i32 %4, %5
  br i1 %cmp5, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond4
  %6 = load i32*, i32** %array.addr, align 8
  %7 = load i32, i32* %end, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32*, i32** %array.addr, align 8
  %10 = load i32, i32* %key_index, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %9, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp slt i32 %8, %11
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %while.body7
  %12 = load i32*, i32** %array.addr, align 8
  %13 = load i32, i32* %end, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i32, i32* %12, i64 %idx.ext
  %14 = load i32*, i32** %array.addr, align 8
  %15 = load i32, i32* %key_index, align 4
  %idx.ext13 = sext i32 %15 to i64
  %add.ptr14 = getelementptr inbounds i32, i32* %14, i64 %idx.ext13
  call void @swap(i32* %add.ptr, i32* %add.ptr14)
  %16 = load i32, i32* %end, align 4
  store i32 %16, i32* %key_index, align 4
  br label %while.end

if.else:                                          ; preds = %while.body7
  %17 = load i32, i32* %end, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %end, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.else
  br label %while.cond4, !llvm.loop !6

while.end:                                        ; preds = %if.then12, %while.cond4
  br label %while.cond16

while.cond16:                                     ; preds = %if.end32, %while.end
  %18 = load i32, i32* %start, align 4
  %19 = load i32, i32* %end, align 4
  %cmp17 = icmp ne i32 %18, %19
  br i1 %cmp17, label %while.body19, label %while.end33

while.body19:                                     ; preds = %while.cond16
  %20 = load i32*, i32** %array.addr, align 8
  %21 = load i32, i32* %start, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %20, i64 %idxprom20
  %22 = load i32, i32* %arrayidx21, align 4
  %23 = load i32*, i32** %array.addr, align 8
  %24 = load i32, i32* %key_index, align 4
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %23, i64 %idxprom22
  %25 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp sgt i32 %22, %25
  br i1 %cmp24, label %if.then26, label %if.else31

if.then26:                                        ; preds = %while.body19
  %26 = load i32*, i32** %array.addr, align 8
  %27 = load i32, i32* %start, align 4
  %idx.ext27 = sext i32 %27 to i64
  %add.ptr28 = getelementptr inbounds i32, i32* %26, i64 %idx.ext27
  %28 = load i32*, i32** %array.addr, align 8
  %29 = load i32, i32* %key_index, align 4
  %idx.ext29 = sext i32 %29 to i64
  %add.ptr30 = getelementptr inbounds i32, i32* %28, i64 %idx.ext29
  call void @swap(i32* %add.ptr28, i32* %add.ptr30)
  %30 = load i32, i32* %start, align 4
  store i32 %30, i32* %key_index, align 4
  br label %while.end33

if.else31:                                        ; preds = %while.body19
  %31 = load i32, i32* %start, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %start, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.else31
  br label %while.cond16, !llvm.loop !7

while.end33:                                      ; preds = %if.then26, %while.cond16
  br label %while.cond, !llvm.loop !8

while.end34:                                      ; preds = %while.cond
  %32 = load i32*, i32** %array.addr, align 8
  %33 = load i32, i32* %start, align 4
  %conv35 = sext i32 %33 to i64
  call void @quick_sort(i32* %32, i64 %conv35)
  %34 = load i32*, i32** %array.addr, align 8
  %35 = load i32, i32* %start, align 4
  %idx.ext36 = sext i32 %35 to i64
  %add.ptr37 = getelementptr inbounds i32, i32* %34, i64 %idx.ext36
  %add.ptr38 = getelementptr inbounds i32, i32* %add.ptr37, i64 1
  %36 = load i64, i64* %array_length.addr, align 8
  %37 = load i32, i32* %start, align 4
  %conv39 = sext i32 %37 to i64
  %sub40 = sub i64 %36, %conv39
  %sub41 = sub i64 %sub40, 1
  call void @quick_sort(i32* %add.ptr38, i64 %sub41)
  br label %return

return:                                           ; preds = %while.end34, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap(i32* %x, i32* %y) #0 {
entry:
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  %tmp = alloca i32, align 4
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32*, i32** %x.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %tmp, align 4
  %2 = load i32*, i32** %y.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %x.addr, align 8
  store i32 %3, i32* %4, align 4
  %5 = load i32, i32* %tmp, align 4
  %6 = load i32*, i32** %y.addr, align 8
  store i32 %5, i32* %6, align 4
  ret void
}

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
!8 = distinct !{!8, !5}
