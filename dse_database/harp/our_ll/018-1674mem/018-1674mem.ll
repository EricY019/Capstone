; ModuleID = 'code/018-1674mem.c'
source_filename = "code/018-1674mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"Foo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Bar\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Baz\00", align 1
@__const.main.array = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)], align 16
@foo = dso_local global [10 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Addr: %p, val: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Addr of foo: %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Addr of array[0]: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [3 x i8*], align 16
  %ptr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x i8*]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([3 x i8*]* @__const.main.array to i8*), i64 24, i1 false)
  store i8 97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @foo, i64 0, i64 0), align 1
  store i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @foo, i64 0, i64 0), i64 -10), i8** %ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %ptr, align 8
  %3 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = load i8*, i8** %ptr, align 8
  %5 = load i32, i32* %i, align 4
  %idx.ext1 = sext i32 %5 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %4, i64 %idx.ext1
  %6 = load i8, i8* %add.ptr2, align 1
  %conv = sext i8 %6 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %add.ptr, i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @foo, i64 0, i64 0))
  %arrayidx = getelementptr inbounds [3 x i8*], [3 x i8*]* %array, i64 0, i64 0
  %8 = load i8*, i8** %arrayidx, align 16
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %8)
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
