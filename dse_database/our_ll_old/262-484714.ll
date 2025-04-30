; ModuleID = './code/262-484714.c'
source_filename = "./code/262-484714.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @chain(i32 noundef %i, i64 noundef %num) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %num.addr = alloca i64, align 8
  store i32 %i, ptr %i.addr, align 4
  store i64 %num, ptr %num.addr, align 8
  %0 = load i64, ptr %num.addr, align 8
  %cmp = icmp eq i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %i.addr, align 4
  store i32 %1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %num.addr, align 8
  %rem = srem i64 %2, 2
  %cmp1 = icmp eq i64 %rem, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %i.addr, align 4
  %add = add nsw i32 %3, 1
  %4 = load i64, ptr %num.addr, align 8
  %div = sdiv i64 %4, 2
  %call = call i32 @chain(i32 noundef %add, i64 noundef %div)
  store i32 %call, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %5 = load i32, ptr %i.addr, align 4
  %add4 = add nsw i32 %5, 1
  %6 = load i64, ptr %num.addr, align 8
  %mul = mul nsw i64 %6, 3
  %add5 = add nsw i64 %mul, 1
  %call6 = call i32 @chain(i32 noundef %add4, i64 noundef %add5)
  store i32 %call6, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num = alloca i64, align 8
  %max = alloca i64, align 8
  %maxchain = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i64 0, ptr %max, align 8
  store i64 0, ptr %maxchain, align 8
  store i64 1, ptr %num, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %num, align 8
  %cmp = icmp slt i64 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %num, align 8
  %call = call i32 @chain(i32 noundef 1, i64 noundef %1)
  store i32 %call, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %conv = sext i32 %2 to i64
  %3 = load i64, ptr %maxchain, align 8
  %cmp1 = icmp sgt i64 %conv, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %conv3 = sext i32 %4 to i64
  store i64 %conv3, ptr %maxchain, align 8
  %5 = load i64, ptr %num, align 8
  store i64 %5, ptr %max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i64, ptr %num, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, ptr %num, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %max, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %7)
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
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
