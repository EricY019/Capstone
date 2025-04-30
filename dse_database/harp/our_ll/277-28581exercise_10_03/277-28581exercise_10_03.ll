; ModuleID = 'code/277-28581exercise_10_03.c'
source_filename = "code/277-28581exercise_10_03.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { i32, %struct.entry* }

@.str = private unnamed_addr constant [48 x i8] c"Values in the list before insert of new entry: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Values in the list after insert of new entry: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insertEntry(%struct.entry* %newEntry, %struct.entry* %existingEntry) #0 {
entry:
  %newEntry.addr = alloca %struct.entry*, align 8
  %existingEntry.addr = alloca %struct.entry*, align 8
  store %struct.entry* %newEntry, %struct.entry** %newEntry.addr, align 8
  store %struct.entry* %existingEntry, %struct.entry** %existingEntry.addr, align 8
  %0 = load %struct.entry*, %struct.entry** %existingEntry.addr, align 8
  %next = getelementptr inbounds %struct.entry, %struct.entry* %0, i32 0, i32 1
  %1 = load %struct.entry*, %struct.entry** %next, align 8
  %2 = load %struct.entry*, %struct.entry** %newEntry.addr, align 8
  %next1 = getelementptr inbounds %struct.entry, %struct.entry* %2, i32 0, i32 1
  store %struct.entry* %1, %struct.entry** %next1, align 8
  %3 = load %struct.entry*, %struct.entry** %newEntry.addr, align 8
  %4 = load %struct.entry*, %struct.entry** %existingEntry.addr, align 8
  %next2 = getelementptr inbounds %struct.entry, %struct.entry* %4, i32 0, i32 1
  store %struct.entry* %3, %struct.entry** %next2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head = alloca %struct.entry, align 8
  %n1 = alloca %struct.entry, align 8
  %n2 = alloca %struct.entry, align 8
  %nE = alloca %struct.entry, align 8
  %listPointer = alloca %struct.entry*, align 8
  store i32 0, i32* %retval, align 4
  %next = getelementptr inbounds %struct.entry, %struct.entry* %head, i32 0, i32 1
  store %struct.entry* %n1, %struct.entry** %next, align 8
  %value = getelementptr inbounds %struct.entry, %struct.entry* %n1, i32 0, i32 0
  store i32 100, i32* %value, align 8
  %next1 = getelementptr inbounds %struct.entry, %struct.entry* %n1, i32 0, i32 1
  store %struct.entry* %n2, %struct.entry** %next1, align 8
  %value2 = getelementptr inbounds %struct.entry, %struct.entry* %n2, i32 0, i32 0
  store i32 200, i32* %value2, align 8
  %next3 = getelementptr inbounds %struct.entry, %struct.entry* %n2, i32 0, i32 1
  store %struct.entry* null, %struct.entry** %next3, align 8
  %next4 = getelementptr inbounds %struct.entry, %struct.entry* %head, i32 0, i32 1
  %0 = load %struct.entry*, %struct.entry** %next4, align 8
  store %struct.entry* %0, %struct.entry** %listPointer, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.entry*, %struct.entry** %listPointer, align 8
  %cmp = icmp ne %struct.entry* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.entry*, %struct.entry** %listPointer, align 8
  %value5 = getelementptr inbounds %struct.entry, %struct.entry* %2, i32 0, i32 0
  %3 = load i32, i32* %value5, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %4 = load %struct.entry*, %struct.entry** %listPointer, align 8
  %next7 = getelementptr inbounds %struct.entry, %struct.entry* %4, i32 0, i32 1
  %5 = load %struct.entry*, %struct.entry** %next7, align 8
  store %struct.entry* %5, %struct.entry** %listPointer, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %value9 = getelementptr inbounds %struct.entry, %struct.entry* %nE, i32 0, i32 0
  store i32 50, i32* %value9, align 8
  call void @insertEntry(%struct.entry* %nE, %struct.entry* %head)
  %next10 = getelementptr inbounds %struct.entry, %struct.entry* %head, i32 0, i32 1
  %6 = load %struct.entry*, %struct.entry** %next10, align 8
  store %struct.entry* %6, %struct.entry** %listPointer, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %while.cond12

while.cond12:                                     ; preds = %while.body14, %while.end
  %7 = load %struct.entry*, %struct.entry** %listPointer, align 8
  %cmp13 = icmp ne %struct.entry* %7, null
  br i1 %cmp13, label %while.body14, label %while.end18

while.body14:                                     ; preds = %while.cond12
  %8 = load %struct.entry*, %struct.entry** %listPointer, align 8
  %value15 = getelementptr inbounds %struct.entry, %struct.entry* %8, i32 0, i32 0
  %9 = load i32, i32* %value15, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %10 = load %struct.entry*, %struct.entry** %listPointer, align 8
  %next17 = getelementptr inbounds %struct.entry, %struct.entry* %10, i32 0, i32 1
  %11 = load %struct.entry*, %struct.entry** %next17, align 8
  store %struct.entry* %11, %struct.entry** %listPointer, align 8
  br label %while.cond12, !llvm.loop !6

while.end18:                                      ; preds = %while.cond12
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
