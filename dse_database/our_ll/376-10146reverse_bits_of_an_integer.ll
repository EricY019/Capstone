; ModuleID = 'code/376-10146reverse_bits_of_an_integer.c'
source_filename = "code/376-10146reverse_bits_of_an_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"0x00000000 == reverse_bits_v1(0x00000000)\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"code/376-10146reverse_bits_of_an_integer.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"0x00000000 == reverse_bits_v2(0x00000000)\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"0xaaaaaaaa == reverse_bits_v1(0x55555555)\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"0xaaaaaaaa == reverse_bits_v2(0x55555555)\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"0xf33f0000 == reverse_bits_v1(0x0000fccf)\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"0xf33f0000 == reverse_bits_v2(0x0000fccf)\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"0x88ff0000 == reverse_bits_v1(0x0000ff11)\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"0x88ff0000 == reverse_bits_v2(0x0000ff11)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reverse_bits_v1(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %num_reverse = alloca i32, align 4
  %index = alloca i32, align 4
  %len_in_bits = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 32, i32* %len_in_bits, align 4
  store i32 0, i32* %num_reverse, align 4
  store i32 0, i32* %index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %index, align 4
  %1 = load i32, i32* %len_in_bits, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %num.addr, align 4
  %3 = load i32, i32* %index, align 4
  %shl = shl i32 1, %3
  %and = and i32 %2, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %len_in_bits, align 4
  %5 = load i32, i32* %index, align 4
  %sub = sub nsw i32 %4, %5
  %sub1 = sub nsw i32 %sub, 1
  %shl2 = shl i32 1, %sub1
  %6 = load i32, i32* %num_reverse, align 4
  %or = or i32 %6, %shl2
  store i32 %or, i32* %num_reverse, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %index, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %num_reverse, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reverse_bits_v2(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %num_copy = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* %num.addr, align 4
  store i32 %0, i32* %num_copy, align 4
  %1 = load i32, i32* %num_copy, align 4
  %and = and i32 %1, -16777216
  %shr = lshr i32 %and, 24
  %and1 = and i32 %shr, 255
  %2 = load i32, i32* %num_copy, align 4
  %and2 = and i32 %2, 16711680
  %shr3 = ashr i32 %and2, 8
  %and4 = and i32 %shr3, 65280
  %or = or i32 %and1, %and4
  %3 = load i32, i32* %num_copy, align 4
  %and5 = and i32 %3, 65280
  %shl = shl i32 %and5, 8
  %and6 = and i32 %shl, 16711680
  %or7 = or i32 %or, %and6
  %4 = load i32, i32* %num_copy, align 4
  %and8 = and i32 %4, 255
  %shl9 = shl i32 %and8, 24
  %and10 = and i32 %shl9, -16777216
  %or11 = or i32 %or7, %and10
  store i32 %or11, i32* %num_copy, align 4
  %5 = load i32, i32* %num_copy, align 4
  %and12 = and i32 %5, -252645136
  %shr13 = lshr i32 %and12, 4
  %and14 = and i32 %shr13, 252645135
  %6 = load i32, i32* %num_copy, align 4
  %and15 = and i32 %6, 252645135
  %shl16 = shl i32 %and15, 4
  %and17 = and i32 %shl16, -252645136
  %or18 = or i32 %and14, %and17
  store i32 %or18, i32* %num_copy, align 4
  %7 = load i32, i32* %num_copy, align 4
  %and19 = and i32 %7, -858993460
  %shr20 = lshr i32 %and19, 2
  %and21 = and i32 %shr20, 858993459
  %8 = load i32, i32* %num_copy, align 4
  %and22 = and i32 %8, 858993459
  %shl23 = shl i32 %and22, 2
  %and24 = and i32 %shl23, -858993460
  %or25 = or i32 %and21, %and24
  store i32 %or25, i32* %num_copy, align 4
  %9 = load i32, i32* %num_copy, align 4
  %and26 = and i32 %9, -1431655766
  %shr27 = lshr i32 %and26, 1
  %and28 = and i32 %shr27, 1431655765
  %10 = load i32, i32* %num_copy, align 4
  %and29 = and i32 %10, 1431655765
  %shl30 = shl i32 %and29, 1
  %and31 = and i32 %shl30, -1431655766
  %or32 = or i32 %and28, %and31
  store i32 %or32, i32* %num_copy, align 4
  %11 = load i32, i32* %num_copy, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @reverse_bits_v1(i32 0)
  %cmp = icmp eq i32 0, %call
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %0, %cond.true
  %call1 = call i32 @reverse_bits_v2(i32 0)
  %cmp2 = icmp eq i32 0, %call1
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

1:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %1, %cond.true3
  %call6 = call i32 @reverse_bits_v1(i32 1431655765)
  %cmp7 = icmp eq i32 -1431655766, %call6
  br i1 %cmp7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end5
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 102, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

2:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %2, %cond.true8
  %call11 = call i32 @reverse_bits_v2(i32 1431655765)
  %cmp12 = icmp eq i32 -1431655766, %call11
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end10
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

3:                                                ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %3, %cond.true13
  %call16 = call i32 @reverse_bits_v1(i32 64719)
  %cmp17 = icmp eq i32 -213975040, %call16
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end15
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end15
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

4:                                                ; No predecessors!
  br label %cond.end20

cond.end20:                                       ; preds = %4, %cond.true18
  %call21 = call i32 @reverse_bits_v2(i32 64719)
  %cmp22 = icmp eq i32 -213975040, %call21
  br i1 %cmp22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.end20
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end20
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

5:                                                ; No predecessors!
  br label %cond.end25

cond.end25:                                       ; preds = %5, %cond.true23
  %call26 = call i32 @reverse_bits_v1(i32 65297)
  %cmp27 = icmp eq i32 -1996554240, %call26
  br i1 %cmp27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end25
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end25
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

6:                                                ; No predecessors!
  br label %cond.end30

cond.end30:                                       ; preds = %6, %cond.true28
  %call31 = call i32 @reverse_bits_v2(i32 65297)
  %cmp32 = icmp eq i32 -1996554240, %call31
  br i1 %cmp32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %cond.end30
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end30
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 112, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

7:                                                ; No predecessors!
  br label %cond.end35

cond.end35:                                       ; preds = %7, %cond.true33
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
