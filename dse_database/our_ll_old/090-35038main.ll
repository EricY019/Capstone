; ModuleID = './code/090-35038main.c'
source_filename = "./code/090-35038main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"For d = %f, bits are\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"1 23456781234 5678123456781234567812345678123456781234567812345678\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"1        2        3       4       5       6       7       8\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @bits_of_double(double noundef %d) #0 {
entry:
  %d.addr = alloca double, align 8
  %byte_count = alloca i64, align 8
  %bytes = alloca ptr, align 8
  %bits_of_double = alloca ptr, align 8
  %byte = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store double %d, ptr %d.addr, align 8
  store i64 8, ptr %byte_count, align 8
  store ptr %d.addr, ptr %bytes, align 8
  %0 = load i64, ptr %byte_count, align 8
  %mul = mul i64 %0, 8
  %add = add i64 %mul, 1
  %call = call ptr @malloc(i64 noundef %add) #3
  store ptr %call, ptr %bits_of_double, align 8
  %1 = load ptr, ptr %bits_of_double, align 8
  %2 = load i64, ptr %byte_count, align 8
  %mul1 = mul i64 %2, 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %mul1
  store i8 0, ptr %arrayidx, align 1
  %3 = load i64, ptr %byte_count, align 8
  %conv = trunc i64 %3 to i32
  store i32 %conv, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %4 = load i32, ptr %i, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %bytes, align 8
  %6 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %6, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx3, align 1
  store i8 %7, ptr %byte, align 1
  %8 = load i32, ptr %j, align 4
  %add4 = add nsw i32 %8, 8
  store i32 %add4, ptr %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %9 = load i32, ptr %j, align 4
  %10 = load i32, ptr %k, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %11 = load i8, ptr %byte, align 1
  %conv9 = zext i8 %11 to i32
  %and = and i32 %conv9, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body8
  %12 = load ptr, ptr %bits_of_double, align 8
  %13 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %12, i64 %idxprom10
  store i8 49, ptr %arrayidx11, align 1
  br label %if.end

if.else:                                          ; preds = %for.body8
  %14 = load ptr, ptr %bits_of_double, align 8
  %15 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %14, i64 %idxprom12
  store i8 48, ptr %arrayidx13, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load i8, ptr %byte, align 1
  %conv14 = zext i8 %16 to i32
  %shl = shl i32 %conv14, 1
  %conv15 = trunc i32 %shl to i8
  store i8 %conv15, ptr %byte, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond5, !llvm.loop !5

for.end:                                          ; preds = %for.cond5
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %18 = load i32, ptr %i, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end17:                                        ; preds = %for.cond
  %19 = load ptr, ptr %bits_of_double, align 8
  ret ptr %19
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_bits_of_double(ptr noundef %bits) #0 {
entry:
  %bits.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %bits, ptr %bits.addr, align 8
  store i32 -1, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %bits.addr, align 8
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i32, ptr %i, align 4
  %cmp4 = icmp eq i32 %4, 12
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load ptr, ptr %bits.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %5, i64 %idxprom6
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %7 to i32
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv8)
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d = alloca double, align 8
  %bits = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store double 5.432000e+03, ptr %d, align 8
  %0 = load double, ptr %d, align 8
  %call = call ptr @bits_of_double(double noundef %0)
  store ptr %call, ptr %bits, align 8
  %1 = load double, ptr %d, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, double noundef %1)
  %2 = load ptr, ptr %bits, align 8
  call void @print_bits_of_double(ptr noundef %2)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %3 = load ptr, ptr %bits, align 8
  call void @free(ptr noundef %3)
  ret i32 0
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
!8 = distinct !{!8, !6}
