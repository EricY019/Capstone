; ModuleID = './code/005-21754itoan.c'
source_filename = "./code/005-21754itoan.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"i:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @itoan(i32 noundef %n, ptr noundef %buf, i64 noundef %buflen, i32 noundef %base) #0 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %buflen.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %maxlen = alloca i64, align 8
  %l = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 %n, ptr %n.addr, align 4
  store ptr %buf, ptr %buf.addr, align 8
  store i64 %buflen, ptr %buflen.addr, align 8
  store i32 %base, ptr %base.addr, align 4
  %0 = load ptr, ptr %buf.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, ptr %buflen.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %base.addr, align 4
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %base.addr, align 4
  %cmp5 = icmp ugt i32 %3, 36
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %4 = load i64, ptr %buflen.addr, align 8
  %sub = sub i64 %4, 1
  store i64 %sub, ptr %maxlen, align 8
  %5 = load i32, ptr %base.addr, align 4
  %cmp6 = icmp eq i32 %5, 10
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %6 = load ptr, ptr %buf.addr, align 8
  %7 = load i64, ptr %buflen.addr, align 8
  %8 = load ptr, ptr %buf.addr, align 8
  %9 = call i64 @llvm.objectsize.i64.p0(ptr %8, i1 false, i1 true, i1 false)
  %10 = load i32, ptr %n.addr, align 4
  %call = call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %6, i64 noundef %7, i32 noundef 0, i64 noundef %9, ptr noundef @.str, i32 noundef %10)
  %11 = load ptr, ptr %buf.addr, align 8
  store ptr %11, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end
  %12 = load i32, ptr %n.addr, align 4
  store i32 %12, ptr %l, align 4
  store i64 0, ptr %i, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end8
  %13 = load i64, ptr %i, align 8
  %14 = load i64, ptr %maxlen, align 8
  %cmp9 = icmp uge i64 %13, %14
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body
  %15 = load ptr, ptr %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %15, i64 0
  store i8 0, ptr %arrayidx, align 1
  store ptr null, ptr %retval, align 8
  br label %return

if.end11:                                         ; preds = %do.body
  %16 = load i32, ptr %l, align 4
  %17 = load i32, ptr %base.addr, align 4
  %rem = urem i32 %16, %17
  %conv = trunc i32 %rem to i8
  store i8 %conv, ptr %c, align 1
  %18 = load i8, ptr %c, align 1
  %conv12 = sext i8 %18 to i32
  %cmp13 = icmp slt i32 %conv12, 10
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  %19 = load i8, ptr %c, align 1
  %conv16 = sext i8 %19 to i32
  %add = add nsw i32 48, %conv16
  %conv17 = trunc i32 %add to i8
  store i8 %conv17, ptr %c, align 1
  br label %if.end22

if.else:                                          ; preds = %if.end11
  %20 = load i8, ptr %c, align 1
  %conv18 = sext i8 %20 to i32
  %sub19 = sub nsw i32 %conv18, 10
  %add20 = add nsw i32 65, %sub19
  %conv21 = trunc i32 %add20 to i8
  store i8 %conv21, ptr %c, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  %21 = load i8, ptr %c, align 1
  %22 = load ptr, ptr %buf.addr, align 8
  %23 = load i64, ptr %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, ptr %i, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %22, i64 %23
  store i8 %21, ptr %arrayidx23, align 1
  %24 = load i32, ptr %l, align 4
  %25 = load i32, ptr %base.addr, align 4
  %div = udiv i32 %24, %25
  store i32 %div, ptr %l, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end22
  %26 = load i32, ptr %l, align 4
  %tobool = icmp ne i32 %26, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  %27 = load ptr, ptr %buf.addr, align 8
  %28 = load i64, ptr %i, align 8
  %arrayidx24 = getelementptr inbounds i8, ptr %27, i64 %28
  store i8 0, ptr %arrayidx24, align 1
  store i64 0, ptr %i, align 8
  %29 = load ptr, ptr %buf.addr, align 8
  %30 = load i64, ptr %buflen.addr, align 8
  %call25 = call i64 @strnlen(ptr noundef %29, i64 noundef %30)
  %sub26 = sub i64 %call25, 1
  store i64 %sub26, ptr %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %31 = load i64, ptr %i, align 8
  %32 = load i64, ptr %j, align 8
  %cmp27 = icmp ult i64 %31, %32
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %buf.addr, align 8
  %34 = load i64, ptr %i, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %33, i64 %34
  %35 = load i8, ptr %arrayidx29, align 1
  store i8 %35, ptr %c, align 1
  %36 = load ptr, ptr %buf.addr, align 8
  %37 = load i64, ptr %j, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %36, i64 %37
  %38 = load i8, ptr %arrayidx30, align 1
  %39 = load ptr, ptr %buf.addr, align 8
  %40 = load i64, ptr %i, align 8
  %arrayidx31 = getelementptr inbounds i8, ptr %39, i64 %40
  store i8 %38, ptr %arrayidx31, align 1
  %41 = load i8, ptr %c, align 1
  %42 = load ptr, ptr %buf.addr, align 8
  %43 = load i64, ptr %j, align 8
  %arrayidx32 = getelementptr inbounds i8, ptr %42, i64 %43
  store i8 %41, ptr %arrayidx32, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i64, ptr %i, align 8
  %inc33 = add i64 %44, 1
  store i64 %inc33, ptr %i, align 8
  %45 = load i64, ptr %j, align 8
  %dec = add i64 %45, -1
  store i64 %dec, ptr %j, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %46 = load ptr, ptr %buf.addr, align 8
  store ptr %46, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then10, %if.then7, %if.then
  %47 = load ptr, ptr %retval, align 8
  ret ptr %47
}

declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

declare i64 @strnlen(ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %buf = alloca [255 x i8], align 1
  %i = alloca i32, align 4
  %base = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %i, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %cond.true2, label %cond.false5

cond.true2:                                       ; preds = %cond.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @atoi(ptr noundef %5)
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true2
  %cond7 = phi i32 [ %call4, %cond.true2 ], [ 10, %cond.false5 ]
  store i32 %cond7, ptr %base, align 4
  %6 = load i32, ptr %i, align 4
  %arraydecay = getelementptr inbounds [255 x i8], ptr %buf, i64 0, i64 0
  %7 = load i32, ptr %base, align 4
  %call8 = call ptr @itoan(i32 noundef %6, ptr noundef %arraydecay, i64 noundef 255, i32 noundef %7)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %call8)
  ret i32 0
}

declare i32 @atoi(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
