; ModuleID = 'code/028-17195main.c'
source_filename = "code/028-17195main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds = type { %struct.ds*, i32 }

@.str = private unnamed_addr constant [12 x i8] c"head list:\0A\00", align 1
@head = dso_local global [16 x %struct.ds] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"%8d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pr_head() #0 {
entry:
  %i = alloca i32, align 4
  %p = alloca %struct.ds*, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.ds, %struct.ds* getelementptr inbounds ([16 x %struct.ds], [16 x %struct.ds]* @head, i64 0, i64 0), i64 %idx.ext
  store %struct.ds* %add.ptr, %struct.ds** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load %struct.ds*, %struct.ds** %p, align 8
  %tobool = icmp ne %struct.ds* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.ds*, %struct.ds** %p, align 8
  %x = getelementptr inbounds %struct.ds, %struct.ds* %3, i32 0, i32 1
  %4 = load i32, i32* %x, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  %5 = load %struct.ds*, %struct.ds** %p, align 8
  %next = getelementptr inbounds %struct.ds, %struct.ds* %5, i32 0, i32 0
  %6 = load %struct.ds*, %struct.ds** %next, align 8
  store %struct.ds* %6, %struct.ds** %p, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_int() #0 {
entry:
  %call = call i64 @random() #3
  %and = and i64 %call, 65535
  %conv = trunc i64 %and to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare dso_local i64 @random() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_add_tail(i32 %offset, i32 %x) #0 {
entry:
  %offset.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %p = alloca %struct.ds*, align 8
  %l = alloca %struct.ds*, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.ds*
  store %struct.ds* %0, %struct.ds** %p, align 8
  %1 = load %struct.ds*, %struct.ds** %p, align 8
  %tobool = icmp ne %struct.ds* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %offset.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.ds, %struct.ds* getelementptr inbounds ([16 x %struct.ds], [16 x %struct.ds]* @head, i64 0, i64 0), i64 %idx.ext
  store %struct.ds* %add.ptr, %struct.ds** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.ds*, %struct.ds** %l, align 8
  %next = getelementptr inbounds %struct.ds, %struct.ds* %3, i32 0, i32 0
  %4 = load %struct.ds*, %struct.ds** %next, align 8
  %tobool2 = icmp ne %struct.ds* %4, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.ds*, %struct.ds** %l, align 8
  %next3 = getelementptr inbounds %struct.ds, %struct.ds* %5, i32 0, i32 0
  %6 = load %struct.ds*, %struct.ds** %next3, align 8
  store %struct.ds* %6, %struct.ds** %l, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %x.addr, align 4
  %8 = load %struct.ds*, %struct.ds** %p, align 8
  %x4 = getelementptr inbounds %struct.ds, %struct.ds* %8, i32 0, i32 1
  store i32 %7, i32* %x4, align 8
  %9 = load %struct.ds*, %struct.ds** %p, align 8
  %next5 = getelementptr inbounds %struct.ds, %struct.ds* %9, i32 0, i32 0
  store %struct.ds* null, %struct.ds** %next5, align 8
  %10 = load %struct.ds*, %struct.ds** %p, align 8
  %11 = load %struct.ds*, %struct.ds** %l, align 8
  %next6 = getelementptr inbounds %struct.ds, %struct.ds* %11, i32 0, i32 0
  store %struct.ds* %10, %struct.ds** %next6, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_del(%struct.ds* %p) #0 {
entry:
  %p.addr = alloca %struct.ds*, align 8
  store %struct.ds* %p, %struct.ds** %p.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %p = alloca %struct.ds*, align 8
  %pp = alloca %struct.ds*, align 8
  %mask = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [16 x %struct.ds], [16 x %struct.ds]* @head, i64 0, i64 %idxprom
  %x = getelementptr inbounds %struct.ds, %struct.ds* %arrayidx, i32 0, i32 1
  store i32 %1, i32* %x, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %4, 16
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @get_int()
  store i32 %call, i32* %x4, align 4
  %5 = load i32, i32* %x4, align 4
  %and = and i32 %5, 15
  store i32 %and, i32* %j5, align 4
  %6 = load i32, i32* %j5, align 4
  %7 = load i32, i32* %x4, align 4
  call void @list_add_tail(i32 %6, i32 %7)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %8 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond1, !llvm.loop !9

for.end8:                                         ; preds = %for.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc18, %for.end8
  %9 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %9, 16
  br i1 %cmp10, label %for.body11, label %for.end20

for.body11:                                       ; preds = %for.cond9
  %10 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct.ds, %struct.ds* getelementptr inbounds ([16 x %struct.ds], [16 x %struct.ds]* @head, i64 0, i64 0), i64 %idx.ext
  store %struct.ds* %add.ptr, %struct.ds** %p, align 8
  %11 = load %struct.ds*, %struct.ds** getelementptr inbounds ([16 x %struct.ds], [16 x %struct.ds]* @head, i64 0, i64 0, i32 0), align 16
  store %struct.ds* %11, %struct.ds** %pp, align 8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc16, %for.body11
  %12 = load %struct.ds*, %struct.ds** %pp, align 8
  %tobool = icmp ne %struct.ds* %12, null
  br i1 %tobool, label %for.body13, label %for.end17

for.body13:                                       ; preds = %for.cond12
  %13 = load %struct.ds*, %struct.ds** %pp, align 8
  %x14 = getelementptr inbounds %struct.ds, %struct.ds* %13, i32 0, i32 1
  %14 = load i32, i32* %x14, align 8
  %and15 = and i32 %14, 240
  %shr = ashr i32 %and15, 4
  store i32 %shr, i32* %mask, align 4
  %15 = load %struct.ds*, %struct.ds** %pp, align 8
  call void @list_del(%struct.ds* %15)
  br label %for.inc16

for.inc16:                                        ; preds = %for.body13
  %16 = load %struct.ds*, %struct.ds** %pp, align 8
  %next = getelementptr inbounds %struct.ds, %struct.ds* %16, i32 0, i32 0
  %17 = load %struct.ds*, %struct.ds** %next, align 8
  store %struct.ds* %17, %struct.ds** %pp, align 8
  br label %for.cond12, !llvm.loop !10

for.end17:                                        ; preds = %for.cond12
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %18 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %18, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond9, !llvm.loop !11

for.end20:                                        ; preds = %for.cond9
  call void @pr_head()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
