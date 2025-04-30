; ModuleID = './code/291-12759bubble_sort.c'
source_filename = "./code/291-12759bubble_sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %a.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %b.addr, align 8
  %5 = load i32, ptr %4, align 4
  %xor = xor i32 %3, %5
  %6 = load ptr, ptr %a.addr, align 8
  store i32 %xor, ptr %6, align 4
  %7 = load ptr, ptr %a.addr, align 8
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %b.addr, align 8
  %10 = load i32, ptr %9, align 4
  %xor1 = xor i32 %8, %10
  %11 = load ptr, ptr %b.addr, align 8
  store i32 %xor1, ptr %11, align 4
  %12 = load ptr, ptr %a.addr, align 8
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %b.addr, align 8
  %15 = load i32, ptr %14, align 4
  %xor2 = xor i32 %13, %15
  %16 = load ptr, ptr %a.addr, align 8
  store i32 %xor2, ptr %16, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bubble_sort(ptr noundef %a, i32 noundef %length) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %k, align 4
  %3 = load i32, ptr %length.addr, align 4
  %4 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %3, %4
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %a.addr, align 8
  %6 = load i32, ptr %k, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load ptr, ptr %a.addr, align 8
  %9 = load i32, ptr %k, align 4
  %add = add nsw i32 %9, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %8, i64 %idxprom4
  %10 = load i32, ptr %arrayidx5, align 4
  %cmp6 = icmp sgt i32 %7, %10
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %11 = load ptr, ptr %a.addr, align 8
  %12 = load i32, ptr %k, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %11, i64 %idxprom7
  %13 = load ptr, ptr %a.addr, align 8
  %14 = load i32, ptr %k, align 4
  %add9 = add nsw i32 %14, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %13, i64 %idxprom10
  call void @swap(ptr noundef %arrayidx8, ptr noundef %arrayidx11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end14:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %a = alloca [20 x i32], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  %rem = srem i32 %call2, 1000
  %add = add nsw i32 %rem, 0
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %add, ptr %arrayidx, align 4
  %2 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %2 to i64
  %arrayidx4 = getelementptr inbounds [20 x i32], ptr %a, i64 0, i64 %idxprom3
  %3 = load i32, ptr %arrayidx4, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %arraydecay = getelementptr inbounds [20 x i32], ptr %a, i64 0, i64 0
  call void @bubble_sort(ptr noundef %arraydecay, i32 noundef 20)
  store i32 0, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp8 = icmp slt i32 %5, 20
  br i1 %cmp8, label %for.body10, label %for.end16

for.body10:                                       ; preds = %for.cond7
  %6 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %6 to i64
  %arrayidx12 = getelementptr inbounds [20 x i32], ptr %a, i64 0, i64 %idxprom11
  %7 = load i32, ptr %arrayidx12, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body10
  %8 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond7, !llvm.loop !9

for.end16:                                        ; preds = %for.cond7
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
