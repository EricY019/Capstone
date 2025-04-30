; ModuleID = 'code/340-32770cptr1.c'
source_filename = "code/340-32770cptr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX = dso_local constant i32 3, align 4
@__const.main.var = private unnamed_addr constant [3 x i32] [i32 10, i32 100, i32 200], align 4
@.str = private unnamed_addr constant [27 x i8] c"\E5\AD\98\E5\82\A8\E5\80\BC\EF\BC\9Avar[%d] = %d \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [3 x i32], align 4
  %i = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x i32]* %var to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.main.var to i8*), i64 12, i1 false)
  %1 = call i8* @llvm.stacksave()
  store i8* %1, i8** %saved_stack, align 8
  %vla = alloca i32*, i64 3, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %var, i64 0, i64 %idxprom
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32*, i32** %vla, i64 %idxprom1
  store i32* %arrayidx, i32** %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %6 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %6, 3
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds i32*, i32** %vla, i64 %idxprom6
  %9 = load i32*, i32** %arrayidx7, align 8
  %10 = load i32, i32* %9, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %11 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond3, !llvm.loop !6

for.end10:                                        ; preds = %for.cond3
  store i32 0, i32* %retval, align 4
  %12 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %12)
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
