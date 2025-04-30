; ModuleID = './code/227-17609test_perfect_hash.c'
source_filename = "./code/227-17609test_perfect_hash.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.num_table = private unnamed_addr constant [11 x i32] [i32 10, i32 100, i32 32, i32 45, i32 58, i32 126, i32 3, i32 29, i32 200, i32 400, i32 0], align 4
@.str = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @hash(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  switch i32 %0, label %sw.default [
    i32 10, label %sw.bb
    i32 100, label %sw.bb1
    i32 32, label %sw.bb2
    i32 45, label %sw.bb3
    i32 58, label %sw.bb4
    i32 126, label %sw.bb5
    i32 3, label %sw.bb6
    i32 29, label %sw.bb7
    i32 200, label %sw.bb8
    i32 400, label %sw.bb9
    i32 0, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 2, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 3, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 4, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 5, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 6, ptr %retval, align 4
  br label %return

sw.bb7:                                           ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

sw.bb8:                                           ; preds = %entry
  store i32 8, ptr %retval, align 4
  br label %return

sw.bb9:                                           ; preds = %entry
  store i32 9, ptr %retval, align 4
  br label %return

sw.bb10:                                          ; preds = %entry
  store i32 10, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @perfect_hash(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %xor = xor i32 %0, 28
  %rem = srem i32 %xor, 13
  ret i32 %rem
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @search_table(i32 noundef %n, ptr noundef %num_table, i32 noundef %num) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %num_table.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %num_table, ptr %num_table.addr, align 8
  store i32 %num, ptr %num.addr, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %num_table.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp eq i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num_table = alloca [11 x i32], align 4
  %i = alloca i32, align 4
  %num = alloca i32, align 4
  %val = alloca i32, align 4
  %val6 = alloca i32, align 4
  %val18 = alloca i32, align 4
  %val31 = alloca i32, align 4
  %times = alloca i32, align 4
  %val46 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %num_table, ptr align 4 @__const.main.num_table, i64 44, i1 false)
  store i32 0, ptr %i, align 4
  store i32 11, ptr %num, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %num, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [11 x i32], ptr %num_table, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %call = call i32 @hash(i32 noundef %3)
  store i32 %call, ptr %val, align 4
  %4 = load i32, ptr %val, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %for.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %num, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body5, label %for.end13

for.body5:                                        ; preds = %for.cond3
  %8 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [11 x i32], ptr %num_table, i64 0, i64 %idxprom7
  %9 = load i32, ptr %arrayidx8, align 4
  %call9 = call i32 @perfect_hash(i32 noundef %9)
  store i32 %call9, ptr %val6, align 4
  %10 = load i32, ptr %val6, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body5
  %11 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond3, !llvm.loop !8

for.end13:                                        ; preds = %for.cond3
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc24, %for.end13
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %num, align 4
  %cmp16 = icmp slt i32 %12, %13
  br i1 %cmp16, label %for.body17, label %for.end26

for.body17:                                       ; preds = %for.cond15
  %14 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %14 to i64
  %arrayidx20 = getelementptr inbounds [11 x i32], ptr %num_table, i64 0, i64 %idxprom19
  %15 = load i32, ptr %arrayidx20, align 4
  %shl = shl i32 %15, 2
  %16 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [11 x i32], ptr %num_table, i64 0, i64 %idxprom21
  %17 = load i32, ptr %arrayidx22, align 4
  %shr = ashr i32 %17, 2
  %xor = xor i32 %shl, %shr
  %and = and i32 %xor, 15
  store i32 %and, ptr %val18, align 4
  %18 = load i32, ptr %val18, align 4
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %18)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body17
  %19 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, ptr %i, align 4
  br label %for.cond15, !llvm.loop !9

for.end26:                                        ; preds = %for.cond15
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc36, %for.end26
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %num, align 4
  %cmp29 = icmp slt i32 %20, %21
  br i1 %cmp29, label %for.body30, label %for.end38

for.body30:                                       ; preds = %for.cond28
  %22 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %22 to i64
  %arrayidx33 = getelementptr inbounds [11 x i32], ptr %num_table, i64 0, i64 %idxprom32
  %23 = load i32, ptr %arrayidx33, align 4
  %arraydecay = getelementptr inbounds [11 x i32], ptr %num_table, i64 0, i64 0
  %24 = load i32, ptr %num, align 4
  %call34 = call i32 @search_table(i32 noundef %23, ptr noundef %arraydecay, i32 noundef %24)
  store i32 %call34, ptr %val31, align 4
  %25 = load i32, ptr %val31, align 4
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %25)
  br label %for.inc36

for.inc36:                                        ; preds = %for.body30
  %26 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %26, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond28, !llvm.loop !10

for.end38:                                        ; preds = %for.cond28
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %times, align 4
  store i32 0, ptr %times, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc53, %for.end38
  %27 = load i32, ptr %times, align 4
  %cmp41 = icmp slt i32 %27, 10000000
  br i1 %cmp41, label %for.body42, label %for.end55

for.body42:                                       ; preds = %for.cond40
  store i32 0, ptr %i, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc50, %for.body42
  %28 = load i32, ptr %i, align 4
  %29 = load i32, ptr %num, align 4
  %cmp44 = icmp slt i32 %28, %29
  br i1 %cmp44, label %for.body45, label %for.end52

for.body45:                                       ; preds = %for.cond43
  %30 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %30 to i64
  %arrayidx48 = getelementptr inbounds [11 x i32], ptr %num_table, i64 0, i64 %idxprom47
  %31 = load i32, ptr %arrayidx48, align 4
  %call49 = call i32 @hash(i32 noundef %31)
  store i32 %call49, ptr %val46, align 4
  br label %for.inc50

for.inc50:                                        ; preds = %for.body45
  %32 = load i32, ptr %i, align 4
  %inc51 = add nsw i32 %32, 1
  store i32 %inc51, ptr %i, align 4
  br label %for.cond43, !llvm.loop !11

for.end52:                                        ; preds = %for.cond43
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %33 = load i32, ptr %times, align 4
  %inc54 = add nsw i32 %33, 1
  store i32 %inc54, ptr %times, align 4
  br label %for.cond40, !llvm.loop !12

for.end55:                                        ; preds = %for.cond40
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
