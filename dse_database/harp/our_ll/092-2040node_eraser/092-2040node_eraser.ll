; ModuleID = 'code/092-2040node_eraser.c'
source_filename = "code/092-2040node_eraser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eraseNode(%struct.node* %n) #0 {
entry:
  %n.addr = alloca %struct.node*, align 8
  %a = alloca %struct.node*, align 8
  store %struct.node* %n, %struct.node** %n.addr, align 8
  %0 = load %struct.node*, %struct.node** %n.addr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %0, i32 0, i32 0
  %1 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %1, %struct.node** %a, align 8
  %2 = load %struct.node*, %struct.node** %a, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  %3 = load i32, i32* %data, align 8
  %4 = load %struct.node*, %struct.node** %n.addr, align 8
  %data1 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  store i32 %3, i32* %data1, align 8
  %5 = load %struct.node*, %struct.node** %a, align 8
  %next2 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 0
  %6 = load %struct.node*, %struct.node** %next2, align 8
  %7 = load %struct.node*, %struct.node** %n.addr, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  store %struct.node* %6, %struct.node** %next3, align 8
  %8 = load %struct.node*, %struct.node** %a, align 8
  %9 = bitcast %struct.node* %8 to i8*
  call void @free(i8* %9) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %root = alloca %struct.node*, align 8
  %t = alloca %struct.node*, align 8
  %i = alloca i32, align 4
  %counter = alloca i32, align 4
  %clear = alloca %struct.node*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %root, align 8
  %1 = load %struct.node*, %struct.node** %root, align 8
  store %struct.node* %1, %struct.node** %t, align 8
  %call1 = call i64 @time(i64* null) #3
  %conv = trunc i64 %call1 to i32
  call void @srand(i32 %conv) #3
  %call2 = call i32 @rand() #3
  %rem = srem i32 %call2, 10
  %2 = load %struct.node*, %struct.node** %t, align 8
  %data = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 1
  store i32 %rem, i32* %data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.node*, %struct.node** %t, align 8
  %data4 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 1
  %5 = load i32, i32* %data4, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  %call6 = call noalias align 16 i8* @malloc(i64 16) #3
  %6 = bitcast i8* %call6 to %struct.node*
  %7 = load %struct.node*, %struct.node** %t, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  store %struct.node* %6, %struct.node** %next, align 8
  %8 = load %struct.node*, %struct.node** %t, align 8
  %next7 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  %9 = load %struct.node*, %struct.node** %next7, align 8
  store %struct.node* %9, %struct.node** %t, align 8
  %call8 = call i32 @rand() #3
  %rem9 = srem i32 %call8, 10
  %10 = load %struct.node*, %struct.node** %t, align 8
  %data10 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  store i32 %rem9, i32* %data10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %12 = load %struct.node*, %struct.node** %t, align 8
  %data11 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 1
  %13 = load i32, i32* %data11, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %13)
  %call13 = call i32 @putchar(i32 10)
  %14 = load %struct.node*, %struct.node** %root, align 8
  store %struct.node* %14, %struct.node** %t, align 8
  store i32 0, i32* %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %15 = load %struct.node*, %struct.node** %t, align 8
  %tobool = icmp ne %struct.node* %15, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* %counter, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %counter, align 4
  %17 = load i32, i32* %counter, align 4
  %cmp15 = icmp eq i32 %17, 3
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %18 = load %struct.node*, %struct.node** %t, align 8
  call void @eraseNode(%struct.node* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %19 = load %struct.node*, %struct.node** %t, align 8
  %next17 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  %20 = load %struct.node*, %struct.node** %next17, align 8
  store %struct.node* %20, %struct.node** %t, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %21 = load %struct.node*, %struct.node** %root, align 8
  store %struct.node* %21, %struct.node** %t, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc29, %while.end
  %22 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %22, 9
  br i1 %cmp19, label %for.body21, label %for.end31

for.body21:                                       ; preds = %for.cond18
  %23 = load %struct.node*, %struct.node** %t, align 8
  store %struct.node* %23, %struct.node** %clear, align 8
  %24 = load %struct.node*, %struct.node** %t, align 8
  %data22 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 1
  %25 = load i32, i32* %data22, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %25)
  %26 = load %struct.node*, %struct.node** %t, align 8
  %next24 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 0
  %27 = load %struct.node*, %struct.node** %next24, align 8
  %tobool25 = icmp ne %struct.node* %27, null
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.body21
  %28 = load %struct.node*, %struct.node** %t, align 8
  %next27 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 0
  %29 = load %struct.node*, %struct.node** %next27, align 8
  store %struct.node* %29, %struct.node** %t, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.body21
  %30 = load %struct.node*, %struct.node** %clear, align 8
  %31 = bitcast %struct.node* %30 to i8*
  call void @free(i8* %31) #3
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %32 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %32, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond18, !llvm.loop !7

for.end31:                                        ; preds = %for.cond18
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @putchar(i32) #2

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
!7 = distinct !{!7, !5}
