; ModuleID = 'code/000-15547exerc09.c'
source_filename = "code/000-15547exerc09.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\1B[31m%d \1B[0m\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %bp = alloca i32*, align 8
  %k = alloca i32, align 4
  %tam = alloca i32, align 4
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32* null, i32** %bp, align 8
  store i32 0, i32* %k, align 4
  store i32 1, i32* %tam, align 4
  %call = call noalias align 16 i8* @malloc(i64 80) #3
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %bp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %bp, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %5 = load i32*, i32** %bp, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %5, i64 0
  store i32 1, i32* %arrayidx1, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  %6 = load i32*, i32** %bp, align 8
  %7 = load i32, i32* %tam, align 4
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, i32* %tam, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 %idxprom4
  store i32 1, i32* %arrayidx5, align 4
  %8 = load i32*, i32** %bp, align 8
  %9 = load i32, i32* %tam, align 4
  call void @mostra(i32* %8, i32 %9)
  %10 = load i32, i32* %tam, align 4
  %sub = sub nsw i32 %10, 1
  store i32 %sub, i32* %i6, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc17, %do.body
  %11 = load i32, i32* %i6, align 4
  %cmp8 = icmp sgt i32 %11, 0
  br i1 %cmp8, label %for.body9, label %for.end18

for.body9:                                        ; preds = %for.cond7
  %12 = load i32*, i32** %bp, align 8
  %13 = load i32, i32* %i6, align 4
  %sub10 = sub nsw i32 %13, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %12, i64 %idxprom11
  %14 = load i32, i32* %arrayidx12, align 4
  %15 = load i32*, i32** %bp, align 8
  %16 = load i32, i32* %i6, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %15, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %add = add nsw i32 %14, %17
  %18 = load i32*, i32** %bp, align 8
  %19 = load i32, i32* %i6, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %18, i64 %idxprom15
  store i32 %add, i32* %arrayidx16, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.body9
  %20 = load i32, i32* %i6, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %i6, align 4
  br label %for.cond7, !llvm.loop !6

for.end18:                                        ; preds = %for.cond7
  %21 = load i32, i32* %k, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %k, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end18
  %22 = load i32, i32* %k, align 4
  %cmp20 = icmp slt i32 %22, 20
  br i1 %cmp20, label %do.body, label %do.end, !llvm.loop !7

do.end:                                           ; preds = %do.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mostra(i32* %seq, i32 %tam) #0 {
entry:
  %seq.addr = alloca i32*, align 8
  %tam.addr = alloca i32, align 4
  store i32* %seq, i32** %seq.addr, align 8
  store i32 %tam, i32* %tam.addr, align 4
  %0 = load i32*, i32** %seq.addr, align 8
  %1 = load i32, i32* %tam.addr, align 4
  call void @mostrad(i32* %0, i32 -1, i32 %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mostrad(i32* %seq, i32 %destaque, i32 %tam) #0 {
entry:
  %seq.addr = alloca i32*, align 8
  %destaque.addr = alloca i32, align 4
  %tam.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32* %seq, i32** %seq.addr, align 8
  store i32 %destaque, i32* %destaque.addr, align 4
  store i32 %tam, i32* %tam.addr, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %tam.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %destaque.addr, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32*, i32** %seq.addr, align 8
  %5 = load i32, i32* %x, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load i32*, i32** %seq.addr, align 8
  %8 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %x, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

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
