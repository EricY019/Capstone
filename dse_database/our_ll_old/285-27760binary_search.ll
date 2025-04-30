; ModuleID = './code/285-27760binary_search.c'
source_filename = "./code/285-27760binary_search.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.test = private unnamed_addr constant [6 x i32] [i32 -1, i32 0, i32 3, i32 5, i32 9, i32 12], align 4
@.str = private unnamed_addr constant [21 x i8] c"possible index = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @search(ptr noundef %nums, i32 noundef %numsSize, i32 noundef %target) #0 {
entry:
  %retval = alloca i32, align 4
  %nums.addr = alloca ptr, align 8
  %numsSize.addr = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %begin = alloca i32, align 4
  %end = alloca i32, align 4
  %half = alloca i32, align 4
  store ptr %nums, ptr %nums.addr, align 8
  store i32 %numsSize, ptr %numsSize.addr, align 4
  store i32 %target, ptr %target.addr, align 4
  %0 = load i32, ptr %target.addr, align 4
  %1 = load ptr, ptr %nums.addr, align 8
  %2 = load i32, ptr %numsSize.addr, align 4
  %sub = sub nsw i32 %2, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %cmp = icmp sgt i32 %0, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, ptr %target.addr, align 4
  %5 = load ptr, ptr %nums.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %5, i64 0
  %6 = load i32, ptr %arrayidx1, align 4
  %cmp2 = icmp slt i32 %4, %6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 -1, ptr %begin, align 4
  %7 = load i32, ptr %numsSize.addr, align 4
  store i32 %7, ptr %end, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %if.end
  %8 = load i32, ptr %begin, align 4
  %9 = load i32, ptr %end, align 4
  %sub3 = sub nsw i32 %9, 1
  %cmp4 = icmp slt i32 %8, %sub3
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, ptr %begin, align 4
  %11 = load i32, ptr %end, align 4
  %add = add nsw i32 %10, %11
  %div = sdiv i32 %add, 2
  store i32 %div, ptr %half, align 4
  %12 = load ptr, ptr %nums.addr, align 8
  %13 = load i32, ptr %half, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %12, i64 %idxprom5
  %14 = load i32, ptr %arrayidx6, align 4
  %15 = load i32, ptr %target.addr, align 4
  %cmp7 = icmp slt i32 %14, %15
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.body
  %16 = load i32, ptr %half, align 4
  store i32 %16, ptr %begin, align 4
  br label %if.end9

if.else:                                          ; preds = %while.body
  %17 = load i32, ptr %half, align 4
  store i32 %17, ptr %end, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %nums.addr, align 8
  %19 = load i32, ptr %end, align 4
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %18, i64 %idxprom10
  %20 = load i32, ptr %arrayidx11, align 4
  %21 = load i32, ptr %target.addr, align 4
  %cmp12 = icmp eq i32 %20, %21
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %while.end
  %22 = load i32, ptr %end, align 4
  store i32 %22, ptr %retval, align 4
  br label %return

if.else14:                                        ; preds = %while.end
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else14, %if.then13, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %test = alloca [6 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %test, ptr align 4 @__const.main.test, i64 24, i1 false)
  %arraydecay = getelementptr inbounds [6 x i32], ptr %test, i64 0, i64 0
  %call = call i32 @search(ptr noundef %arraydecay, i32 noundef 6, i32 noundef 2)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  %arraydecay2 = getelementptr inbounds [6 x i32], ptr %test, i64 0, i64 0
  %call3 = call i32 @search(ptr noundef %arraydecay2, i32 noundef 6, i32 noundef 9)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call3)
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
