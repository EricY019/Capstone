; ModuleID = './code/205-4705issort.c'
source_filename = "./code/205-4705issort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @issort(ptr noundef %data, i32 noundef %size, i32 noundef %esize, ptr noundef %compare) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %esize.addr = alloca i32, align 4
  %compare.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ele = alloca ptr, align 8
  %temp = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 %esize, ptr %esize.addr, align 4
  store ptr %compare, ptr %compare.addr, align 8
  store i32 -1, ptr %ret, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  %0 = load ptr, ptr %data.addr, align 8
  store ptr %0, ptr %ele, align 8
  store ptr null, ptr %temp, align 8
  %1 = load ptr, ptr %data.addr, align 8
  %cmp = icmp eq ptr null, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %size.addr, align 4
  %cmp1 = icmp eq i32 0, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %esize.addr, align 4
  %cmp3 = icmp eq i32 0, %3
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load ptr, ptr %compare.addr, align 8
  %cmp5 = icmp eq ptr null, %4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, ptr %ret, align 4
  br label %LBL_RET

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load i32, ptr %esize.addr, align 4
  %conv = sext i32 %5 to i64
  %call = call ptr @malloc(i64 noundef %conv) #5
  store ptr %call, ptr %temp, align 8
  %6 = load ptr, ptr %temp, align 8
  %cmp6 = icmp eq ptr null, %6
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -2, ptr %ret, align 4
  br label %LBL_RET

if.end9:                                          ; preds = %if.end
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %size.addr, align 4
  %cmp10 = icmp slt i32 %7, %8
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %temp, align 8
  %10 = load ptr, ptr %ele, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8, ptr %10, i64 %idxprom
  %12 = load i32, ptr %esize.addr, align 4
  %conv12 = sext i32 %12 to i64
  %13 = load ptr, ptr %temp, align 8
  %14 = call i64 @llvm.objectsize.i64.p0(ptr %13, i1 false, i1 true, i1 false)
  %call13 = call ptr @__memcpy_chk(ptr noundef %9, ptr noundef %arrayidx, i64 noundef %conv12, i64 noundef %14) #6
  %15 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %15, 1
  store i32 %sub, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %16 = load i32, ptr %j, align 4
  %cmp14 = icmp sge i32 %16, 0
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %17 = load ptr, ptr %compare.addr, align 8
  %18 = load ptr, ptr %temp, align 8
  %19 = load ptr, ptr %ele, align 8
  %20 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %19, i64 %idxprom16
  %call18 = call i32 %17(ptr noundef %18, ptr noundef %arrayidx17)
  %cmp19 = icmp slt i32 0, %call18
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load ptr, ptr %ele, align 8
  %23 = load i32, ptr %j, align 4
  %add = add nsw i32 %23, 1
  %idxprom21 = sext i32 %add to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %22, i64 %idxprom21
  %24 = load ptr, ptr %ele, align 8
  %25 = load i32, ptr %j, align 4
  %idxprom23 = sext i32 %25 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %24, i64 %idxprom23
  %26 = load i32, ptr %esize.addr, align 4
  %conv25 = sext i32 %26 to i64
  %27 = load ptr, ptr %ele, align 8
  %28 = load i32, ptr %j, align 4
  %add26 = add nsw i32 %28, 1
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %27, i64 %idxprom27
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx28, i1 false, i1 true, i1 false)
  %call29 = call ptr @__memcpy_chk(ptr noundef %arrayidx22, ptr noundef %arrayidx24, i64 noundef %conv25, i64 noundef %29) #6
  %30 = load i32, ptr %j, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %31 = load i32, ptr %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %j, align 4
  %32 = load ptr, ptr %ele, align 8
  %33 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %33 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %32, i64 %idxprom30
  %34 = load ptr, ptr %temp, align 8
  %35 = load i32, ptr %esize.addr, align 4
  %conv32 = sext i32 %35 to i64
  %36 = load ptr, ptr %ele, align 8
  %37 = load i32, ptr %j, align 4
  %idxprom33 = sext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %36, i64 %idxprom33
  %38 = call i64 @llvm.objectsize.i64.p0(ptr %arrayidx34, i1 false, i1 true, i1 false)
  %call35 = call ptr @__memcpy_chk(ptr noundef %arrayidx31, ptr noundef %34, i64 noundef %conv32, i64 noundef %38) #6
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %39 = load i32, ptr %i, align 4
  %inc36 = add nsw i32 %39, 1
  store i32 %inc36, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %40 = load ptr, ptr %temp, align 8
  call void @free(ptr noundef %40)
  store i32 0, ptr %ret, align 4
  br label %LBL_RET

LBL_RET:                                          ; preds = %for.end, %if.then8, %if.then
  %41 = load i32, ptr %ret, align 4
  ret i32 %41
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @compare_char(ptr noundef %key1, ptr noundef %key2) #0 {
entry:
  %retval = alloca i32, align 4
  %key1.addr = alloca ptr, align 8
  %key2.addr = alloca ptr, align 8
  store ptr %key1, ptr %key1.addr, align 8
  store ptr %key2, ptr %key2.addr, align 8
  %0 = load ptr, ptr %key1.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load ptr, ptr %key2.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %key1.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load ptr, ptr %key2.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp slt i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i32 -1, ptr %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else8, %if.then7, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %4)
  %5 = load ptr, ptr %argv.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %5, i64 %idxprom1
  %7 = load ptr, ptr %arrayidx2, align 8
  %8 = load ptr, ptr %argv.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %8, i64 %idxprom3
  %10 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i64 @strlen(ptr noundef %10) #6
  %conv = trunc i64 %call5 to i32
  %call6 = call i32 @issort(ptr noundef %7, i32 noundef %conv, i32 noundef 1, ptr noundef @compare_char)
  %11 = load ptr, ptr %argv.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %11, i64 %idxprom7
  %13 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %13)
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

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
