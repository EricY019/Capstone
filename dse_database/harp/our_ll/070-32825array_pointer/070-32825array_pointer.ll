; ModuleID = 'code/070-32825array_pointer.c'
source_filename = "code/070-32825array_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"array_pointer[%d][%d]: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @create_int_array(i32 %len, i32 %multiplier) #0 {
entry:
  %retval = alloca i32*, align 8
  %len.addr = alloca i32, align 4
  %multiplier.addr = alloca i32, align 4
  %a = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 %multiplier, i32* %multiplier.addr, align 4
  %0 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias align 16 i8* @malloc(i64 %mul) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %a, align 8
  %2 = load i32*, i32** %a, align 8
  %cmp = icmp eq i32* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32*, i32** %a, align 8
  store i32* %3, i32** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %len.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %multiplier.addr, align 4
  %mul4 = mul nsw i32 %6, %7
  %8 = load i32*, i32** %a, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 %mul4, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %11 = load i32*, i32** %a, align 8
  store i32* %11, i32** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i32*, i32** %retval, align 8
  ret i32* %12
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array_len = alloca i32, align 4
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %c = alloca i32*, align 8
  %array_pointer = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 10, i32* %array_len, align 4
  %0 = load i32, i32* %array_len, align 4
  %call = call i32* @create_int_array(i32 %0, i32 10)
  store i32* %call, i32** %a, align 8
  %1 = load i32, i32* %array_len, align 4
  %call1 = call i32* @create_int_array(i32 %1, i32 100)
  store i32* %call1, i32** %b, align 8
  %2 = load i32, i32* %array_len, align 4
  %call2 = call i32* @create_int_array(i32 %2, i32 1000)
  store i32* %call2, i32** %c, align 8
  %call3 = call noalias align 16 i8* @malloc(i64 24) #3
  %3 = bitcast i8* %call3 to i32**
  store i32** %3, i32*** %array_pointer, align 8
  %4 = load i32*, i32** %a, align 8
  %5 = load i32**, i32*** %array_pointer, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %5, i64 0
  store i32* %4, i32** %arrayidx, align 8
  %6 = load i32*, i32** %b, align 8
  %7 = load i32**, i32*** %array_pointer, align 8
  %arrayidx4 = getelementptr inbounds i32*, i32** %7, i64 1
  store i32* %6, i32** %arrayidx4, align 8
  %8 = load i32*, i32** %c, align 8
  %9 = load i32**, i32*** %array_pointer, align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %9, i64 2
  store i32* %8, i32** %arrayidx5, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %10 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %10, 3
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %array_len, align 4
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %j, align 4
  %15 = load i32**, i32*** %array_pointer, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds i32*, i32** %15, i64 %idxprom
  %17 = load i32*, i32** %arrayidx9, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %17, i64 %idxprom10
  %19 = load i32, i32* %arrayidx11, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond6, !llvm.loop !6

for.end:                                          ; preds = %for.cond6
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end15:                                        ; preds = %for.cond
  %22 = load i32**, i32*** %array_pointer, align 8
  %23 = bitcast i32** %22 to i8*
  call void @free(i8* %23) #3
  %24 = load i32*, i32** %a, align 8
  %25 = bitcast i32* %24 to i8*
  call void @free(i8* %25) #3
  %26 = load i32*, i32** %b, align 8
  %27 = bitcast i32* %26 to i8*
  call void @free(i8* %27) #3
  %28 = load i32*, i32** %c, align 8
  %29 = bitcast i32* %28 to i8*
  call void @free(i8* %29) #3
  ret i32 0
}

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
