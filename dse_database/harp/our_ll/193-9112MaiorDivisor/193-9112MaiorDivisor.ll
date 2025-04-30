; ModuleID = 'code/193-9112MaiorDivisor.c'
source_filename = "code/193-9112MaiorDivisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.Sensor = private unnamed_addr constant [11 x i8] c"1620694973\00", align 1
@.str = private unnamed_addr constant [22 x i8] c"Problema sensor: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Maior divisor de %ld: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FATORACAO(i64 %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %numero = alloca i64, align 8
  %divisor = alloca i64, align 8
  %resto = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  %0 = load i64, i64* %n.addr, align 8
  store i64 %0, i64* %numero, align 8
  store i64 1, i64* %divisor, align 8
  store i64 2, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, i64* %numero, align 8
  %cmp = icmp ne i64 %1, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, i64* %numero, align 8
  %3 = load i64, i64* %i, align 8
  %rem = srem i64 %2, %3
  store i64 %rem, i64* %resto, align 8
  %4 = load i64, i64* %resto, align 8
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i64, i64* %i, align 8
  store i64 %5, i64* %divisor, align 8
  %6 = load i64, i64* %i, align 8
  %7 = load i64, i64* %numero, align 8
  %div = sdiv i64 %7, %6
  store i64 %div, i64* %numero, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %8 = load i64, i64* %i, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %9 = load i64, i64* %divisor, align 8
  ret i64 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i64, align 8
  %MAIOR_DIVISOR = alloca i64, align 8
  %Sensor = alloca [11 x i8], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [11 x i8]* %Sensor to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.main.Sensor, i32 0, i32 0), i64 11, i1 false)
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %Sensor, i64 0, i64 0
  %call = call i64 @atol(i8* %arraydecay) #4
  store i64 %call, i64* %n, align 8
  %1 = load i64, i64* %n, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %1)
  %2 = load i64, i64* %n, align 8
  %call2 = call i64 @FATORACAO(i64 %2)
  store i64 %call2, i64* %MAIOR_DIVISOR, align 8
  %3 = load i64, i64* %n, align 8
  %4 = load i64, i64* %MAIOR_DIVISOR, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %3, i64 %4)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @atol(i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
