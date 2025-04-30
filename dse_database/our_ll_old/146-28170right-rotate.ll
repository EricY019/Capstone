; ModuleID = './code/146-28170right-rotate.c'
source_filename = "./code/146-28170right-rotate.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [29 x i8] c"the bit string of ~0 is %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"the bit string of a is %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"the bit string of b is %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"rightrot(a, 3) is: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @getbitstr(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %cursor = alloca i32, align 4
  %length = alloca i32, align 4
  %bits = alloca ptr, align 8
  store i32 %x, ptr %x.addr, align 4
  %call = call ptr @malloc(i64 noundef 64) #3
  store ptr %call, ptr %bits, align 8
  store i32 31, ptr %length, align 4
  store i32 0, ptr %cursor, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cursor, align 4
  %1 = load i32, ptr %length, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %length, align 4
  %4 = load i32, ptr %cursor, align 4
  %sub = sub nsw i32 %3, %4
  %shl = shl i32 1, %sub
  %and = and i32 %2, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %bits, align 8
  %6 = load i32, ptr %cursor, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  store i8 49, ptr %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load ptr, ptr %bits, align 8
  %8 = load i32, ptr %cursor, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %7, i64 %idxprom1
  store i8 48, ptr %arrayidx2, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %cursor, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %cursor, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %bits, align 8
  %11 = load i32, ptr %cursor, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %10, i64 %idxprom3
  store i8 0, ptr %arrayidx4, align 1
  %12 = load ptr, ptr %bits, align 8
  ret ptr %12
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @rightrot(i32 noundef %x, i32 noundef %n) #0 {
entry:
  %x.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %shl = shl i32 -1, %0
  %1 = load i32, ptr %x.addr, align 4
  %or = or i32 %shl, %1
  %2 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %2 to i64
  %sub = sub i64 32, %conv
  %sh_prom = trunc i64 %sub to i32
  %shl1 = shl i32 %or, %sh_prom
  %3 = load i32, ptr %x.addr, align 4
  %4 = load i32, ptr %n.addr, align 4
  %shr = lshr i32 %3, %4
  %or2 = or i32 %shl1, %shr
  ret i32 %or2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @rightrot2(i32 noundef %x, i32 noundef %n) #0 {
entry:
  %x.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %x.addr, align 4
  %and = and i32 %1, 1
  %cmp1 = icmp eq i32 %and, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i32, ptr %x.addr, align 4
  %shr = lshr i32 %2, 1
  %or = or i32 %shr, -2147483648
  store i32 %or, ptr %x.addr, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %3 = load i32, ptr %x.addr, align 4
  %shr2 = lshr i32 %3, 1
  store i32 %shr2, ptr %x.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %n.addr, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %x.addr, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %r = alloca ptr, align 8
  %s = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 85, ptr %a, align 4
  store i32 0, ptr %b, align 4
  %0 = load i32, ptr %a, align 4
  %call = call ptr @getbitstr(i32 noundef %0)
  store ptr %call, ptr %p, align 8
  %call1 = call ptr @getbitstr(i32 noundef -1)
  store ptr %call1, ptr %q, align 8
  %1 = load i32, ptr %b, align 4
  %call2 = call ptr @getbitstr(i32 noundef %1)
  store ptr %call2, ptr %r, align 8
  %2 = load i32, ptr %a, align 4
  %call3 = call i32 @rightrot(i32 noundef %2, i32 noundef 3)
  %call4 = call ptr @getbitstr(i32 noundef %call3)
  store ptr %call4, ptr %s, align 8
  %3 = load ptr, ptr %q, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %3)
  %4 = load ptr, ptr %p, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %4)
  %5 = load ptr, ptr %r, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %5)
  %6 = load ptr, ptr %s, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %6)
  %7 = load ptr, ptr %p, align 8
  call void @free(ptr noundef %7)
  %8 = load ptr, ptr %q, align 8
  call void @free(ptr noundef %8)
  %9 = load ptr, ptr %r, align 8
  call void @free(ptr noundef %9)
  %10 = load ptr, ptr %s, align 8
  call void @free(ptr noundef %10)
  store ptr null, ptr %p, align 8
  store ptr null, ptr %q, align 8
  store ptr null, ptr %r, align 8
  store ptr null, ptr %s, align 8
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

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
