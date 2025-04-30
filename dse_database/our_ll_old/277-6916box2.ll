; ModuleID = './code/277-6916box2.c'
source_filename = "./code/277-6916box2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"graf2.dat\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%d\09 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nleft = alloca i32, align 4
  %N = alloca i32, align 4
  %t = alloca i32, align 4
  %r = alloca double, align 8
  %graf = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %graf, align 8
  %call1 = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call1 to i32
  call void @srand(i32 noundef %conv)
  store i32 8, ptr %N, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %N, align 4
  %cmp = icmp sle i32 %0, 10000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %N, align 4
  store i32 %1, ptr %nleft, align 4
  store i32 0, ptr %t, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %2 = load i32, ptr %nleft, align 4
  %3 = load i32, ptr %N, align 4
  %div = sdiv i32 %3, 2
  %cmp3 = icmp ne i32 %2, %div
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call i32 @rand()
  %conv6 = sitofp i32 %call5 to double
  %mul = fmul double %conv6, 1.000000e+00
  %div7 = fdiv double %mul, 0x41DFFFFFFFC00000
  store double %div7, ptr %r, align 8
  %4 = load double, ptr %r, align 8
  %5 = load i32, ptr %nleft, align 4
  %conv8 = sitofp i32 %5 to double
  %mul9 = fmul double %conv8, 1.000000e+00
  %6 = load i32, ptr %N, align 4
  %conv10 = sitofp i32 %6 to double
  %div11 = fdiv double %mul9, %conv10
  %cmp12 = fcmp ole double %4, %div11
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %7 = load i32, ptr %nleft, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %nleft, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %8 = load i32, ptr %nleft, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %nleft, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i32, ptr %t, align 4
  %inc14 = add nsw i32 %9, 1
  store i32 %inc14, ptr %t, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %10 = load ptr, ptr %graf, align 8
  %11 = load i32, ptr %N, align 4
  %12 = load i32, ptr %t, align 4
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.2, i32 noundef %11, i32 noundef %12) #3
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %13 = load i32, ptr %N, align 4
  %mul16 = mul nsw i32 %13, 2
  store i32 %mul16, ptr %N, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
