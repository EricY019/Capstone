; ModuleID = 'code/236-10004shellsort.c'
source_filename = "code/236-10004shellsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %0, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 4
  %call = call noalias align 16 i8* @malloc(i64 %mul) #4
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %a, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %sub1 = sub nsw i32 %3, 1
  %cmp = icmp slt i32 %2, %sub1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %argv.addr, align 8
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call3 = call i32 @atoi(i8* %6) #5
  %7 = load i32*, i32** %a, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 %idxprom4
  store i32 %call3, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %10 = load i32*, i32** %a, align 8
  %11 = load i32, i32* %argc.addr, align 4
  call void @shell_sort(i32* %10, i32 %11)
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc14, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %argc.addr, align 4
  %sub7 = sub nsw i32 %13, 1
  %cmp8 = icmp slt i32 %12, %sub7
  br i1 %cmp8, label %for.body10, label %for.end16

for.body10:                                       ; preds = %for.cond6
  %14 = load i32*, i32** %a, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %14, i64 %idxprom11
  %16 = load i32, i32* %arrayidx12, align 4
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body10
  %17 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond6, !llvm.loop !6

for.end16:                                        ; preds = %for.cond6
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %a, align 8
  %19 = bitcast i32* %18 to i8*
  call void @free(i8* %19) #4
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shell_sort(i32* %a, i32 %size) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %v = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 1, i32* %h, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %0, 3
  %add = add nsw i32 %mul, 1
  store i32 %add, i32* %h, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load i32, i32* %h, align 4
  %2 = load i32, i32* %size.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !7

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.cond20, %do.end
  %3 = load i32, i32* %h, align 4
  %div = sdiv i32 %3, 3
  store i32 %div, i32* %h, align 4
  %4 = load i32, i32* %h, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %do.body1
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %size.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  %7 = load i32*, i32** %a.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  store i32 %9, i32* %v, align 4
  %10 = load i32, i32* %i, align 4
  store i32 %10, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %h, align 4
  %cmp4 = icmp sge i32 %11, %12
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond3
  %13 = load i32*, i32** %a.addr, align 8
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %h, align 4
  %sub = sub nsw i32 %14, %15
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  %16 = load i32, i32* %arrayidx6, align 4
  %17 = load i32, i32* %v, align 4
  %cmp7 = icmp sgt i32 %16, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond3
  %18 = phi i1 [ false, %for.cond3 ], [ %cmp7, %land.rhs ]
  br i1 %18, label %for.body8, label %for.end

for.body8:                                        ; preds = %land.end
  %19 = load i32*, i32** %a.addr, align 8
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %h, align 4
  %sub9 = sub nsw i32 %20, %21
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %19, i64 %idxprom10
  %22 = load i32, i32* %arrayidx11, align 4
  %23 = load i32*, i32** %a.addr, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %24 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %23, i64 %idxprom12
  store i32 %22, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %25 = load i32, i32* %h, align 4
  %26 = load i32, i32* %j, align 4
  %sub14 = sub nsw i32 %26, %25
  store i32 %sub14, i32* %j, align 4
  br label %for.cond3, !llvm.loop !8

for.end:                                          ; preds = %land.end
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %j, align 4
  %cmp15 = icmp ne i32 %27, %28
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %29 = load i32, i32* %v, align 4
  %30 = load i32*, i32** %a.addr, align 8
  %31 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %31 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %30, i64 %idxprom16
  store i32 %29, i32* %arrayidx17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc18

for.inc18:                                        ; preds = %if.end
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end19:                                        ; preds = %for.cond
  br label %do.cond20

do.cond20:                                        ; preds = %for.end19
  %33 = load i32, i32* %h, align 4
  %cmp21 = icmp ne i32 %33, 1
  br i1 %cmp21, label %do.body1, label %do.end22, !llvm.loop !10

do.end22:                                         ; preds = %do.cond20
  ret void
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
