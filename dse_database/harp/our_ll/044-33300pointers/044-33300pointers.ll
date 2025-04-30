; ModuleID = 'code/044-33300pointers.c'
source_filename = "code/044-33300pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.A = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Yep\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d [%p]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %A = alloca [10 x i32], align 16
  %N = alloca i32, align 4
  %ptr_a = alloca i32*, align 8
  %p = alloca i32*, align 8
  %lol = alloca [10 x [9 x [8 x [7 x [6 x [5 x i32]]]]]], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [10 x i32]* %A to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.A to i8*), i64 40, i1 false)
  store i32* null, i32** %ptr_a, align 8
  %1 = bitcast [10 x i32]* %A to i32*
  store i32* %1, i32** %ptr_a, align 8
  %2 = load i32*, i32** %ptr_a, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %2)
  %3 = load i32*, i32** %ptr_a, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %3, i32 1
  store i32* %incdec.ptr, i32** %ptr_a, align 8
  %4 = load i32*, i32** %ptr_a, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %4)
  %5 = load i32*, i32** %ptr_a, align 8
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 4
  store i32* %add.ptr, i32** %ptr_a, align 8
  %6 = load i32*, i32** %ptr_a, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %6)
  %7 = load i32*, i32** %ptr_a, align 8
  %add.ptr3 = getelementptr inbounds i32, i32* %7, i64 -2
  store i32* %add.ptr3, i32** %ptr_a, align 8
  %8 = load i32*, i32** %ptr_a, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %8)
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %A, i64 0, i64 3
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint i32* %arrayidx to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %arrayidx5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %N, align 4
  %9 = load i32, i32* %N, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i64 0, i64 0
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i64 0, i64 3
  %sub.ptr.lhs.cast9 = ptrtoint i32* %arrayidx7 to i64
  %sub.ptr.rhs.cast10 = ptrtoint i32* %arrayidx8 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %sub.ptr.div12 = sdiv exact i64 %sub.ptr.sub11, 4
  %conv13 = trunc i64 %sub.ptr.div12 to i32
  store i32 %conv13, i32* %N, align 4
  %10 = load i32, i32* %N, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10)
  %11 = load i32*, i32** %ptr_a, align 8
  %arrayidx15 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i64 0, i64 2
  %cmp = icmp ugt i32* %11, %arrayidx15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = bitcast [10 x i32]* %A to i32*
  store i32* %12, i32** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32*, i32** %p, align 8
  %arrayidx18 = getelementptr inbounds [10 x i32], [10 x i32]* %A, i64 0, i64 1000
  %cmp19 = icmp ule i32* %13, %arrayidx18
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32*, i32** %p, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %p, align 8
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %15, i32* %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32*, i32** %p, align 8
  %incdec.ptr22 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %incdec.ptr22, i32** %p, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %arrayidx23 = getelementptr inbounds [10 x [9 x [8 x [7 x [6 x [5 x i32]]]]]], [10 x [9 x [8 x [7 x [6 x [5 x i32]]]]]]* %lol, i64 0, i64 0
  %arrayidx24 = getelementptr inbounds [9 x [8 x [7 x [6 x [5 x i32]]]]], [9 x [8 x [7 x [6 x [5 x i32]]]]]* %arrayidx23, i64 0, i64 0
  %arrayidx25 = getelementptr inbounds [8 x [7 x [6 x [5 x i32]]]], [8 x [7 x [6 x [5 x i32]]]]* %arrayidx24, i64 0, i64 0
  %arrayidx26 = getelementptr inbounds [7 x [6 x [5 x i32]]], [7 x [6 x [5 x i32]]]* %arrayidx25, i64 0, i64 0
  %arrayidx27 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %arrayidx26, i64 0, i64 0
  %arrayidx28 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx27, i64 0, i64 0
  store i32 1, i32* %arrayidx28, align 16
  %arrayidx29 = getelementptr inbounds [10 x [9 x [8 x [7 x [6 x [5 x i32]]]]]], [10 x [9 x [8 x [7 x [6 x [5 x i32]]]]]]* %lol, i64 0, i64 0
  %arrayidx30 = getelementptr inbounds [9 x [8 x [7 x [6 x [5 x i32]]]]], [9 x [8 x [7 x [6 x [5 x i32]]]]]* %arrayidx29, i64 0, i64 0
  %arrayidx31 = getelementptr inbounds [8 x [7 x [6 x [5 x i32]]]], [8 x [7 x [6 x [5 x i32]]]]* %arrayidx30, i64 0, i64 0
  %arrayidx32 = getelementptr inbounds [7 x [6 x [5 x i32]]], [7 x [6 x [5 x i32]]]* %arrayidx31, i64 0, i64 0
  %arrayidx33 = getelementptr inbounds [6 x [5 x i32]], [6 x [5 x i32]]* %arrayidx32, i64 0, i64 0
  %arrayidx34 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx33, i64 0, i64 0
  %18 = load i32, i32* %arrayidx34, align 16
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18)
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
