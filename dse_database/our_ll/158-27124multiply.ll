; ModuleID = 'code/158-27124multiply.c'
source_filename = "code/158-27124multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"%101s\0A%101s\0A%101s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n1 = alloca [101 x i8], align 16
  %n2 = alloca [101 x i8], align 16
  %m = alloca [102 x i8], align 16
  %t = alloca i64, align 8
  %e = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %i10 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %multi = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [101 x i8]* %n1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 101, i1 false)
  %1 = bitcast [101 x i8]* %n2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 101, i1 false)
  %2 = bitcast [102 x i8]* %m to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 102, i1 false)
  store i32 0, i32* %e, align 4
  store i32 100, i32* %k, align 4
  store i32 0, i32* %r, align 4
  %call = call i64 @time(i64* %t) #4
  %3 = load i64, i64* %t, align 8
  %conv = trunc i64 %3 to i32
  call void @srand(i32 %conv) #4
  %arraydecay = getelementptr inbounds [102 x i8], [102 x i8]* %m, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay, i8 32, i64 101, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #4
  %rem = srem i32 %call2, 9
  %add = add nsw i32 %rem, 48
  %conv3 = trunc i32 %add to i8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [101 x i8], [101 x i8]* %n1, i64 0, i64 %idxprom
  store i8 %conv3, i8* %arrayidx, align 1
  %call4 = call i32 @rand() #4
  %rem5 = srem i32 %call4, 9
  %add6 = add nsw i32 %rem5, 48
  %conv7 = trunc i32 %add6 to i8
  %6 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [101 x i8], [101 x i8]* %n2, i64 0, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 99, i32* %i10, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc28, %for.end
  %8 = load i32, i32* %i10, align 4
  %cmp12 = icmp sge i32 %8, 0
  br i1 %cmp12, label %for.body14, label %for.end30

for.body14:                                       ; preds = %for.cond11
  %9 = load i32, i32* %i10, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [101 x i8], [101 x i8]* %n1, i64 0, i64 %idxprom15
  %10 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %10 to i32
  %sub = sub nsw i32 %conv17, 48
  store i32 %sub, i32* %a, align 4
  %11 = load i32, i32* %i10, align 4
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [101 x i8], [101 x i8]* %n2, i64 0, i64 %idxprom18
  %12 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %12 to i32
  %sub21 = sub nsw i32 %conv20, 48
  store i32 %sub21, i32* %b, align 4
  %13 = load i32, i32* %a, align 4
  %14 = load i32, i32* %b, align 4
  %mul = mul nsw i32 %13, %14
  %15 = load i32, i32* %r, align 4
  %add22 = add nsw i32 %mul, %15
  store i32 %add22, i32* %multi, align 4
  %16 = load i32, i32* %multi, align 4
  %rem23 = srem i32 %16, 10
  store i32 %rem23, i32* %e, align 4
  %17 = load i32, i32* %multi, align 4
  %div = sdiv i32 %17, 10
  store i32 %div, i32* %r, align 4
  %18 = load i32, i32* %e, align 4
  %add24 = add nsw i32 %18, 48
  %conv25 = trunc i32 %add24 to i8
  %19 = load i32, i32* %k, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [102 x i8], [102 x i8]* %m, i64 0, i64 %idxprom26
  store i8 %conv25, i8* %arrayidx27, align 1
  %20 = load i32, i32* %k, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %k, align 4
  br label %for.inc28

for.inc28:                                        ; preds = %for.body14
  %21 = load i32, i32* %i10, align 4
  %dec29 = add nsw i32 %21, -1
  store i32 %dec29, i32* %i10, align 4
  br label %for.cond11, !llvm.loop !6

for.end30:                                        ; preds = %for.cond11
  %22 = load i32, i32* %r, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end30
  %23 = load i32, i32* %r, align 4
  %add31 = add nsw i32 %23, 48
  %conv32 = trunc i32 %add31 to i8
  %24 = load i32, i32* %k, align 4
  %idxprom33 = sext i32 %24 to i64
  %arrayidx34 = getelementptr inbounds [102 x i8], [102 x i8]* %m, i64 0, i64 %idxprom33
  store i8 %conv32, i8* %arrayidx34, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end30
  %arraydecay35 = getelementptr inbounds [101 x i8], [101 x i8]* %n1, i64 0, i64 0
  %arraydecay36 = getelementptr inbounds [101 x i8], [101 x i8]* %n2, i64 0, i64 0
  %arraydecay37 = getelementptr inbounds [102 x i8], [102 x i8]* %m, i64 0, i64 0
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %arraydecay35, i8* %arraydecay36, i8* %arraydecay37)
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
