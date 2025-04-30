; ModuleID = './code/214-3322reverse_number.c'
source_filename = "./code/214-3322reverse_number.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.OriginalNumber = private unnamed_addr constant [5 x i32] [i32 5170984, i32 406567, i32 368750, i32 2369510, i32 2183293], align 4
@.str = private unnamed_addr constant [20 x i8] c"%6.3d       % 7.3d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%6.3d      % 7.3d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @ReverseNumbers(i32 noundef %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %reverseNum = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  store i32 0, ptr %reverseNum, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %num.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %reverseNum, align 4
  %mul = mul nsw i32 %1, 10
  %2 = load i32, ptr %num.addr, align 4
  %rem = srem i32 %2, 10
  %add = add nsw i32 %mul, %rem
  store i32 %add, ptr %reverseNum, align 4
  %3 = load i32, ptr %num.addr, align 4
  %div = sdiv i32 %3, 10
  store i32 %div, ptr %num.addr, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %4 = load i32, ptr %reverseNum, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %OriginalNumber = alloca [5 x i32], align 4
  %ReverseNumber = alloca i32, align 4
  %br = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %OriginalNumber, ptr align 4 @__const.main.OriginalNumber, i64 20, i1 false)
  store i32 0, ptr %br, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %br, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %br, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr %OriginalNumber, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call = call i32 @ReverseNumbers(i32 noundef %2)
  store i32 %call, ptr %ReverseNumber, align 4
  %3 = load i32, ptr %br, align 4
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %br, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [5 x i32], ptr %OriginalNumber, i64 0, i64 %idxprom2
  %5 = load i32, ptr %arrayidx3, align 4
  %6 = load i32, ptr %ReverseNumber, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5, i32 noundef %6)
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load i32, ptr %br, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [5 x i32], ptr %OriginalNumber, i64 0, i64 %idxprom5
  %8 = load i32, ptr %arrayidx6, align 4
  %9 = load i32, ptr %ReverseNumber, align 4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %br, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %br, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
