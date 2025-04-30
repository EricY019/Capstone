; ModuleID = 'code/090-35038main.c'
source_filename = "code/090-35038main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"For d = %f, bits are\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"1 23456781234 5678123456781234567812345678123456781234567812345678\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"1        2        3       4       5       6       7       8\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @bits_of_double(double %d) #0 {
entry:
  %d.addr = alloca double, align 8
  %byte_count = alloca i64, align 8
  %bytes = alloca i8*, align 8
  %bits_of_double = alloca i8*, align 8
  %byte = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store double %d, double* %d.addr, align 8
  store i64 8, i64* %byte_count, align 8
  %0 = bitcast double* %d.addr to i8*
  store i8* %0, i8** %bytes, align 8
  %1 = load i64, i64* %byte_count, align 8
  %mul = mul i64 %1, 8
  %add = add i64 %mul, 1
  %call = call noalias align 16 i8* @malloc(i64 %add) #3
  store i8* %call, i8** %bits_of_double, align 8
  %2 = load i8*, i8** %bits_of_double, align 8
  %3 = load i64, i64* %byte_count, align 8
  %mul1 = mul i64 %3, 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %mul1
  store i8 0, i8* %arrayidx, align 1
  %4 = load i64, i64* %byte_count, align 8
  %conv = trunc i64 %4 to i32
  store i32 %conv, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %bytes, align 8
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %8 = load i8, i8* %arrayidx3, align 1
  store i8 %8, i8* %byte, align 1
  %9 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %9, 8
  store i32 %add4, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %k, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond5
  %12 = load i8, i8* %byte, align 1
  %conv9 = zext i8 %12 to i32
  %and = and i32 %conv9, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body8
  %13 = load i8*, i8** %bits_of_double, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 %idxprom10
  store i8 49, i8* %arrayidx11, align 1
  br label %if.end

if.else:                                          ; preds = %for.body8
  %15 = load i8*, i8** %bits_of_double, align 8
  %16 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 %idxprom12
  store i8 48, i8* %arrayidx13, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i8, i8* %byte, align 1
  %conv14 = zext i8 %17 to i32
  %shl = shl i32 %conv14, 1
  %conv15 = trunc i32 %shl to i8
  store i8 %conv15, i8* %byte, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond5, !llvm.loop !4

for.end:                                          ; preds = %for.cond5
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %dec = add nsw i32 %19, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end17:                                        ; preds = %for.cond
  %20 = load i8*, i8** %bits_of_double, align 8
  ret i8* %20
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_bits_of_double(i8* %bits) #0 {
entry:
  %bits.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %bits, i8** %bits.addr, align 8
  store i32 -1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %bits.addr, align 8
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load i32, i32* %i, align 4
  %cmp4 = icmp eq i32 %4, 12
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %5 = load i8*, i8** %bits.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %5, i64 %idxprom6
  %7 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %7 to i32
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %conv8)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d = alloca double, align 8
  %bits = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store double 5.432000e+03, double* %d, align 8
  %0 = load double, double* %d, align 8
  %call = call i8* @bits_of_double(double %0)
  store i8* %call, i8** %bits, align 8
  %1 = load double, double* %d, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), double %1)
  %2 = load i8*, i8** %bits, align 8
  call void @print_bits_of_double(i8* %2)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %3 = load i8*, i8** %bits, align 8
  call void @free(i8* %3) #3
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
