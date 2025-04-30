; ModuleID = './code/129-31934exce14.c'
source_filename = "./code/129-31934exce14.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @intToStr(i32 noundef %value, ptr noundef %result) #0 {
entry:
  %value.addr = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %intString = alloca [81 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %value, ptr %value.addr, align 4
  store ptr %result, ptr %result.addr, align 8
  store i32 0, ptr %j, align 4
  %0 = load i32, ptr %value.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %result.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  store i8 45, ptr %arrayidx, align 1
  %2 = load i32, ptr %value.addr, align 4
  %sub = sub nsw i32 0, %2
  store i32 %sub, ptr %value.addr, align 4
  store i32 1, ptr %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load i32, ptr %value.addr, align 4
  %rem = srem i32 %3, 10
  %conv = trunc i32 %rem to i8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds [81 x i8], ptr %intString, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx1, align 1
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  %6 = load i32, ptr %value.addr, align 4
  %div = sdiv i32 %6, 10
  store i32 %div, ptr %value.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i32, ptr %value.addr, align 4
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  %8 = load i32, ptr %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %9 = load i32, ptr %i, align 4
  %cmp4 = icmp sge i32 %9, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [81 x i8], ptr %intString, i64 0, i64 %idxprom6
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %11 to i32
  %add = add nsw i32 %conv8, 48
  %conv9 = trunc i32 %add to i8
  %12 = load ptr, ptr %result.addr, align 8
  %13 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %12, i64 %idxprom10
  store i8 %conv9, ptr %arrayidx11, align 1
  %14 = load i32, ptr %j, align 4
  %inc12 = add nsw i32 %14, 1
  store i32 %inc12, ptr %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %dec13 = add nsw i32 %15, -1
  store i32 %dec13, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %result.addr, align 8
  %17 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %16, i64 %idxprom14
  store i8 0, ptr %arrayidx15, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %result = alloca [81 x i8], align 1
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [81 x i8], ptr %result, i64 0, i64 0
  call void @intToStr(i32 noundef -867, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [81 x i8], ptr %result, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay1)
  ret i32 0
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
