; ModuleID = './code/129-6068longest_collatz_sequence.c'
source_filename = "./code/129-6068longest_collatz_sequence.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [35 x i8] c"129-6068longest_collatz_sequence.c\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"9 == longest_collatz_sequence(13)\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"871 == longest_collatz_sequence(1000)\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"6171 == longest_collatz_sequence(10000)\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"77031 == longest_collatz_sequence(100000)\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"837799 == longest_collatz_sequence(1000000)\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @next_collatz_sequence(i64 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %rem = urem i64 %0, 2
  %cmp = icmp eq i64 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8
  %div = udiv i64 %1, 2
  store i64 %div, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %n.addr, align 8
  %mul = mul i64 3, %2
  %add = add i64 %mul, 1
  store i64 %add, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @collatz_sequence(i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %num_sequence = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  store i32 1, ptr %num_sequence, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %n.addr, align 8
  %cmp = icmp ugt i64 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %num_sequence, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %num_sequence, align 4
  %2 = load i64, ptr %n.addr, align 8
  %call = call i64 @next_collatz_sequence(i64 noundef %2)
  store i64 %call, ptr %n.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %3 = load i32, ptr %num_sequence, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @longest_collatz_sequence(i64 noundef %limit) #0 {
entry:
  %limit.addr = alloca i64, align 8
  %sequence = alloca i32, align 4
  %largest = alloca i32, align 4
  %num = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %limit, ptr %limit.addr, align 8
  store i32 0, ptr %largest, align 4
  %0 = load i64, ptr %limit.addr, align 8
  store i64 %0, ptr %num, align 8
  %1 = load i64, ptr %limit.addr, align 8
  %div = udiv i64 %1, 2
  store i64 %div, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8
  %3 = load i64, ptr %limit.addr, align 8
  %cmp = icmp ule i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %i, align 8
  %call = call i32 @collatz_sequence(i64 noundef %4)
  store i32 %call, ptr %sequence, align 4
  %5 = load i32, ptr %sequence, align 4
  %6 = load i32, ptr %largest, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i64, ptr %i, align 8
  store i64 %7, ptr %num, align 8
  %8 = load i32, ptr %sequence, align 4
  store i32 %8, ptr %largest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, ptr %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %10 = load i64, ptr %num, align 8
  ret i64 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @longest_collatz_sequence(i64 noundef 13)
  %cmp = icmp eq i64 9, %call
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 49, ptr noundef @.str.1) #2
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %call1 = call i64 @longest_collatz_sequence(i64 noundef 1000)
  %cmp2 = icmp eq i64 871, %call1
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 50, ptr noundef @.str.2) #2
  unreachable

1:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %1
  %call11 = call i64 @longest_collatz_sequence(i64 noundef 10000)
  %cmp12 = icmp eq i64 6171, %call11
  %lnot14 = xor i1 %cmp12, true
  %lnot.ext15 = zext i1 %lnot14 to i32
  %conv16 = sext i32 %lnot.ext15 to i64
  %tobool17 = icmp ne i64 %conv16, 0
  br i1 %tobool17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end10
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 51, ptr noundef @.str.3) #2
  unreachable

2:                                                ; No predecessors!
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end10
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %2
  %call21 = call i64 @longest_collatz_sequence(i64 noundef 100000)
  %cmp22 = icmp eq i64 77031, %call21
  %lnot24 = xor i1 %cmp22, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %conv26 = sext i32 %lnot.ext25 to i64
  %tobool27 = icmp ne i64 %conv26, 0
  br i1 %tobool27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end20
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 52, ptr noundef @.str.4) #2
  unreachable

3:                                                ; No predecessors!
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end20
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %3
  %call31 = call i64 @longest_collatz_sequence(i64 noundef 1000000)
  %cmp32 = icmp eq i64 837799, %call31
  %lnot34 = xor i1 %cmp32, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %conv36 = sext i32 %lnot.ext35 to i64
  %tobool37 = icmp ne i64 %conv36, 0
  br i1 %tobool37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %cond.end30
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 53, ptr noundef @.str.5) #2
  unreachable

4:                                                ; No predecessors!
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end30
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %4
  ret i32 0
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn }

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
