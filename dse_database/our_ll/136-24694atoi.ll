; ModuleID = 'code/136-24694atoi.c'
source_filename = "code/136-24694atoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"-2147483649\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"i == (-2147483647 -1)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"code/136-24694atoi.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"2147483648\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"i == 2147483647\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"-2147483648\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"      -11919730356x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @myatoi(i8* %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %v = alloca i64, align 8
  %sign = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** %p, align 8
  store i64 0, i64* %v, align 8
  store i32 43, i32* %sign, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #3
  %3 = load i16*, i16** %call, align 8
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv1 = sext i8 %5 to i32
  %idxprom = sext i32 %conv1 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %6 to i32
  %and = and i32 %conv2, 8192
  %tobool3 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %conv4 = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv4, 45
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %conv6 = sext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv6, 43
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %while.end
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8
  %14 = load i8, i8* %13, align 1
  %conv10 = sext i8 %14 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv10, %cond.true ], [ 43, %cond.false ]
  store i32 %cond, i32* %sign, align 4
  br label %while.cond11

while.cond11:                                     ; preds = %if.end35, %cond.end
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %tobool12 = icmp ne i8 %16, 0
  br i1 %tobool12, label %while.body13, label %while.end37

while.body13:                                     ; preds = %while.cond11
  %17 = load i8*, i8** %p, align 8
  %18 = load i8, i8* %17, align 1
  %conv14 = sext i8 %18 to i32
  %cmp15 = icmp slt i32 %conv14, 48
  br i1 %cmp15, label %if.then, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %while.body13
  %19 = load i8*, i8** %p, align 8
  %20 = load i8, i8* %19, align 1
  %conv18 = sext i8 %20 to i32
  %cmp19 = icmp sgt i32 %conv18, 57
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false17, %while.body13
  br label %done

if.end:                                           ; preds = %lor.lhs.false17
  %21 = load i64, i64* %v, align 8
  %mul = mul nsw i64 %21, 10
  %22 = load i8*, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv21 = sext i8 %23 to i32
  %sub = sub nsw i32 %conv21, 48
  %conv22 = sext i32 %sub to i64
  %add = add nsw i64 %mul, %conv22
  store i64 %add, i64* %v, align 8
  %24 = load i32, i32* %sign, align 4
  %cmp23 = icmp eq i32 %24, 43
  br i1 %cmp23, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end
  %25 = load i64, i64* %v, align 8
  %cmp25 = icmp sge i64 %25, 2147483647
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %land.lhs.true
  store i32 2147483647, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %land.lhs.true, %if.end
  %26 = load i32, i32* %sign, align 4
  %cmp29 = icmp eq i32 %26, 45
  br i1 %cmp29, label %land.lhs.true31, label %if.end35

land.lhs.true31:                                  ; preds = %if.end28
  %27 = load i64, i64* %v, align 8
  %cmp32 = icmp sge i64 %27, 2147483648
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %land.lhs.true31
  store i32 -2147483648, i32* %retval, align 4
  br label %return

if.end35:                                         ; preds = %land.lhs.true31, %if.end28
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr36, i8** %p, align 8
  br label %while.cond11, !llvm.loop !6

while.end37:                                      ; preds = %while.cond11
  br label %done

done:                                             ; preds = %while.end37, %if.then
  %29 = load i32, i32* %sign, align 4
  %cmp38 = icmp eq i32 %29, 45
  br i1 %cmp38, label %cond.true40, label %cond.false42

cond.true40:                                      ; preds = %done
  %30 = load i64, i64* %v, align 8
  %sub41 = sub nsw i64 0, %30
  br label %cond.end43

cond.false42:                                     ; preds = %done
  %31 = load i64, i64* %v, align 8
  br label %cond.end43

cond.end43:                                       ; preds = %cond.false42, %cond.true40
  %cond44 = phi i64 [ %sub41, %cond.true40 ], [ %31, %cond.false42 ]
  %conv45 = trunc i64 %cond44 to i32
  store i32 %conv45, i32* %retval, align 4
  br label %return

return:                                           ; preds = %cond.end43, %if.then34, %if.then27
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @myatoi(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %call, i32* %i, align 4
  %0 = load i32, i32* %i, align 4
  %cmp = icmp eq i32 %0, -2147483648
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %1, %cond.true
  %call1 = call i32 @myatoi(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %call1, i32* %i, align 4
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %2, 2147483647
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

3:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %3, %cond.true3
  %call6 = call i32 @myatoi(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 %call6, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %cmp7 = icmp eq i32 %4, -2147483648
  br i1 %cmp7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end5
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

5:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %5, %cond.true8
  %call11 = call i32 @myatoi(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 %call11, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %cmp12 = icmp eq i32 %6, -2147483648
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end10
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

7:                                                ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %7, %cond.true13
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
