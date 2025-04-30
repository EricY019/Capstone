; ModuleID = 'code/258-16270misaligned-words.c'
source_filename = "code/258-16270misaligned-words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.alignedInts = private unnamed_addr constant [4 x i32] [i32 16909060, i32 84281096, i32 151653132, i32 219025168], align 16
@.str = private unnamed_addr constant [30 x i8] c"Offset %d: %8.8X %8.8X %8.8X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %alignedInts = alloca [4 x i32], align 16
  %offset = alloca i32, align 4
  %misalignedPtr = alloca i8*, align 8
  %misalignedInts = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x i32]* %alignedInts to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i32]* @__const.main.alignedInts to i8*), i64 16, i1 false)
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %offset, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %alignedInts, i64 0, i64 0
  %2 = bitcast i32* %arraydecay to i8*
  %3 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  store i8* %add.ptr, i8** %misalignedPtr, align 8
  %4 = load i8*, i8** %misalignedPtr, align 8
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %misalignedInts, align 8
  %6 = load i32, i32* %offset, align 4
  %7 = load i32*, i32** %misalignedInts, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 0
  %8 = load i32, i32* %arrayidx, align 4
  %9 = load i32*, i32** %misalignedInts, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %9, i64 1
  %10 = load i32, i32* %arrayidx1, align 4
  %11 = load i32*, i32** %misalignedInts, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %11, i64 2
  %12 = load i32, i32* %arrayidx2, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %8, i32 %10, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %offset, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %offset, align 4
  br label %for.cond, !llvm.loop !4

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
