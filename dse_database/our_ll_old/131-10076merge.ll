; ModuleID = './code/131-10076merge.c'
source_filename = "./code/131-10076merge.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @merge(ptr noundef %vetor, i32 noundef %tam, i32 noundef %metade) #0 {
entry:
  %vetor.addr = alloca ptr, align 8
  %tam.addr = alloca i32, align 4
  %metade.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca ptr, align 8
  store ptr %vetor, ptr %vetor.addr, align 8
  store i32 %tam, ptr %tam.addr, align 4
  store i32 %metade, ptr %metade.addr, align 4
  %0 = load i32, ptr %tam.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %x, align 8
  store i32 0, ptr %i, align 4
  %1 = load i32, ptr %metade.addr, align 4
  store i32 %1, ptr %j, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %k, align 4
  %3 = load i32, ptr %tam.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %tam.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %6 = load ptr, ptr %vetor.addr, align 8
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  br label %cond.end27

cond.false:                                       ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %metade.addr, align 4
  %cmp4 = icmp eq i32 %9, %10
  br i1 %cmp4, label %cond.true6, label %cond.false10

cond.true6:                                       ; preds = %cond.false
  %11 = load ptr, ptr %vetor.addr, align 8
  %12 = load i32, ptr %j, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, ptr %j, align 4
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %11, i64 %idxprom8
  %13 = load i32, ptr %arrayidx9, align 4
  br label %cond.end25

cond.false10:                                     ; preds = %cond.false
  %14 = load ptr, ptr %vetor.addr, align 8
  %15 = load i32, ptr %j, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %14, i64 %idxprom11
  %16 = load i32, ptr %arrayidx12, align 4
  %17 = load ptr, ptr %vetor.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %17, i64 %idxprom13
  %19 = load i32, ptr %arrayidx14, align 4
  %cmp15 = icmp slt i32 %16, %19
  br i1 %cmp15, label %cond.true17, label %cond.false21

cond.true17:                                      ; preds = %cond.false10
  %20 = load ptr, ptr %vetor.addr, align 8
  %21 = load i32, ptr %j, align 4
  %inc18 = add nsw i32 %21, 1
  store i32 %inc18, ptr %j, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %20, i64 %idxprom19
  %22 = load i32, ptr %arrayidx20, align 4
  br label %cond.end

cond.false21:                                     ; preds = %cond.false10
  %23 = load ptr, ptr %vetor.addr, align 8
  %24 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %24, 1
  store i32 %inc22, ptr %i, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %23, i64 %idxprom23
  %25 = load i32, ptr %arrayidx24, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false21, %cond.true17
  %cond = phi i32 [ %22, %cond.true17 ], [ %25, %cond.false21 ]
  br label %cond.end25

cond.end25:                                       ; preds = %cond.end, %cond.true6
  %cond26 = phi i32 [ %13, %cond.true6 ], [ %cond, %cond.end ]
  br label %cond.end27

cond.end27:                                       ; preds = %cond.end25, %cond.true
  %cond28 = phi i32 [ %8, %cond.true ], [ %cond26, %cond.end25 ]
  %26 = load ptr, ptr %x, align 8
  %27 = load i32, ptr %k, align 4
  %idxprom29 = sext i32 %27 to i64
  %arrayidx30 = getelementptr inbounds i32, ptr %26, i64 %idxprom29
  store i32 %cond28, ptr %arrayidx30, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end27
  %28 = load i32, ptr %k, align 4
  %inc31 = add nsw i32 %28, 1
  store i32 %inc31, ptr %k, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc40, %for.end
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %tam.addr, align 4
  %cmp33 = icmp slt i32 %29, %30
  br i1 %cmp33, label %for.body35, label %for.end42

for.body35:                                       ; preds = %for.cond32
  %31 = load ptr, ptr %x, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %32 to i64
  %arrayidx37 = getelementptr inbounds i32, ptr %31, i64 %idxprom36
  %33 = load i32, ptr %arrayidx37, align 4
  %34 = load ptr, ptr %vetor.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %35 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %34, i64 %idxprom38
  store i32 %33, ptr %arrayidx39, align 4
  br label %for.inc40

for.inc40:                                        ; preds = %for.body35
  %36 = load i32, ptr %i, align 4
  %inc41 = add nsw i32 %36, 1
  store i32 %inc41, ptr %i, align 4
  br label %for.cond32, !llvm.loop !7

for.end42:                                        ; preds = %for.cond32
  %37 = load ptr, ptr %x, align 8
  call void @free(ptr noundef %37)
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @mergeSort(ptr noundef %vetor, i32 noundef %tam) #0 {
entry:
  %vetor.addr = alloca ptr, align 8
  %tam.addr = alloca i32, align 4
  %metade = alloca i32, align 4
  store ptr %vetor, ptr %vetor.addr, align 8
  store i32 %tam, ptr %tam.addr, align 4
  %0 = load i32, ptr %tam.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %tam.addr, align 4
  %div = sdiv i32 %1, 2
  store i32 %div, ptr %metade, align 4
  %2 = load ptr, ptr %vetor.addr, align 8
  %3 = load i32, ptr %metade, align 4
  call void @mergeSort(ptr noundef %2, i32 noundef %3)
  %4 = load ptr, ptr %vetor.addr, align 8
  %5 = load i32, ptr %metade, align 4
  %idx.ext = sext i32 %5 to i64
  %add.ptr = getelementptr inbounds i32, ptr %4, i64 %idx.ext
  %6 = load i32, ptr %tam.addr, align 4
  %7 = load i32, ptr %metade, align 4
  %sub = sub nsw i32 %6, %7
  call void @mergeSort(ptr noundef %add.ptr, i32 noundef %sub)
  %8 = load ptr, ptr %vetor.addr, align 8
  %9 = load i32, ptr %tam.addr, align 4
  %10 = load i32, ptr %metade, align 4
  call void @merge(ptr noundef %8, i32 noundef %9, i32 noundef %10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %vetor = alloca [10000 x i32], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand()
  %rem = srem i32 %call, 10000
  %add = add nsw i32 %rem, 1
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i32], ptr %vetor, i64 0, i64 %idxprom
  store i32 %add, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [10000 x i32], ptr %vetor, i64 0, i64 0
  call void @mergeSort(ptr noundef %arraydecay, i32 noundef 10000)
  ret i32 0
}

declare i32 @rand() #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
