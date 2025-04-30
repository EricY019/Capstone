; ModuleID = './code/244-12236urlify.c'
source_filename = "./code/244-12236urlify.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @urlify(ptr noundef %str, i32 noundef %len_true) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %len_true.addr = alloca i32, align 4
  %write_pos = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store i32 %len_true, ptr %len_true.addr, align 4
  %0 = load ptr, ptr %str.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #5
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %write_pos, align 4
  %1 = load i32, ptr %len_true.addr, align 4
  %sub1 = sub nsw i32 %1, 1
  store i32 %sub1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %str.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %str.addr, align 8
  %7 = load i32, ptr %write_pos, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %6, i64 %idxprom6
  store i8 48, ptr %arrayidx7, align 1
  %8 = load ptr, ptr %str.addr, align 8
  %9 = load i32, ptr %write_pos, align 4
  %sub8 = sub nsw i32 %9, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 %idxprom9
  store i8 50, ptr %arrayidx10, align 1
  %10 = load ptr, ptr %str.addr, align 8
  %11 = load i32, ptr %write_pos, align 4
  %sub11 = sub nsw i32 %11, 2
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %10, i64 %idxprom12
  store i8 37, ptr %arrayidx13, align 1
  %12 = load i32, ptr %write_pos, align 4
  %sub14 = sub nsw i32 %12, 3
  store i32 %sub14, ptr %write_pos, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load ptr, ptr %str.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %13, i64 %idxprom15
  %15 = load i8, ptr %arrayidx16, align 1
  %16 = load ptr, ptr %str.addr, align 8
  %17 = load i32, ptr %write_pos, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %16, i64 %idxprom17
  store i8 %15, ptr %arrayidx18, align 1
  %18 = load i32, ptr %write_pos, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %write_pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, ptr %i, align 4
  %dec19 = add nsw i32 %19, -1
  store i32 %dec19, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %str.addr, align 8
  ret ptr %20
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %spaces = alloca i32, align 4
  %j = alloca i32, align 4
  %buffered_len = alloca i32, align 4
  %buffered_str = alloca ptr, align 8
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end42

if.then:                                          ; preds = %entry
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %if.then
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %call = call i64 @strlen(ptr noundef %5) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len, align 4
  store i32 0, ptr %spaces, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4
  %7 = load i32, ptr %len, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %8 = load ptr, ptr %argv.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %8, i64 %idxprom6
  %10 = load ptr, ptr %arrayidx7, align 8
  %11 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %10, i64 %idxprom8
  %12 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 32
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %for.body5
  %13 = load i32, ptr %spaces, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %spaces, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %j, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, ptr %j, align 4
  br label %for.cond2, !llvm.loop !7

for.end:                                          ; preds = %for.cond2
  %15 = load i32, ptr %len, align 4
  %16 = load i32, ptr %spaces, align 4
  %mul = mul nsw i32 2, %16
  %add = add nsw i32 %15, %mul
  %add15 = add nsw i32 %add, 1
  store i32 %add15, ptr %buffered_len, align 4
  %17 = load i32, ptr %buffered_len, align 4
  %conv16 = sext i32 %17 to i64
  %call17 = call ptr @calloc(i64 noundef %conv16, i64 noundef 1) #6
  store ptr %call17, ptr %buffered_str, align 8
  %18 = load ptr, ptr %buffered_str, align 8
  %19 = load ptr, ptr %argv.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %19, i64 %idxprom18
  %21 = load ptr, ptr %arrayidx19, align 8
  %22 = load ptr, ptr %buffered_str, align 8
  %23 = call i64 @llvm.objectsize.i64.p0(ptr %22, i1 false, i1 true, i1 false)
  %call20 = call ptr @__strcpy_chk(ptr noundef %18, ptr noundef %21, i64 noundef %23) #5
  %24 = load ptr, ptr %buffered_str, align 8
  %25 = load i32, ptr %len, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %24, i64 %idxprom21
  %26 = load i8, ptr %arrayidx22, align 1
  %27 = load ptr, ptr %buffered_str, align 8
  %28 = load i32, ptr %buffered_len, align 4
  %sub = sub nsw i32 %28, 1
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %27, i64 %idxprom23
  store i8 %26, ptr %arrayidx24, align 1
  %29 = load i32, ptr %len, align 4
  store i32 %29, ptr %k, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc32, %for.end
  %30 = load i32, ptr %k, align 4
  %31 = load i32, ptr %buffered_len, align 4
  %sub26 = sub nsw i32 %31, 2
  %cmp27 = icmp sle i32 %30, %sub26
  br i1 %cmp27, label %for.body29, label %for.end34

for.body29:                                       ; preds = %for.cond25
  %32 = load ptr, ptr %buffered_str, align 8
  %33 = load i32, ptr %k, align 4
  %idxprom30 = sext i32 %33 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %32, i64 %idxprom30
  store i8 32, ptr %arrayidx31, align 1
  br label %for.inc32

for.inc32:                                        ; preds = %for.body29
  %34 = load i32, ptr %k, align 4
  %inc33 = add nsw i32 %34, 1
  store i32 %inc33, ptr %k, align 4
  br label %for.cond25, !llvm.loop !8

for.end34:                                        ; preds = %for.cond25
  %35 = load ptr, ptr %buffered_str, align 8
  %36 = load i32, ptr %len, align 4
  %call35 = call ptr @urlify(ptr noundef %35, i32 noundef %36)
  %37 = load ptr, ptr %argv.addr, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %37, i64 %idxprom36
  %39 = load ptr, ptr %arrayidx37, align 8
  %40 = load ptr, ptr %buffered_str, align 8
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %39, ptr noundef %40)
  %41 = load ptr, ptr %buffered_str, align 8
  call void @free(ptr noundef %41)
  br label %for.inc39

for.inc39:                                        ; preds = %for.end34
  %42 = load i32, ptr %i, align 4
  %inc40 = add nsw i32 %42, 1
  store i32 %inc40, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end41:                                        ; preds = %for.cond
  br label %if.end42

if.end42:                                         ; preds = %for.end41, %entry
  ret i32 0
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #4

declare void @free(ptr noundef) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind }
attributes #6 = { allocsize(0,1) }

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
