; ModuleID = 'code/162-10368lab05.c'
source_filename = "code/162-10368lab05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"worked\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@__const.main.a = private unnamed_addr constant [4 x i32] [i32 2, i32 3, i32 4, i32 5], align 16
@__const.main.b = private unnamed_addr constant [1 x i32] [i32 1], align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"min max tests\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d - %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"num digits tests\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"is reversible tests\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @min_max(i32* %a, i64 %n, i32* %pmin, i32* %pmax) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %n.addr = alloca i64, align 8
  %pmin.addr = alloca i32*, align 8
  %pmax.addr = alloca i32*, align 8
  %i = alloca i64, align 8
  store i32* %a, i32** %a.addr, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32* %pmin, i32** %pmin.addr, align 8
  store i32* %pmax, i32** %pmax.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp uge i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32*, i32** %pmin.addr, align 8
  store i32 %2, i32* %3, align 4
  %4 = load i32*, i32** %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %4, i64 0
  %5 = load i32, i32* %arrayidx1, align 4
  %6 = load i32*, i32** %pmax.addr, align 8
  store i32 %5, i32* %6, align 4
  store i64 1, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %n.addr, align 8
  %cmp2 = icmp ult i64 %7, %8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32*, i32** %a.addr, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %10
  %11 = load i32, i32* %arrayidx3, align 4
  %12 = load i32*, i32** %pmin.addr, align 8
  %13 = load i32, i32* %12, align 4
  %cmp4 = icmp slt i32 %11, %13
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %for.body
  %14 = load i32*, i32** %a.addr, align 8
  %15 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %14, i64 %15
  %16 = load i32, i32* %arrayidx6, align 4
  %17 = load i32*, i32** %pmin.addr, align 8
  store i32 %16, i32* %17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %for.body
  %18 = load i32*, i32** %a.addr, align 8
  %19 = load i64, i64* %i, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %18, i64 %19
  %20 = load i32, i32* %arrayidx7, align 4
  %21 = load i32*, i32** %pmax.addr, align 8
  %22 = load i32, i32* %21, align 4
  %cmp8 = icmp sgt i32 %20, %22
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %23 = load i32*, i32** %a.addr, align 8
  %24 = load i64, i64* %i, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %23, i64 %24
  %25 = load i32, i32* %arrayidx10, align 4
  %26 = load i32*, i32** %pmax.addr, align 8
  store i32 %25, i32* %26, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %27 = load i64, i64* %i, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end12

if.end12:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @num_digits(i64 %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 1)
  store i64 1, i64* %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, i64* %n.addr, align 8
  %cmp1 = icmp ne i64 %1, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %n.addr, align 8
  %div = udiv i64 %2, 10
  store i64 %div, i64* %n.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, i64* %i, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %4)
  %5 = load i64, i64* %i, align 8
  store i64 %5, i64* %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i64, i64* %retval, align 8
  ret i64 %6
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_reversible(i64 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %reverse = alloca i32, align 4
  %rem = alloca i32, align 4
  %i = alloca i64, align 8
  %actual = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, i32* %actual, align 4
  %1 = load i64, i64* %n.addr, align 8
  store i64 %1, i64* %i, align 8
  store i32 0, i32* %reverse, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, i64* %i, align 8
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %i, align 8
  %rem2 = urem i64 %3, 10
  %conv3 = trunc i64 %rem2 to i32
  store i32 %conv3, i32* %rem, align 4
  %4 = load i32, i32* %rem, align 4
  %5 = load i32, i32* %reverse, align 4
  %mul = mul nsw i32 %5, 10
  %add = add nsw i32 %4, %mul
  store i32 %add, i32* %reverse, align 4
  %6 = load i64, i64* %i, align 8
  %div = udiv i64 %6, 10
  store i64 %div, i64* %i, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %reverse, align 4
  %8 = load i32, i32* %actual, align 4
  %cmp4 = icmp eq i32 %7, %8
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %while.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [4 x i32], align 16
  %n = alloca i64, align 8
  %b = alloca [1 x i32], align 4
  %k = alloca i64, align 8
  %pmin = alloca i32, align 4
  %pmax = alloca i32, align 4
  %p = alloca i64, align 8
  %q = alloca i64, align 8
  %r = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x i32]* @__const.main.a to i8*), i64 16, i1 false)
  store i64 4, i64* %n, align 8
  %1 = bitcast [1 x i32]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([1 x i32]* @__const.main.b to i8*), i64 4, i1 false)
  store i64 1, i64* %k, align 8
  store i32 0, i32* %pmin, align 4
  store i32 0, i32* %pmax, align 4
  store i64 12321, i64* %p, align 8
  store i64 123, i64* %q, align 8
  store i64 0, i64* %r, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0
  %2 = load i64, i64* %n, align 8
  call void @min_max(i32* %arraydecay, i64 %2, i32* %pmin, i32* %pmax)
  %3 = load i32, i32* %pmin, align 4
  %4 = load i32, i32* %pmax, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %3, i32 %4)
  %arraydecay2 = getelementptr inbounds [1 x i32], [1 x i32]* %b, i64 0, i64 0
  %5 = load i64, i64* %k, align 8
  call void @min_max(i32* %arraydecay2, i64 %5, i32* %pmin, i32* %pmax)
  %6 = load i32, i32* %pmin, align 4
  %7 = load i32, i32* %pmax, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %6, i32 %7)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %8 = load i64, i64* %p, align 8
  %call5 = call i64 @num_digits(i64 %8)
  %9 = load i64, i64* %q, align 8
  %call6 = call i64 @num_digits(i64 %9)
  %10 = load i64, i64* %r, align 8
  %call7 = call i64 @num_digits(i64 %10)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %11 = load i64, i64* %p, align 8
  %call9 = call i32 @is_reversible(i64 %11)
  %12 = load i64, i64* %q, align 8
  %call10 = call i32 @is_reversible(i64 %12)
  %13 = load i64, i64* %r, align 8
  %call11 = call i32 @is_reversible(i64 %13)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
