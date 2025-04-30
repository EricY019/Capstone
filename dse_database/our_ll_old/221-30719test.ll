; ModuleID = './code/221-30719test.c'
source_filename = "./code/221-30719test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %str = alloca [20 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 12345, ptr %i, align 4
  %0 = load i32, ptr %i, align 4
  %arraydecay = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  call void @itoa(i32 noundef %0, ptr noundef %arraydecay, i32 noundef 19)
  %arraydecay1 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay1)
  store i32 -12345, ptr %i, align 4
  %1 = load i32, ptr %i, align 4
  %arraydecay2 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  call void @itoa(i32 noundef %1, ptr noundef %arraydecay2, i32 noundef 19)
  %arraydecay3 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay3)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @itoa(i32 noundef %i, ptr noundef %str, i32 noundef %c) #0 {
entry:
  %i.addr = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %d = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  store ptr %str, ptr %str.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  store i32 %0, ptr %d, align 4
  store i32 0, ptr %flag, align 4
  %1 = load i32, ptr %i.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %flag, align 4
  %2 = load i32, ptr %i.addr, align 4
  %mul = mul nsw i32 %2, -1
  store i32 %mul, ptr %i.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %str.addr, align 8
  %4 = load i32, ptr %c.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %c.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i32, ptr %i.addr, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %i.addr, align 4
  %rem = srem i32 %6, 10
  %add = add nsw i32 %rem, 48
  %conv = trunc i32 %add to i8
  %7 = load ptr, ptr %str.addr, align 8
  %8 = load i32, ptr %c.addr, align 4
  %dec2 = add nsw i32 %8, -1
  store i32 %dec2, ptr %c.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 %idxprom3
  store i8 %conv, ptr %arrayidx4, align 1
  %9 = load i32, ptr %i.addr, align 4
  %div = sdiv i32 %9, 10
  store i32 %div, ptr %i.addr, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %10 = load i32, ptr %flag, align 4
  %cmp5 = icmp eq i32 %10, 1
  br i1 %cmp5, label %if.then7, label %if.end11

if.then7:                                         ; preds = %while.end
  %11 = load ptr, ptr %str.addr, align 8
  %12 = load i32, ptr %c.addr, align 4
  %dec8 = add nsw i32 %12, -1
  store i32 %dec8, ptr %c.addr, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %11, i64 %idxprom9
  store i8 45, ptr %arrayidx10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %while.end
  %13 = load i32, ptr %c.addr, align 4
  %14 = load i32, ptr %d, align 4
  %sub = sub nsw i32 %14, %13
  store i32 %sub, ptr %d, align 4
  br label %while.cond12

while.cond12:                                     ; preds = %while.body14, %if.end11
  %15 = load i32, ptr %d, align 4
  %dec13 = add nsw i32 %15, -1
  store i32 %dec13, ptr %d, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %while.body14, label %while.end21

while.body14:                                     ; preds = %while.cond12
  %16 = load ptr, ptr %str.addr, align 8
  %17 = load i32, ptr %i.addr, align 4
  %18 = load i32, ptr %c.addr, align 4
  %add15 = add nsw i32 %17, %18
  %add16 = add nsw i32 %add15, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr %16, i64 %idxprom17
  %19 = load i8, ptr %arrayidx18, align 1
  %20 = load ptr, ptr %str.addr, align 8
  %21 = load i32, ptr %i.addr, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i.addr, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %20, i64 %idxprom19
  store i8 %19, ptr %arrayidx20, align 1
  br label %while.cond12, !llvm.loop !7

while.end21:                                      ; preds = %while.cond12
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
