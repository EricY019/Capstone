; ModuleID = 'code/345-617reverse_list.c'
source_filename = "code/345-617reverse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32, %struct.list* }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.d = private unnamed_addr constant %struct.list { i32 1, %struct.list* null }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_list(%struct.list* %head) #0 {
entry:
  %head.addr = alloca %struct.list*, align 8
  store %struct.list* %head, %struct.list** %head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.list*, %struct.list** %head.addr, align 8
  %tobool = icmp ne %struct.list* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.list*, %struct.list** %head.addr, align 8
  %value = getelementptr inbounds %struct.list, %struct.list* %1, i32 0, i32 0
  %2 = load i32, i32* %value, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %2)
  %3 = load %struct.list*, %struct.list** %head.addr, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %3, i32 0, i32 1
  %4 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %4, %struct.list** %head.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list* @reverse(%struct.list* %head) #0 {
entry:
  %head.addr = alloca %struct.list*, align 8
  %new_root = alloca %struct.list*, align 8
  %next = alloca %struct.list*, align 8
  store %struct.list* %head, %struct.list** %head.addr, align 8
  store %struct.list* null, %struct.list** %new_root, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.list*, %struct.list** %head.addr, align 8
  %tobool = icmp ne %struct.list* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.list*, %struct.list** %head.addr, align 8
  %next1 = getelementptr inbounds %struct.list, %struct.list* %1, i32 0, i32 1
  %2 = load %struct.list*, %struct.list** %next1, align 8
  store %struct.list* %2, %struct.list** %next, align 8
  %3 = load %struct.list*, %struct.list** %new_root, align 8
  %4 = load %struct.list*, %struct.list** %head.addr, align 8
  %next2 = getelementptr inbounds %struct.list, %struct.list* %4, i32 0, i32 1
  store %struct.list* %3, %struct.list** %next2, align 8
  %5 = load %struct.list*, %struct.list** %head.addr, align 8
  store %struct.list* %5, %struct.list** %new_root, align 8
  %6 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %6, %struct.list** %head.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %7 = load %struct.list*, %struct.list** %new_root, align 8
  ret %struct.list* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d = alloca %struct.list, align 8
  %c = alloca %struct.list, align 8
  %b = alloca %struct.list, align 8
  %a = alloca %struct.list, align 8
  %head = alloca %struct.list*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.list* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.list* @__const.main.d to i8*), i64 16, i1 false)
  %value = getelementptr inbounds %struct.list, %struct.list* %c, i32 0, i32 0
  store i32 2, i32* %value, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %c, i32 0, i32 1
  store %struct.list* %d, %struct.list** %next, align 8
  %value1 = getelementptr inbounds %struct.list, %struct.list* %b, i32 0, i32 0
  store i32 3, i32* %value1, align 8
  %next2 = getelementptr inbounds %struct.list, %struct.list* %b, i32 0, i32 1
  store %struct.list* %c, %struct.list** %next2, align 8
  %value3 = getelementptr inbounds %struct.list, %struct.list* %a, i32 0, i32 0
  store i32 4, i32* %value3, align 8
  %next4 = getelementptr inbounds %struct.list, %struct.list* %a, i32 0, i32 1
  store %struct.list* %b, %struct.list** %next4, align 8
  store %struct.list* %a, %struct.list** %head, align 8
  %1 = load %struct.list*, %struct.list** %head, align 8
  call void @print_list(%struct.list* %1)
  %2 = load %struct.list*, %struct.list** %head, align 8
  %call = call %struct.list* @reverse(%struct.list* %2)
  store %struct.list* %call, %struct.list** %head, align 8
  %3 = load %struct.list*, %struct.list** %head, align 8
  call void @print_list(%struct.list* %3)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
