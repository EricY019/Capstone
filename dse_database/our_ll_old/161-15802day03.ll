; ModuleID = './code/161-15802day03.c'
source_filename = "./code/161-15802day03.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__stdinp = external global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"Houses visited: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @max(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i32, ptr %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @min(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i32, ptr %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %b.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @read_instructions(ptr noundef %in) #0 {
entry:
  %retval = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %ret = alloca ptr, align 8
  %c = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %in, ptr %in.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 64, ptr %len, align 4
  %0 = load i32, ptr %len, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 1, %conv
  %call = call ptr @malloc(i64 noundef %mul) #7
  store ptr %call, ptr %ret, align 8
  %1 = load ptr, ptr %ret, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ret, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0
  store i8 0, ptr %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end18, %if.end
  %3 = load ptr, ptr %in.addr, align 8
  %call2 = call i32 @fgetc(ptr noundef %3)
  store i32 %call2, ptr %c, align 4
  %cmp3 = icmp ne i32 %call2, -1
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %c, align 4
  switch i32 %4, label %sw.epilog [
    i32 94, label %sw.bb
    i32 118, label %sw.bb
    i32 60, label %sw.bb
    i32 62, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body
  %5 = load i32, ptr %c, align 4
  %conv5 = trunc i32 %5 to i8
  %6 = load ptr, ptr %ret, align 8
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store i8 %conv5, ptr %arrayidx6, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %while.body
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %len, align 4
  %cmp7 = icmp eq i32 %8, %9
  br i1 %cmp7, label %if.then9, label %if.end18

if.then9:                                         ; preds = %sw.epilog
  %10 = load i32, ptr %len, align 4
  %mul10 = mul nsw i32 %10, 2
  store i32 %mul10, ptr %len, align 4
  %11 = load ptr, ptr %ret, align 8
  %12 = load i32, ptr %len, align 4
  %conv11 = sext i32 %12 to i64
  %mul12 = mul i64 1, %conv11
  %call13 = call ptr @realloc(ptr noundef %11, i64 noundef %mul12) #8
  store ptr %call13, ptr %tmp, align 8
  %13 = load ptr, ptr %tmp, align 8
  %cmp14 = icmp eq ptr %13, null
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.then9
  %14 = load ptr, ptr %ret, align 8
  call void @free(ptr noundef %14)
  store ptr null, ptr %retval, align 8
  br label %return

if.end17:                                         ; preds = %if.then9
  %15 = load ptr, ptr %tmp, align 8
  store ptr %15, ptr %ret, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %sw.epilog
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %ret, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds i8, ptr %16, i64 %idxprom19
  store i8 0, ptr %arrayidx20, align 1
  %18 = load ptr, ptr %ret, align 8
  store ptr %18, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then16, %if.then
  %19 = load ptr, ptr %retval, align 8
  ret ptr %19
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @fgetc(ptr noundef) #2

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #3

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %santas = alloca i32, align 4
  %x_pos = alloca ptr, align 8
  %y_pos = alloca ptr, align 8
  %instructions = alloca ptr, align 8
  %inslen = alloca i64, align 8
  %turn = alloca i32, align 4
  %x_lo = alloca i32, align 4
  %x_hi = alloca i32, align 4
  %y_lo = alloca i32, align 4
  %y_hi = alloca i32, align 4
  %i = alloca i64, align 8
  %x_off = alloca i32, align 4
  %y_off = alloca i32, align 4
  %cols = alloca i32, align 4
  %rows = alloca i32, align 4
  %map = alloca ptr, align 8
  %i53 = alloca i32, align 4
  %houses = alloca i32, align 4
  %loc = alloca ptr, align 8
  %i65 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %santas, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %2)
  %call1 = call i32 @max(i32 noundef 1, i32 noundef %call)
  store i32 %call1, ptr %santas, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %santas, align 4
  %conv = sext i32 %3 to i64
  %call2 = call ptr @calloc(i64 noundef %conv, i64 noundef 4) #9
  store ptr %call2, ptr %x_pos, align 8
  %4 = load i32, ptr %santas, align 4
  %conv3 = sext i32 %4 to i64
  %call4 = call ptr @calloc(i64 noundef %conv3, i64 noundef 4) #9
  store ptr %call4, ptr %y_pos, align 8
  %5 = load ptr, ptr @__stdinp, align 8
  %call5 = call ptr @read_instructions(ptr noundef %5)
  store ptr %call5, ptr %instructions, align 8
  %6 = load ptr, ptr %x_pos, align 8
  %cmp6 = icmp eq ptr %6, null
  br i1 %cmp6, label %if.then13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load ptr, ptr %y_pos, align 8
  %cmp8 = icmp eq ptr %7, null
  br i1 %cmp8, label %if.then13, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %8 = load ptr, ptr %instructions, align 8
  %cmp11 = icmp eq ptr %8, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %if.end
  %9 = load ptr, ptr %x_pos, align 8
  call void @free(ptr noundef %9)
  %10 = load ptr, ptr %y_pos, align 8
  call void @free(ptr noundef %10)
  %11 = load ptr, ptr %instructions, align 8
  call void @free(ptr noundef %11)
  store i32 1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false10
  %12 = load ptr, ptr %instructions, align 8
  %call15 = call i64 @strlen(ptr noundef %12) #10
  store i64 %call15, ptr %inslen, align 8
  store i32 0, ptr %turn, align 4
  store i32 0, ptr %x_lo, align 4
  store i32 0, ptr %x_hi, align 4
  store i32 0, ptr %y_lo, align 4
  store i32 0, ptr %y_hi, align 4
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end14
  %13 = load i64, ptr %i, align 8
  %14 = load i64, ptr %inslen, align 8
  %cmp16 = icmp ult i64 %13, %14
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %instructions, align 8
  %16 = load i64, ptr %i, align 8
  %arrayidx18 = getelementptr inbounds i8, ptr %15, i64 %16
  %17 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %17 to i32
  switch i32 %conv19, label %sw.default [
    i32 94, label %sw.bb
    i32 118, label %sw.bb22
    i32 62, label %sw.bb26
    i32 60, label %sw.bb31
  ]

sw.bb:                                            ; preds = %for.body
  %18 = load i32, ptr %y_hi, align 4
  %19 = load ptr, ptr %y_pos, align 8
  %20 = load i32, ptr %turn, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %19, i64 %idxprom
  %21 = load i32, ptr %arrayidx20, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %arrayidx20, align 4
  %call21 = call i32 @max(i32 noundef %18, i32 noundef %inc)
  store i32 %call21, ptr %y_hi, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %for.body
  %22 = load i32, ptr %y_lo, align 4
  %23 = load ptr, ptr %y_pos, align 8
  %24 = load i32, ptr %turn, align 4
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds i32, ptr %23, i64 %idxprom23
  %25 = load i32, ptr %arrayidx24, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %arrayidx24, align 4
  %call25 = call i32 @min(i32 noundef %22, i32 noundef %dec)
  store i32 %call25, ptr %y_lo, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %for.body
  %26 = load i32, ptr %x_hi, align 4
  %27 = load ptr, ptr %x_pos, align 8
  %28 = load i32, ptr %turn, align 4
  %idxprom27 = sext i32 %28 to i64
  %arrayidx28 = getelementptr inbounds i32, ptr %27, i64 %idxprom27
  %29 = load i32, ptr %arrayidx28, align 4
  %inc29 = add nsw i32 %29, 1
  store i32 %inc29, ptr %arrayidx28, align 4
  %call30 = call i32 @max(i32 noundef %26, i32 noundef %inc29)
  store i32 %call30, ptr %x_hi, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %for.body
  %30 = load i32, ptr %x_lo, align 4
  %31 = load ptr, ptr %x_pos, align 8
  %32 = load i32, ptr %turn, align 4
  %idxprom32 = sext i32 %32 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %31, i64 %idxprom32
  %33 = load i32, ptr %arrayidx33, align 4
  %dec34 = add nsw i32 %33, -1
  store i32 %dec34, ptr %arrayidx33, align 4
  %call35 = call i32 @min(i32 noundef %30, i32 noundef %dec34)
  store i32 %call35, ptr %x_lo, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %for.inc

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb26, %sw.bb22, %sw.bb
  %34 = load i32, ptr %turn, align 4
  %inc36 = add nsw i32 %34, 1
  store i32 %inc36, ptr %turn, align 4
  %35 = load i32, ptr %santas, align 4
  %36 = load i32, ptr %turn, align 4
  %rem = srem i32 %36, %35
  store i32 %rem, ptr %turn, align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %sw.default
  %37 = load i64, ptr %i, align 8
  %inc37 = add i64 %37, 1
  store i64 %inc37, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %38 = load i32, ptr %x_lo, align 4
  %39 = call i32 @llvm.abs.i32(i32 %38, i1 true)
  store i32 %39, ptr %x_off, align 4
  %40 = load i32, ptr %y_lo, align 4
  %41 = call i32 @llvm.abs.i32(i32 %40, i1 true)
  store i32 %41, ptr %y_off, align 4
  %42 = load i32, ptr %x_off, align 4
  %43 = load i32, ptr %x_hi, align 4
  %44 = call i32 @llvm.abs.i32(i32 %43, i1 true)
  %add = add nsw i32 %42, %44
  %add38 = add nsw i32 %add, 1
  store i32 %add38, ptr %cols, align 4
  %45 = load i32, ptr %y_off, align 4
  %46 = load i32, ptr %y_hi, align 4
  %47 = call i32 @llvm.abs.i32(i32 %46, i1 true)
  %add39 = add nsw i32 %45, %47
  %add40 = add nsw i32 %add39, 1
  store i32 %add40, ptr %rows, align 4
  %48 = load i32, ptr %cols, align 4
  %add41 = add nsw i32 %48, 1
  %49 = load i32, ptr %rows, align 4
  %add42 = add nsw i32 %49, 1
  %mul = mul nsw i32 %add41, %add42
  %conv43 = sext i32 %mul to i64
  %call44 = call ptr @calloc(i64 noundef %conv43, i64 noundef 4) #9
  store ptr %call44, ptr %map, align 8
  %50 = load ptr, ptr %map, align 8
  %cmp45 = icmp eq ptr %50, null
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.end
  %51 = load ptr, ptr %x_pos, align 8
  call void @free(ptr noundef %51)
  %52 = load ptr, ptr %y_pos, align 8
  call void @free(ptr noundef %52)
  %53 = load ptr, ptr %instructions, align 8
  call void @free(ptr noundef %53)
  store i32 1, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %for.end
  %54 = load ptr, ptr %map, align 8
  %55 = load i32, ptr %y_off, align 4
  %56 = load i32, ptr %cols, align 4
  %mul49 = mul nsw i32 %55, %56
  %57 = load i32, ptr %x_off, align 4
  %add50 = add nsw i32 %mul49, %57
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds i32, ptr %54, i64 %idxprom51
  store i32 1, ptr %arrayidx52, align 4
  store i32 0, ptr %turn, align 4
  store i32 0, ptr %i53, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc62, %if.end48
  %58 = load i32, ptr %i53, align 4
  %59 = load i32, ptr %santas, align 4
  %cmp55 = icmp slt i32 %58, %59
  br i1 %cmp55, label %for.body57, label %for.end64

for.body57:                                       ; preds = %for.cond54
  %60 = load i32, ptr %x_off, align 4
  %61 = load ptr, ptr %x_pos, align 8
  %62 = load i32, ptr %i53, align 4
  %idxprom58 = sext i32 %62 to i64
  %arrayidx59 = getelementptr inbounds i32, ptr %61, i64 %idxprom58
  store i32 %60, ptr %arrayidx59, align 4
  %63 = load i32, ptr %y_off, align 4
  %64 = load ptr, ptr %y_pos, align 8
  %65 = load i32, ptr %i53, align 4
  %idxprom60 = sext i32 %65 to i64
  %arrayidx61 = getelementptr inbounds i32, ptr %64, i64 %idxprom60
  store i32 %63, ptr %arrayidx61, align 4
  br label %for.inc62

for.inc62:                                        ; preds = %for.body57
  %66 = load i32, ptr %i53, align 4
  %inc63 = add nsw i32 %66, 1
  store i32 %inc63, ptr %i53, align 4
  br label %for.cond54, !llvm.loop !8

for.end64:                                        ; preds = %for.cond54
  store i32 1, ptr %houses, align 4
  store i64 0, ptr %i65, align 8
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc106, %for.end64
  %67 = load i64, ptr %i65, align 8
  %68 = load i64, ptr %inslen, align 8
  %cmp67 = icmp ult i64 %67, %68
  br i1 %cmp67, label %for.body69, label %for.end108

for.body69:                                       ; preds = %for.cond66
  %69 = load ptr, ptr %instructions, align 8
  %70 = load i64, ptr %i65, align 8
  %arrayidx70 = getelementptr inbounds i8, ptr %69, i64 %70
  %71 = load i8, ptr %arrayidx70, align 1
  %conv71 = sext i8 %71 to i32
  switch i32 %conv71, label %sw.default88 [
    i32 94, label %sw.bb72
    i32 118, label %sw.bb76
    i32 62, label %sw.bb80
    i32 60, label %sw.bb84
  ]

sw.bb72:                                          ; preds = %for.body69
  %72 = load ptr, ptr %y_pos, align 8
  %73 = load i32, ptr %turn, align 4
  %idxprom73 = sext i32 %73 to i64
  %arrayidx74 = getelementptr inbounds i32, ptr %72, i64 %idxprom73
  %74 = load i32, ptr %arrayidx74, align 4
  %inc75 = add nsw i32 %74, 1
  store i32 %inc75, ptr %arrayidx74, align 4
  br label %sw.epilog89

sw.bb76:                                          ; preds = %for.body69
  %75 = load ptr, ptr %y_pos, align 8
  %76 = load i32, ptr %turn, align 4
  %idxprom77 = sext i32 %76 to i64
  %arrayidx78 = getelementptr inbounds i32, ptr %75, i64 %idxprom77
  %77 = load i32, ptr %arrayidx78, align 4
  %dec79 = add nsw i32 %77, -1
  store i32 %dec79, ptr %arrayidx78, align 4
  br label %sw.epilog89

sw.bb80:                                          ; preds = %for.body69
  %78 = load ptr, ptr %x_pos, align 8
  %79 = load i32, ptr %turn, align 4
  %idxprom81 = sext i32 %79 to i64
  %arrayidx82 = getelementptr inbounds i32, ptr %78, i64 %idxprom81
  %80 = load i32, ptr %arrayidx82, align 4
  %inc83 = add nsw i32 %80, 1
  store i32 %inc83, ptr %arrayidx82, align 4
  br label %sw.epilog89

sw.bb84:                                          ; preds = %for.body69
  %81 = load ptr, ptr %x_pos, align 8
  %82 = load i32, ptr %turn, align 4
  %idxprom85 = sext i32 %82 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %81, i64 %idxprom85
  %83 = load i32, ptr %arrayidx86, align 4
  %dec87 = add nsw i32 %83, -1
  store i32 %dec87, ptr %arrayidx86, align 4
  br label %sw.epilog89

sw.default88:                                     ; preds = %for.body69
  br label %for.inc106

sw.epilog89:                                      ; preds = %sw.bb84, %sw.bb80, %sw.bb76, %sw.bb72
  %84 = load ptr, ptr %map, align 8
  %85 = load ptr, ptr %y_pos, align 8
  %86 = load i32, ptr %turn, align 4
  %idxprom90 = sext i32 %86 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %85, i64 %idxprom90
  %87 = load i32, ptr %arrayidx91, align 4
  %88 = load i32, ptr %cols, align 4
  %mul92 = mul nsw i32 %87, %88
  %89 = load ptr, ptr %x_pos, align 8
  %90 = load i32, ptr %turn, align 4
  %idxprom93 = sext i32 %90 to i64
  %arrayidx94 = getelementptr inbounds i32, ptr %89, i64 %idxprom93
  %91 = load i32, ptr %arrayidx94, align 4
  %add95 = add nsw i32 %mul92, %91
  %idxprom96 = sext i32 %add95 to i64
  %arrayidx97 = getelementptr inbounds i32, ptr %84, i64 %idxprom96
  store ptr %arrayidx97, ptr %loc, align 8
  %92 = load ptr, ptr %loc, align 8
  %93 = load i32, ptr %92, align 4
  %cmp98 = icmp eq i32 %93, 0
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %sw.epilog89
  %94 = load i32, ptr %houses, align 4
  %inc101 = add nsw i32 %94, 1
  store i32 %inc101, ptr %houses, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %sw.epilog89
  %95 = load ptr, ptr %loc, align 8
  %96 = load i32, ptr %95, align 4
  %inc103 = add nsw i32 %96, 1
  store i32 %inc103, ptr %95, align 4
  %97 = load i32, ptr %turn, align 4
  %inc104 = add nsw i32 %97, 1
  store i32 %inc104, ptr %turn, align 4
  %98 = load i32, ptr %santas, align 4
  %99 = load i32, ptr %turn, align 4
  %rem105 = srem i32 %99, %98
  store i32 %rem105, ptr %turn, align 4
  br label %for.inc106

for.inc106:                                       ; preds = %if.end102, %sw.default88
  %100 = load i64, ptr %i65, align 8
  %inc107 = add i64 %100, 1
  store i64 %inc107, ptr %i65, align 8
  br label %for.cond66, !llvm.loop !9

for.end108:                                       ; preds = %for.cond66
  %101 = load i32, ptr %houses, align 4
  %call109 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %101)
  %102 = load ptr, ptr %instructions, align 8
  call void @free(ptr noundef %102)
  %103 = load ptr, ptr %x_pos, align 8
  call void @free(ptr noundef %103)
  %104 = load ptr, ptr %y_pos, align 8
  call void @free(ptr noundef %104)
  %105 = load ptr, ptr %map, align 8
  call void @free(ptr noundef %105)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end108, %if.then47, %if.then13
  %106 = load i32, ptr %retval, align 4
  ret i32 %106
}

declare i32 @atoi(ptr noundef) #2

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #4

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { allocsize(0) }
attributes #8 = { allocsize(1) }
attributes #9 = { allocsize(0,1) }
attributes #10 = { nounwind }

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
