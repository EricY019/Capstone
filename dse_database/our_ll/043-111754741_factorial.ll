; ModuleID = 'code/043-111754741_factorial.c'
source_filename = "code/043-111754741_factorial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"overflow!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CalcMM(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub i32 %2, 1
  %call = call i32 @CalcMM(i32 %sub)
  %mul = mul i32 %1, %call
  store i32 %mul, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CalcNN(i32 %n, i8* %pOut) #0 {
entry:
  %n.addr = alloca i32, align 4
  %pOut.addr = alloca i8*, align 8
  %res = alloca [1000 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %carry = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* %pOut, i8** %pOut.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %pOut.addr, align 8
  %2 = load i32, i32* %n.addr, align 4
  %call = call i32 @CalcMM(i32 %2)
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %call) #4
  br label %while.end

if.end:                                           ; preds = %entry
  %3 = bitcast [1000 x i32]* %res to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 4000, i1 false)
  %4 = bitcast i8* %3 to <{ i32, [999 x i32] }>*
  %5 = getelementptr inbounds <{ i32, [999 x i32] }>, <{ i32, [999 x i32] }>* %4, i32 0, i32 0
  store i32 6, i32* %5, align 16
  store i32 4, i32* %i, align 4
  store i32 1, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp sle i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  store i32 0, i32* %carry, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %len, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %res, i64 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32, i32* %i, align 4
  %mul = mul i32 %11, %12
  %13 = load i32, i32* %carry, align 4
  %add = add i32 %mul, %13
  %14 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [1000 x i32], [1000 x i32]* %res, i64 0, i64 %idxprom6
  store i32 %add, i32* %arrayidx7, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [1000 x i32], [1000 x i32]* %res, i64 0, i64 %idxprom8
  %16 = load i32, i32* %arrayidx9, align 4
  %div = udiv i32 %16, 10
  store i32 %div, i32* %carry, align 4
  %17 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds [1000 x i32], [1000 x i32]* %res, i64 0, i64 %idxprom10
  %18 = load i32, i32* %arrayidx11, align 4
  %rem = urem i32 %18, 10
  store i32 %rem, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond3, !llvm.loop !4

for.end:                                          ; preds = %for.cond3
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %for.end
  %20 = load i32, i32* %carry, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %for.body13, label %for.end20

for.body13:                                       ; preds = %for.cond12
  %21 = load i32, i32* %carry, align 4
  %rem14 = srem i32 %21, 10
  %22 = load i32, i32* %len, align 4
  %inc15 = add nsw i32 %22, 1
  store i32 %inc15, i32* %len, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds [1000 x i32], [1000 x i32]* %res, i64 0, i64 %idxprom16
  store i32 %rem14, i32* %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body13
  %23 = load i32, i32* %carry, align 4
  %div19 = sdiv i32 %23, 10
  store i32 %div19, i32* %carry, align 4
  br label %for.cond12, !llvm.loop !6

for.end20:                                        ; preds = %for.cond12
  %24 = load i32, i32* %len, align 4
  %cmp21 = icmp sge i32 %24, 1000
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.end20
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %while.end

if.end24:                                         ; preds = %for.end20
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %25 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %25, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end27:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %26 = load i8*, i8** %pOut.addr, align 8
  %27 = load i32, i32* %len, align 4
  %idxprom28 = sext i32 %27 to i64
  %arrayidx29 = getelementptr inbounds i8, i8* %26, i64 %idxprom28
  store i8 0, i8* %arrayidx29, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end27
  %28 = load i32, i32* %len, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %len, align 4
  %cmp30 = icmp sgt i32 %28, 0
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i32, i32* %len, align 4
  %idxprom31 = sext i32 %29 to i64
  %arrayidx32 = getelementptr inbounds [1000 x i32], [1000 x i32]* %res, i64 0, i64 %idxprom31
  %30 = load i32, i32* %arrayidx32, align 4
  %add33 = add i32 %30, 48
  %conv = trunc i32 %add33 to i8
  %31 = load i8*, i8** %pOut.addr, align 8
  %32 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, i32* %i, align 4
  %idxprom35 = sext i32 %32 to i64
  %arrayidx36 = getelementptr inbounds i8, i8* %31, i64 %idxprom35
  store i8 %conv, i8* %arrayidx36, align 1
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then, %if.then22, %while.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [1000 x i8], align 16
  store i32 0, i32* %retval, align 4
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i64 0, i64 0
  call void @CalcNN(i32 5, i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i64 0, i64 0
  %call = call i32 @puts(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i64 0, i64 0
  call void @CalcNN(i32 12, i8* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i64 0, i64 0
  %call4 = call i32 @puts(i8* %arraydecay3)
  %arraydecay5 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i64 0, i64 0
  call void @CalcNN(i32 13, i8* %arraydecay5)
  %arraydecay6 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i64 0, i64 0
  %call7 = call i32 @puts(i8* %arraydecay6)
  %arraydecay8 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i64 0, i64 0
  call void @CalcNN(i32 20, i8* %arraydecay8)
  %arraydecay9 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i64 0, i64 0
  %call10 = call i32 @puts(i8* %arraydecay9)
  %arraydecay11 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i64 0, i64 0
  call void @CalcNN(i32 100, i8* %arraydecay11)
  %arraydecay12 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i64 0, i64 0
  %call13 = call i32 @puts(i8* %arraydecay12)
  ret i32 0
}

declare dso_local i32 @puts(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
