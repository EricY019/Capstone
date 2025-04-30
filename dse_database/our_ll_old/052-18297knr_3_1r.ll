; ModuleID = './code/052-18297knr_3_1r.c'
source_filename = "./code/052-18297knr_3_1r.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [14 x i8] c"malloc issue\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\0A Finding the position of %d in the vertex: \00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\0A\09 The index of %d in v is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"\0A\09The element doesn't exist in v\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %x = alloca i32, align 4
  %v = alloca ptr, align 8
  %location = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %ret, align 4
  store i32 0, ptr %x, align 4
  store ptr null, ptr %v, align 8
  store i32 0, ptr %location, align 4
  store i32 0, ptr %i, align 4
  %call = call ptr @malloc(i64 noundef 1600000000) #3
  store ptr %call, ptr %v, align 8
  %0 = load ptr, ptr %v, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 400000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %mul = mul nsw i32 2, %2
  %add = add nsw i32 %mul, 1
  %3 = load ptr, ptr %v, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  store i32 %add, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %x, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6)
  %7 = load i32, ptr %x, align 4
  %8 = load ptr, ptr %v, align 8
  %call3 = call i32 @binsearch(i32 noundef %7, ptr noundef %8, i32 noundef 400000000)
  store i32 %call3, ptr %location, align 4
  %9 = load i32, ptr %location, align 4
  %cmp4 = icmp sgt i32 %9, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.end
  %10 = load i32, ptr %x, align 4
  %11 = load i32, ptr %location, align 4
  %add6 = add nsw i32 %11, 1
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %10, i32 noundef %add6)
  br label %if.end9

if.else:                                          ; preds = %for.end
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5
  %12 = load ptr, ptr %v, align 8
  call void @free(ptr noundef %12)
  %13 = load i32, ptr %ret, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @binsearch(i32 noundef %x, ptr noundef %v, i32 noundef %n) #0 {
entry:
  %x.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %mid = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 -1, ptr %ret, align 4
  store i32 0, ptr %low, align 4
  store i32 0, ptr %high, align 4
  store i32 0, ptr %mid, align 4
  store i32 0, ptr %low, align 4
  %0 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %high, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, ptr %low, align 4
  %2 = load i32, ptr %high, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %low, align 4
  %4 = load i32, ptr %high, align 4
  %add = add nsw i32 %3, %4
  %div = sdiv i32 %add, 2
  store i32 %div, ptr %mid, align 4
  %5 = load i32, ptr %x.addr, align 4
  %6 = load ptr, ptr %v.addr, align 8
  %7 = load i32, ptr %mid, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, ptr %6, i64 %idxprom
  %8 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp sgt i32 %5, %8
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i32, ptr %mid, align 4
  %add2 = add nsw i32 %9, 1
  store i32 %add2, ptr %low, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %10 = load i32, ptr %mid, align 4
  store i32 %10, ptr %high, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %11 = load i32, ptr %x.addr, align 4
  %12 = load ptr, ptr %v.addr, align 8
  %13 = load i32, ptr %mid, align 4
  %idxprom3 = sext i32 %13 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %12, i64 %idxprom3
  %14 = load i32, ptr %arrayidx4, align 4
  %cmp5 = icmp eq i32 %11, %14
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.end
  %15 = load i32, ptr %mid, align 4
  store i32 %15, ptr %ret, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %while.end
  %16 = load i32, ptr %ret, align 4
  ret i32 %16
}

declare void @free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
