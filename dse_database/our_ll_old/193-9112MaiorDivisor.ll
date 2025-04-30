; ModuleID = './code/193-9112MaiorDivisor.c'
source_filename = "./code/193-9112MaiorDivisor.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.Sensor = private unnamed_addr constant [11 x i8] c"1620694973\00", align 1
@.str = private unnamed_addr constant [22 x i8] c"Problema sensor: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Maior divisor de %ld: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @FATORACAO(i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %numero = alloca i64, align 8
  %divisor = alloca i64, align 8
  %resto = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  store i64 %0, ptr %numero, align 8
  store i64 1, ptr %divisor, align 8
  store i64 2, ptr %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i64, ptr %numero, align 8
  %cmp = icmp ne i64 %1, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %numero, align 8
  %3 = load i64, ptr %i, align 8
  %rem = srem i64 %2, %3
  store i64 %rem, ptr %resto, align 8
  %4 = load i64, ptr %resto, align 8
  %cmp1 = icmp eq i64 %4, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i64, ptr %i, align 8
  store i64 %5, ptr %divisor, align 8
  %6 = load i64, ptr %i, align 8
  %7 = load i64, ptr %numero, align 8
  %div = sdiv i64 %7, %6
  store i64 %div, ptr %numero, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %8 = load i64, ptr %i, align 8
  %inc = add nsw i64 %8, 1
  store i64 %inc, ptr %i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %9 = load i64, ptr %divisor, align 8
  ret i64 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i64, align 8
  %MAIOR_DIVISOR = alloca i64, align 8
  %Sensor = alloca [11 x i8], align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Sensor, ptr align 1 @__const.main.Sensor, i64 11, i1 false)
  %arraydecay = getelementptr inbounds [11 x i8], ptr %Sensor, i64 0, i64 0
  %call = call i64 @atol(ptr noundef %arraydecay)
  store i64 %call, ptr %n, align 8
  %0 = load i64, ptr %n, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %0)
  %1 = load i64, ptr %n, align 8
  %call2 = call i64 @FATORACAO(i64 noundef %1)
  store i64 %call2, ptr %MAIOR_DIVISOR, align 8
  %2 = load i64, ptr %n, align 8
  %3 = load i64, ptr %MAIOR_DIVISOR, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %2, i64 noundef %3)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i64 @atol(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
