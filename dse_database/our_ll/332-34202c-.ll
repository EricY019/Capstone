; ModuleID = 'code/332-34202c-.c'
source_filename = "code/332-34202c-.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX = dso_local constant i32 3, align 4
@__const.main.var = private unnamed_addr constant [3 x i32] [i32 10, i32 100, i32 200], align 4
@.str = private unnamed_addr constant [30 x i8] c"\E5\AD\98\E5\82\A8\E5\9C\B0\E5\9D\80\EF\BC\9Avar[%d] = %x \0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\E5\AD\98\E5\82\A8\E5\80\BC\EF\BC\9Avar[%d] = %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %ptr = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x i32]* %var to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.main.var to i8*), i64 12, i1 false)
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %var, i64 0, i64 2
  store i32* %arrayidx, i32** %ptr, align 8
  store i32 3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %2, 1
  %3 = load i32*, i32** %ptr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %sub, i32* %3)
  %4 = load i32, i32* %i, align 4
  %sub1 = sub nsw i32 %4, 1
  %5 = load i32*, i32** %ptr, align 8
  %6 = load i32, i32* %5, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %sub1, i32 %6)
  %7 = load i32*, i32** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %7, i32 -1
  store i32* %incdec.ptr, i32** %ptr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
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
