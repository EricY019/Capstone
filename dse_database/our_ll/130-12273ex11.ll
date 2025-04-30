; ModuleID = 'code/130-12273ex11.c'
source_filename = "code/130-12273ex11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.values = private unnamed_addr constant [10 x i32] [i32 3, i32 7, i32 -9, i32 3, i32 6, i32 -1, i32 7, i32 9, i32 1, i32 -5], align 16
@.str = private unnamed_addr constant [15 x i8] c"The sum is %i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @array_sum(i32* %array, i32 %n) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %ptr = alloca i32*, align 8
  %array_end = alloca i32*, align 8
  store i32* %array, i32** %array.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %sum, align 4
  %0 = load i32*, i32** %array.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 %idx.ext
  store i32* %add.ptr, i32** %array_end, align 8
  %2 = load i32*, i32** %array.addr, align 8
  store i32* %2, i32** %ptr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32*, i32** %ptr, align 8
  %4 = load i32*, i32** %array_end, align 8
  %cmp = icmp ult i32* %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %ptr, align 8
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %sum, align 4
  %add = add nsw i32 %7, %6
  store i32 %add, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32*, i32** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %incdec.ptr, i32** %ptr, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %sum, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %values = alloca [10 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [10 x i32]* %values to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.values to i8*), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %values, i64 0, i64 0
  %call = call i32 @array_sum(i32* %arraydecay, i32 10)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %call)
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
