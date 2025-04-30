; ModuleID = 'code/278-12713find_missing.c'
source_filename = "code/278-12713find_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%2i,\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.main.array = private unnamed_addr constant [9 x i32] [i32 2, i32 9, i32 4, i32 7, i32 5, i32 3, i32 6, i32 0, i32 8], align 16
@.str.2 = private unnamed_addr constant [13 x i8] c"missing: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output(i32* %array, i64 %len) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %array.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call2 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32* %x, i32* %y) #0 {
entry:
  %x.addr = alloca i32*, align 8
  %y.addr = alloca i32*, align 8
  store i32* %x, i32** %x.addr, align 8
  store i32* %y, i32** %y.addr, align 8
  %0 = load i32*, i32** %x.addr, align 8
  %1 = load i32*, i32** %y.addr, align 8
  %cmp = icmp ne i32* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %x.addr, align 8
  %3 = load i32, i32* %2, align 4
  %4 = load i32*, i32** %y.addr, align 8
  %5 = load i32, i32* %4, align 4
  %xor = xor i32 %3, %5
  %6 = load i32*, i32** %x.addr, align 8
  store i32 %xor, i32* %6, align 4
  %7 = load i32*, i32** %x.addr, align 8
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** %y.addr, align 8
  %10 = load i32, i32* %9, align 4
  %xor1 = xor i32 %8, %10
  %11 = load i32*, i32** %y.addr, align 8
  store i32 %xor1, i32* %11, align 4
  %12 = load i32*, i32** %x.addr, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %y.addr, align 8
  %15 = load i32, i32* %14, align 4
  %xor2 = xor i32 %13, %15
  %16 = load i32*, i32** %x.addr, align 8
  store i32 %xor2, i32* %16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_missing0(i32* %array, i64 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca i32*, align 8
  %len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i32* %array, i32** %array.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp ult i64 %conv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load i32*, i32** %array.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp ne i32 %4, %5
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32*, i32** %array.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 %idxprom4
  %8 = load i32, i32* %arrayidx5, align 4
  %conv6 = sext i32 %8 to i64
  %9 = load i64, i64* %len.addr, align 8
  %cmp7 = icmp ult i64 %conv6, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp7, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32*, i32** %array.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  %13 = load i32*, i32** %array.addr, align 8
  %14 = load i32*, i32** %array.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %14, i64 %idxprom9
  %16 = load i32, i32* %arrayidx10, align 4
  %idx.ext11 = sext i32 %16 to i64
  %add.ptr12 = getelementptr inbounds i32, i32* %13, i64 %idx.ext11
  call void @swap(i32* %add.ptr, i32* %add.ptr12)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %18 = load i32*, i32** %array.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx13, align 4
  store i32 %19, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %for.end
  %20 = load i32, i32* %i, align 4
  %conv15 = sext i32 %20 to i64
  %21 = load i64, i64* %len.addr, align 8
  %cmp16 = icmp ult i64 %conv15, %21
  br i1 %cmp16, label %for.body18, label %for.end25

for.body18:                                       ; preds = %for.cond14
  %22 = load i32*, i32** %array.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds i32, i32* %22, i64 %idxprom19
  %24 = load i32, i32* %arrayidx20, align 4
  %25 = load i32, i32* %i, align 4
  %cmp21 = icmp ne i32 %24, %25
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body18
  %26 = load i32, i32* %i, align 4
  store i32 %26, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body18
  br label %for.inc23

for.inc23:                                        ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %27, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond14, !llvm.loop !8

for.end25:                                        ; preds = %for.cond14
  %28 = load i64, i64* %len.addr, align 8
  %conv26 = trunc i64 %28 to i32
  store i32 %conv26, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end25, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_missing1(i32* %array, i64 %len) #0 {
entry:
  %array.addr = alloca i32*, align 8
  %len.addr = alloca i64, align 8
  store i32* %array, i32** %array.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %retval1 = alloca i32, align 4
  %array = alloca [9 x i32], align 16
  %len = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %retval1, align 4
  %0 = bitcast [9 x i32]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([9 x i32]* @__const.main.array to i8*), i64 36, i1 false)
  store i64 9, i64* %len, align 8
  %arraydecay = getelementptr inbounds [9 x i32], [9 x i32]* %array, i64 0, i64 0
  %1 = load i64, i64* %len, align 8
  call void @output(i32* %arraydecay, i64 %1)
  %arraydecay2 = getelementptr inbounds [9 x i32], [9 x i32]* %array, i64 0, i64 0
  %2 = load i64, i64* %len, align 8
  %call = call i32 @find_missing0(i32* %arraydecay2, i64 %2)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %call)
  %arraydecay4 = getelementptr inbounds [9 x i32], [9 x i32]* %array, i64 0, i64 0
  %3 = load i64, i64* %len, align 8
  call void @output(i32* %arraydecay4, i64 %3)
  %4 = load i32, i32* %retval1, align 4
  ret i32 %4
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
!8 = distinct !{!8, !5}
