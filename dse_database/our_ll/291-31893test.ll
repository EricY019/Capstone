; ModuleID = 'code/291-31893test.c'
source_filename = "code/291-31893test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.element = type { %struct.element*, [15 x i32] }

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %temp = alloca %struct.element*, align 8
  %list = alloca %struct.element*, align 8
  %stopstring = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strtol(i8* %2, i8** %stopstring, i32 16) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 4194304, %cond.false ]
  store i64 %cond, i64* %size, align 8
  %3 = load i64, i64* %size, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %3)
  %4 = load i64, i64* %size, align 8
  %call2 = call noalias align 16 i8* @calloc(i64 %4, i64 72) #3
  %5 = bitcast i8* %call2 to %struct.element*
  store %struct.element* %5, %struct.element** %list, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %size, align 8
  %cmp3 = icmp slt i64 %6, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, i64* %i, align 8
  %9 = load i64, i64* %size, align 8
  %sub = sub nsw i64 %9, 1
  %cmp4 = icmp eq i64 %8, %sub
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load %struct.element*, %struct.element** %list, align 8
  %arrayidx5 = getelementptr inbounds %struct.element, %struct.element* %10, i64 0
  %11 = load %struct.element*, %struct.element** %list, align 8
  %12 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds %struct.element, %struct.element* %11, i64 %12
  %next = getelementptr inbounds %struct.element, %struct.element* %arrayidx6, i32 0, i32 0
  store %struct.element* %arrayidx5, %struct.element** %next, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load %struct.element*, %struct.element** %list, align 8
  %14 = load i64, i64* %i, align 8
  %add = add nsw i64 %14, 1
  %arrayidx7 = getelementptr inbounds %struct.element, %struct.element* %13, i64 %add
  %15 = load %struct.element*, %struct.element** %list, align 8
  %16 = load i64, i64* %i, align 8
  %arrayidx8 = getelementptr inbounds %struct.element, %struct.element* %15, i64 %16
  %next9 = getelementptr inbounds %struct.element, %struct.element* %arrayidx8, i32 0, i32 0
  store %struct.element* %arrayidx7, %struct.element** %next9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i64, i64* %i, align 8
  %inc = add nsw i64 %17, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %18 = load %struct.element*, %struct.element** %list, align 8
  %arrayidx10 = getelementptr inbounds %struct.element, %struct.element* %18, i64 0
  store %struct.element* %arrayidx10, %struct.element** %temp, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc15, %for.end
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %size, align 8
  %cmp12 = icmp slt i64 %19, %20
  br i1 %cmp12, label %for.body13, label %for.end17

for.body13:                                       ; preds = %for.cond11
  %21 = load %struct.element*, %struct.element** %temp, align 8
  %next14 = getelementptr inbounds %struct.element, %struct.element* %21, i32 0, i32 0
  %22 = load %struct.element*, %struct.element** %next14, align 8
  store %struct.element* %22, %struct.element** %temp, align 8
  br label %for.inc15

for.inc15:                                        ; preds = %for.body13
  %23 = load i64, i64* %i, align 8
  %inc16 = add nsw i64 %23, 1
  store i64 %inc16, i64* %i, align 8
  br label %for.cond11, !llvm.loop !6

for.end17:                                        ; preds = %for.cond11
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

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
