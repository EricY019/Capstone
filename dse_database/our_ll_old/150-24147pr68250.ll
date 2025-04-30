; ModuleID = './code/150-24147pr68250.c'
source_filename = "./code/150-24147pr68250.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@b = global i8 0, align 1
@a = global i8 0, align 1
@o = global i8 0, align 1
@d = global i16 0, align 2
@n = global i16 0, align 2
@j = global i32 0, align 4
@c = global i16 0, align 2
@m = global i8 0, align 1
@f = global i32 0, align 4
@l = global i8 0, align 1
@h = global i8 0, align 1
@k = global i8 0, align 1
@e = global i32 0, align 4
@q = global i32 0, align 4
@g = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @fn1() #0 {
entry:
  %p = alloca i32, align 4
  %0 = load i8, ptr @b, align 1
  %conv = sext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i8, ptr @a, align 1
  %conv1 = sext i8 %1 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  store i32 %lor.ext, ptr %p, align 4
  %3 = load i8, ptr @o, align 1
  %conv3 = sext i8 %3 to i32
  %cmp = icmp sgt i32 %conv3, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %4 = load i16, ptr @d, align 2
  %conv5 = sext i16 %4 to i32
  %5 = load i8, ptr @o, align 1
  %conv6 = sext i8 %5 to i32
  %shr = ashr i32 1, %conv6
  %cmp7 = icmp sgt i32 %conv5, %shr
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %lor.end
  %6 = load i16, ptr @d, align 2
  %conv9 = sext i16 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %7 = load i16, ptr @d, align 2
  %conv10 = sext i16 %7 to i32
  %8 = load i8, ptr @o, align 1
  %conv11 = sext i8 %8 to i32
  %shl = shl i32 %conv10, %conv11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %shl, %cond.false ]
  %conv12 = trunc i32 %cond to i16
  store i16 %conv12, ptr @n, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %9 = load i32, ptr @j, align 4
  %tobool13 = icmp ne i32 %9, 0
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16, ptr @c, align 2
  %conv14 = sext i16 %10 to i32
  %cmp15 = icmp slt i32 %conv14, 0
  br i1 %cmp15, label %lor.end24, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %for.body
  %11 = load i8, ptr @m, align 1
  %conv18 = sext i8 %11 to i32
  %tobool19 = icmp ne i32 %conv18, 0
  br i1 %tobool19, label %lor.end24, label %lor.rhs20

lor.rhs20:                                        ; preds = %lor.lhs.false17
  %12 = load i16, ptr @c, align 2
  %conv21 = sext i16 %12 to i32
  %13 = load i32, ptr %p, align 4
  %shl22 = shl i32 %conv21, %13
  %tobool23 = icmp ne i32 %shl22, 0
  br label %lor.end24

lor.end24:                                        ; preds = %lor.rhs20, %lor.lhs.false17, %for.body
  %14 = phi i1 [ true, %lor.lhs.false17 ], [ true, %for.body ], [ %tobool23, %lor.rhs20 ]
  %lor.ext25 = zext i1 %14 to i32
  %conv26 = trunc i32 %lor.ext25 to i8
  store i8 %conv26, ptr @m, align 1
  br label %for.inc

for.inc:                                          ; preds = %lor.end24
  %15 = load i32, ptr @j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr @j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr @f, align 4
  %add = add nsw i32 %16, 1
  %conv27 = trunc i32 %add to i8
  store i8 %conv27, ptr @l, align 1
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc35, %for.end
  %17 = load i32, ptr @f, align 4
  %cmp29 = icmp slt i32 %17, 1
  br i1 %cmp29, label %for.body31, label %for.end36

for.body31:                                       ; preds = %for.cond28
  %18 = load i8, ptr @h, align 1
  %conv32 = sext i8 %18 to i32
  %add33 = add nsw i32 %conv32, 1
  %conv34 = trunc i32 %add33 to i8
  store i8 %conv34, ptr @k, align 1
  br label %for.inc35

for.inc35:                                        ; preds = %for.body31
  store i32 1, ptr @f, align 4
  br label %for.cond28, !llvm.loop !7

for.end36:                                        ; preds = %for.cond28
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @fn2(i32 noundef %k) #0 {
entry:
  %k.addr = alloca i32, align 4
  store i32 %k, ptr %k.addr, align 4
  %0 = load i32, ptr %k.addr, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @e, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @fn1()
  %1 = load i8, ptr @k, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i8, ptr @k, align 1
  store i8 %2, ptr %i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i8, ptr %i, align 1
  %conv = sext i8 %3 to i32
  %4 = load i32, ptr @q, align 4
  %cmp1 = icmp sgt i32 %conv, %4
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, ptr @g, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %5 = load i32, ptr @e, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @e, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %6 = load i8, ptr @k, align 1
  %conv5 = sext i8 %6 to i32
  call void @fn2(i32 noundef %conv5)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn nounwind }

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
