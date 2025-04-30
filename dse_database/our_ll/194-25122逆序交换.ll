; ModuleID = 'code/194-25122逆序交换.c'
source_filename = "code/194-25122\E9\80\86\E5\BA\8F\E4\BA\A4\E6\8D\A2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.array = private unnamed_addr constant [5 x i32] [i32 15, i32 20, i32 25, i32 30, i32 35], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [5 x i32], align 16
  %temp = alloca i32, align 4
  %i = alloca i32, align 4
  %ptr_array_start = alloca i32*, align 8
  %ptr_array_end = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x i32]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x i32]* @__const.main.array to i8*), i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %array, i64 0, i64 0
  store i32* %arraydecay, i32** %ptr_array_start, align 8
  %arraydecay1 = getelementptr inbounds [5 x i32], [5 x i32]* %array, i64 0, i64 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay1, i64 4
  store i32* %add.ptr, i32** %ptr_array_end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32*, i32** %ptr_array_start, align 8
  %2 = load i32*, i32** %ptr_array_end, align 8
  %cmp = icmp ne i32* %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32*, i32** %ptr_array_start, align 8
  %4 = load i32, i32* %3, align 4
  store i32 %4, i32* %temp, align 4
  %5 = load i32*, i32** %ptr_array_end, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %ptr_array_start, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %temp, align 4
  %9 = load i32*, i32** %ptr_array_end, align 8
  store i32 %8, i32* %9, align 4
  %10 = load i32*, i32** %ptr_array_start, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %incdec.ptr, i32** %ptr_array_start, align 8
  %11 = load i32*, i32** %ptr_array_end, align 8
  %incdec.ptr2 = getelementptr inbounds i32, i32* %11, i32 -1
  store i32* %incdec.ptr2, i32** %ptr_array_end, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %12 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %12, 5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %array, i64 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

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
