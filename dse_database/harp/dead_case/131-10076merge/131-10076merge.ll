; ModuleID = 'code/131-10076merge.c'
source_filename = "code/131-10076merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @merge(i32* %vetor, i32 %tam, i32 %metade) #0 {
entry:
  %vetor.addr = alloca i32*, align 8
  %tam.addr = alloca i32, align 4
  %metade.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32*, align 8
  store i32* %vetor, i32** %vetor.addr, align 8
  store i32 %tam, i32* %tam.addr, align 4
  store i32 %metade, i32* %metade.addr, align 4
  %0 = load i32, i32* %tam.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias align 16 i8* @malloc(i64 %mul) #2
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %x, align 8
  store i32 0, i32* %i, align 4
  %2 = load i32, i32* %metade.addr, align 4
  store i32 %2, i32* %j, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %k, align 4
  %4 = load i32, i32* %tam.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %tam.addr, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i32*, i32** %vetor.addr, align 8
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  br label %cond.end27

cond.false:                                       ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %metade.addr, align 4
  %cmp4 = icmp eq i32 %10, %11
  br i1 %cmp4, label %cond.true6, label %cond.false10

cond.true6:                                       ; preds = %cond.false
  %12 = load i32*, i32** %vetor.addr, align 8
  %13 = load i32, i32* %j, align 4
  %inc7 = add nsw i32 %13, 1
  store i32 %inc7, i32* %j, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %12, i64 %idxprom8
  %14 = load i32, i32* %arrayidx9, align 4
  br label %cond.end25

cond.false10:                                     ; preds = %cond.false
  %15 = load i32*, i32** %vetor.addr, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %15, i64 %idxprom11
  %17 = load i32, i32* %arrayidx12, align 4
  %18 = load i32*, i32** %vetor.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %18, i64 %idxprom13
  %20 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp slt i32 %17, %20
  br i1 %cmp15, label %cond.true17, label %cond.false21

cond.true17:                                      ; preds = %cond.false10
  %21 = load i32*, i32** %vetor.addr, align 8
  %22 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %22, 1
  store i32 %inc18, i32* %j, align 4
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %21, i64 %idxprom19
  %23 = load i32, i32* %arrayidx20, align 4
  br label %cond.end

cond.false21:                                     ; preds = %cond.false10
  %24 = load i32*, i32** %vetor.addr, align 8
  %25 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %25, 1
  store i32 %inc22, i32* %i, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %24, i64 %idxprom23
  %26 = load i32, i32* %arrayidx24, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false21, %cond.true17
  %cond = phi i32 [ %23, %cond.true17 ], [ %26, %cond.false21 ]
  br label %cond.end25

cond.end25:                                       ; preds = %cond.end, %cond.true6
  %cond26 = phi i32 [ %14, %cond.true6 ], [ %cond, %cond.end ]
  br label %cond.end27

cond.end27:                                       ; preds = %cond.end25, %cond.true
  %cond28 = phi i32 [ %9, %cond.true ], [ %cond26, %cond.end25 ]
  %27 = load i32*, i32** %x, align 8
  %28 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %28 to i64
  %arrayidx30 = getelementptr inbounds i32, i32* %27, i64 %idxprom29
  store i32 %cond28, i32* %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end27
  %29 = load i32, i32* %k, align 4
  %inc31 = add nsw i32 %29, 1
  store i32 %inc31, i32* %k, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc40, %for.end
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %tam.addr, align 4
  %cmp33 = icmp slt i32 %30, %31
  br i1 %cmp33, label %for.body35, label %for.end42

for.body35:                                       ; preds = %for.cond32
  %32 = load i32*, i32** %x, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %33 to i64
  %arrayidx37 = getelementptr inbounds i32, i32* %32, i64 %idxprom36
  %34 = load i32, i32* %arrayidx37, align 4
  %35 = load i32*, i32** %vetor.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %36 to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %35, i64 %idxprom38
  store i32 %34, i32* %arrayidx39, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %for.body35
  %37 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %37, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond32, !llvm.loop !6

for.end42:                                        ; preds = %for.cond32
  %38 = load i32*, i32** %x, align 8
  %39 = bitcast i32* %38 to i8*
  call void @free(i8* %39) #2
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mergeSort(i32* %vetor, i32 %tam) #0 {
entry:
  %vetor.addr = alloca i32*, align 8
  %tam.addr = alloca i32, align 4
  %metade = alloca i32, align 4
  store i32* %vetor, i32** %vetor.addr, align 8
  store i32 %tam, i32* %tam.addr, align 4
  %0 = load i32, i32* %tam.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %tam.addr, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, i32* %metade, align 4
  %2 = load i32*, i32** %vetor.addr, align 8
  %3 = load i32, i32* %metade, align 4
  call void @mergeSort(i32* %2, i32 %3)
  %4 = load i32*, i32** %vetor.addr, align 8
  %5 = load i32, i32* %metade, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %idx.ext
  %6 = load i32, i32* %tam.addr, align 4
  %7 = load i32, i32* %metade, align 4
  %sub = sub nsw i32 %6, %7
  call void @mergeSort(i32* %add.ptr, i32 %sub)
  %8 = load i32*, i32** %vetor.addr, align 8
  %9 = load i32, i32* %tam.addr, align 4
  %10 = load i32, i32* %metade, align 4
  call void @merge(i32* %8, i32 %9, i32 %10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %vetor = alloca [10000 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #2
  %rem = srem i32 %call, 10000
  %add = add nsw i32 %rem, 1
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i32], [10000 x i32]* %vetor, i64 0, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [10000 x i32], [10000 x i32]* %vetor, i64 0, i64 0
  call void @mergeSort(i32* %arraydecay, i32 10000)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

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
