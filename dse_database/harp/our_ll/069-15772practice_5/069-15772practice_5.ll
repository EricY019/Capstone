; ModuleID = 'code/069-15772practice_5.c'
source_filename = "code/069-15772practice_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_struct = type { i32, %struct.node_struct* }

@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %list = alloca %struct.node_struct*, align 8
  %tmp = alloca %struct.node_struct*, align 8
  store i32 0, i32* %retval, align 4
  store %struct.node_struct* null, %struct.node_struct** %list, align 8
  store %struct.node_struct* null, %struct.node_struct** %tmp, align 8
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.node_struct*
  store %struct.node_struct* %0, %struct.node_struct** %tmp, align 8
  %1 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  %data = getelementptr inbounds %struct.node_struct, %struct.node_struct* %1, i32 0, i32 0
  store i32 10, i32* %data, align 8
  %2 = load %struct.node_struct*, %struct.node_struct** %list, align 8
  %3 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  %next = getelementptr inbounds %struct.node_struct, %struct.node_struct* %3, i32 0, i32 1
  store %struct.node_struct* %2, %struct.node_struct** %next, align 8
  %4 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  store %struct.node_struct* %4, %struct.node_struct** %list, align 8
  %call1 = call noalias align 16 i8* @malloc(i64 16) #3
  %5 = bitcast i8* %call1 to %struct.node_struct*
  store %struct.node_struct* %5, %struct.node_struct** %tmp, align 8
  %6 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  %data2 = getelementptr inbounds %struct.node_struct, %struct.node_struct* %6, i32 0, i32 0
  store i32 20, i32* %data2, align 8
  %7 = load %struct.node_struct*, %struct.node_struct** %list, align 8
  %8 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  %next3 = getelementptr inbounds %struct.node_struct, %struct.node_struct* %8, i32 0, i32 1
  store %struct.node_struct* %7, %struct.node_struct** %next3, align 8
  %9 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  store %struct.node_struct* %9, %struct.node_struct** %list, align 8
  %call4 = call noalias align 16 i8* @malloc(i64 16) #3
  %10 = bitcast i8* %call4 to %struct.node_struct*
  store %struct.node_struct* %10, %struct.node_struct** %tmp, align 8
  %11 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  %data5 = getelementptr inbounds %struct.node_struct, %struct.node_struct* %11, i32 0, i32 0
  store i32 33, i32* %data5, align 8
  %12 = load %struct.node_struct*, %struct.node_struct** %list, align 8
  %13 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  %next6 = getelementptr inbounds %struct.node_struct, %struct.node_struct* %13, i32 0, i32 1
  store %struct.node_struct* %12, %struct.node_struct** %next6, align 8
  %14 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  store %struct.node_struct* %14, %struct.node_struct** %list, align 8
  %15 = load %struct.node_struct*, %struct.node_struct** %list, align 8
  call void @PrintList(%struct.node_struct* %15)
  %16 = load %struct.node_struct*, %struct.node_struct** %list, align 8
  call void @FreeNodes(%struct.node_struct* %16)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintList(%struct.node_struct* %head) #0 {
entry:
  %head.addr = alloca %struct.node_struct*, align 8
  %tmp = alloca %struct.node_struct*, align 8
  store %struct.node_struct* %head, %struct.node_struct** %head.addr, align 8
  %0 = load %struct.node_struct*, %struct.node_struct** %head.addr, align 8
  store %struct.node_struct* %0, %struct.node_struct** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  %cmp = icmp ne %struct.node_struct* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  %data = getelementptr inbounds %struct.node_struct, %struct.node_struct* %2, i32 0, i32 0
  %3 = load i32, i32* %data, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  %4 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  %next = getelementptr inbounds %struct.node_struct, %struct.node_struct* %4, i32 0, i32 1
  %5 = load %struct.node_struct*, %struct.node_struct** %next, align 8
  store %struct.node_struct* %5, %struct.node_struct** %tmp, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeNodes(%struct.node_struct* %head) #0 {
entry:
  %head.addr = alloca %struct.node_struct*, align 8
  %tmp = alloca %struct.node_struct*, align 8
  store %struct.node_struct* %head, %struct.node_struct** %head.addr, align 8
  store %struct.node_struct* null, %struct.node_struct** %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.node_struct*, %struct.node_struct** %head.addr, align 8
  %cmp = icmp ne %struct.node_struct* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.node_struct*, %struct.node_struct** %head.addr, align 8
  store %struct.node_struct* %1, %struct.node_struct** %tmp, align 8
  %2 = load %struct.node_struct*, %struct.node_struct** %head.addr, align 8
  %next = getelementptr inbounds %struct.node_struct, %struct.node_struct* %2, i32 0, i32 1
  %3 = load %struct.node_struct*, %struct.node_struct** %next, align 8
  store %struct.node_struct* %3, %struct.node_struct** %head.addr, align 8
  %4 = load %struct.node_struct*, %struct.node_struct** %tmp, align 8
  %5 = bitcast %struct.node_struct* %4 to i8*
  call void @free(i8* %5) #3
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

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
