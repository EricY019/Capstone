; ModuleID = './code/049-148351064.c'
source_filename = "./code/049-148351064.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"input.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__stdinp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @count(i32 noundef %a, i32 noundef %b, i32 noundef %c, i32 noundef %d) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  store i32 %d, ptr %d.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %mul = mul nsw i32 1000, %0
  %1 = load i32, ptr %b.addr, align 4
  %mul1 = mul nsw i32 100, %1
  %add = add nsw i32 %mul, %mul1
  %2 = load i32, ptr %c.addr, align 4
  %mul2 = mul nsw i32 10, %2
  %add3 = add nsw i32 %add, %mul2
  %3 = load i32, ptr %d.addr, align 4
  %add4 = add nsw i32 %add3, %3
  ret i32 %add4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr @__stdinp, align 8
  %call = call ptr @"\01_freopen"(ptr noundef @.str, ptr noundef @.str.1, ptr noundef %0)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %2 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %2, 10
  br i1 %cmp2, label %for.body3, label %for.end19

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc14, %for.body3
  %3 = load i32, ptr %k, align 4
  %cmp5 = icmp slt i32 %3, 10
  br i1 %cmp5, label %for.body6, label %for.end16

for.body6:                                        ; preds = %for.cond4
  store i32 0, ptr %m, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %4 = load i32, ptr %m, align 4
  %cmp8 = icmp slt i32 %4, 10
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %j, align 4
  %7 = load i32, ptr %k, align 4
  %8 = load i32, ptr %m, align 4
  %call10 = call i32 @count(i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  store i32 %call10, ptr %t, align 4
  %9 = load i32, ptr %t, align 4
  %mul = mul nsw i32 9, %9
  %10 = load i32, ptr %m, align 4
  %11 = load i32, ptr %k, align 4
  %12 = load i32, ptr %j, align 4
  %13 = load i32, ptr %i, align 4
  %call11 = call i32 @count(i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13)
  %cmp12 = icmp eq i32 %mul, %call11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  %14 = load i32, ptr %t, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %m, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %m, align 4
  br label %for.cond7, !llvm.loop !5

for.end:                                          ; preds = %for.cond7
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %16 = load i32, ptr %k, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, ptr %k, align 4
  br label %for.cond4, !llvm.loop !7

for.end16:                                        ; preds = %for.cond4
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %17 = load i32, ptr %j, align 4
  %inc18 = add nsw i32 %17, 1
  store i32 %inc18, ptr %j, align 4
  br label %for.cond1, !llvm.loop !8

for.end19:                                        ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end19
  %18 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %18, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end22:                                        ; preds = %for.cond
  ret i32 0
}

declare ptr @"\01_freopen"(ptr noundef, ptr noundef, ptr noundef) #1

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
