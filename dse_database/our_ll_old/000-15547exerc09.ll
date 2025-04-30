; ModuleID = './code/000-15547exerc09.c'
source_filename = "./code/000-15547exerc09.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"1\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\1B[31m%d \1B[0m\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %bp = alloca ptr, align 8
  %k = alloca i32, align 4
  %tam = alloca i32, align 4
  %i = alloca i32, align 4
  %i6 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %bp, align 8
  store i32 0, ptr %k, align 4
  store i32 1, ptr %tam, align 4
  %call = call ptr @malloc(i64 noundef 80) #3
  store ptr %call, ptr %bp, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %bp, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %bp, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 0
  store i32 1, ptr %arrayidx1, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  %5 = load ptr, ptr %bp, align 8
  %6 = load i32, ptr %tam, align 4
  %inc3 = add nsw i32 %6, 1
  store i32 %inc3, ptr %tam, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %5, i64 %idxprom4
  store i32 1, ptr %arrayidx5, align 4
  %7 = load ptr, ptr %bp, align 8
  %8 = load i32, ptr %tam, align 4
  call void @mostra(ptr noundef %7, i32 noundef %8)
  %9 = load i32, ptr %tam, align 4
  %sub = sub nsw i32 %9, 1
  store i32 %sub, ptr %i6, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc17, %do.body
  %10 = load i32, ptr %i6, align 4
  %cmp8 = icmp sgt i32 %10, 0
  br i1 %cmp8, label %for.body9, label %for.end18

for.body9:                                        ; preds = %for.cond7
  %11 = load ptr, ptr %bp, align 8
  %12 = load i32, ptr %i6, align 4
  %sub10 = sub nsw i32 %12, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %11, i64 %idxprom11
  %13 = load i32, ptr %arrayidx12, align 4
  %14 = load ptr, ptr %bp, align 8
  %15 = load i32, ptr %i6, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %14, i64 %idxprom13
  %16 = load i32, ptr %arrayidx14, align 4
  %add = add nsw i32 %13, %16
  %17 = load ptr, ptr %bp, align 8
  %18 = load i32, ptr %i6, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %17, i64 %idxprom15
  store i32 %add, ptr %arrayidx16, align 4
  br label %for.inc17

for.inc17:                                        ; preds = %for.body9
  %19 = load i32, ptr %i6, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, ptr %i6, align 4
  br label %for.cond7, !llvm.loop !7

for.end18:                                        ; preds = %for.cond7
  %20 = load i32, ptr %k, align 4
  %inc19 = add nsw i32 %20, 1
  store i32 %inc19, ptr %k, align 4
  br label %do.cond

do.cond:                                          ; preds = %for.end18
  %21 = load i32, ptr %k, align 4
  %cmp20 = icmp slt i32 %21, 20
  br i1 %cmp20, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @mostra(ptr noundef %seq, i32 noundef %tam) #0 {
entry:
  %seq.addr = alloca ptr, align 8
  %tam.addr = alloca i32, align 4
  store ptr %seq, ptr %seq.addr, align 8
  store i32 %tam, ptr %tam.addr, align 4
  %0 = load ptr, ptr %seq.addr, align 8
  %1 = load i32, ptr %tam.addr, align 4
  call void @mostrad(ptr noundef %0, i32 noundef -1, i32 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @mostrad(ptr noundef %seq, i32 noundef %destaque, i32 noundef %tam) #0 {
entry:
  %seq.addr = alloca ptr, align 8
  %destaque.addr = alloca i32, align 4
  %tam.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %seq, ptr %seq.addr, align 8
  store i32 %destaque, ptr %destaque.addr, align 4
  store i32 %tam, ptr %tam.addr, align 4
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4
  %1 = load i32, ptr %tam.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x, align 4
  %3 = load i32, ptr %destaque.addr, align 4
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %seq.addr, align 8
  %5 = load i32, ptr %x, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6)
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load ptr, ptr %seq.addr, align 8
  %8 = load i32, ptr %x, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 %idxprom2
  %9 = load i32, ptr %arrayidx3, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %x, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %x, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret void
}

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
!9 = distinct !{!9, !6}
