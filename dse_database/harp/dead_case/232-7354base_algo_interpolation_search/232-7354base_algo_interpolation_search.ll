; ModuleID = 'code/232-7354base_algo_interpolation_search.c'
source_filename = "code/232-7354base_algo_interpolation_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"key %d s[l] %d s[r] %d l %d r %d m %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"isr no exist\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"isr <- %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"isr -> %d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"isr found %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"isi %d %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"isi no exist\0A\00", align 1
@__const.main.s = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 16
@.str.7 = private unnamed_addr constant [36 x i8] c"interpolation search recursive: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"interpolation search iterative: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @midpoint(i32* %s, i32 %key, i32 %l, i32 %r) #0 {
entry:
  %s.addr = alloca i32*, align 8
  %key.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store i32* %s, i32** %s.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %l.addr, align 4
  %1 = load i32, i32* %r.addr, align 4
  %2 = load i32, i32* %l.addr, align 4
  %sub = sub nsw i32 %1, %2
  %3 = load i32, i32* %key.addr, align 4
  %4 = load i32*, i32** %s.addr, align 8
  %5 = load i32, i32* %l.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %sub1 = sub nsw i32 %3, %6
  %mul = mul nsw i32 %sub, %sub1
  %7 = load i32*, i32** %s.addr, align 8
  %8 = load i32, i32* %r.addr, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %10 = load i32*, i32** %s.addr, align 8
  %11 = load i32, i32* %l.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  %12 = load i32, i32* %arrayidx5, align 4
  %sub6 = sub nsw i32 %9, %12
  %div = sdiv i32 %mul, %sub6
  %add = add nsw i32 %0, %div
  store i32 %add, i32* %m, align 4
  %13 = load i32, i32* %key.addr, align 4
  %14 = load i32*, i32** %s.addr, align 8
  %15 = load i32, i32* %l.addr, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %14, i64 %idxprom7
  %16 = load i32, i32* %arrayidx8, align 4
  %17 = load i32*, i32** %s.addr, align 8
  %18 = load i32, i32* %r.addr, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 %idxprom9
  %19 = load i32, i32* %arrayidx10, align 4
  %20 = load i32, i32* %l.addr, align 4
  %21 = load i32, i32* %r.addr, align 4
  %22 = load i32, i32* %m, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %20, i32 %21, i32 %22)
  %23 = load i32, i32* %l.addr, align 4
  %24 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %25 = load i32, i32* %m, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %26 = load i32, i32* %l.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ]
  store i32 %cond, i32* %m, align 4
  %27 = load i32, i32* %m, align 4
  %28 = load i32, i32* %r.addr, align 4
  %cmp11 = icmp slt i32 %27, %28
  br i1 %cmp11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.end
  %29 = load i32, i32* %m, align 4
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  %30 = load i32, i32* %r.addr, align 4
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.true12
  %cond15 = phi i32 [ %29, %cond.true12 ], [ %30, %cond.false13 ]
  store i32 %cond15, i32* %m, align 4
  %31 = load i32, i32* %m, align 4
  ret i32 %31
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @interpolation_search_recursive(i32* %s, i32 %key, i32 %l, i32 %r) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i32*, align 8
  %key.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store i32* %s, i32** %s.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %r.addr, align 4
  %1 = load i32, i32* %l.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32*, i32** %s.addr, align 8
  %3 = load i32, i32* %key.addr, align 4
  %4 = load i32, i32* %l.addr, align 4
  %5 = load i32, i32* %r.addr, align 4
  %call1 = call i32 @midpoint(i32* %2, i32 %3, i32 %4, i32 %5)
  store i32 %call1, i32* %m, align 4
  %6 = load i32, i32* %key.addr, align 4
  %7 = load i32*, i32** %s.addr, align 8
  %8 = load i32, i32* %m, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %cmp2 = icmp slt i32 %6, %9
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %10 = load i32, i32* %l.addr, align 4
  %11 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %11, 1
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %10, i32 %sub)
  %12 = load i32*, i32** %s.addr, align 8
  %13 = load i32, i32* %key.addr, align 4
  %14 = load i32, i32* %l.addr, align 4
  %15 = load i32, i32* %m, align 4
  %sub5 = sub nsw i32 %15, 1
  %call6 = call i32 @interpolation_search_recursive(i32* %12, i32 %13, i32 %14, i32 %sub5)
  store i32 %call6, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %16 = load i32*, i32** %s.addr, align 8
  %17 = load i32, i32* %m, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %16, i64 %idxprom7
  %18 = load i32, i32* %arrayidx8, align 4
  %19 = load i32, i32* %key.addr, align 4
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.else
  %20 = load i32, i32* %m, align 4
  %add = add nsw i32 %20, 1
  %21 = load i32, i32* %r.addr, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %add, i32 %21)
  %22 = load i32*, i32** %s.addr, align 8
  %23 = load i32, i32* %key.addr, align 4
  %24 = load i32, i32* %m, align 4
  %add12 = add nsw i32 %24, 1
  %25 = load i32, i32* %r.addr, align 4
  %call13 = call i32 @interpolation_search_recursive(i32* %22, i32 %23, i32 %add12, i32 %25)
  store i32 %call13, i32* %retval, align 4
  br label %return

if.else14:                                        ; preds = %if.else
  %26 = load i32, i32* %m, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %27 = load i32, i32* %m, align 4
  store i32 %27, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else14, %if.then10, %if.then3, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @interpolation_search_iterative(i32* %s, i32 %key, i32 %l, i32 %r) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i32*, align 8
  %key.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store i32* %s, i32** %s.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %entry
  %0 = load i32, i32* %l.addr, align 4
  %1 = load i32, i32* %r.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %l.addr, align 4
  %3 = load i32, i32* %r.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %2, i32 %3)
  %4 = load i32*, i32** %s.addr, align 8
  %5 = load i32, i32* %key.addr, align 4
  %6 = load i32, i32* %l.addr, align 4
  %7 = load i32, i32* %r.addr, align 4
  %call1 = call i32 @midpoint(i32* %4, i32 %5, i32 %6, i32 %7)
  store i32 %call1, i32* %m, align 4
  %8 = load i32, i32* %key.addr, align 4
  %9 = load i32*, i32** %s.addr, align 8
  %10 = load i32, i32* %m, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %cmp2 = icmp slt i32 %8, %11
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i32, i32* %m, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, i32* %r.addr, align 4
  br label %if.end8

if.else:                                          ; preds = %while.body
  %13 = load i32*, i32** %s.addr, align 8
  %14 = load i32, i32* %m, align 4
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %13, i64 %idxprom3
  %15 = load i32, i32* %arrayidx4, align 4
  %16 = load i32, i32* %key.addr, align 4
  %cmp5 = icmp slt i32 %15, %16
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  %17 = load i32, i32* %m, align 4
  %add = add nsw i32 %17, 1
  store i32 %add, i32* %l.addr, align 4
  br label %if.end

if.else7:                                         ; preds = %if.else
  %18 = load i32, i32* %m, align 4
  store i32 %18, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.else7
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s = alloca [10 x i32], align 16
  %key = alloca i32, align 4
  %idx = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [10 x i32]* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i32]* @__const.main.s to i8*), i64 40, i1 false)
  store i32 8, i32* %key, align 4
  %1 = load i32, i32* %key, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %1)
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %s, i64 0, i64 0
  %2 = load i32, i32* %key, align 4
  %call1 = call i32 @interpolation_search_recursive(i32* %arraydecay, i32 %2, i32 0, i32 9)
  store i32 %call1, i32* %idx, align 4
  store i32 11, i32* %key, align 4
  %3 = load i32, i32* %key, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %3)
  %arraydecay3 = getelementptr inbounds [10 x i32], [10 x i32]* %s, i64 0, i64 0
  %4 = load i32, i32* %key, align 4
  %call4 = call i32 @interpolation_search_recursive(i32* %arraydecay3, i32 %4, i32 0, i32 9)
  store i32 %call4, i32* %idx, align 4
  store i32 8, i32* %key, align 4
  %5 = load i32, i32* %key, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %5)
  %arraydecay6 = getelementptr inbounds [10 x i32], [10 x i32]* %s, i64 0, i64 0
  %6 = load i32, i32* %key, align 4
  %call7 = call i32 @interpolation_search_iterative(i32* %arraydecay6, i32 %6, i32 0, i32 9)
  store i32 %call7, i32* %idx, align 4
  store i32 11, i32* %key, align 4
  %7 = load i32, i32* %key, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %7)
  %arraydecay9 = getelementptr inbounds [10 x i32], [10 x i32]* %s, i64 0, i64 0
  %8 = load i32, i32* %key, align 4
  %call10 = call i32 @interpolation_search_iterative(i32* %arraydecay9, i32 %8, i32 0, i32 9)
  store i32 %call10, i32* %idx, align 4
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
