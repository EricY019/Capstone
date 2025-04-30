; ModuleID = './code/143-6050reverse_number.c'
source_filename = "./code/143-6050reverse_number.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [16 x i8] c"%6d  \09->  \09%6d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @reverse(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %neg = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %res, align 4
  store i32 0, ptr %neg, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %mul = mul nsw i32 %1, -1
  store i32 %mul, ptr %x.addr, align 4
  store i32 1, ptr %neg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, ptr %x.addr, align 4
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %x.addr, align 4
  %rem = srem i32 %3, 10
  %4 = load i32, ptr %res, align 4
  %mul2 = mul nsw i32 %4, 10
  %add = add nsw i32 %rem, %mul2
  store i32 %add, ptr %res, align 4
  %5 = load i32, ptr %x.addr, align 4
  %div = sdiv i32 %5, 10
  store i32 %div, ptr %x.addr, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %neg, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then3, label %if.end5

if.then3:                                         ; preds = %while.end
  %7 = load i32, ptr %res, align 4
  %mul4 = mul nsw i32 %7, -1
  store i32 %mul4, ptr %res, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %while.end
  %8 = load i32, ptr %res, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %c, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  %rem = srem i32 %call2, 100000
  store i32 %rem, ptr %i, align 4
  %call3 = call i32 @rand()
  %cmp4 = icmp slt i32 %call3, 1073741823
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %1 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %1, -1
  store i32 %mul, ptr %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %i, align 4
  %call6 = call i32 @reverse(i32 noundef %3)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2, i32 noundef %call6)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %c, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %c, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

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
