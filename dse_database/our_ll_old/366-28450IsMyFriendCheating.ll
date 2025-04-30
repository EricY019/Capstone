; ModuleID = './code/366-28450IsMyFriendCheating.c'
source_filename = "./code/366-28450IsMyFriendCheating.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Pair = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"{%lld, %lld}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Error. Expected %s but got %s\0A\00", align 1
@__func__.dotest = private unnamed_addr constant [7 x i8] c"dotest\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"366-28450IsMyFriendCheating.c\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"strcmp(sact, sexpr) == 0\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"{{15, 21}{21, 15}}\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"{{21, 31}{31, 21}}\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"{{55, 91}{91, 55}}\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @removNb(i64 noundef %n, ptr noundef %length) #0 {
entry:
  %n.addr = alloca i64, align 8
  %length.addr = alloca ptr, align 8
  %result = alloca ptr, align 8
  %sum = alloca i64, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %length, ptr %length.addr, align 8
  %call = call ptr @malloc(i64 noundef 800) #6
  store ptr %call, ptr %result, align 8
  %0 = load i64, ptr %n.addr, align 8
  %1 = load i64, ptr %n.addr, align 8
  %add = add nsw i64 %1, 1
  %mul = mul nsw i64 %0, %add
  %div = sdiv i64 %mul, 2
  store i64 %div, ptr %sum, align 8
  store i64 1, ptr %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %a, align 8
  %3 = load i64, ptr %n.addr, align 8
  %cmp = icmp sle i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %sum, align 8
  %5 = load i64, ptr %a, align 8
  %sub = sub nsw i64 %4, %5
  %6 = load i64, ptr %a, align 8
  %add1 = add nsw i64 %6, 1
  %rem = srem i64 %sub, %add1
  %cmp2 = icmp eq i64 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end18

if.then:                                          ; preds = %for.body
  %7 = load i64, ptr %sum, align 8
  %8 = load i64, ptr %a, align 8
  %sub3 = sub nsw i64 %7, %8
  %conv = sitofp i64 %sub3 to double
  %9 = load i64, ptr %a, align 8
  %conv4 = sitofp i64 %9 to double
  %add5 = fadd double %conv4, 1.000000e+00
  %div6 = fdiv double %conv, %add5
  %conv7 = fptosi double %div6 to i64
  store i64 %conv7, ptr %b, align 8
  %10 = load i64, ptr %b, align 8
  %11 = load i64, ptr %n.addr, align 8
  %cmp8 = icmp slt i64 %10, %11
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load i64, ptr %b, align 8
  %cmp10 = icmp sgt i64 %12, 0
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call ptr @malloc(i64 noundef 16) #6
  %13 = load ptr, ptr %result, align 8
  %14 = load ptr, ptr %length.addr, align 8
  %15 = load i32, ptr %14, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %13, i64 %idxprom
  store ptr %call13, ptr %arrayidx, align 8
  %16 = load i64, ptr %a, align 8
  %17 = load ptr, ptr %result, align 8
  %18 = load ptr, ptr %length.addr, align 8
  %19 = load i32, ptr %18, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds ptr, ptr %17, i64 %idxprom14
  %20 = load ptr, ptr %arrayidx15, align 8
  %first = getelementptr inbounds %struct.Pair, ptr %20, i32 0, i32 0
  store i64 %16, ptr %first, align 8
  %21 = load i64, ptr %b, align 8
  %22 = load ptr, ptr %result, align 8
  %23 = load ptr, ptr %length.addr, align 8
  %24 = load i32, ptr %23, align 4
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %22, i64 %idxprom16
  %25 = load ptr, ptr %arrayidx17, align 8
  %snd = getelementptr inbounds %struct.Pair, ptr %25, i32 0, i32 1
  store i64 %21, ptr %snd, align 8
  %26 = load ptr, ptr %length.addr, align 8
  %27 = load i32, ptr %26, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %26, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true, %if.then
  br label %if.end18

if.end18:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %28 = load i64, ptr %a, align 8
  %inc19 = add nsw i64 %28, 1
  store i64 %inc19, ptr %a, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %29 = load ptr, ptr %result, align 8
  ret ptr %29
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @array2StringData(ptr noundef %arr, i32 noundef %size) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %result = alloca ptr, align 8
  %temp = alloca [50 x i8], align 1
  %i = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load i32, ptr %size.addr, align 4
  %mul = mul nsw i32 %0, 7
  %conv = sext i32 %mul to i64
  %call = call ptr @malloc(i64 noundef %conv) #6
  store ptr %call, ptr %result, align 8
  %1 = load ptr, ptr %result, align 8
  %2 = load ptr, ptr %result, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %call1 = call ptr @__strcpy_chk(ptr noundef %1, ptr noundef @.str, i64 noundef %3) #7
  %arraydecay = getelementptr inbounds [50 x i8], ptr %temp, i64 0, i64 0
  %call2 = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef @.str.1, i64 noundef 50) #7
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay4 = getelementptr inbounds [50 x i8], ptr %temp, i64 0, i64 0
  %6 = load ptr, ptr %arr.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %first = getelementptr inbounds %struct.Pair, ptr %8, i32 0, i32 0
  %9 = load i64, ptr %first, align 8
  %10 = load ptr, ptr %arr.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds ptr, ptr %10, i64 %idxprom5
  %12 = load ptr, ptr %arrayidx6, align 8
  %snd = getelementptr inbounds %struct.Pair, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %snd, align 8
  %call7 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay4, i32 noundef 0, i64 noundef 50, ptr noundef @.str.2, i64 noundef %9, i64 noundef %13)
  %14 = load ptr, ptr %result, align 8
  %arraydecay8 = getelementptr inbounds [50 x i8], ptr %temp, i64 0, i64 0
  %15 = load ptr, ptr %result, align 8
  %16 = call i64 @llvm.objectsize.i64.p0(ptr %15, i1 false, i1 true, i1 false)
  %call9 = call ptr @__strcat_chk(ptr noundef %14, ptr noundef %arraydecay8, i64 noundef %16) #7
  %arraydecay10 = getelementptr inbounds [50 x i8], ptr %temp, i64 0, i64 0
  %call11 = call ptr @__strcpy_chk(ptr noundef %arraydecay10, ptr noundef @.str.1, i64 noundef 50) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %result, align 8
  %19 = load ptr, ptr %result, align 8
  %20 = call i64 @llvm.objectsize.i64.p0(ptr %19, i1 false, i1 true, i1 false)
  %call12 = call ptr @__strcat_chk(ptr noundef %18, ptr noundef @.str.3, i64 noundef %20) #7
  %21 = load ptr, ptr %result, align 8
  ret ptr %21
}

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @dotest(i64 noundef %n, ptr noundef %sexpr) #0 {
entry:
  %n.addr = alloca i64, align 8
  %sexpr.addr = alloca ptr, align 8
  %lg = alloca i32, align 4
  %act = alloca ptr, align 8
  %sact = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %sexpr, ptr %sexpr.addr, align 8
  store i32 0, ptr %lg, align 4
  %0 = load i64, ptr %n.addr, align 8
  %call = call ptr @removNb(i64 noundef %0, ptr noundef %lg)
  store ptr %call, ptr %act, align 8
  %1 = load ptr, ptr %act, align 8
  %2 = load i32, ptr %lg, align 4
  %call1 = call ptr @array2StringData(ptr noundef %1, i32 noundef %2)
  store ptr %call1, ptr %sact, align 8
  %3 = load ptr, ptr %sact, align 8
  %4 = load ptr, ptr %sexpr.addr, align 8
  %call2 = call i32 @strcmp(ptr noundef %3, ptr noundef %4) #7
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %sexpr.addr, align 8
  %6 = load ptr, ptr %sact, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %5, ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %sact, align 8
  %8 = load ptr, ptr %sexpr.addr, align 8
  %call4 = call i32 @strcmp(ptr noundef %7, ptr noundef %8) #7
  %cmp5 = icmp eq i32 %call4, 0
  %lnot = xor i1 %cmp5, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__assert_rtn(ptr noundef @__func__.dotest, ptr noundef @.str.5, i32 noundef 57, ptr noundef @.str.6) #8
  unreachable

9:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %9
  %10 = load ptr, ptr %sact, align 8
  %call6 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.7) #7
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %cond.end
  %11 = load ptr, ptr %sact, align 8
  call void @free(ptr noundef %11)
  store ptr null, ptr %sact, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %cond.end
  ret void
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  call void @dotest(i64 noundef 26, ptr noundef @.str.8)
  call void @dotest(i64 noundef 100, ptr noundef @.str.7)
  call void @dotest(i64 noundef 37, ptr noundef @.str.9)
  call void @dotest(i64 noundef 101, ptr noundef @.str.10)
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
!7 = distinct !{!7, !6}
