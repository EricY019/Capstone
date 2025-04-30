; ModuleID = './code/131-24721mktest.c'
source_filename = "./code/131-24721mktest.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define signext i8 @rc() #0 {
entry:
  %retval = alloca i8, align 1
  %k = alloca i32, align 4
  %call = call i32 @rand()
  %rem = srem i32 %call, 4
  store i32 %rem, ptr %k, align 4
  %0 = load i32, ptr %k, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 97, ptr %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %k, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i8 99, ptr %retval, align 1
  br label %return

if.else3:                                         ; preds = %if.else
  %2 = load i32, ptr %k, align 4
  %cmp4 = icmp eq i32 %2, 2
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store i8 103, ptr %retval, align 1
  br label %return

if.else6:                                         ; preds = %if.else3
  %3 = load i32, ptr %k, align 4
  %cmp7 = icmp eq i32 %3, 3
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else6
  store i8 116, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %if.else6
  br label %if.end9

if.end9:                                          ; preds = %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end11, %if.then8, %if.then5, %if.then2, %if.then
  %4 = load i8, ptr %retval, align 1
  ret i8 %4
}

declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %z = alloca i32, align 4
  %p = alloca double, align 8
  %P = alloca double, align 8
  %seed = alloca i64, align 8
  %pair = alloca i32, align 4
  %n_pair = alloca i32, align 4
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store double 1.000000e-02, ptr %P, align 8
  store i64 -1, ptr %seed, align 8
  store i32 1, ptr %n_pair, align 4
  store i32 10000, ptr %n, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %2)
  store i32 %call, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @atoi(ptr noundef %5)
  %conv = sext i32 %call4 to i64
  store i64 %conv, ptr %seed, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %6 = load i32, ptr %argc.addr, align 4
  %cmp6 = icmp sgt i32 %6, 3
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds ptr, ptr %7, i64 3
  %8 = load ptr, ptr %arrayidx9, align 8
  %call10 = call double @atof(ptr noundef %8)
  store double %call10, ptr %P, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5
  %9 = load i32, ptr %argc.addr, align 4
  %cmp12 = icmp sgt i32 %9, 4
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end11
  %10 = load ptr, ptr %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %10, i64 4
  %11 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i32 @atoi(ptr noundef %11)
  store i32 %call16, ptr %n_pair, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11
  %12 = load i64, ptr %seed, align 8
  %cmp18 = icmp sge i64 %12, 0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  %13 = load i64, ptr %seed, align 8
  %conv21 = trunc i64 %13 to i32
  call void @srand(i32 noundef %conv21)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17
  %14 = load i32, ptr %n, align 4
  %add = add nsw i32 %14, 1
  %conv23 = sext i32 %add to i64
  %mul = mul i64 1, %conv23
  %call24 = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call24, ptr %a, align 8
  %15 = load ptr, ptr %a, align 8
  %16 = load i32, ptr %n, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds i8, ptr %15, i64 %idxprom
  store i8 0, ptr %arrayidx25, align 1
  store i32 0, ptr %pair, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc78, %if.end22
  %17 = load i32, ptr %pair, align 4
  %18 = load i32, ptr %n_pair, align 4
  %cmp26 = icmp slt i32 %17, %18
  br i1 %cmp26, label %for.body, label %for.end80

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %for.body
  %19 = load i32, ptr %i, align 4
  %20 = load i32, ptr %n, align 4
  %cmp29 = icmp slt i32 %19, %20
  br i1 %cmp29, label %for.body31, label %for.end

for.body31:                                       ; preds = %for.cond28
  %call32 = call signext i8 @rc()
  %21 = load ptr, ptr %a, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds i8, ptr %21, i64 %idxprom33
  store i8 %call32, ptr %arrayidx34, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body31
  %23 = load i32, ptr %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond28, !llvm.loop !5

for.end:                                          ; preds = %for.cond28
  %24 = load ptr, ptr %a, align 8
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %24)
  store i32 0, ptr %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc74, %for.end
  %25 = load i32, ptr %i, align 4
  %26 = load i32, ptr %n, align 4
  %cmp37 = icmp slt i32 %25, %26
  br i1 %cmp37, label %for.body39, label %for.end76

for.body39:                                       ; preds = %for.cond36
  %call40 = call i32 @rand()
  %conv41 = sitofp i32 %call40 to double
  %div = fdiv double %conv41, 0x41E0000000000000
  store double %div, ptr %p, align 8
  %27 = load double, ptr %p, align 8
  %28 = load double, ptr %P, align 8
  %cmp42 = fcmp olt double %27, %28
  br i1 %cmp42, label %if.then44, label %if.else68

if.then44:                                        ; preds = %for.body39
  %call45 = call i32 @rand()
  %rem = srem i32 %call45, 3
  store i32 %rem, ptr %k, align 4
  %29 = load i32, ptr %k, align 4
  %cmp46 = icmp eq i32 %29, 0
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.then44
  %call49 = call signext i8 @rc()
  %conv50 = sext i8 %call49 to i32
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv50)
  br label %if.end67

if.else:                                          ; preds = %if.then44
  %30 = load i32, ptr %k, align 4
  %cmp52 = icmp eq i32 %30, 1
  br i1 %cmp52, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else
  br label %for.inc74

if.else55:                                        ; preds = %if.else
  %31 = load i32, ptr %k, align 4
  %cmp56 = icmp eq i32 %31, 2
  br i1 %cmp56, label %if.then58, label %if.end65

if.then58:                                        ; preds = %if.else55
  %32 = load ptr, ptr %a, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %33 to i64
  %arrayidx60 = getelementptr inbounds i8, ptr %32, i64 %idxprom59
  %34 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %34 to i32
  %call62 = call signext i8 @rc()
  %conv63 = sext i8 %call62 to i32
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv61, i32 noundef %conv63)
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %if.else55
  br label %if.end66

if.end66:                                         ; preds = %if.end65
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then48
  br label %if.end73

if.else68:                                        ; preds = %for.body39
  %35 = load ptr, ptr %a, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %36 to i64
  %arrayidx70 = getelementptr inbounds i8, ptr %35, i64 %idxprom69
  %37 = load i8, ptr %arrayidx70, align 1
  %conv71 = sext i8 %37 to i32
  %call72 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv71)
  br label %if.end73

if.end73:                                         ; preds = %if.else68, %if.end67
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73, %if.then54
  %38 = load i32, ptr %i, align 4
  %inc75 = add nsw i32 %38, 1
  store i32 %inc75, ptr %i, align 4
  br label %for.cond36, !llvm.loop !7

for.end76:                                        ; preds = %for.cond36
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %for.inc78

for.inc78:                                        ; preds = %for.end76
  %39 = load i32, ptr %pair, align 4
  %inc79 = add nsw i32 %39, 1
  store i32 %inc79, ptr %pair, align 4
  br label %for.cond, !llvm.loop !8

for.end80:                                        ; preds = %for.cond
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

declare i32 @atoi(ptr noundef) #1

declare double @atof(ptr noundef) #1

declare void @srand(i32 noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
!8 = distinct !{!8, !6}
