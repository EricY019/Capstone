; ModuleID = './code/070-32825array_pointer.c'
source_filename = "./code/070-32825array_pointer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [27 x i8] c"array_pointer[%d][%d]: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @create_int_array(i32 noundef %len, i32 noundef %multiplier) #0 {
entry:
  %retval = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %multiplier.addr = alloca i32, align 4
  %a = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %len, ptr %len.addr, align 4
  store i32 %multiplier, ptr %multiplier.addr, align 4
  %0 = load i32, ptr %len.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %a, align 8
  %1 = load ptr, ptr %a, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %a, align 8
  store ptr %2, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %len.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %multiplier.addr, align 4
  %mul4 = mul nsw i32 %5, %6
  %7 = load ptr, ptr %a, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  store i32 %mul4, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %a, align 8
  store ptr %10, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load ptr, ptr %retval, align 8
  ret ptr %11
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array_len = alloca i32, align 4
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %c = alloca ptr, align 8
  %array_pointer = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 10, ptr %array_len, align 4
  %0 = load i32, ptr %array_len, align 4
  %call = call ptr @create_int_array(i32 noundef %0, i32 noundef 10)
  store ptr %call, ptr %a, align 8
  %1 = load i32, ptr %array_len, align 4
  %call1 = call ptr @create_int_array(i32 noundef %1, i32 noundef 100)
  store ptr %call1, ptr %b, align 8
  %2 = load i32, ptr %array_len, align 4
  %call2 = call ptr @create_int_array(i32 noundef %2, i32 noundef 1000)
  store ptr %call2, ptr %c, align 8
  %call3 = call ptr @malloc(i64 noundef 24) #3
  store ptr %call3, ptr %array_pointer, align 8
  %3 = load ptr, ptr %a, align 8
  %4 = load ptr, ptr %array_pointer, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 0
  store ptr %3, ptr %arrayidx, align 8
  %5 = load ptr, ptr %b, align 8
  %6 = load ptr, ptr %array_pointer, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %6, i64 1
  store ptr %5, ptr %arrayidx4, align 8
  %7 = load ptr, ptr %c, align 8
  %8 = load ptr, ptr %array_pointer, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %8, i64 2
  store ptr %7, ptr %arrayidx5, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %9 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %9, 3
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %10 = load i32, ptr %j, align 4
  %11 = load i32, ptr %array_len, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %j, align 4
  %14 = load ptr, ptr %array_pointer, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %14, i64 %idxprom
  %16 = load ptr, ptr %arrayidx9, align 8
  %17 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %16, i64 %idxprom10
  %18 = load i32, ptr %arrayidx11, align 4
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12, i32 noundef %13, i32 noundef %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %19 = load i32, ptr %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond6, !llvm.loop !7

for.end:                                          ; preds = %for.cond6
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %20 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %20, 1
  store i32 %inc14, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end15:                                        ; preds = %for.cond
  %21 = load ptr, ptr %array_pointer, align 8
  call void @free(ptr noundef %21)
  %22 = load ptr, ptr %a, align 8
  call void @free(ptr noundef %22)
  %23 = load ptr, ptr %b, align 8
  call void @free(ptr noundef %23)
  %24 = load ptr, ptr %c, align 8
  call void @free(ptr noundef %24)
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
!8 = distinct !{!8, !6}
