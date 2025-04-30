; ModuleID = 'code/150-24147pr68250.c'
source_filename = "code/150-24147pr68250.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = dso_local global i8 0, align 1
@a = dso_local global i8 0, align 1
@o = dso_local global i8 0, align 1
@d = dso_local global i16 0, align 2
@n = dso_local global i16 0, align 2
@j = dso_local global i32 0, align 4
@c = dso_local global i16 0, align 2
@m = dso_local global i8 0, align 1
@f = dso_local global i32 0, align 4
@l = dso_local global i8 0, align 1
@h = dso_local global i8 0, align 1
@k = dso_local global i8 0, align 1
@e = dso_local global i32 0, align 4
@q = dso_local global i32 0, align 4
@g = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fn1() #0 {
entry:
  %p = alloca i32, align 4
  %0 = load i8, i8* @b, align 1
  %conv = sext i8 %0 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i8, i8* @a, align 1
  %conv1 = sext i8 %1 to i32
  %tobool2 = icmp ne i32 %conv1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  store i32 %lor.ext, i32* %p, align 4
  %3 = load i8, i8* @o, align 1
  %conv3 = sext i8 %3 to i32
  %cmp = icmp sgt i32 %conv3, 0
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.end
  %4 = load i16, i16* @d, align 2
  %conv5 = sext i16 %4 to i32
  %5 = load i8, i8* @o, align 1
  %conv6 = sext i8 %5 to i32
  %shr = ashr i32 1, %conv6
  %cmp7 = icmp sgt i32 %conv5, %shr
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %lor.end
  %6 = load i16, i16* @d, align 2
  %conv9 = sext i16 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %7 = load i16, i16* @d, align 2
  %conv10 = sext i16 %7 to i32
  %8 = load i8, i8* @o, align 1
  %conv11 = sext i8 %8 to i32
  %shl = shl i32 %conv10, %conv11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %shl, %cond.false ]
  %conv12 = trunc i32 %cond to i16
  store i16 %conv12, i16* @n, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %9 = load i32, i32* @j, align 4
  %tobool13 = icmp ne i32 %9, 0
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i16, i16* @c, align 2
  %conv14 = sext i16 %10 to i32
  %cmp15 = icmp slt i32 %conv14, 0
  br i1 %cmp15, label %lor.end24, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %for.body
  %11 = load i8, i8* @m, align 1
  %conv18 = sext i8 %11 to i32
  %tobool19 = icmp ne i32 %conv18, 0
  br i1 %tobool19, label %lor.end24, label %lor.rhs20

lor.rhs20:                                        ; preds = %lor.lhs.false17
  %12 = load i16, i16* @c, align 2
  %conv21 = sext i16 %12 to i32
  %13 = load i32, i32* %p, align 4
  %shl22 = shl i32 %conv21, %13
  %tobool23 = icmp ne i32 %shl22, 0
  br label %lor.end24

lor.end24:                                        ; preds = %lor.rhs20, %lor.lhs.false17, %for.body
  %14 = phi i1 [ true, %lor.lhs.false17 ], [ true, %for.body ], [ %tobool23, %lor.rhs20 ]
  %lor.ext25 = zext i1 %14 to i32
  %conv26 = trunc i32 %lor.ext25 to i8
  store i8 %conv26, i8* @m, align 1
  br label %for.inc

for.inc:                                          ; preds = %lor.end24
  %15 = load i32, i32* @j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @j, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* @f, align 4
  %add = add nsw i32 %16, 1
  %conv27 = trunc i32 %add to i8
  store i8 %conv27, i8* @l, align 1
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc35, %for.end
  %17 = load i32, i32* @f, align 4
  %cmp29 = icmp slt i32 %17, 1
  br i1 %cmp29, label %for.body31, label %for.end36

for.body31:                                       ; preds = %for.cond28
  %18 = load i8, i8* @h, align 1
  %conv32 = sext i8 %18 to i32
  %add33 = add nsw i32 %conv32, 1
  %conv34 = trunc i32 %add33 to i8
  store i8 %conv34, i8* @k, align 1
  br label %for.inc35

for.inc35:                                        ; preds = %for.body31
  store i32 1, i32* @f, align 4
  br label %for.cond28, !llvm.loop !6

for.end36:                                        ; preds = %for.cond28
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fn2(i32 %k) #0 {
entry:
  %k.addr = alloca i32, align 4
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* @e, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @fn1()
  %1 = load i8, i8* @k, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i8, i8* @k, align 1
  store i8 %2, i8* %i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i8, i8* %i, align 1
  %conv = sext i8 %3 to i32
  %4 = load i32, i32* @q, align 4
  %cmp1 = icmp sgt i32 %conv, %4
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 0, i32* @g, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end4
  %5 = load i32, i32* @e, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @e, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %6 = load i8, i8* @k, align 1
  %conv5 = sext i8 %6 to i32
  call void @fn2(i32 %conv5)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
