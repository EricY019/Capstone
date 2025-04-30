; ModuleID = 'code/028-24638pr97695.c'
source_filename = "code/028-24638pr97695.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i32* null, align 8
@c = dso_local global i32** @a, align 8
@d = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f(i32 %g, i32 %h) #0 {
entry:
  %g.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store i32 %g, i32* %g.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load i32, i32* %h.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %cond.true

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %g.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, i32* %h.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load i32, i32* %g.addr, align 4
  %4 = load i32, i32* %h.addr, align 4
  %div = sdiv i32 %3, %4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %div, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @j() #0 {
entry:
  %call = call i8* @i(i32 1)
  %0 = load i32, i32* @d, align 4
  %call1 = call i8* @i(i32 %0)
  %1 = bitcast i8* %call1 to i32*
  %2 = load i32**, i32*** @c, align 8
  store i32* %1, i32** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @i(i32 %g) #0 {
entry:
  %retval = alloca i8*, align 8
  %g.addr = alloca i32, align 4
  store i32 %g, i32* %g.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* @e, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %while.body, label %while.end4

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %g.addr, align 4
  %call = call i32 @f(i32 %1, i32 9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %if.then
  %2 = load i32, i32* @b, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  br label %while.cond1, !llvm.loop !4

while.end:                                        ; preds = %while.cond1
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end4:                                       ; preds = %while.cond
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %while.end4, %while.end
  %3 = load i8*, i8** %retval, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @j()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
