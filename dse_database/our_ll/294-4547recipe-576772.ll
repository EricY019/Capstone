; ModuleID = 'code/294-4547recipe-576772.c'
source_filename = "code/294-4547recipe-576772.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ilist = type { i32, %struct.ilist* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @createNode(%struct.ilist** %node, i32 %elem) #0 {
entry:
  %node.addr = alloca %struct.ilist**, align 8
  %elem.addr = alloca i32, align 4
  %temp = alloca %struct.ilist*, align 8
  store %struct.ilist** %node, %struct.ilist*** %node.addr, align 8
  store i32 %elem, i32* %elem.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.ilist*
  store %struct.ilist* %0, %struct.ilist** %temp, align 8
  %1 = load i32, i32* %elem.addr, align 4
  %2 = load %struct.ilist*, %struct.ilist** %temp, align 8
  %elem1 = getelementptr inbounds %struct.ilist, %struct.ilist* %2, i32 0, i32 0
  store i32 %1, i32* %elem1, align 8
  %3 = load %struct.ilist*, %struct.ilist** %temp, align 8
  %next = getelementptr inbounds %struct.ilist, %struct.ilist* %3, i32 0, i32 1
  store %struct.ilist* null, %struct.ilist** %next, align 8
  %4 = load %struct.ilist*, %struct.ilist** %temp, align 8
  %5 = load %struct.ilist**, %struct.ilist*** %node.addr, align 8
  store %struct.ilist* %4, %struct.ilist** %5, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %list = alloca %struct.ilist*, align 8
  %visitor = alloca %struct.ilist*, align 8
  %i = alloca i32, align 4
  %temp = alloca %struct.ilist*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct.ilist* null, %struct.ilist** %list, align 8
  store %struct.ilist* null, %struct.ilist** %visitor, align 8
  store i32 7, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.ilist*, %struct.ilist** %list, align 8
  %cmp1 = icmp eq %struct.ilist* %1, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i32, i32* %i, align 4
  call void @createNode(%struct.ilist** %list, i32 %2)
  %3 = load %struct.ilist*, %struct.ilist** %list, align 8
  store %struct.ilist* %3, %struct.ilist** %visitor, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  store %struct.ilist* null, %struct.ilist** %temp, align 8
  %4 = load i32, i32* %i, align 4
  call void @createNode(%struct.ilist** %temp, i32 %4)
  %5 = load %struct.ilist*, %struct.ilist** %temp, align 8
  %6 = load %struct.ilist*, %struct.ilist** %list, align 8
  %next = getelementptr inbounds %struct.ilist, %struct.ilist* %6, i32 0, i32 1
  store %struct.ilist* %5, %struct.ilist** %next, align 8
  %7 = load %struct.ilist*, %struct.ilist** %temp, align 8
  store %struct.ilist* %7, %struct.ilist** %list, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %while.end
  %9 = load %struct.ilist*, %struct.ilist** %visitor, align 8
  %cmp3 = icmp ne %struct.ilist* %9, null
  br i1 %cmp3, label %while.body4, label %while.end6

while.body4:                                      ; preds = %while.cond2
  %10 = load %struct.ilist*, %struct.ilist** %visitor, align 8
  %elem = getelementptr inbounds %struct.ilist, %struct.ilist* %10, i32 0, i32 0
  %11 = load i32, i32* %elem, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %12 = load %struct.ilist*, %struct.ilist** %visitor, align 8
  %next5 = getelementptr inbounds %struct.ilist, %struct.ilist* %12, i32 0, i32 1
  %13 = load %struct.ilist*, %struct.ilist** %next5, align 8
  store %struct.ilist* %13, %struct.ilist** %visitor, align 8
  br label %while.cond2, !llvm.loop !6

while.end6:                                       ; preds = %while.cond2
  ret i32 0
}

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
