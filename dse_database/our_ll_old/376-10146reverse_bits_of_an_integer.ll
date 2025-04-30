; ModuleID = './code/376-10146reverse_bits_of_an_integer.c'
source_filename = "./code/376-10146reverse_bits_of_an_integer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [38 x i8] c"376-10146reverse_bits_of_an_integer.c\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"0x00000000 == reverse_bits_v1(0x00000000)\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"0x00000000 == reverse_bits_v2(0x00000000)\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"0xaaaaaaaa == reverse_bits_v1(0x55555555)\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"0xaaaaaaaa == reverse_bits_v2(0x55555555)\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"0xf33f0000 == reverse_bits_v1(0x0000fccf)\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"0xf33f0000 == reverse_bits_v2(0x0000fccf)\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"0x88ff0000 == reverse_bits_v1(0x0000ff11)\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"0x88ff0000 == reverse_bits_v2(0x0000ff11)\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @reverse_bits_v1(i32 noundef %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %num_reverse = alloca i32, align 4
  %index = alloca i32, align 4
  %len_in_bits = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  store i32 32, ptr %len_in_bits, align 4
  store i32 0, ptr %num_reverse, align 4
  store i32 0, ptr %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %index, align 4
  %1 = load i32, ptr %len_in_bits, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %num.addr, align 4
  %3 = load i32, ptr %index, align 4
  %shl = shl i32 1, %3
  %and = and i32 %2, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %len_in_bits, align 4
  %5 = load i32, ptr %index, align 4
  %sub = sub nsw i32 %4, %5
  %sub1 = sub nsw i32 %sub, 1
  %shl2 = shl i32 1, %sub1
  %6 = load i32, ptr %num_reverse, align 4
  %or = or i32 %6, %shl2
  store i32 %or, ptr %num_reverse, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %index, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %index, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %num_reverse, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @reverse_bits_v2(i32 noundef %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %num_copy = alloca i32, align 4
  store i32 %num, ptr %num.addr, align 4
  %0 = load i32, ptr %num.addr, align 4
  store i32 %0, ptr %num_copy, align 4
  %1 = load i32, ptr %num_copy, align 4
  %and = and i32 %1, -16777216
  %shr = lshr i32 %and, 24
  %and1 = and i32 %shr, 255
  %2 = load i32, ptr %num_copy, align 4
  %and2 = and i32 %2, 16711680
  %shr3 = ashr i32 %and2, 8
  %and4 = and i32 %shr3, 65280
  %or = or i32 %and1, %and4
  %3 = load i32, ptr %num_copy, align 4
  %and5 = and i32 %3, 65280
  %shl = shl i32 %and5, 8
  %and6 = and i32 %shl, 16711680
  %or7 = or i32 %or, %and6
  %4 = load i32, ptr %num_copy, align 4
  %and8 = and i32 %4, 255
  %shl9 = shl i32 %and8, 24
  %and10 = and i32 %shl9, -16777216
  %or11 = or i32 %or7, %and10
  store i32 %or11, ptr %num_copy, align 4
  %5 = load i32, ptr %num_copy, align 4
  %and12 = and i32 %5, -252645136
  %shr13 = lshr i32 %and12, 4
  %and14 = and i32 %shr13, 252645135
  %6 = load i32, ptr %num_copy, align 4
  %and15 = and i32 %6, 252645135
  %shl16 = shl i32 %and15, 4
  %and17 = and i32 %shl16, -252645136
  %or18 = or i32 %and14, %and17
  store i32 %or18, ptr %num_copy, align 4
  %7 = load i32, ptr %num_copy, align 4
  %and19 = and i32 %7, -858993460
  %shr20 = lshr i32 %and19, 2
  %and21 = and i32 %shr20, 858993459
  %8 = load i32, ptr %num_copy, align 4
  %and22 = and i32 %8, 858993459
  %shl23 = shl i32 %and22, 2
  %and24 = and i32 %shl23, -858993460
  %or25 = or i32 %and21, %and24
  store i32 %or25, ptr %num_copy, align 4
  %9 = load i32, ptr %num_copy, align 4
  %and26 = and i32 %9, -1431655766
  %shr27 = lshr i32 %and26, 1
  %and28 = and i32 %shr27, 1431655765
  %10 = load i32, ptr %num_copy, align 4
  %and29 = and i32 %10, 1431655765
  %shl30 = shl i32 %and29, 1
  %and31 = and i32 %shl30, -1431655766
  %or32 = or i32 %and28, %and31
  store i32 %or32, ptr %num_copy, align 4
  %11 = load i32, ptr %num_copy, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @reverse_bits_v1(i32 noundef 0)
  %cmp = icmp eq i32 0, %call
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 94, ptr noundef @.str.1) #2
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %call1 = call i32 @reverse_bits_v2(i32 noundef 0)
  %cmp2 = icmp eq i32 0, %call1
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 95, ptr noundef @.str.2) #2
  unreachable

1:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %1
  %call11 = call i32 @reverse_bits_v1(i32 noundef 1431655765)
  %cmp12 = icmp eq i32 -1431655766, %call11
  %lnot14 = xor i1 %cmp12, true
  %lnot.ext15 = zext i1 %lnot14 to i32
  %conv16 = sext i32 %lnot.ext15 to i64
  %tobool17 = icmp ne i64 %conv16, 0
  br i1 %tobool17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end10
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 102, ptr noundef @.str.3) #2
  unreachable

2:                                                ; No predecessors!
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end10
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %2
  %call21 = call i32 @reverse_bits_v2(i32 noundef 1431655765)
  %cmp22 = icmp eq i32 -1431655766, %call21
  %lnot24 = xor i1 %cmp22, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %conv26 = sext i32 %lnot.ext25 to i64
  %tobool27 = icmp ne i64 %conv26, 0
  br i1 %tobool27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end20
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 103, ptr noundef @.str.4) #2
  unreachable

3:                                                ; No predecessors!
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end20
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %3
  %call31 = call i32 @reverse_bits_v1(i32 noundef 64719)
  %cmp32 = icmp eq i32 -213975040, %call31
  %lnot34 = xor i1 %cmp32, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %conv36 = sext i32 %lnot.ext35 to i64
  %tobool37 = icmp ne i64 %conv36, 0
  br i1 %tobool37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %cond.end30
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 109, ptr noundef @.str.5) #2
  unreachable

4:                                                ; No predecessors!
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end30
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %4
  %call41 = call i32 @reverse_bits_v2(i32 noundef 64719)
  %cmp42 = icmp eq i32 -213975040, %call41
  %lnot44 = xor i1 %cmp42, true
  %lnot.ext45 = zext i1 %lnot44 to i32
  %conv46 = sext i32 %lnot.ext45 to i64
  %tobool47 = icmp ne i64 %conv46, 0
  br i1 %tobool47, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %cond.end40
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 110, ptr noundef @.str.6) #2
  unreachable

5:                                                ; No predecessors!
  br label %cond.end50

cond.false49:                                     ; preds = %cond.end40
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %5
  %call51 = call i32 @reverse_bits_v1(i32 noundef 65297)
  %cmp52 = icmp eq i32 -1996554240, %call51
  %lnot54 = xor i1 %cmp52, true
  %lnot.ext55 = zext i1 %lnot54 to i32
  %conv56 = sext i32 %lnot.ext55 to i64
  %tobool57 = icmp ne i64 %conv56, 0
  br i1 %tobool57, label %cond.true58, label %cond.false59

cond.true58:                                      ; preds = %cond.end50
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 111, ptr noundef @.str.7) #2
  unreachable

6:                                                ; No predecessors!
  br label %cond.end60

cond.false59:                                     ; preds = %cond.end50
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %6
  %call61 = call i32 @reverse_bits_v2(i32 noundef 65297)
  %cmp62 = icmp eq i32 -1996554240, %call61
  %lnot64 = xor i1 %cmp62, true
  %lnot.ext65 = zext i1 %lnot64 to i32
  %conv66 = sext i32 %lnot.ext65 to i64
  %tobool67 = icmp ne i64 %conv66, 0
  br i1 %tobool67, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %cond.end60
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 112, ptr noundef @.str.8) #2
  unreachable

7:                                                ; No predecessors!
  br label %cond.end70

cond.false69:                                     ; preds = %cond.end60
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false69, %7
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
