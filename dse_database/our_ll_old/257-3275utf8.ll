; ModuleID = './code/257-3275utf8.c'
source_filename = "./code/257-3275utf8.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"%04x:\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" %c%c\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" %c%c%c\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca i32, align 4
  %b0 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %sum47 = alloca i32, align 4
  %b049 = alloca i32, align 4
  %b152 = alloca i32, align 4
  %b2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 32, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %k, align 4
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %k, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %2, 16
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %k, align 4
  %4 = load i32, ptr %j, align 4
  %add = add nsw i32 %3, %4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %6 = load i32, ptr %k, align 4
  %add7 = add nsw i32 %6, 16
  store i32 %add7, ptr %k, align 4
  br label %for.cond, !llvm.loop !7

for.end8:                                         ; preds = %for.cond
  store i32 128, ptr %k, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc25, %for.end8
  %7 = load i32, ptr %k, align 4
  %cmp10 = icmp slt i32 %7, 2048
  br i1 %cmp10, label %for.body11, label %for.end27

for.body11:                                       ; preds = %for.cond9
  %8 = load i32, ptr %k, align 4
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
  store i32 0, ptr %j, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.body11
  %9 = load i32, ptr %j, align 4
  %cmp14 = icmp slt i32 %9, 16
  br i1 %cmp14, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond13
  %10 = load i32, ptr %k, align 4
  %11 = load i32, ptr %j, align 4
  %add16 = add nsw i32 %10, %11
  store i32 %add16, ptr %sum, align 4
  %12 = load i32, ptr %sum, align 4
  %and = and i32 %12, 63
  %add17 = add nsw i32 128, %and
  store i32 %add17, ptr %b0, align 4
  %13 = load i32, ptr %sum, align 4
  %and18 = and i32 %13, 1984
  %shr = ashr i32 %and18, 6
  %add19 = add nsw i32 192, %shr
  store i32 %add19, ptr %b1, align 4
  %14 = load i32, ptr %b1, align 4
  %15 = load i32, ptr %b0, align 4
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %14, i32 noundef %15)
  br label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %16 = load i32, ptr %j, align 4
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, ptr %j, align 4
  br label %for.cond13, !llvm.loop !8

for.end23:                                        ; preds = %for.cond13
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc25

for.inc25:                                        ; preds = %for.end23
  %17 = load i32, ptr %k, align 4
  %add26 = add nsw i32 %17, 16
  store i32 %add26, ptr %k, align 4
  br label %for.cond9, !llvm.loop !9

for.end27:                                        ; preds = %for.cond9
  store i32 2048, ptr %k, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc64, %for.end27
  %18 = load i32, ptr %k, align 4
  %cmp29 = icmp slt i32 %18, 65536
  br i1 %cmp29, label %for.body30, label %for.end66

for.body30:                                       ; preds = %for.cond28
  %19 = load i32, ptr %k, align 4
  %cmp31 = icmp sge i32 %19, 55200
  br i1 %cmp31, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body30
  %20 = load i32, ptr %k, align 4
  %cmp32 = icmp slt i32 %20, 57344
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc64

if.end:                                           ; preds = %land.lhs.true, %for.body30
  %21 = load i32, ptr %k, align 4
  %cmp33 = icmp sge i32 %21, 64976
  br i1 %cmp33, label %land.lhs.true34, label %if.end37

land.lhs.true34:                                  ; preds = %if.end
  %22 = load i32, ptr %k, align 4
  %cmp35 = icmp slt i32 %22, 65008
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %land.lhs.true34
  br label %for.inc64

if.end37:                                         ; preds = %land.lhs.true34, %if.end
  %23 = load i32, ptr %k, align 4
  %cmp38 = icmp sge i32 %23, 65520
  br i1 %cmp38, label %land.lhs.true39, label %if.end42

land.lhs.true39:                                  ; preds = %if.end37
  %24 = load i32, ptr %k, align 4
  %cmp40 = icmp slt i32 %24, 65536
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %land.lhs.true39
  br label %for.inc64

if.end42:                                         ; preds = %land.lhs.true39, %if.end37
  %25 = load i32, ptr %k, align 4
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %25)
  store i32 0, ptr %j, align 4
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc60, %if.end42
  %26 = load i32, ptr %j, align 4
  %cmp45 = icmp slt i32 %26, 16
  br i1 %cmp45, label %for.body46, label %for.end62

for.body46:                                       ; preds = %for.cond44
  %27 = load i32, ptr %k, align 4
  %28 = load i32, ptr %j, align 4
  %add48 = add nsw i32 %27, %28
  store i32 %add48, ptr %sum47, align 4
  %29 = load i32, ptr %sum47, align 4
  %and50 = and i32 %29, 63
  %add51 = add nsw i32 128, %and50
  store i32 %add51, ptr %b049, align 4
  %30 = load i32, ptr %sum47, align 4
  %and53 = and i32 %30, 4032
  %shr54 = ashr i32 %and53, 6
  %add55 = add nsw i32 128, %shr54
  store i32 %add55, ptr %b152, align 4
  %31 = load i32, ptr %sum47, align 4
  %and56 = and i32 %31, 61440
  %shr57 = ashr i32 %and56, 12
  %add58 = add nsw i32 224, %shr57
  store i32 %add58, ptr %b2, align 4
  %32 = load i32, ptr %b2, align 4
  %33 = load i32, ptr %b152, align 4
  %34 = load i32, ptr %b049, align 4
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %32, i32 noundef %33, i32 noundef %34)
  br label %for.inc60

for.inc60:                                        ; preds = %for.body46
  %35 = load i32, ptr %j, align 4
  %inc61 = add nsw i32 %35, 1
  store i32 %inc61, ptr %j, align 4
  br label %for.cond44, !llvm.loop !10

for.end62:                                        ; preds = %for.cond44
  %call63 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc64

for.inc64:                                        ; preds = %for.end62, %if.then41, %if.then36, %if.then
  %36 = load i32, ptr %k, align 4
  %add65 = add nsw i32 %36, 16
  store i32 %add65, ptr %k, align 4
  br label %for.cond28, !llvm.loop !11

for.end66:                                        ; preds = %for.cond28
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
}

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
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
