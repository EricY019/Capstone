; ModuleID = 'code/164-23727pointers_and_compound_literals.c'
source_filename = "code/164-23727pointers_and_compound_literals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.db = type { i32, i32 }

@constinit = private global [10 x i32] [i32 10, i32 20, i32 30, i32 40, i32 50, i32 60, i32 70, i32 80, i32 90, i32 100], align 4
@.str = private unnamed_addr constant [5 x i8] c"%3d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"id: %d\09year: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ptr = alloca i32*, align 8
  %.compoundliteral = alloca [10 x i32], align 4
  %data = alloca %struct.db*, align 8
  %.compoundliteral1 = alloca %struct.db, align 4
  store i32 0, i32* %retval, align 4
  %arrayinit.begin = getelementptr inbounds [10 x i32], [10 x i32]* %.compoundliteral, i64 0, i64 0
  %0 = bitcast [10 x i32]* %.compoundliteral to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([10 x i32]* @constinit to i8*), i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %.compoundliteral, i64 0, i64 0
  store i32* %arraydecay, i32** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32*, i32** %ptr, align 8
  %2 = load i32, i32* %1, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32*, i32** %ptr, align 8
  %4 = load i32, i32* %3, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %4)
  %5 = load i32*, i32** %ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %5, i32 1
  store i32* %incdec.ptr, i32** %ptr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %id = getelementptr inbounds %struct.db, %struct.db* %.compoundliteral1, i32 0, i32 0
  store i32 1, i32* %id, align 4
  %year = getelementptr inbounds %struct.db, %struct.db* %.compoundliteral1, i32 0, i32 1
  store i32 2016, i32* %year, align 4
  store %struct.db* %.compoundliteral1, %struct.db** %data, align 8
  %6 = load %struct.db*, %struct.db** %data, align 8
  %id2 = getelementptr inbounds %struct.db, %struct.db* %6, i32 0, i32 0
  %7 = load i32, i32* %id2, align 4
  %8 = load %struct.db*, %struct.db** %data, align 8
  %year3 = getelementptr inbounds %struct.db, %struct.db* %8, i32 0, i32 1
  %9 = load i32, i32* %year3, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %9)
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
