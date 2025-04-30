; ModuleID = './code/322-871FindTheSmallest.c'
source_filename = "./code/322-871FindTheSmallest.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c%lld\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"n: %lld ; m_i: %d ; tmp: %d ; %c\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"step. Error. Expected \0A%s\0A but got \0A%s\0A\00", align 1
@__func__.dotest = private unnamed_addr constant [7 x i8] c"dotest\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"322-871FindTheSmallest.c\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"strcmp(sact, expr) == 0\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"126235, 2, 0\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"29917, 0, 1\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"238565, 3, 1\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"239687, 4, 1\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"26945, 3, 0\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @smallest_idx_between(ptr noundef %str, i32 noundef %start, i32 noundef %end) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %smallest = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store i32 %start, ptr %start.addr, align 4
  store i32 %end, ptr %end.addr, align 4
  %0 = load i32, ptr %start.addr, align 4
  store i32 %0, ptr %smallest, align 4
  %1 = load i32, ptr %start.addr, align 4
  store i32 %1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %end.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %str.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %sub = sub nsw i32 %conv, 48
  %7 = load ptr, ptr %str.addr, align 8
  %8 = load i32, ptr %smallest, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %7, i64 %idxprom1
  %9 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %9 to i32
  %sub4 = sub nsw i32 %conv3, 48
  %cmp5 = icmp slt i32 %sub, %sub4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  store i32 %10, ptr %smallest, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %smallest, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @smallest(i64 noundef %n) #0 {
entry:
  %n.addr = alloca i64, align 8
  %result = alloca ptr, align 8
  %temp = alloca [100 x i8], align 1
  %min_idx = alloca i32, align 4
  %tmp = alloca i32, align 4
  %temp_char = alloca i8, align 1
  %i = alloca i64, align 8
  %i25 = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  %call = call ptr @malloc(i64 noundef 24) #6
  store ptr %call, ptr %result, align 8
  %arraydecay = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 0
  %0 = load i64, ptr %n.addr, align 8
  %call1 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 100, ptr noundef @.str, i64 noundef %0)
  store i32 0, ptr %min_idx, align 4
  store i32 -1, ptr %tmp, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load i32, ptr %tmp, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %tmp, align 4
  %arraydecay2 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 0
  %2 = load i32, ptr %tmp, align 4
  %arraydecay3 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 0
  %call4 = call i64 @strlen(ptr noundef %arraydecay3) #7
  %conv = trunc i64 %call4 to i32
  %call5 = call i32 @smallest_idx_between(ptr noundef %arraydecay2, i32 noundef %2, i32 noundef %conv)
  store i32 %call5, ptr %min_idx, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, ptr %min_idx, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !7

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %min_idx, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  store i8 %5, ptr %temp_char, align 1
  %6 = load i32, ptr %min_idx, align 4
  %add = add nsw i32 %6, 1
  %conv7 = sext i32 %add to i64
  store i64 %conv7, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %7 = load i64, ptr %i, align 8
  %arraydecay8 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 0
  %call9 = call i64 @strlen(ptr noundef %arraydecay8) #7
  %cmp10 = icmp ult i64 %7, %call9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %i, align 8
  %arrayidx12 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 %8
  %9 = load i8, ptr %arrayidx12, align 1
  %10 = load i64, ptr %i, align 8
  %sub = sub i64 %10, 1
  %arrayidx13 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 %sub
  store i8 %9, ptr %arrayidx13, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, ptr %i, align 8
  %inc14 = add i64 %11, 1
  store i64 %inc14, ptr %i, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %arraydecay15 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 0
  %call16 = call i64 @strlen(ptr noundef %arraydecay15) #7
  %sub17 = sub i64 %call16, 1
  %arrayidx18 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 %sub17
  store i8 0, ptr %arrayidx18, align 1
  %12 = load i32, ptr %tmp, align 4
  %cmp19 = icmp sgt i32 %12, 0
  br i1 %cmp19, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %arraydecay21 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 0
  %call22 = call i64 @strlen(ptr noundef %arraydecay21) #7
  %add23 = add i64 %call22, 1
  %arrayidx24 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 %add23
  store i8 0, ptr %arrayidx24, align 1
  %arraydecay26 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 0
  %call27 = call i64 @strlen(ptr noundef %arraydecay26) #7
  %conv28 = trunc i64 %call27 to i32
  store i32 %conv28, ptr %i25, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc39, %if.then
  %13 = load i32, ptr %i25, align 4
  %14 = load i32, ptr %tmp, align 4
  %add30 = add nsw i32 %14, 1
  %cmp31 = icmp sge i32 %13, %add30
  br i1 %cmp31, label %for.body33, label %for.end40

for.body33:                                       ; preds = %for.cond29
  %15 = load i32, ptr %i25, align 4
  %sub34 = sub nsw i32 %15, 1
  %idxprom35 = sext i32 %sub34 to i64
  %arrayidx36 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 %idxprom35
  %16 = load i8, ptr %arrayidx36, align 1
  %17 = load i32, ptr %i25, align 4
  %idxprom37 = sext i32 %17 to i64
  %arrayidx38 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 %idxprom37
  store i8 %16, ptr %arrayidx38, align 1
  br label %for.inc39

for.inc39:                                        ; preds = %for.body33
  %18 = load i32, ptr %i25, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %i25, align 4
  br label %for.cond29, !llvm.loop !9

for.end40:                                        ; preds = %for.cond29
  %19 = load i8, ptr %temp_char, align 1
  %20 = load i32, ptr %i25, align 4
  %idxprom41 = sext i32 %20 to i64
  %arrayidx42 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 %idxprom41
  store i8 %19, ptr %arrayidx42, align 1
  %arraydecay43 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 0
  %call44 = call i32 @atoi(ptr noundef %arraydecay43)
  %conv45 = sext i32 %call44 to i64
  %21 = load ptr, ptr %result, align 8
  %arrayidx46 = getelementptr inbounds i64, ptr %21, i64 0
  store i64 %conv45, ptr %arrayidx46, align 8
  br label %if.end

if.else:                                          ; preds = %for.end
  %arraydecay47 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 0
  %call48 = call i32 @atoi(ptr noundef %arraydecay47)
  %conv49 = sext i32 %call48 to i64
  %22 = load ptr, ptr %result, align 8
  %arrayidx50 = getelementptr inbounds i64, ptr %22, i64 0
  store i64 %conv49, ptr %arrayidx50, align 8
  %arraydecay51 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 0
  %23 = load i8, ptr %temp_char, align 1
  %conv52 = sext i8 %23 to i32
  %24 = load ptr, ptr %result, align 8
  %arrayidx53 = getelementptr inbounds i64, ptr %24, i64 0
  %25 = load i64, ptr %arrayidx53, align 8
  %call54 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay51, i32 noundef 0, i64 noundef 100, ptr noundef @.str.1, i32 noundef %conv52, i64 noundef %25)
  %arraydecay55 = getelementptr inbounds [100 x i8], ptr %temp, i64 0, i64 0
  %call56 = call i32 @atoi(ptr noundef %arraydecay55)
  %conv57 = sext i32 %call56 to i64
  %26 = load ptr, ptr %result, align 8
  %arrayidx58 = getelementptr inbounds i64, ptr %26, i64 0
  store i64 %conv57, ptr %arrayidx58, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end40
  %27 = load i8, ptr %temp_char, align 1
  %conv59 = sext i8 %27 to i32
  %cmp60 = icmp ne i32 %conv59, 48
  br i1 %cmp60, label %if.then64, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %28 = load i32, ptr %min_idx, align 4
  %cmp62 = icmp sgt i32 %28, 1
  br i1 %cmp62, label %if.then64, label %if.else69

if.then64:                                        ; preds = %lor.lhs.false, %if.end
  %29 = load i32, ptr %min_idx, align 4
  %conv65 = sext i32 %29 to i64
  %30 = load ptr, ptr %result, align 8
  %arrayidx66 = getelementptr inbounds i64, ptr %30, i64 1
  store i64 %conv65, ptr %arrayidx66, align 8
  %31 = load i32, ptr %tmp, align 4
  %conv67 = sext i32 %31 to i64
  %32 = load ptr, ptr %result, align 8
  %arrayidx68 = getelementptr inbounds i64, ptr %32, i64 2
  store i64 %conv67, ptr %arrayidx68, align 8
  br label %if.end73

if.else69:                                        ; preds = %lor.lhs.false
  %33 = load ptr, ptr %result, align 8
  %arrayidx70 = getelementptr inbounds i64, ptr %33, i64 1
  store i64 0, ptr %arrayidx70, align 8
  %34 = load i32, ptr %min_idx, align 4
  %conv71 = sext i32 %34 to i64
  %35 = load ptr, ptr %result, align 8
  %arrayidx72 = getelementptr inbounds i64, ptr %35, i64 2
  store i64 %conv71, ptr %arrayidx72, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.else69, %if.then64
  %36 = load i64, ptr %n.addr, align 8
  %37 = load i32, ptr %min_idx, align 4
  %38 = load i32, ptr %tmp, align 4
  %39 = load i8, ptr %temp_char, align 1
  %conv74 = sext i8 %39 to i32
  %call75 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %conv74)
  %40 = load ptr, ptr %result, align 8
  ret ptr %40
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

declare i32 @atoi(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @array2StringLongLong(ptr noundef %arr, i32 noundef %size) #0 {
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
  %call1 = call ptr @__strcpy_chk(ptr noundef %1, ptr noundef @.str.3, i64 noundef %3) #7
  %arraydecay = getelementptr inbounds [50 x i8], ptr %temp, i64 0, i64 0
  %call2 = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef @.str.3, i64 noundef 50) #7
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
  %arrayidx = getelementptr inbounds i64, ptr %6, i64 %idxprom
  %8 = load i64, ptr %arrayidx, align 8
  %call5 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay4, i32 noundef 0, i64 noundef 50, ptr noundef @.str, i64 noundef %8)
  %9 = load ptr, ptr %result, align 8
  %arraydecay6 = getelementptr inbounds [50 x i8], ptr %temp, i64 0, i64 0
  %10 = load ptr, ptr %result, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call7 = call ptr @__strcat_chk(ptr noundef %9, ptr noundef %arraydecay6, i64 noundef %11) #7
  %12 = load ptr, ptr %result, align 8
  %13 = load ptr, ptr %result, align 8
  %14 = call i64 @llvm.objectsize.i64.p0(ptr %13, i1 false, i1 true, i1 false)
  %call8 = call ptr @__strcat_chk(ptr noundef %12, ptr noundef @.str.4, i64 noundef %14) #7
  %arraydecay9 = getelementptr inbounds [50 x i8], ptr %temp, i64 0, i64 0
  %call10 = call ptr @__strcpy_chk(ptr noundef %arraydecay9, ptr noundef @.str.3, i64 noundef 50) #7
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %result, align 8
  %17 = load ptr, ptr %result, align 8
  %call11 = call i64 @strlen(ptr noundef %17) #7
  %sub = sub i64 %call11, 2
  %arrayidx12 = getelementptr inbounds i8, ptr %16, i64 %sub
  store i8 0, ptr %arrayidx12, align 1
  %18 = load ptr, ptr %result, align 8
  ret ptr %18
}

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @dotest(i64 noundef %n, ptr noundef %expr) #0 {
entry:
  %n.addr = alloca i64, align 8
  %expr.addr = alloca ptr, align 8
  %act = alloca ptr, align 8
  %sact = alloca ptr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %expr, ptr %expr.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %call = call ptr @smallest(i64 noundef %0)
  store ptr %call, ptr %act, align 8
  %1 = load ptr, ptr %act, align 8
  %call1 = call ptr @array2StringLongLong(ptr noundef %1, i32 noundef 3)
  store ptr %call1, ptr %sact, align 8
  %2 = load ptr, ptr %sact, align 8
  %3 = load ptr, ptr %expr.addr, align 8
  %call2 = call i32 @strcmp(ptr noundef %2, ptr noundef %3) #7
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %expr.addr, align 8
  %5 = load ptr, ptr %sact, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %4, ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %sact, align 8
  %7 = load ptr, ptr %expr.addr, align 8
  %call4 = call i32 @strcmp(ptr noundef %6, ptr noundef %7) #7
  %cmp5 = icmp eq i32 %call4, 0
  %lnot = xor i1 %cmp5, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__assert_rtn(ptr noundef @__func__.dotest, ptr noundef @.str.6, i32 noundef 86, ptr noundef @.str.7) #8
  unreachable

8:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %8
  %9 = load ptr, ptr %act, align 8
  call void @free(ptr noundef %9)
  store ptr null, ptr %act, align 8
  %10 = load ptr, ptr %sact, align 8
  call void @free(ptr noundef %10)
  store ptr null, ptr %sact, align 8
  ret void
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #5

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  call void @dotest(i64 noundef 261235, ptr noundef @.str.8)
  call void @dotest(i64 noundef 209917, ptr noundef @.str.9)
  call void @dotest(i64 noundef 285365, ptr noundef @.str.10)
  call void @dotest(i64 noundef 296837, ptr noundef @.str.11)
  call void @dotest(i64 noundef 269045, ptr noundef @.str.12)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
