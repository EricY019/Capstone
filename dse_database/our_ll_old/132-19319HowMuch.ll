; ModuleID = './code/132-19319HowMuch.c'
source_filename = "./code/132-19319HowMuch.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"[M: %d B: %d C: %d]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"[[M: 37 B: 5 C: 4][M: 100 B: 14 C: 11]]\00", align 1
@__func__.tests = private unnamed_addr constant [6 x i8] c"tests\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"132-19319HowMuch.c\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"strcmp(howMuch (1,100),\22[[M: 37 B: 5 C: 4][M: 100 B: 14 C: 11]]\22) == 0\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"strcmp (howMuch (2950, 2950), \22[]\22) == 0\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"[[M: 20008 B: 2858 C: 2223][M: 20071 B: 2867 C: 2230]]\00", align 1
@.str.11 = private unnamed_addr constant [94 x i8] c"strcmp(howMuch (20000, 20100), \22[[M: 20008 B: 2858 C: 2223][M: 20071 B: 2867 C: 2230]]\22) == 0\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %temp = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %temp, align 4
  %2 = load ptr, ptr %b.addr, align 8
  %3 = load i32, ptr %2, align 4
  %4 = load ptr, ptr %a.addr, align 8
  store i32 %3, ptr %4, align 4
  %5 = load i32, ptr %temp, align 4
  %6 = load ptr, ptr %b.addr, align 8
  store i32 %5, ptr %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @howMuch(i32 noundef %m, i32 noundef %n) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %results = alloca ptr, align 8
  %c = alloca double, align 8
  %b = alloca double, align 8
  %i = alloca i32, align 4
  %intpart = alloca double, align 8
  %temp = alloca ptr, align 8
  store i32 %m, ptr %m.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @swap(ptr noundef %m.addr, ptr noundef %n.addr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call ptr @malloc(i64 noundef 1000) #6
  store ptr %call, ptr %results, align 8
  %2 = load ptr, ptr %results, align 8
  %3 = load ptr, ptr %results, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call1 = call ptr @__strcat_chk(ptr noundef %2, ptr noundef @.str, i64 noundef %4) #7
  store double 0.000000e+00, ptr %c, align 8
  store double 0.000000e+00, ptr %b, align 8
  %5 = load i32, ptr %m.addr, align 4
  store i32 %5, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp sle i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %8, 1
  %conv = sitofp i32 %sub to double
  %div = fdiv double %conv, 9.000000e+00
  store double %div, ptr %c, align 8
  %9 = load i32, ptr %i, align 4
  %sub3 = sub nsw i32 %9, 2
  %conv4 = sitofp i32 %sub3 to double
  %div5 = fdiv double %conv4, 7.000000e+00
  store double %div5, ptr %b, align 8
  %10 = load double, ptr %c, align 8
  %cmp6 = fcmp olt double %10, 0.000000e+00
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load double, ptr %b, align 8
  %cmp8 = fcmp olt double %11, 0.000000e+00
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end11:                                         ; preds = %lor.lhs.false
  %12 = load double, ptr %c, align 8
  %call12 = call double @modf(double noundef %12, ptr noundef %intpart) #7
  %cmp13 = fcmp oeq double %call12, 0.000000e+00
  br i1 %cmp13, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %if.end11
  %13 = load double, ptr %b, align 8
  %call15 = call double @modf(double noundef %13, ptr noundef %intpart) #7
  %cmp16 = fcmp oeq double %call15, 0.000000e+00
  br i1 %cmp16, label %if.then18, label %if.end25

if.then18:                                        ; preds = %land.lhs.true
  %call19 = call ptr @malloc(i64 noundef 35) #6
  store ptr %call19, ptr %temp, align 8
  %14 = load ptr, ptr %temp, align 8
  %15 = load ptr, ptr %temp, align 8
  %16 = call i64 @llvm.objectsize.i64.p0(ptr %15, i1 false, i1 true, i1 false)
  %17 = load i32, ptr %i, align 4
  %18 = load double, ptr %b, align 8
  %conv20 = fptosi double %18 to i32
  %19 = load double, ptr %c, align 8
  %conv21 = fptosi double %19 to i32
  %call22 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %14, i32 noundef 0, i64 noundef %16, ptr noundef @.str.1, i32 noundef %17, i32 noundef %conv20, i32 noundef %conv21)
  %20 = load ptr, ptr %results, align 8
  %21 = load ptr, ptr %temp, align 8
  %22 = load ptr, ptr %results, align 8
  %23 = call i64 @llvm.objectsize.i64.p0(ptr %22, i1 false, i1 true, i1 false)
  %call23 = call ptr @__strcat_chk(ptr noundef %20, ptr noundef %21, i64 noundef %23) #7
  %24 = load ptr, ptr %temp, align 8
  %25 = load ptr, ptr %temp, align 8
  %26 = call i64 @llvm.objectsize.i64.p0(ptr %25, i1 false, i1 true, i1 false)
  %call24 = call ptr @__strcpy_chk(ptr noundef %24, ptr noundef @.str.2, i64 noundef %26) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %land.lhs.true, %if.end11
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %if.then10
  %27 = load i32, ptr %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %results, align 8
  %29 = load ptr, ptr %results, align 8
  %30 = call i64 @llvm.objectsize.i64.p0(ptr %29, i1 false, i1 true, i1 false)
  %call26 = call ptr @__strcat_chk(ptr noundef %28, ptr noundef @.str.3, i64 noundef %30) #7
  %31 = load ptr, ptr %results, align 8
  ret ptr %31
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind
declare double @modf(double noundef, ptr noundef) #2

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @tests() #0 {
entry:
  %call = call ptr @howMuch(i32 noundef 1, i32 noundef 100)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %call)
  %call2 = call ptr @howMuch(i32 noundef 1, i32 noundef 100)
  %call3 = call i32 @strcmp(ptr noundef %call2, ptr noundef @.str.5) #7
  %cmp = icmp eq i32 %call3, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.tests, ptr noundef @.str.6, i32 noundef 40, ptr noundef @.str.7) #8
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %call4 = call ptr @howMuch(i32 noundef 2950, i32 noundef 2950)
  %call5 = call i32 @strcmp(ptr noundef %call4, ptr noundef @.str.8) #7
  %cmp6 = icmp eq i32 %call5, 0
  %lnot8 = xor i1 %cmp6, true
  %lnot.ext9 = zext i1 %lnot8 to i32
  %conv10 = sext i32 %lnot.ext9 to i64
  %tobool11 = icmp ne i64 %conv10, 0
  br i1 %tobool11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.tests, ptr noundef @.str.6, i32 noundef 41, ptr noundef @.str.9) #8
  unreachable

1:                                                ; No predecessors!
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %1
  %call15 = call ptr @howMuch(i32 noundef 20000, i32 noundef 20100)
  %call16 = call i32 @strcmp(ptr noundef %call15, ptr noundef @.str.10) #7
  %cmp17 = icmp eq i32 %call16, 0
  %lnot19 = xor i1 %cmp17, true
  %lnot.ext20 = zext i1 %lnot19 to i32
  %conv21 = sext i32 %lnot.ext20 to i64
  %tobool22 = icmp ne i64 %conv21, 0
  br i1 %tobool22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.end14
  call void @__assert_rtn(ptr noundef @__func__.tests, ptr noundef @.str.6, i32 noundef 43, ptr noundef @.str.11) #8
  unreachable

2:                                                ; No predecessors!
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end14
  br label %cond.end25

cond.end25:                                       ; preds = %cond.false24, %2
  ret void
}

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @tests()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }
attributes #8 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
