; ModuleID = './code/163-6215randomPhoneNumber.c'
source_filename = "./code/163-6215randomPhoneNumber.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.header = private unnamed_addr constant [3 x i32] [i32 13, i32 15, i32 18], align 4
@.str = private unnamed_addr constant [15 x i8] c"\E5\A7\93\E5\90\8D,\E6\89\8B\E6\9C\BA\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\22%lld\22,\22%lld\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %billion = alloca i64, align 8
  %max = alloca i64, align 8
  %header = alloca [3 x i32], align 4
  %num = alloca i64, align 8
  %i = alloca i32, align 4
  %a = alloca i64, align 8
  %number = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 1000000000, ptr %billion, align 8
  store i64 3000, ptr %max, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %header, ptr align 4 @__const.main.header, i64 12, i1 false)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i64 0, ptr %num, align 8
  %call1 = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call1 to i32
  call void @srandom(i32 noundef %conv)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %1 = load i64, ptr %num, align 8
  %2 = load i64, ptr %max, align 8
  %cmp3 = icmp slt i64 %1, %2
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call i64 @random()
  store i64 %call5, ptr %a, align 8
  %3 = load i64, ptr %a, align 8
  %4 = load i64, ptr %billion, align 8
  %cmp6 = icmp sge i64 %3, %4
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i64, ptr %billion, align 8
  %6 = load i64, ptr %a, align 8
  %rem = srem i64 %6, %5
  store i64 %rem, ptr %a, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [3 x i32], ptr %header, i64 0, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %conv8 = sext i32 %8 to i64
  %9 = load i64, ptr %billion, align 8
  %mul = mul nsw i64 %conv8, %9
  %10 = load i64, ptr %a, align 8
  %add = add nsw i64 %mul, %10
  store i64 %add, ptr %number, align 8
  %11 = load i64, ptr %number, align 8
  %12 = load i64, ptr %number, align 8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %11, i64 noundef %12)
  %13 = load i64, ptr %num, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, ptr %num, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  store i64 0, ptr %num, align 8
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %14 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

declare void @srandom(i32 noundef) #2

declare i64 @time(ptr noundef) #2

declare i64 @random() #2

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
