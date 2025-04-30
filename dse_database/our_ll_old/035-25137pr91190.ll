; ModuleID = './code/035-25137pr91190.c'
source_filename = "./code/035-25137pr91190.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@i = global i8 0, align 1
@d = global i64 0, align 8
@g = global i32 0, align 4
@e = global [2 x i32] zeroinitializer, align 4
@h = global i64 0, align 8
@a = global [1 x i32] zeroinitializer, align 4
@c = global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@f = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i8, align 1
  %l = alloca i32, align 4
  %m = alloca [2 x i64], align 8
  %n = alloca i64, align 8
  %b = alloca i8, align 1
  %j = alloca i8, align 1
  %o = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i8 0, ptr %k, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %entry
  %0 = load i8, ptr @i, align 1
  %conv = sext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1 = load i64, ptr @d, align 8
  %tobool1 = icmp ne i64 %1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %2 = phi i1 [ true, %while.cond ], [ %tobool1, %lor.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %3 = load i32, ptr @g, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.body4

while.body4:                                      ; preds = %if.then, %while.body4
  br label %while.body4

if.end:                                           ; preds = %while.body
  store i32 0, ptr getelementptr inbounds ([2 x i32], ptr @e, i64 0, i64 1), align 4
  %4 = load i64, ptr @h, align 8
  %or = or i64 %4, 9
  %mul = mul nsw i64 %or, 2237420170
  %or5 = or i64 5, %mul
  %and = and i64 3, %or5
  %not = xor i64 %and, -1
  store i64 %not, ptr %n, align 8
  %5 = load i64, ptr %n, align 8
  %mul6 = mul nsw i64 90, %5
  %conv7 = trunc i64 %mul6 to i32
  store i32 %conv7, ptr @g, align 4
  %arrayidx = getelementptr inbounds [2 x i64], ptr %m, i64 0, i64 300000000
  %6 = load i64, ptr %arrayidx, align 8
  %conv8 = trunc i64 %6 to i8
  store i8 %conv8, ptr %b, align 1
  store i8 0, ptr %j, align 1
  %7 = load i32, ptr @c, align 4
  %8 = load i8, ptr %b, align 1
  %conv9 = sext i8 %8 to i32
  %and10 = and i32 %conv9, 5
  %xor = xor i32 %7, %and10
  %idxprom = zext i32 %xor to i64
  %arrayidx11 = getelementptr inbounds [1 x i32], ptr @a, i64 0, i64 %idxprom
  %9 = load i32, ptr %arrayidx11, align 4
  %xor12 = xor i32 5, %9
  store i32 %xor12, ptr @c, align 4
  %10 = load i64, ptr @d, align 8
  %conv13 = trunc i64 %10 to i32
  store i32 %conv13, ptr %o, align 4
  %11 = load i32, ptr %o, align 4
  %tobool14 = icmp ne i32 %11, 0
  br i1 %tobool14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load i8, ptr %j, align 1
  %conv15 = sext i8 %12 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %conv15, %cond.false ]
  %conv16 = trunc i32 %cond to i8
  store i8 %conv16, ptr %k, align 1
  %13 = load i8, ptr %k, align 1
  %tobool17 = icmp ne i8 %13, 0
  br i1 %tobool17, label %if.then18, label %if.end24

if.then18:                                        ; preds = %cond.end
  store i32 0, ptr %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then18
  %14 = load i32, ptr %l, align 4
  %cmp = icmp slt i32 %14, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx20 = getelementptr inbounds [2 x i64], ptr %m, i64 0, i64 200000000000000000
  %15 = load i64, ptr %arrayidx20, align 8
  %tobool21 = icmp ne i64 %15, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body
  %16 = load i32, ptr @f, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %16) #2
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %17 = load i32, ptr %l, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %l, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end24

if.end24:                                         ; preds = %for.end, %cond.end
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %lor.end
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind }

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
