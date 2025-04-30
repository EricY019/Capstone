; ModuleID = 'code/250-23303pr78482.c'
source_filename = "code/250-23303pr78482.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global i16 -5, align 2
@b = dso_local global i32 3, align 4
@c = dso_local global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@f = dso_local global i32 0, align 4
@d = dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bar(i8* %x, i32 %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i32, align 4
  store i8* %x, i8** %x.addr, align 8
  store i32 %y, i32* %y.addr, align 4
  %0 = load i8*, i8** %x.addr, align 8
  %1 = load i32, i32* %y.addr, align 4
  call void asm sideeffect "", "=*imr,=*imr,0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i8** %x.addr, i32* %y.addr, i8* %0, i32 %1) #2, !srcloc !4
  %2 = load i32, i32* %y.addr, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* @c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @b, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call = call i32 @bar(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 2)
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = load i16, i16* @a, align 2
  %conv2 = sext i16 %2 to i32
  call void @fn1(i32 %conv2)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %3 = load i8, i8* @c, align 1
  %dec = add i8 %3, -1
  store i8 %dec, i8* @c, align 1
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fn1(i32 %p1) #0 {
entry:
  %p1.addr = alloca i32, align 4
  %e = alloca i16, align 2
  store i32 %p1, i32* %p1.addr, align 4
  %0 = load i32, i32* @f, align 4
  store i32 %0, i32* @b, align 4
  %1 = load i32, i32* @f, align 4
  %2 = load i32, i32* %p1.addr, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %p1.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %L

L:                                                ; preds = %if.end12, %if.then
  store i16 0, i16* %e, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %L
  br i1 false, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end4

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i8, i8* @d, align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %5 = load i32, i32* @b, align 4
  %cmp3 = icmp sge i32 0, %5
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, i32* @b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %for.end
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %if.end4
  %6 = load i16, i16* %e, align 2
  %conv6 = sext i16 %6 to i32
  %cmp7 = icmp sle i32 %conv6, 3
  br i1 %cmp7, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond5
  %7 = load i32, i32* @b, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body9
  br label %for.inc

if.end12:                                         ; preds = %for.body9
  store i32 3, i32* @b, align 4
  br label %L

for.inc:                                          ; preds = %if.then11
  %8 = load i16, i16* %e, align 2
  %inc = add i16 %8, 1
  store i16 %inc, i16* %e, align 2
  br label %for.cond5, !llvm.loop !7

for.end13:                                        ; preds = %for.cond5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 398}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
