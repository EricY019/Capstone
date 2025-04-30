; ModuleID = './code/189-24700main.c'
source_filename = "./code/189-24700main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@palindrome.str = internal global ptr @.str, align 8
@.str = private unnamed_addr constant [10 x i8] c"([{}()])\00\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"len: %d, mid: %d, next: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ret: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @palindrome() #0 {
entry:
  %arr = alloca [10 x i8], align 1
  %len = alloca i32, align 4
  %next = alloca i32, align 4
  %top = alloca i32, align 4
  %mid = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 1 %arr, i8 0, i64 10, i1 false)
  %0 = load ptr, ptr @palindrome.str, align 8
  %call = call i64 @strlen(ptr noundef %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len, align 4
  store i32 0, ptr %next, align 4
  store i32 0, ptr %top, align 4
  %1 = load i32, ptr %len, align 4
  %div = sdiv i32 %1, 2
  %sub = sub nsw i32 %div, 1
  store i32 %sub, ptr %mid, align 4
  %2 = load i32, ptr %len, align 4
  %rem = srem i32 %2, 2
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %mid, align 4
  %add = add nsw i32 %3, 2
  store i32 %add, ptr %next, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %mid, align 4
  %add2 = add nsw i32 %4, 1
  store i32 %add2, ptr %next, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %len, align 4
  %6 = load i32, ptr %mid, align 4
  %7 = load i32, ptr %next, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %mid, align 4
  %cmp4 = icmp sle i32 %8, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr @palindrome.str, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %12 = load i8, ptr %arrayidx, align 1
  %13 = load i32, ptr %top, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %top, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [10 x i8], ptr %arr, i64 0, i64 %idxprom6
  store i8 %12, ptr %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %14, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %15 = load i32, ptr %top, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %top, align 4
  store i32 0, ptr %ret, align 4
  %16 = load i32, ptr %next, align 4
  store i32 %16, ptr %j, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc24, %for.end
  %17 = load i32, ptr %j, align 4
  %18 = load i32, ptr %len, align 4
  %cmp10 = icmp slt i32 %17, %18
  br i1 %cmp10, label %for.body12, label %for.end27

for.body12:                                       ; preds = %for.cond9
  %19 = load ptr, ptr @palindrome.str, align 8
  %20 = load i32, ptr %j, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %19, i64 %idxprom13
  %21 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %21 to i32
  %22 = load i32, ptr %top, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds [10 x i8], ptr %arr, i64 0, i64 %idxprom16
  %23 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %23 to i32
  %cmp19 = icmp ne i32 %conv15, %conv18
  br i1 %cmp19, label %if.then21, label %if.else22

if.then21:                                        ; preds = %for.body12
  store i32 0, ptr %ret, align 4
  br label %for.end27

if.else22:                                        ; preds = %for.body12
  store i32 1, ptr %ret, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else22
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %24 = load i32, ptr %j, align 4
  %inc25 = add nsw i32 %24, 1
  store i32 %inc25, ptr %j, align 4
  %25 = load i32, ptr %top, align 4
  %dec26 = add nsw i32 %25, -1
  store i32 %dec26, ptr %top, align 4
  br label %for.cond9, !llvm.loop !7

for.end27:                                        ; preds = %if.then21, %for.cond9
  %26 = load i32, ptr %ret, align 4
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %26)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @palindrome()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
