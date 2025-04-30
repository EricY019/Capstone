; ModuleID = 'code/012-18647kernels_async.c'
source_filename = "code/012-18647kernels_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"malloc err\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
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
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %if.end
  %8 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %9 = load i32, i32* %i, align 4
  %cmp9 = icmp slt i32 %9, 33554432
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %10 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %10, 2
  %11 = load i32*, i32** %a, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 %mul, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond8, !llvm.loop !4

for.end:                                          ; preds = %for.cond8
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %14 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond, !llvm.loop !6

for.end14:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc20, %for.end14
  %15 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %15, 33554432
  br i1 %cmp16, label %for.body17, label %for.end22

for.body17:                                       ; preds = %for.cond15
  %16 = load i32*, i32** %b, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds i32, i32* %16, i64 %idxprom18
  store i32 1, i32* %arrayidx19, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body17
  %18 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond15, !llvm.loop !7

for.end22:                                        ; preds = %for.cond15
  store i32 0, i32* %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc32, %for.end22
  %19 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %19, 33554432
  br i1 %cmp24, label %for.body25, label %for.end34

for.body25:                                       ; preds = %for.cond23
  %20 = load i32*, i32** %a, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %20, i64 %idxprom26
  %22 = load i32, i32* %arrayidx27, align 4
  %23 = load i32*, i32** %b, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %24 to i64
  %arrayidx29 = getelementptr inbounds i32, i32* %23, i64 %idxprom28
  %25 = load i32, i32* %arrayidx29, align 4
  %add = add nsw i32 %22, %25
  %26 = load i32*, i32** %c, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %26, i64 %idxprom30
  store i32 %add, i32* %arrayidx31, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %for.body25
  %28 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %28, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond23, !llvm.loop !8

for.end34:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc45, %for.end34
  %29 = load i32, i32* %i, align 4
  %cmp36 = icmp slt i32 %29, 33554432
  br i1 %cmp36, label %for.body37, label %for.end47

for.body37:                                       ; preds = %for.cond35
  %30 = load i32*, i32** %c, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %30, i64 %idxprom38
  %32 = load i32, i32* %arrayidx39, align 4
  %33 = load i32, i32* %i, align 4
  %mul40 = mul nsw i32 %33, 2
  %add41 = add nsw i32 %mul40, 1
  %cmp42 = icmp ne i32 %32, %add41
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.body37
  store i32 1, i32* %retval, align 4
  br label %return

if.end44:                                         ; preds = %for.body37
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %34 = load i32, i32* %i, align 4
  %inc46 = add nsw i32 %34, 1
  store i32 %inc46, i32* %i, align 4
  br label %for.cond35, !llvm.loop !9

for.end47:                                        ; preds = %for.cond35
  %35 = load i32*, i32** %a, align 8
  %36 = bitcast i32* %35 to i8*
  call void @free(i8* %36) #3
  %37 = load i32*, i32** %b, align 8
  %38 = bitcast i32* %37 to i8*
  call void @free(i8* %38) #3
  %39 = load i32*, i32** %c, align 8
  %40 = bitcast i32* %39 to i8*
  call void @free(i8* %40) #3
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end47, %if.then43, %if.then
  %41 = load i32, i32* %retval, align 4
  ret i32 %41
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
!9 = distinct !{!9, !5}
