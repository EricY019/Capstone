; ModuleID = 'code/369-15663leaks.c'
source_filename = "code/369-15663leaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { %struct.list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32*, align 8
  %head = alloca %struct.list*, align 8
  %current = alloca %struct.list*, align 8
  %a = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 4) #2
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %i, align 8
  %call1 = call noalias align 16 i8* @malloc(i64 4) #2
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %i, align 8
  %2 = load i32*, i32** %i, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 1
  store i32 1, i32* %arrayidx, align 4
  %call2 = call noalias align 16 i8* @malloc(i64 1) #2
  store i8* %call2, i8** %a, align 8
  %3 = load i8*, i8** %a, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %3, i64 4
  store i8 97, i8* %arrayidx3, align 1
  %call4 = call noalias align 16 i8* @malloc(i64 8) #2
  %4 = bitcast i8* %call4 to %struct.list*
  store %struct.list* %4, %struct.list** %head, align 8
  store %struct.list* %4, %struct.list** %current, align 8
  %5 = load i32*, i32** %i, align 8
  store i32 0, i32* %5, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32*, i32** %i, align 8
  %7 = load i32, i32* %6, align 4
  %cmp = icmp slt i32 %7, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call noalias align 16 i8* @malloc(i64 8) #2
  %8 = bitcast i8* %call5 to %struct.list*
  %9 = load %struct.list*, %struct.list** %current, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %9, i32 0, i32 0
  store %struct.list* %8, %struct.list** %next, align 8
  %10 = load %struct.list*, %struct.list** %current, align 8
  %next6 = getelementptr inbounds %struct.list, %struct.list* %10, i32 0, i32 0
  %11 = load %struct.list*, %struct.list** %next6, align 8
  store %struct.list* %11, %struct.list** %current, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32*, i32** %i, align 8
  %13 = load i32, i32* %12, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %12, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %14 = load %struct.list*, %struct.list** %current, align 8
  %next7 = getelementptr inbounds %struct.list, %struct.list* %14, i32 0, i32 0
  store %struct.list* null, %struct.list** %next7, align 8
  %15 = load i32*, i32** %i, align 8
  store i32 0, i32* %15, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc12, %for.end
  %16 = load i32*, i32** %i, align 8
  %17 = load i32, i32* %16, align 4
  %cmp9 = icmp slt i32 %17, 2
  br i1 %cmp9, label %for.body10, label %for.end14

for.body10:                                       ; preds = %for.cond8
  %18 = load %struct.list*, %struct.list** %head, align 8
  %next11 = getelementptr inbounds %struct.list, %struct.list* %18, i32 0, i32 0
  %19 = load %struct.list*, %struct.list** %next11, align 8
  store %struct.list* %19, %struct.list** %head, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.body10
  %20 = load i32*, i32** %i, align 8
  %21 = load i32, i32* %20, align 4
  %inc13 = add nsw i32 %21, 1
  store i32 %inc13, i32* %20, align 4
  br label %for.cond8, !llvm.loop !6

for.end14:                                        ; preds = %for.cond8
  store i32* null, i32** %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end14
  %22 = load %struct.list*, %struct.list** %head, align 8
  %tobool = icmp ne %struct.list* %22, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %23 = load %struct.list*, %struct.list** %head, align 8
  %next15 = getelementptr inbounds %struct.list, %struct.list* %23, i32 0, i32 0
  %24 = load %struct.list*, %struct.list** %next15, align 8
  store %struct.list* %24, %struct.list** %current, align 8
  %25 = load %struct.list*, %struct.list** %head, align 8
  %26 = bitcast %struct.list* %25 to i8*
  call void @free(i8* %26) #2
  %27 = load %struct.list*, %struct.list** %current, align 8
  store %struct.list* %27, %struct.list** %head, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
