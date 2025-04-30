; ModuleID = 'code/372-2819parallel_async.c'
source_filename = "code/372-2819parallel_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"malloc err\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %c = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 134217728) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %a, align 8
  %call1 = call noalias align 16 i8* @malloc(i64 134217728) #3
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** %b, align 8
  %call2 = call noalias align 16 i8* @malloc(i64 134217728) #3
  %2 = bitcast i8* %call2 to i32*
  store i32* %2, i32** %c, align 8
  %3 = load i32*, i32** %a, align 8
  %tobool = icmp ne i32* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %4 = load i32*, i32** %b, align 8
  %tobool3 = icmp ne i32* %4, null
  br i1 %tobool3, label %land.lhs.true4, label %if.then

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load i32*, i32** %c, align 8
  %tobool5 = icmp ne i32* %5, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true4
  %6 = load i32*, i32** %a, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 0
  store i32 0, i32* %arrayidx, align 4
  %7 = load i32*, i32** %a, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %7, i64 1
  store i32 1, i32* %arrayidx7, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %8, 33554432
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %9, 2
  %10 = load i32*, i32** %a, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %10, i64 %idxprom
  store i32 %mul, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc14, %for.end
  %13 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %13, 33554432
  br i1 %cmp10, label %for.body11, label %for.end16

for.body11:                                       ; preds = %for.cond9
  %14 = load i32*, i32** %b, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %14, i64 %idxprom12
  store i32 1, i32* %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body11
  %16 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond9, !llvm.loop !6

for.end16:                                        ; preds = %for.cond9
  store i32 0, i32* %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc26, %for.end16
  %17 = load i32, i32* %i, align 4
  %cmp18 = icmp slt i32 %17, 33554432
  br i1 %cmp18, label %for.body19, label %for.end28

for.body19:                                       ; preds = %for.cond17
  %18 = load i32*, i32** %a, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %18, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %21 = load i32*, i32** %b, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds i32, i32* %21, i64 %idxprom22
  %23 = load i32, i32* %arrayidx23, align 4
  %add = add nsw i32 %20, %23
  %24 = load i32*, i32** %c, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %24, i64 %idxprom24
  store i32 %add, i32* %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %26 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %26, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond17, !llvm.loop !7

for.end28:                                        ; preds = %for.cond17
  store i32 0, i32* %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc39, %for.end28
  %27 = load i32, i32* %i, align 4
  %cmp30 = icmp slt i32 %27, 33554432
  br i1 %cmp30, label %for.body31, label %for.end41

for.body31:                                       ; preds = %for.cond29
  %28 = load i32*, i32** %c, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %29 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %28, i64 %idxprom32
  %30 = load i32, i32* %arrayidx33, align 4
  %31 = load i32, i32* %i, align 4
  %mul34 = mul nsw i32 %31, 2
  %add35 = add nsw i32 %mul34, 1
  %cmp36 = icmp ne i32 %30, %add35
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body31
  store i32 1, i32* %retval, align 4
  br label %return

if.end38:                                         ; preds = %for.body31
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %32 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %32, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond29, !llvm.loop !8

for.end41:                                        ; preds = %for.cond29
  %33 = load i32*, i32** %a, align 8
  %34 = bitcast i32* %33 to i8*
  call void @free(i8* %34) #3
  %35 = load i32*, i32** %b, align 8
  %36 = bitcast i32* %35 to i8*
  call void @free(i8* %36) #3
  %37 = load i32*, i32** %c, align 8
  %38 = bitcast i32* %37 to i8*
  call void @free(i8* %38) #3
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end41, %if.then37, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

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
!8 = distinct !{!8, !5}
