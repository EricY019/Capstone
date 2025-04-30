; ModuleID = './code/206-28020knr_3_5.c'
source_filename = "./code/206-28020knr_3_5.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [50 x i8] c"\0A The value of the 10 base number %d in hex is %s\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca [13 x i8], align 1
  %base = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %ret, align 4
  store i32 -31, ptr %n, align 4
  store i32 16, ptr %base, align 4
  %0 = load i32, ptr %n, align 4
  %arraydecay = getelementptr inbounds [13 x i8], ptr %s, i64 0, i64 0
  %1 = load i32, ptr %base, align 4
  call void @itob(i32 noundef %0, ptr noundef %arraydecay, i32 noundef %1)
  %arraydecay1 = getelementptr inbounds [13 x i8], ptr %s, i64 0, i64 0
  call void @reverse(ptr noundef %arraydecay1)
  %2 = load i32, ptr %n, align 4
  %arraydecay2 = getelementptr inbounds [13 x i8], ptr %s, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2, ptr noundef %arraydecay2)
  %3 = load i32, ptr %ret, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @itob(i32 noundef %n, ptr noundef %s, i32 noundef %base) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sign = alloca i32, align 4
  %digit = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %base, ptr %base.addr, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %sign, align 4
  %0 = load i32, ptr %n.addr, align 4
  store i32 %0, ptr %sign, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %n.addr, align 4
  %2 = load i32, ptr %n.addr, align 4
  %3 = load i32, ptr %base.addr, align 4
  %div = sdiv i32 %2, %3
  %4 = load i32, ptr %base.addr, align 4
  %mul = mul nsw i32 %div, %4
  %sub = sub nsw i32 %1, %mul
  %5 = call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %add = add nsw i32 %5, 48
  store i32 %add, ptr %digit, align 4
  %6 = load i32, ptr %digit, align 4
  %cmp = icmp sgt i32 %6, 57
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load i32, ptr %digit, align 4
  %add1 = add nsw i32 %7, 7
  store i32 %add1, ptr %digit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %8 = load i32, ptr %digit, align 4
  %conv = trunc i32 %8 to i8
  %9 = load ptr, ptr %s.addr, align 8
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %11 = load i32, ptr %base.addr, align 4
  %12 = load i32, ptr %n.addr, align 4
  %div2 = sdiv i32 %12, %11
  store i32 %div2, ptr %n.addr, align 4
  %tobool = icmp ne i32 %div2, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  %13 = load i32, ptr %sign, align 4
  %cmp3 = icmp slt i32 %13, 0
  br i1 %cmp3, label %if.then5, label %if.end9

if.then5:                                         ; preds = %do.end
  %14 = load ptr, ptr %s.addr, align 8
  %15 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %15, 1
  store i32 %inc6, ptr %i, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %14, i64 %idxprom7
  store i8 45, ptr %arrayidx8, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %do.end
  %16 = load ptr, ptr %s.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %16, i64 %idxprom10
  store i8 0, ptr %arrayidx11, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverse(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 0, ptr %c, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #4
  %div = udiv i64 %call, 2
  %cmp = icmp ult i64 %conv, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %s.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv2 = sext i8 %4 to i32
  store i32 %conv2, ptr %c, align 4
  %5 = load ptr, ptr %s.addr, align 8
  %6 = load ptr, ptr %s.addr, align 8
  %call3 = call i64 @strlen(ptr noundef %6) #4
  %7 = load i32, ptr %i, align 4
  %conv4 = sext i32 %7 to i64
  %sub = sub i64 %call3, %conv4
  %sub5 = sub i64 %sub, 1
  %arrayidx6 = getelementptr inbounds i8, ptr %5, i64 %sub5
  %8 = load i8, ptr %arrayidx6, align 1
  %9 = load ptr, ptr %s.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %9, i64 %idxprom7
  store i8 %8, ptr %arrayidx8, align 1
  %11 = load i32, ptr %c, align 4
  %conv9 = trunc i32 %11 to i8
  %12 = load ptr, ptr %s.addr, align 8
  %13 = load ptr, ptr %s.addr, align 8
  %call10 = call i64 @strlen(ptr noundef %13) #4
  %14 = load i32, ptr %i, align 4
  %conv11 = sext i32 %14 to i64
  %sub12 = sub i64 %call10, %conv11
  %sub13 = sub i64 %sub12, 1
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 %sub13
  store i8 %conv9, ptr %arrayidx14, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
