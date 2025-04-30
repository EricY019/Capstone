; ModuleID = 'code/313-461isPall_ignorePuncCap.c'
source_filename = "code/313-461isPall_ignorePuncCap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"isPall(\22Hello\22) == 0\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"code/313-461isPall_ignorePuncCap.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"isPall(\22H\22) == 1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"rooR\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"isPall(\22rooR\22) == 1\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"rot21#!3or\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"isPall(\22rot21#!3or\22) == 1\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"isPall(\22\22) == 1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPall(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %end = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %end, align 8
  %3 = load i32, i32* %len, align 4
  %cmp = icmp sle i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.then18, %if.then9, %if.end
  %4 = load i8*, i8** %end, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %5, i64 2
  %cmp4 = icmp ugt i8* %4, %add.ptr3
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call6 = call i16** @__ctype_b_loc() #5
  %6 = load i16*, i16** %call6, align 8
  %7 = load i8*, i8** %end, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = sext i8 %8 to i32
  %idxprom = sext i32 %conv7 to i64
  %arrayidx = getelementptr inbounds i16, i16* %6, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv8 = zext i16 %9 to i32
  %and = and i32 %conv8, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end10, label %if.then9

if.then9:                                         ; preds = %while.body
  %10 = load i8*, i8** %end, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 -1
  store i8* %incdec.ptr, i8** %end, align 8
  br label %while.cond, !llvm.loop !4

if.end10:                                         ; preds = %while.body
  %call11 = call i16** @__ctype_b_loc() #5
  %11 = load i16*, i16** %call11, align 8
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv12 = sext i8 %13 to i32
  %idxprom13 = sext i32 %conv12 to i64
  %arrayidx14 = getelementptr inbounds i16, i16* %11, i64 %idxprom13
  %14 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %14 to i32
  %and16 = and i32 %conv15, 1024
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end10
  %15 = load i8*, i8** %s.addr, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr19, i8** %s.addr, align 8
  br label %while.cond, !llvm.loop !4

if.end20:                                         ; preds = %if.end10
  %16 = load i8*, i8** %end, align 8
  %17 = load i8, i8* %16, align 1
  %conv21 = sext i8 %17 to i32
  %call22 = call i32 @tolower(i32 %conv21) #4
  %18 = load i8*, i8** %s.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv23 = sext i8 %19 to i32
  %call24 = call i32 @tolower(i32 %conv23) #4
  %cmp25 = icmp ne i32 %call22, %call24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end20
  store i32 0, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end20
  %20 = load i8*, i8** %end, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %20, i32 -1
  store i8* %incdec.ptr29, i8** %end, align 8
  %21 = load i8*, i8** %s.addr, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr30, i8** %s.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then27, %if.then
  %22 = load i32, i32* %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @isPall(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %0, %cond.true
  %call1 = call i32 @isPall(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call1, 1
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %1, %cond.true3
  %call6 = call i32 @isPall(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %cmp7 = icmp eq i32 %call6, 1
  br i1 %cmp7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end5
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

2:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %2, %cond.true8
  %call11 = call i32 @isPall(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %cmp12 = icmp eq i32 %call11, 1
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end10
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

3:                                                ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %3, %cond.true13
  %call16 = call i32 @isPall(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %cmp17 = icmp eq i32 %call16, 1
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end15
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end15
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

4:                                                ; No predecessors!
  br label %cond.end20

cond.end20:                                       ; preds = %4, %cond.true18
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
