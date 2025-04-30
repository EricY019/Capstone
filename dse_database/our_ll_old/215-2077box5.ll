; ModuleID = './code/215-2077box5.c'
source_filename = "./code/215-2077box5.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"graf5.dat\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%d\09 %d\09 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nleft = alloca i32, align 4
  %t = alloca i32, align 4
  %r = alloca double, align 8
  %error_bar = alloca double, align 8
  %error = alloca double, align 8
  %sigma = alloca double, align 8
  %graf = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 800, ptr %nleft, align 4
  store i32 0, ptr %t, align 4
  store double 0.000000e+00, ptr %error, align 8
  %call = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %graf, align 8
  %call1 = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call1 to i32
  call void @srand(i32 noundef %conv)
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %entry
  %0 = load i32, ptr %t, align 4
  %cmp = icmp slt i32 %0, 100000
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i32 @rand()
  %conv4 = sitofp i32 %call3 to double
  %mul = fmul double %conv4, 1.000000e+00
  %div = fdiv double %mul, 0x41DFFFFFFFC00000
  store double %div, ptr %r, align 8
  %1 = load double, ptr %r, align 8
  %cmp5 = fcmp ole double %1, 5.000000e-01
  %conv6 = zext i1 %cmp5 to i32
  %2 = load i32, ptr %nleft, align 4
  %cmp7 = icmp sgt i32 %2, 0
  %conv8 = zext i1 %cmp7 to i32
  %and = and i32 %conv6, %conv8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i32, ptr %nleft, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %nleft, align 4
  br label %if.end16

if.else:                                          ; preds = %while.body
  %4 = load double, ptr %r, align 8
  %cmp9 = fcmp oge double %4, 5.000000e-01
  %conv10 = zext i1 %cmp9 to i32
  %5 = load i32, ptr %nleft, align 4
  %sub = sub nsw i32 800, %5
  %cmp11 = icmp sgt i32 %sub, 0
  %conv12 = zext i1 %cmp11 to i32
  %and13 = and i32 %conv10, %conv12
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.else
  %6 = load i32, ptr %nleft, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %nleft, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then
  %7 = load i32, ptr %t, align 4
  %inc17 = add nsw i32 %7, 1
  store i32 %inc17, ptr %t, align 4
  %8 = load ptr, ptr %graf, align 8
  %9 = load i32, ptr %t, align 4
  %10 = load i32, ptr %nleft, align 4
  %11 = load i32, ptr %nleft, align 4
  %sub18 = sub nsw i32 800, %11
  %call19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.2, i32 noundef %9, i32 noundef %10, i32 noundef %sub18) #3
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
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
