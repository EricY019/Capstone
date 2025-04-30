; ModuleID = 'code/329-33038EqualSidesOfAnArray.c'
source_filename = "code/329-33038EqualSidesOfAnArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 3, i32 2, i32 1], align 16
@.str = private unnamed_addr constant [19 x i8] c"expected == result\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"code/329-33038EqualSidesOfAnArray.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@__const.main.arr.2 = private unnamed_addr constant [6 x i32] [i32 1, i32 100, i32 50, i32 -51, i32 1, i32 1], align 16
@__const.main.arr.3 = private unnamed_addr constant [6 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6], align 16
@__const.main.arr.4 = private unnamed_addr constant [7 x i32] [i32 20, i32 10, i32 30, i32 10, i32 10, i32 15, i32 35], align 16
@__const.main.arr.5 = private unnamed_addr constant [7 x i32] [i32 20, i32 10, i32 -80, i32 10, i32 10, i32 15, i32 35], align 16
@__const.main.arr.6 = private unnamed_addr constant [7 x i32] [i32 10, i32 -80, i32 10, i32 10, i32 15, i32 35, i32 20], align 16
@__const.main.arr.7 = private unnamed_addr constant [7 x i32] [i32 -1, i32 -2, i32 -3, i32 -4, i32 -3, i32 -2, i32 -1], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sum_subarr(i32* %arr, i32 %from, i32 %to) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i32 0, i32* %sum, align 4
  %0 = load i32, i32* %from.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %to.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %sum, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, i32* %sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %sum, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_even_index(i32* %values, i32 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %values.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %values, i32** %values.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %values.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call = call i32 @sum_subarr(i32* %2, i32 0, i32 %3)
  %4 = load i32*, i32** %values.addr, align 8
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 1
  %6 = load i32, i32* %length.addr, align 4
  %call1 = call i32 @sum_subarr(i32* %4, i32 %add, i32 %6)
  %cmp2 = icmp eq i32 %call, %call1
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [7 x i32], align 16
  %expected = alloca i32, align 4
  %result = alloca i32, align 4
  %arr1 = alloca [6 x i32], align 16
  %expected2 = alloca i32, align 4
  %result3 = alloca i32, align 4
  %arr10 = alloca [6 x i32], align 16
  %expected11 = alloca i32, align 4
  %result12 = alloca i32, align 4
  %arr19 = alloca [7 x i32], align 16
  %expected20 = alloca i32, align 4
  %result21 = alloca i32, align 4
  %arr28 = alloca [7 x i32], align 16
  %expected29 = alloca i32, align 4
  %result30 = alloca i32, align 4
  %arr37 = alloca [7 x i32], align 16
  %expected38 = alloca i32, align 4
  %result39 = alloca i32, align 4
  %arr46 = alloca [5 x i32], align 16
  %expected47 = alloca i32, align 4
  %result48 = alloca i32, align 4
  %arr55 = alloca [7 x i32], align 16
  %expected56 = alloca i32, align 4
  %result57 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [7 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x i32]* @__const.main.arr to i8*), i64 28, i1 false)
  store i32 3, i32* %expected, align 4
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %arr, i64 0, i64 0
  %call = call i32 @find_even_index(i32* %arraydecay, i32 7)
  store i32 %call, i32* %result, align 4
  %1 = load i32, i32* %expected, align 4
  %2 = load i32, i32* %result, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = bitcast [6 x i32]* %arr1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([6 x i32]* @__const.main.arr.2 to i8*), i64 24, i1 false)
  store i32 1, i32* %expected2, align 4
  %arraydecay4 = getelementptr inbounds [6 x i32], [6 x i32]* %arr1, i64 0, i64 0
  %call5 = call i32 @find_even_index(i32* %arraydecay4, i32 6)
  store i32 %call5, i32* %result3, align 4
  %5 = load i32, i32* %expected2, align 4
  %6 = load i32, i32* %result3, align 4
  %cmp6 = icmp eq i32 %5, %6
  br i1 %cmp6, label %cond.true7, label %cond.false8

cond.true7:                                       ; preds = %cond.end
  br label %cond.end9

cond.false8:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

7:                                                ; No predecessors!
  br label %cond.end9

cond.end9:                                        ; preds = %7, %cond.true7
  %8 = bitcast [6 x i32]* %arr10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([6 x i32]* @__const.main.arr.3 to i8*), i64 24, i1 false)
  store i32 -1, i32* %expected11, align 4
  %arraydecay13 = getelementptr inbounds [6 x i32], [6 x i32]* %arr10, i64 0, i64 0
  %call14 = call i32 @find_even_index(i32* %arraydecay13, i32 6)
  store i32 %call14, i32* %result12, align 4
  %9 = load i32, i32* %expected11, align 4
  %10 = load i32, i32* %result12, align 4
  %cmp15 = icmp eq i32 %9, %10
  br i1 %cmp15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.end9
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end9
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

11:                                               ; No predecessors!
  br label %cond.end18

cond.end18:                                       ; preds = %11, %cond.true16
  %12 = bitcast [7 x i32]* %arr19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([7 x i32]* @__const.main.arr.4 to i8*), i64 28, i1 false)
  store i32 3, i32* %expected20, align 4
  %arraydecay22 = getelementptr inbounds [7 x i32], [7 x i32]* %arr19, i64 0, i64 0
  %call23 = call i32 @find_even_index(i32* %arraydecay22, i32 7)
  store i32 %call23, i32* %result21, align 4
  %13 = load i32, i32* %expected20, align 4
  %14 = load i32, i32* %result21, align 4
  %cmp24 = icmp eq i32 %13, %14
  br i1 %cmp24, label %cond.true25, label %cond.false26

cond.true25:                                      ; preds = %cond.end18
  br label %cond.end27

cond.false26:                                     ; preds = %cond.end18
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

15:                                               ; No predecessors!
  br label %cond.end27

cond.end27:                                       ; preds = %15, %cond.true25
  %16 = bitcast [7 x i32]* %arr28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %16, i8* align 16 bitcast ([7 x i32]* @__const.main.arr.5 to i8*), i64 28, i1 false)
  store i32 0, i32* %expected29, align 4
  %arraydecay31 = getelementptr inbounds [7 x i32], [7 x i32]* %arr28, i64 0, i64 0
  %call32 = call i32 @find_even_index(i32* %arraydecay31, i32 7)
  store i32 %call32, i32* %result30, align 4
  %17 = load i32, i32* %expected29, align 4
  %18 = load i32, i32* %result30, align 4
  %cmp33 = icmp eq i32 %17, %18
  br i1 %cmp33, label %cond.true34, label %cond.false35

cond.true34:                                      ; preds = %cond.end27
  br label %cond.end36

cond.false35:                                     ; preds = %cond.end27
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

19:                                               ; No predecessors!
  br label %cond.end36

cond.end36:                                       ; preds = %19, %cond.true34
  %20 = bitcast [7 x i32]* %arr37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([7 x i32]* @__const.main.arr.6 to i8*), i64 28, i1 false)
  store i32 6, i32* %expected38, align 4
  %arraydecay40 = getelementptr inbounds [7 x i32], [7 x i32]* %arr37, i64 0, i64 0
  %call41 = call i32 @find_even_index(i32* %arraydecay40, i32 7)
  store i32 %call41, i32* %result39, align 4
  %21 = load i32, i32* %expected38, align 4
  %22 = load i32, i32* %result39, align 4
  %cmp42 = icmp eq i32 %21, %22
  br i1 %cmp42, label %cond.true43, label %cond.false44

cond.true43:                                      ; preds = %cond.end36
  br label %cond.end45

cond.false44:                                     ; preds = %cond.end36
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

23:                                               ; No predecessors!
  br label %cond.end45

cond.end45:                                       ; preds = %23, %cond.true43
  %24 = bitcast [5 x i32]* %arr46 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 20, i1 false)
  store i32 0, i32* %expected47, align 4
  %arraydecay49 = getelementptr inbounds [5 x i32], [5 x i32]* %arr46, i64 0, i64 0
  %call50 = call i32 @find_even_index(i32* %arraydecay49, i32 5)
  store i32 %call50, i32* %result48, align 4
  %25 = load i32, i32* %expected47, align 4
  %26 = load i32, i32* %result48, align 4
  %cmp51 = icmp eq i32 %25, %26
  br i1 %cmp51, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %cond.end45
  br label %cond.end54

cond.false53:                                     ; preds = %cond.end45
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 71, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

27:                                               ; No predecessors!
  br label %cond.end54

cond.end54:                                       ; preds = %27, %cond.true52
  %28 = bitcast [7 x i32]* %arr55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 bitcast ([7 x i32]* @__const.main.arr.7 to i8*), i64 28, i1 false)
  store i32 3, i32* %expected56, align 4
  %arraydecay58 = getelementptr inbounds [7 x i32], [7 x i32]* %arr55, i64 0, i64 0
  %call59 = call i32 @find_even_index(i32* %arraydecay58, i32 7)
  store i32 %call59, i32* %result57, align 4
  %29 = load i32, i32* %expected56, align 4
  %30 = load i32, i32* %result57, align 4
  %cmp60 = icmp eq i32 %29, %30
  br i1 %cmp60, label %cond.true61, label %cond.false62

cond.true61:                                      ; preds = %cond.end54
  br label %cond.end63

cond.false62:                                     ; preds = %cond.end54
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

31:                                               ; No predecessors!
  br label %cond.end63

cond.end63:                                       ; preds = %31, %cond.true61
  %32 = load i32, i32* %retval, align 4
  ret i32 %32
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
