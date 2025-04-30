; ModuleID = './code/275-15430simpleVersion.c'
source_filename = "./code/275-15430simpleVersion.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [49 x i8] c"f(%d) too big for unsigned long long. Stopping.\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"f(%d) = %llu%s : \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c", prime\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Buzz\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Fizz\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @fibonacciBuzzFizz(i32 noundef 100)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @fibonacciBuzzFizz(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %prime = alloca i32, align 4
  %first = alloca i64, align 8
  %second = alloca i64, align 8
  %fibonacci = alloca i64, align 8
  store i32 %n, ptr %n.addr, align 4
  store i64 0, ptr %first, align 8
  store i64 1, ptr %second, align 8
  store i64 0, ptr %fibonacci, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %second, align 8
  %3 = load i64, ptr %first, align 8
  %sub = sub i64 -1, %3
  %cmp1 = icmp ugt i64 %2, %sub
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  br label %for.end

if.else:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %5, 2
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %6 = load i32, ptr %i, align 4
  %conv = sext i32 %6 to i64
  store i64 %conv, ptr %fibonacci, align 8
  br label %if.end

if.else4:                                         ; preds = %if.else
  %7 = load i64, ptr %first, align 8
  %8 = load i64, ptr %second, align 8
  %add = add i64 %7, %8
  store i64 %add, ptr %fibonacci, align 8
  %9 = load i64, ptr %second, align 8
  store i64 %9, ptr %first, align 8
  %10 = load i64, ptr %fibonacci, align 8
  store i64 %10, ptr %second, align 8
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  %11 = load i64, ptr %fibonacci, align 8
  %call5 = call i32 @isPrime(i64 noundef %11)
  store i32 %call5, ptr %prime, align 4
  %12 = load i32, ptr %i, align 4
  %13 = load i64, ptr %fibonacci, align 8
  %14 = load i32, ptr %prime, align 4
  %tobool = icmp ne i32 %14, 0
  %15 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.2, ptr @.str.3
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %12, i64 noundef %13, ptr noundef %cond)
  %16 = load i32, ptr %prime, align 4
  %tobool7 = icmp ne i32 %16, 0
  br i1 %tobool7, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load i64, ptr %fibonacci, align 8
  %rem = urem i64 %17, 3
  %cmp8 = icmp eq i64 %rem, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %lor.lhs.false
  %18 = load i32, ptr %prime, align 4
  %tobool13 = icmp ne i32 %18, 0
  br i1 %tobool13, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end12
  %19 = load i64, ptr %fibonacci, align 8
  %rem15 = urem i64 %19, 5
  %cmp16 = icmp eq i64 %rem15, 0
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %lor.lhs.false14, %if.end12
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %lor.lhs.false14
  %20 = load i32, ptr %prime, align 4
  %tobool21 = icmp ne i32 %20, 0
  br i1 %tobool21, label %if.end29, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end20
  %21 = load i64, ptr %fibonacci, align 8
  %rem22 = urem i64 %21, 3
  %tobool23 = icmp ne i64 %rem22, 0
  br i1 %tobool23, label %land.lhs.true24, label %if.end29

land.lhs.true24:                                  ; preds = %land.lhs.true
  %22 = load i64, ptr %fibonacci, align 8
  %rem25 = urem i64 %22, 5
  %tobool26 = icmp ne i64 %rem25, 0
  br i1 %tobool26, label %if.then27, label %if.end29

if.then27:                                        ; preds = %land.lhs.true24
  %23 = load i64, ptr %fibonacci, align 8
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i64 noundef %23)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %land.lhs.true24, %land.lhs.true, %if.end20
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %if.end31

if.end31:                                         ; preds = %if.end29
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %24 = load i32, ptr %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPrime(i64 noundef %num) #0 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %num, ptr %num.addr, align 8
  %0 = load i64, ptr %num.addr, align 8
  %cmp = icmp eq i64 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %num.addr, align 8
  %cmp1 = icmp eq i64 %1, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %2 = load i64, ptr %num.addr, align 8
  %cmp2 = icmp ule i64 %2, 1
  br i1 %cmp2, label %if.then8, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %if.else
  %3 = load i64, ptr %num.addr, align 8
  %rem = urem i64 %3, 2
  %cmp4 = icmp eq i64 %rem, 0
  br i1 %cmp4, label %if.then8, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %4 = load i64, ptr %num.addr, align 8
  %rem6 = urem i64 %4, 3
  %cmp7 = icmp eq i64 %rem6, 0
  br i1 %cmp7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %lor.lhs.false5, %lor.lhs.false3, %if.else
  store i32 0, ptr %retval, align 4
  br label %return

if.else9:                                         ; preds = %lor.lhs.false5
  store i64 5, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else9
  %5 = load i64, ptr %i, align 8
  %6 = load i64, ptr %i, align 8
  %mul = mul i64 %5, %6
  %7 = load i64, ptr %num.addr, align 8
  %cmp10 = icmp ule i64 %mul, %7
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %num.addr, align 8
  %9 = load i64, ptr %i, align 8
  %rem11 = urem i64 %8, %9
  %cmp12 = icmp eq i64 %rem11, 0
  br i1 %cmp12, label %if.then16, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %for.body
  %10 = load i64, ptr %num.addr, align 8
  %11 = load i64, ptr %i, align 8
  %add = add i64 %11, 2
  %rem14 = urem i64 %10, %add
  %cmp15 = icmp eq i64 %rem14, 0
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %lor.lhs.false13, %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i64, ptr %i, align 8
  %add17 = add i64 %12, 6
  store i64 %add17, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  br label %if.end18

if.end18:                                         ; preds = %for.end
  br label %if.end19

if.end19:                                         ; preds = %if.end18
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then16, %if.then8, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
