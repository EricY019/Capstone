; ModuleID = 'code/275-6578pr94567.c'
source_filename = "code/275-6578pr94567.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32 1, align 4
@d = dso_local global i16 4, align 2
@f = dso_local global i16 2, align 2
@e = dso_local global i16 -11800, align 2
@g = dso_local global i16 0, align 2
@c = dso_local global i16 0, align 2
@b = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo(i32 %i, i32 %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %j.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %2 = load i32, i32* %i.addr, align 4
  %3 = load i32, i32* %j.addr, align 4
  %add = add nsw i32 %2, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i16, align 2
  store i32 0, i32* %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load volatile i32, i32* @a, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* @e, align 2
  store i16 %1, i16* %k, align 2
  %2 = load i16, i16* %k, align 2
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 3
  %conv1 = trunc i32 %shr to i16
  store i16 %conv1, i16* @g, align 2
  %3 = load i16, i16* @g, align 2
  %conv2 = sext i16 %3 to i32
  %4 = load i16, i16* @f, align 2
  %conv3 = sext i16 %4 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br i1 %tobool4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %5 = load i16, i16* @c, align 2
  %conv5 = sext i16 %5 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %6 = phi i1 [ true, %for.body ], [ %tobool6, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  %cmp = icmp slt i32 %conv2, %lor.ext
  %conv7 = zext i1 %cmp to i32
  %7 = load volatile i32, i32* @b, align 4
  %call = call i32 @foo(i32 %conv7, i32 %7)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  store i16 0, i16* @d, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  store volatile i32 0, i32* @a, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load i16, i16* @d, align 2
  %conv9 = sext i16 %8 to i32
  %cmp10 = icmp ne i32 %conv9, 4
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.end
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

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
