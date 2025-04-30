; ModuleID = './code/280-16725p2.c'
source_filename = "./code/280-16725p2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@MAX_STRING = constant i32 10, align 4
@.str = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gra\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"catcher\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"bird\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"cats\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"drib\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"scat\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"tac\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insertionSort(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i8, align 1
  store ptr %str, ptr %str.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %str.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end27

if.end:                                           ; preds = %for.body
  store i32 0, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.end
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %6 = load ptr, ptr %str.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 %idxprom7
  %8 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %8 to i32
  %9 = load ptr, ptr %str.addr, align 8
  %10 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %9, i64 %idxprom10
  %11 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %11 to i32
  %cmp13 = icmp slt i32 %conv9, %conv12
  br i1 %cmp13, label %if.then15, label %if.end24

if.then15:                                        ; preds = %for.body6
  %12 = load ptr, ptr %str.addr, align 8
  %13 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %12, i64 %idxprom16
  %14 = load i8, ptr %arrayidx17, align 1
  store i8 %14, ptr %temp, align 1
  %15 = load ptr, ptr %str.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds i8, ptr %15, i64 %idxprom18
  %17 = load i8, ptr %arrayidx19, align 1
  %18 = load ptr, ptr %str.addr, align 8
  %19 = load i32, ptr %j, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds i8, ptr %18, i64 %idxprom20
  store i8 %17, ptr %arrayidx21, align 1
  %20 = load i8, ptr %temp, align 1
  %21 = load ptr, ptr %str.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %21, i64 %idxprom22
  store i8 %20, ptr %arrayidx23, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then15, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %23 = load i32, ptr %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !5

for.end:                                          ; preds = %for.cond3
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4
  %inc26 = add nsw i32 %24, 1
  store i32 %inc26, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end27:                                        ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @compareViaAnagram(ptr noundef %str1, ptr noundef %str2) #0 {
entry:
  %str1.addr = alloca ptr, align 8
  %str2.addr = alloca ptr, align 8
  store ptr %str1, ptr %str1.addr, align 8
  store ptr %str2, ptr %str2.addr, align 8
  %0 = load ptr, ptr %str1.addr, align 8
  call void @insertionSort(ptr noundef %0)
  %1 = load ptr, ptr %str2.addr, align 8
  call void @insertionSort(ptr noundef %1)
  %2 = load ptr, ptr %str1.addr, align 8
  %3 = load ptr, ptr %str2.addr, align 8
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef %3) #5
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @anagramSort(ptr noundef %strArray) #0 {
entry:
  %strArray.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  store ptr %strArray, ptr %strArray.addr, align 8
  %0 = call ptr @llvm.stacksave.p0()
  store ptr %0, ptr %saved_stack, align 8
  %vla = alloca i8, i64 10, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end31

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %strArray.addr, align 8
  %5 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %5, 10
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %strArray.addr, align 8
  %7 = load i32, ptr %j, align 4
  %mul4 = mul nsw i32 %7, 10
  %idxprom5 = sext i32 %mul4 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %6, i64 %idxprom5
  %call = call i32 @compareViaAnagram(ptr noundef %arrayidx, ptr noundef %arrayidx6)
  %cmp7 = icmp sle i32 %call, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %8 = load ptr, ptr %strArray.addr, align 8
  %9 = load i32, ptr %j, align 4
  %mul8 = mul nsw i32 %9, 10
  %idxprom9 = sext i32 %mul8 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 %idxprom9
  %10 = call i64 @llvm.objectsize.i64.p0(ptr %vla, i1 false, i1 true, i1 false)
  %call11 = call ptr @__strcpy_chk(ptr noundef %vla, ptr noundef %arrayidx10, i64 noundef %10) #5
  %11 = load ptr, ptr %strArray.addr, align 8
  %12 = load i32, ptr %j, align 4
  %mul12 = mul nsw i32 %12, 10
  %idxprom13 = sext i32 %mul12 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %11, i64 %idxprom13
  %13 = load ptr, ptr %strArray.addr, align 8
  %14 = load i32, ptr %i, align 4
  %mul15 = mul nsw i32 %14, 10
  %idxprom16 = sext i32 %mul15 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %13, i64 %idxprom16
  %15 = load ptr, ptr %strArray.addr, align 8
  %16 = load i32, ptr %j, align 4
  %mul18 = mul nsw i32 %16, 10
  %idxprom19 = sext i32 %mul18 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %15, i64 %idxprom19
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx20, i1 false, i1 true, i1 false)
  %call21 = call ptr @__strcpy_chk(ptr noundef %arrayidx14, ptr noundef %arrayidx17, i64 noundef %17) #5
  %18 = load ptr, ptr %strArray.addr, align 8
  %19 = load i32, ptr %i, align 4
  %mul22 = mul nsw i32 %19, 10
  %idxprom23 = sext i32 %mul22 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %18, i64 %idxprom23
  %20 = load ptr, ptr %strArray.addr, align 8
  %21 = load i32, ptr %i, align 4
  %mul25 = mul nsw i32 %21, 10
  %idxprom26 = sext i32 %mul25 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %20, i64 %idxprom26
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx27, i1 false, i1 true, i1 false)
  %call28 = call ptr @__strcpy_chk(ptr noundef %arrayidx24, ptr noundef %vla, i64 noundef %22) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, ptr %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  br label %for.inc29

for.inc29:                                        ; preds = %for.end
  %24 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %24, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end31:                                        ; preds = %for.cond
  %25 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %25)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %0 = call ptr @llvm.stacksave.p0()
  store ptr %0, ptr %saved_stack, align 8
  %vla = alloca i8, i64 100, align 1
  %arrayidx = getelementptr inbounds i8, ptr %vla, i64 0
  %arrayidx1 = getelementptr inbounds i8, ptr %vla, i64 0
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx1, i1 false, i1 true, i1 false)
  %call = call ptr @__strcpy_chk(ptr noundef %arrayidx, ptr noundef @.str, i64 noundef %1) #5
  %arrayidx2 = getelementptr inbounds i8, ptr %vla, i64 10
  %arrayidx3 = getelementptr inbounds i8, ptr %vla, i64 10
  %2 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx3, i1 false, i1 true, i1 false)
  %call4 = call ptr @__strcpy_chk(ptr noundef %arrayidx2, ptr noundef @.str.1, i64 noundef %2) #5
  %arrayidx5 = getelementptr inbounds i8, ptr %vla, i64 20
  %arrayidx6 = getelementptr inbounds i8, ptr %vla, i64 20
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx6, i1 false, i1 true, i1 false)
  %call7 = call ptr @__strcpy_chk(ptr noundef %arrayidx5, ptr noundef @.str, i64 noundef %3) #5
  %arrayidx8 = getelementptr inbounds i8, ptr %vla, i64 30
  %arrayidx9 = getelementptr inbounds i8, ptr %vla, i64 30
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx9, i1 false, i1 true, i1 false)
  %call10 = call ptr @__strcpy_chk(ptr noundef %arrayidx8, ptr noundef @.str.2, i64 noundef %4) #5
  %arrayidx11 = getelementptr inbounds i8, ptr %vla, i64 40
  %arrayidx12 = getelementptr inbounds i8, ptr %vla, i64 40
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx12, i1 false, i1 true, i1 false)
  %call13 = call ptr @__strcpy_chk(ptr noundef %arrayidx11, ptr noundef @.str.3, i64 noundef %5) #5
  %arrayidx14 = getelementptr inbounds i8, ptr %vla, i64 50
  %arrayidx15 = getelementptr inbounds i8, ptr %vla, i64 50
  %6 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx15, i1 false, i1 true, i1 false)
  %call16 = call ptr @__strcpy_chk(ptr noundef %arrayidx14, ptr noundef @.str.4, i64 noundef %6) #5
  %arrayidx17 = getelementptr inbounds i8, ptr %vla, i64 60
  %arrayidx18 = getelementptr inbounds i8, ptr %vla, i64 60
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx18, i1 false, i1 true, i1 false)
  %call19 = call ptr @__strcpy_chk(ptr noundef %arrayidx17, ptr noundef @.str.5, i64 noundef %7) #5
  %arrayidx20 = getelementptr inbounds i8, ptr %vla, i64 70
  %arrayidx21 = getelementptr inbounds i8, ptr %vla, i64 70
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx21, i1 false, i1 true, i1 false)
  %call22 = call ptr @__strcpy_chk(ptr noundef %arrayidx20, ptr noundef @.str.6, i64 noundef %8) #5
  %arrayidx23 = getelementptr inbounds i8, ptr %vla, i64 80
  %arrayidx24 = getelementptr inbounds i8, ptr %vla, i64 80
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx24, i1 false, i1 true, i1 false)
  %call25 = call ptr @__strcpy_chk(ptr noundef %arrayidx23, ptr noundef @.str.7, i64 noundef %9) #5
  %arrayidx26 = getelementptr inbounds i8, ptr %vla, i64 90
  %arrayidx27 = getelementptr inbounds i8, ptr %vla, i64 90
  %10 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx27, i1 false, i1 true, i1 false)
  %call28 = call ptr @__strcpy_chk(ptr noundef %arrayidx26, ptr noundef @.str.8, i64 noundef %10) #5
  call void @anagramSort(ptr noundef %vla)
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %11, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = mul nsw i64 %idxprom, 10
  %arrayidx30 = getelementptr inbounds i8, ptr %vla, i64 %13
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %arrayidx30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  %15 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %15)
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind }

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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
