; ModuleID = 'code/243-8539list1.c'
source_filename = "code/243-8539list1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.point = type { i32, i32, %struct.point* }

@__const.main.pt1 = private unnamed_addr constant %struct.point { i32 1, i32 2, %struct.point* null }, align 8
@__const.main.pt2 = private unnamed_addr constant %struct.point { i32 -2, i32 3, %struct.point* null }, align 8
@__const.main.pt3 = private unnamed_addr constant %struct.point { i32 5, i32 -4, %struct.point* null }, align 8
@__const.main.pt4 = private unnamed_addr constant %struct.point { i32 9, i32 -9, %struct.point* null }, align 8
@.str = private unnamed_addr constant [10 x i8] c"(%d, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pt1 = alloca %struct.point, align 8
  %pt2 = alloca %struct.point, align 8
  %pt3 = alloca %struct.point, align 8
  %pt4 = alloca %struct.point, align 8
  %head = alloca %struct.point*, align 8
  %tail = alloca %struct.point*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.point* %pt1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.point* @__const.main.pt1 to i8*), i64 16, i1 false)
  %1 = bitcast %struct.point* %pt2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 bitcast (%struct.point* @__const.main.pt2 to i8*), i64 16, i1 false)
  %2 = bitcast %struct.point* %pt3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.point* @__const.main.pt3 to i8*), i64 16, i1 false)
  %3 = bitcast %struct.point* %pt4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 bitcast (%struct.point* @__const.main.pt4 to i8*), i64 16, i1 false)
  store %struct.point* %pt1, %struct.point** %head, align 8
  %next = getelementptr inbounds %struct.point, %struct.point* %pt1, i32 0, i32 2
  store %struct.point* %pt2, %struct.point** %next, align 8
  %next1 = getelementptr inbounds %struct.point, %struct.point* %pt2, i32 0, i32 2
  store %struct.point* %pt3, %struct.point** %next1, align 8
  call void @appendNode(%struct.point* %pt3, %struct.point* %pt4)
  %4 = load %struct.point*, %struct.point** %head, align 8
  call void @printPoints(%struct.point* %4)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @appendNode(%struct.point* %src, %struct.point* %dst) #0 {
entry:
  %src.addr = alloca %struct.point*, align 8
  %dst.addr = alloca %struct.point*, align 8
  store %struct.point* %src, %struct.point** %src.addr, align 8
  store %struct.point* %dst, %struct.point** %dst.addr, align 8
  %0 = load %struct.point*, %struct.point** %dst.addr, align 8
  %1 = load %struct.point*, %struct.point** %src.addr, align 8
  %next = getelementptr inbounds %struct.point, %struct.point* %1, i32 0, i32 2
  store %struct.point* %0, %struct.point** %next, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printPoints(%struct.point* %head) #0 {
entry:
  %head.addr = alloca %struct.point*, align 8
  %tail = alloca %struct.point*, align 8
  store %struct.point* %head, %struct.point** %head.addr, align 8
  %0 = load %struct.point*, %struct.point** %head.addr, align 8
  store %struct.point* %0, %struct.point** %tail, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.point*, %struct.point** %tail, align 8
  %cmp = icmp ne %struct.point* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.point*, %struct.point** %tail, align 8
  %x = getelementptr inbounds %struct.point, %struct.point* %2, i32 0, i32 0
  %3 = load i32, i32* %x, align 8
  %4 = load %struct.point*, %struct.point** %tail, align 8
  %y = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %5 = load i32, i32* %y, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %3, i32 %5)
  %6 = load %struct.point*, %struct.point** %tail, align 8
  %next = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 2
  %7 = load %struct.point*, %struct.point** %next, align 8
  store %struct.point* %7, %struct.point** %tail, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
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
