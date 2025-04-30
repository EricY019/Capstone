; ModuleID = './code/069-392zipper.c'
source_filename = "./code/069-392zipper.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.str = private unnamed_addr constant [14 x i8] c"Good morning!\00", align 1
@__const.main.sub1 = private unnamed_addr constant [27 x i8] c"perntgvqszmwajldbicxfkhuoy\00", align 1
@__const.main.sub2 = private unnamed_addr constant [27 x i8] c"gjnecidqlsmwzxpvahbfkortuy\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [14 x i8], align 1
  %sub1 = alloca [27 x i8], align 1
  %sub2 = alloca [27 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %strlength = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str, ptr align 1 @__const.main.str, i64 14, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %sub1, ptr align 1 @__const.main.sub1, i64 27, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %sub2, ptr align 1 @__const.main.sub2, i64 27, i1 false)
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 400
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [14 x i8], ptr %str, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %j, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %inc3 = add nsw i32 %4, 1
  store i32 %inc3, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.else, %for.cond
  %5 = load i32, ptr %j, align 4
  store i32 %5, ptr %strlength, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc26, %for.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %strlength, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body7, label %for.end28

for.body7:                                        ; preds = %for.cond4
  %8 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [14 x i8], ptr %str, i64 0, i64 %idxprom8
  %9 = load i8, ptr %arrayidx9, align 1
  %conv10 = sext i8 %9 to i32
  %cmp11 = icmp sle i32 %conv10, 90
  br i1 %cmp11, label %land.lhs.true, label %if.end25

land.lhs.true:                                    ; preds = %for.body7
  %10 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [14 x i8], ptr %str, i64 0, i64 %idxprom13
  %11 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %11 to i32
  %cmp16 = icmp sge i32 %conv15, 65
  br i1 %cmp16, label %if.then18, label %if.end25

if.then18:                                        ; preds = %land.lhs.true
  %12 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [14 x i8], ptr %str, i64 0, i64 %idxprom19
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %13 to i32
  %sub = sub nsw i32 %conv21, 65
  %add = add nsw i32 %sub, 97
  %conv22 = trunc i32 %add to i8
  %14 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [14 x i8], ptr %str, i64 0, i64 %idxprom23
  store i8 %conv22, ptr %arrayidx24, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %land.lhs.true, %for.body7
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %15 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %15, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond4, !llvm.loop !7

for.end28:                                        ; preds = %for.cond4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc70, %for.end28
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %strlength, align 4
  %cmp30 = icmp slt i32 %16, %17
  br i1 %cmp30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond29
  %18 = load i32, ptr %j, align 4
  %19 = load i32, ptr %strlength, align 4
  %cmp32 = icmp slt i32 %18, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond29
  %20 = phi i1 [ false, %for.cond29 ], [ %cmp32, %land.rhs ]
  br i1 %20, label %for.body34, label %for.end73

for.body34:                                       ; preds = %land.end
  %21 = load i32, ptr %i, align 4
  %idxprom35 = sext i32 %21 to i64
  %arrayidx36 = getelementptr inbounds [14 x i8], ptr %str, i64 0, i64 %idxprom35
  %22 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %22 to i32
  %cmp38 = icmp sle i32 %conv37, 122
  br i1 %cmp38, label %land.lhs.true40, label %if.else68

land.lhs.true40:                                  ; preds = %for.body34
  %23 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %23 to i64
  %arrayidx42 = getelementptr inbounds [14 x i8], ptr %str, i64 0, i64 %idxprom41
  %24 = load i8, ptr %arrayidx42, align 1
  %conv43 = sext i8 %24 to i32
  %cmp44 = icmp sge i32 %conv43, 97
  br i1 %cmp44, label %if.then46, label %if.else68

if.then46:                                        ; preds = %land.lhs.true40
  %25 = load i32, ptr %j, align 4
  %rem = srem i32 %25, 2
  %cmp47 = icmp eq i32 %rem, 0
  br i1 %cmp47, label %if.then49, label %if.else58

if.then49:                                        ; preds = %if.then46
  %26 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %26 to i64
  %arrayidx51 = getelementptr inbounds [14 x i8], ptr %str, i64 0, i64 %idxprom50
  %27 = load i8, ptr %arrayidx51, align 1
  %conv52 = sext i8 %27 to i32
  %sub53 = sub nsw i32 %conv52, 97
  %idxprom54 = sext i32 %sub53 to i64
  %arrayidx55 = getelementptr inbounds [27 x i8], ptr %sub1, i64 0, i64 %idxprom54
  %28 = load i8, ptr %arrayidx55, align 1
  %29 = load i32, ptr %i, align 4
  %idxprom56 = sext i32 %29 to i64
  %arrayidx57 = getelementptr inbounds [14 x i8], ptr %str, i64 0, i64 %idxprom56
  store i8 %28, ptr %arrayidx57, align 1
  br label %if.end67

if.else58:                                        ; preds = %if.then46
  %30 = load i32, ptr %i, align 4
  %idxprom59 = sext i32 %30 to i64
  %arrayidx60 = getelementptr inbounds [14 x i8], ptr %str, i64 0, i64 %idxprom59
  %31 = load i8, ptr %arrayidx60, align 1
  %conv61 = sext i8 %31 to i32
  %sub62 = sub nsw i32 %conv61, 97
  %idxprom63 = sext i32 %sub62 to i64
  %arrayidx64 = getelementptr inbounds [27 x i8], ptr %sub2, i64 0, i64 %idxprom63
  %32 = load i8, ptr %arrayidx64, align 1
  %33 = load i32, ptr %i, align 4
  %idxprom65 = sext i32 %33 to i64
  %arrayidx66 = getelementptr inbounds [14 x i8], ptr %str, i64 0, i64 %idxprom65
  store i8 %32, ptr %arrayidx66, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.else58, %if.then49
  br label %if.end69

if.else68:                                        ; preds = %land.lhs.true40, %for.body34
  %34 = load i32, ptr %j, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, ptr %j, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.end67
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %35 = load i32, ptr %i, align 4
  %inc71 = add nsw i32 %35, 1
  store i32 %inc71, ptr %i, align 4
  %36 = load i32, ptr %j, align 4
  %inc72 = add nsw i32 %36, 1
  store i32 %inc72, ptr %j, align 4
  br label %for.cond29, !llvm.loop !8

for.end73:                                        ; preds = %land.end
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
