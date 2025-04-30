; ModuleID = 'code/248-13749linked_list.c'
source_filename = "code/248-13749linked_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_node = type { i32, %struct.list_node* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %curr = alloca %struct.list_node*, align 8
  %head = alloca %struct.list_node*, align 8
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct.list_node* null, %struct.list_node** %head, align 8
  store i32 0, i32* %i1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i1, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %1 = bitcast i8* %call to %struct.list_node*
  store %struct.list_node* %1, %struct.list_node** %curr, align 8
  %2 = load i32, i32* %i1, align 4
  %3 = load %struct.list_node*, %struct.list_node** %curr, align 8
  %data = getelementptr inbounds %struct.list_node, %struct.list_node* %3, i32 0, i32 0
  store i32 %2, i32* %data, align 8
  %4 = load %struct.list_node*, %struct.list_node** %head, align 8
  %5 = load %struct.list_node*, %struct.list_node** %curr, align 8
  %next = getelementptr inbounds %struct.list_node, %struct.list_node* %5, i32 0, i32 1
  store %struct.list_node* %4, %struct.list_node** %next, align 8
  %6 = load %struct.list_node*, %struct.list_node** %curr, align 8
  store %struct.list_node* %6, %struct.list_node** %head, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i1, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i1, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load %struct.list_node*, %struct.list_node** %head, align 8
  store %struct.list_node* %8, %struct.list_node** %curr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %9 = load %struct.list_node*, %struct.list_node** %curr, align 8
  %tobool = icmp ne %struct.list_node* %9, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.list_node*, %struct.list_node** %curr, align 8
  %data2 = getelementptr inbounds %struct.list_node, %struct.list_node* %10, i32 0, i32 0
  %11 = load i32, i32* %data2, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %12 = load %struct.list_node*, %struct.list_node** %curr, align 8
  %next4 = getelementptr inbounds %struct.list_node, %struct.list_node* %12, i32 0, i32 1
  %13 = load %struct.list_node*, %struct.list_node** %next4, align 8
  store %struct.list_node* %13, %struct.list_node** %curr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

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
