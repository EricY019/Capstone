; ModuleID = 'code/030-23137p073.c'
source_filename = "code/030-23137p073.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %max = alloca i32, align 4
  %primes = alloca %struct.node*, align 8
  %factors = alloca %struct.node**, align 8
  %count = alloca i32, align 4
  %d = alloca i32, align 4
  %n = alloca i32, align 4
  %result = alloca double, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 12000, i32* %max, align 4
  %call = call %struct.node* @gen_primes(i32 12000)
  store %struct.node* %call, %struct.node** %primes, align 8
  %0 = load %struct.node*, %struct.node** %primes, align 8
  %call1 = call %struct.node** @gen_factors(i32 12001, %struct.node* %0)
  store %struct.node** %call1, %struct.node*** %factors, align 8
  store i32 0, i32* %count, align 4
  store i32 2, i32* %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %1 = load i32, i32* %d, align 4
  %cmp = icmp sle i32 %1, 12000
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %d, align 4
  %div = sdiv i32 %2, 3
  %add = add nsw i32 %div, 1
  store i32 %add, i32* %n, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %n, align 4
  %4 = load i32, i32* %d, align 4
  %sub = sub nsw i32 %4, 1
  %div3 = sdiv i32 %sub, 2
  %add4 = add nsw i32 %div3, 1
  %cmp5 = icmp slt i32 %3, %add4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %5 = load i32, i32* %n, align 4
  %conv = sitofp i32 %5 to double
  %mul = fmul double 1.000000e+00, %conv
  %6 = load i32, i32* %d, align 4
  %conv7 = sitofp i32 %6 to double
  %div8 = fdiv double %mul, %conv7
  store double %div8, double* %result, align 8
  %7 = load double, double* %result, align 8
  %cmp9 = fcmp ogt double %7, 0x3FD5555555555555
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body6
  %8 = load double, double* %result, align 8
  %cmp11 = fcmp olt double %8, 5.000000e-01
  br i1 %cmp11, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %9 = load i32, i32* %n, align 4
  %10 = load i32, i32* %d, align 4
  %11 = load %struct.node**, %struct.node*** %factors, align 8
  %call14 = call i32 @relative_prime(i32 %9, i32 %10, %struct.node** %11)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true13
  %12 = load i32, i32* %count, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true13, %land.lhs.true, %for.body6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %n, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, i32* %n, align 4
  br label %for.cond2, !llvm.loop !4

for.end:                                          ; preds = %for.cond2
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %14 = load i32, i32* %d, align 4
  %inc17 = add nsw i32 %14, 1
  store i32 %inc17, i32* %d, align 4
  br label %for.cond, !llvm.loop !6

for.end18:                                        ; preds = %for.cond
  %15 = load i32, i32* %count, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node* @gen_primes(i32 %max) #0 {
entry:
  %max.addr = alloca i32, align 4
  %primes = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %head = alloca %struct.node*, align 8
  %curr = alloca %struct.node*, align 8
  %i18 = alloca i32, align 4
  %n = alloca %struct.node*, align 8
  store i32 %max, i32* %max.addr, align 4
  %0 = load i32, i32* %max.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias align 16 i8* @calloc(i64 %conv, i64 4) #3
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %primes, align 8
  %2 = load i32*, i32** %primes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 0
  store i32 1, i32* %arrayidx, align 4
  %3 = load i32*, i32** %primes, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 1
  store i32 1, i32* %arrayidx1, align 4
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end16, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %max.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %6, 2
  store i32 %mul, i32* %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %max.addr, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %9 = load i32*, i32** %primes, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  store i32 1, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  %add = add nsw i32 %12, %11
  store i32 %add, i32* %j, align 4
  br label %for.cond3, !llvm.loop !7

for.end:                                          ; preds = %for.cond3
  %13 = load i32, i32* %i, align 4
  %add8 = add nsw i32 %13, 1
  store i32 %add8, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %max.addr, align 4
  %cmp10 = icmp slt i32 %14, %15
  br i1 %cmp10, label %for.body12, label %for.end16

for.body12:                                       ; preds = %for.cond9
  %16 = load i32*, i32** %primes, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %16, i64 %idxprom13
  %18 = load i32, i32* %arrayidx14, align 4
  %tobool = icmp ne i32 %18, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body12
  br label %for.end16

if.end:                                           ; preds = %for.body12
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond9, !llvm.loop !8

for.end16:                                        ; preds = %if.then, %for.cond9
  br label %for.cond, !llvm.loop !9

for.end17:                                        ; preds = %for.cond
  store %struct.node* null, %struct.node** %head, align 8
  store %struct.node* null, %struct.node** %curr, align 8
  store i32 0, i32* %i18, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc32, %for.end17
  %20 = load i32, i32* %i18, align 4
  %21 = load i32, i32* %max.addr, align 4
  %cmp20 = icmp slt i32 %20, %21
  br i1 %cmp20, label %for.body22, label %for.end34

for.body22:                                       ; preds = %for.cond19
  %22 = load i32*, i32** %primes, align 8
  %23 = load i32, i32* %i18, align 4
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds i32, i32* %22, i64 %idxprom23
  %24 = load i32, i32* %arrayidx24, align 4
  %tobool25 = icmp ne i32 %24, 0
  br i1 %tobool25, label %if.end31, label %if.then26

if.then26:                                        ; preds = %for.body22
  %call27 = call noalias align 16 i8* @calloc(i64 1, i64 16) #3
  %25 = bitcast i8* %call27 to %struct.node*
  store %struct.node* %25, %struct.node** %n, align 8
  %26 = load i32, i32* %i18, align 4
  %27 = load %struct.node*, %struct.node** %n, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 0
  store i32 %26, i32* %value, align 8
  %28 = load %struct.node*, %struct.node** %head, align 8
  %tobool28 = icmp ne %struct.node* %28, null
  br i1 %tobool28, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.then26
  %29 = load %struct.node*, %struct.node** %n, align 8
  store %struct.node* %29, %struct.node** %head, align 8
  br label %if.end30

if.else:                                          ; preds = %if.then26
  %30 = load %struct.node*, %struct.node** %n, align 8
  %31 = load %struct.node*, %struct.node** %curr, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  store %struct.node* %30, %struct.node** %next, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  %32 = load %struct.node*, %struct.node** %n, align 8
  store %struct.node* %32, %struct.node** %curr, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %for.body22
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %33 = load i32, i32* %i18, align 4
  %inc33 = add nsw i32 %33, 1
  store i32 %inc33, i32* %i18, align 4
  br label %for.cond19, !llvm.loop !10

for.end34:                                        ; preds = %for.cond19
  %34 = load i32*, i32** %primes, align 8
  %35 = bitcast i32* %34 to i8*
  call void @free(i8* %35) #3
  %36 = load %struct.node*, %struct.node** %head, align 8
  ret %struct.node* %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node** @gen_factors(i32 %max, %struct.node* %primes) #0 {
entry:
  %max.addr = alloca i32, align 4
  %primes.addr = alloca %struct.node*, align 8
  %factors = alloca %struct.node**, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %n_factors = alloca %struct.node*, align 8
  %curr = alloca %struct.node*, align 8
  %factor = alloca %struct.node*, align 8
  store i32 %max, i32* %max.addr, align 4
  store %struct.node* %primes, %struct.node** %primes.addr, align 8
  %0 = load i32, i32* %max.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias align 16 i8* @calloc(i64 %conv, i64 8) #3
  %1 = bitcast i8* %call to %struct.node**
  store %struct.node** %1, %struct.node*** %factors, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %max.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* %n, align 4
  %5 = load %struct.node**, %struct.node*** %factors, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.node*, %struct.node** %5, i64 %idxprom
  %7 = load %struct.node*, %struct.node** %arrayidx, align 8
  store %struct.node* %7, %struct.node** %n_factors, align 8
  %8 = load %struct.node*, %struct.node** %primes.addr, align 8
  store %struct.node* %8, %struct.node** %curr, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %9 = load %struct.node*, %struct.node** %curr, align 8
  %tobool = icmp ne %struct.node* %9, null
  br i1 %tobool, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond2
  %10 = load i32, i32* %n, align 4
  %11 = load %struct.node*, %struct.node** %curr, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  %12 = load i32, i32* %value, align 8
  %rem = srem i32 %10, %12
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.else15

if.then:                                          ; preds = %for.body3
  %13 = load %struct.node*, %struct.node** %curr, align 8
  %value6 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 0
  %14 = load i32, i32* %value6, align 8
  %15 = load i32, i32* %n, align 4
  %div = sdiv i32 %15, %14
  store i32 %div, i32* %n, align 4
  %call7 = call noalias align 16 i8* @calloc(i64 1, i64 16) #3
  %16 = bitcast i8* %call7 to %struct.node*
  store %struct.node* %16, %struct.node** %factor, align 8
  %17 = load %struct.node*, %struct.node** %curr, align 8
  %value8 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  %18 = load i32, i32* %value8, align 8
  %19 = load %struct.node*, %struct.node** %factor, align 8
  %value9 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 0
  store i32 %18, i32* %value9, align 8
  %20 = load %struct.node*, %struct.node** %n_factors, align 8
  %cmp10 = icmp eq %struct.node* %20, null
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then
  %21 = load %struct.node*, %struct.node** %factor, align 8
  store %struct.node* %21, %struct.node** %n_factors, align 8
  %22 = load %struct.node*, %struct.node** %n_factors, align 8
  %23 = load %struct.node**, %struct.node*** %factors, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds %struct.node*, %struct.node** %23, i64 %idxprom13
  store %struct.node* %22, %struct.node** %arrayidx14, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %25 = load %struct.node*, %struct.node** %factor, align 8
  %26 = load %struct.node*, %struct.node** %n_factors, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 1
  store %struct.node* %25, %struct.node** %next, align 8
  %27 = load %struct.node*, %struct.node** %factor, align 8
  store %struct.node* %27, %struct.node** %n_factors, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then12
  br label %if.end21

if.else15:                                        ; preds = %for.body3
  %28 = load %struct.node*, %struct.node** %curr, align 8
  %value16 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 0
  %29 = load i32, i32* %value16, align 8
  %30 = load i32, i32* %n, align 4
  %cmp17 = icmp sgt i32 %29, %30
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else15
  br label %for.end

if.end20:                                         ; preds = %if.else15
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %31 = load %struct.node*, %struct.node** %curr, align 8
  %next22 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 1
  %32 = load %struct.node*, %struct.node** %next22, align 8
  store %struct.node* %32, %struct.node** %curr, align 8
  br label %for.cond2, !llvm.loop !11

for.end:                                          ; preds = %if.then19, %for.cond2
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !12

for.end24:                                        ; preds = %for.cond
  %34 = load %struct.node**, %struct.node*** %factors, align 8
  ret %struct.node** %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @relative_prime(i32 %n, i32 %d, %struct.node** %factors) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %factors.addr = alloca %struct.node**, align 8
  %n_factor = alloca %struct.node*, align 8
  %d_factor = alloca %struct.node*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %d, i32* %d.addr, align 4
  store %struct.node** %factors, %struct.node*** %factors.addr, align 8
  %0 = load %struct.node**, %struct.node*** %factors.addr, align 8
  %1 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds %struct.node*, %struct.node** %0, i64 %idxprom
  %2 = load %struct.node*, %struct.node** %arrayidx, align 8
  store %struct.node* %2, %struct.node** %n_factor, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %3 = load %struct.node*, %struct.node** %n_factor, align 8
  %tobool = icmp ne %struct.node* %3, null
  br i1 %tobool, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %4 = load %struct.node**, %struct.node*** %factors.addr, align 8
  %5 = load i32, i32* %d.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds %struct.node*, %struct.node** %4, i64 %idxprom1
  %6 = load %struct.node*, %struct.node** %arrayidx2, align 8
  store %struct.node* %6, %struct.node** %d_factor, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %7 = load %struct.node*, %struct.node** %d_factor, align 8
  %tobool4 = icmp ne %struct.node* %7, null
  br i1 %tobool4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %8 = load %struct.node*, %struct.node** %n_factor, align 8
  %value = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 0
  %9 = load i32, i32* %value, align 8
  %10 = load %struct.node*, %struct.node** %d_factor, align 8
  %value6 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  %11 = load i32, i32* %value6, align 8
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.node*, %struct.node** %d_factor, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 1
  %13 = load %struct.node*, %struct.node** %next, align 8
  store %struct.node* %13, %struct.node** %d_factor, align 8
  br label %for.cond3, !llvm.loop !13

for.end:                                          ; preds = %for.cond3
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %14 = load %struct.node*, %struct.node** %n_factor, align 8
  %next8 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 1
  %15 = load %struct.node*, %struct.node** %next8, align 8
  store %struct.node* %15, %struct.node** %n_factor, align 8
  br label %for.cond, !llvm.loop !14

for.end9:                                         ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end9, %if.then
  %16 = load i32, i32* %retval, align 4
  ret i32 %16
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
