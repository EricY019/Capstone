; ModuleID = 'code/346-28768p24.c'
source_filename = "code/346-28768p24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_space(i8* %s, i32 %p, i8 signext %c) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %p.addr = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  store i32 %p, i32* %p.addr, align 4
  store i8 %c, i8* %c.addr, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %p.addr, align 4
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp ne i32 %conv4, 32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %5 = phi i1 [ true, %land.rhs ], [ %cmp5, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %5, %lor.end ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 32
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i32, i32* %p.addr, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %p.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %11 = load i8*, i8** %s.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.end
  %13 = load i8, i8* %c.addr, align 1
  %14 = load i8*, i8** %s.addr, align 8
  store i8 %13, i8* %14, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear(i8* %s, i8 signext %c) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %4 = load i8, i8* %c.addr, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv2, %conv3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv6 = sext i8 %8 to i32
  %9 = load i8, i8* %c.addr, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv6, %conv7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %10 = load i8*, i8** %s.addr, align 8
  store i8 32, i8* %10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca i8*, align 8
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i6 = alloca i32, align 4
  %i7 = alloca i32, align 4
  %i8 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 11) #3
  store i8* %call, i8** %s, align 8
  %0 = load i8*, i8** %s, align 8
  %call1 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)) #3
  store i32 0, i32* %i0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %1 = load i32, i32* %i0, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s, align 8
  %3 = load i32, i32* %i0, align 4
  call void @set_space(i8* %2, i32 %3, i8 signext 48)
  store i32 0, i32* %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc45, %for.body
  %4 = load i32, i32* %i1, align 4
  %cmp3 = icmp slt i32 %4, 9
  br i1 %cmp3, label %for.body4, label %for.end47

for.body4:                                        ; preds = %for.cond2
  %5 = load i8*, i8** %s, align 8
  %6 = load i32, i32* %i1, align 4
  call void @set_space(i8* %5, i32 %6, i8 signext 49)
  store i32 0, i32* %i2, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc42, %for.body4
  %7 = load i32, i32* %i2, align 4
  %cmp6 = icmp slt i32 %7, 8
  br i1 %cmp6, label %for.body7, label %for.end44

for.body7:                                        ; preds = %for.cond5
  %8 = load i8*, i8** %s, align 8
  %9 = load i32, i32* %i2, align 4
  call void @set_space(i8* %8, i32 %9, i8 signext 50)
  store i32 0, i32* %i3, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc39, %for.body7
  %10 = load i32, i32* %i3, align 4
  %cmp9 = icmp slt i32 %10, 7
  br i1 %cmp9, label %for.body10, label %for.end41

for.body10:                                       ; preds = %for.cond8
  %11 = load i8*, i8** %s, align 8
  %12 = load i32, i32* %i3, align 4
  call void @set_space(i8* %11, i32 %12, i8 signext 51)
  store i32 0, i32* %i4, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc36, %for.body10
  %13 = load i32, i32* %i4, align 4
  %cmp12 = icmp slt i32 %13, 6
  br i1 %cmp12, label %for.body13, label %for.end38

for.body13:                                       ; preds = %for.cond11
  %14 = load i8*, i8** %s, align 8
  %15 = load i32, i32* %i4, align 4
  call void @set_space(i8* %14, i32 %15, i8 signext 52)
  store i32 0, i32* %i5, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc33, %for.body13
  %16 = load i32, i32* %i5, align 4
  %cmp15 = icmp slt i32 %16, 5
  br i1 %cmp15, label %for.body16, label %for.end35

for.body16:                                       ; preds = %for.cond14
  %17 = load i8*, i8** %s, align 8
  %18 = load i32, i32* %i5, align 4
  call void @set_space(i8* %17, i32 %18, i8 signext 53)
  store i32 0, i32* %i6, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc30, %for.body16
  %19 = load i32, i32* %i6, align 4
  %cmp18 = icmp slt i32 %19, 4
  br i1 %cmp18, label %for.body19, label %for.end32

for.body19:                                       ; preds = %for.cond17
  %20 = load i8*, i8** %s, align 8
  %21 = load i32, i32* %i6, align 4
  call void @set_space(i8* %20, i32 %21, i8 signext 54)
  store i32 0, i32* %i7, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc27, %for.body19
  %22 = load i32, i32* %i7, align 4
  %cmp21 = icmp slt i32 %22, 3
  br i1 %cmp21, label %for.body22, label %for.end29

for.body22:                                       ; preds = %for.cond20
  %23 = load i8*, i8** %s, align 8
  %24 = load i32, i32* %i7, align 4
  call void @set_space(i8* %23, i32 %24, i8 signext 55)
  store i32 0, i32* %i8, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc, %for.body22
  %25 = load i32, i32* %i8, align 4
  %cmp24 = icmp slt i32 %25, 2
  br i1 %cmp24, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond23
  %26 = load i8*, i8** %s, align 8
  %27 = load i32, i32* %i8, align 4
  call void @set_space(i8* %26, i32 %27, i8 signext 56)
  %28 = load i8*, i8** %s, align 8
  call void @set_space(i8* %28, i32 0, i8 signext 57)
  %29 = load i8*, i8** %s, align 8
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %29)
  %30 = load i8*, i8** %s, align 8
  call void @clear(i8* %30, i8 signext 56)
  %31 = load i8*, i8** %s, align 8
  call void @clear(i8* %31, i8 signext 57)
  br label %for.inc

for.inc:                                          ; preds = %for.body25
  %32 = load i32, i32* %i8, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i8, align 4
  br label %for.cond23, !llvm.loop !7

for.end:                                          ; preds = %for.cond23
  %33 = load i8*, i8** %s, align 8
  call void @clear(i8* %33, i8 signext 55)
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %34 = load i32, i32* %i7, align 4
  %inc28 = add nsw i32 %34, 1
  store i32 %inc28, i32* %i7, align 4
  br label %for.cond20, !llvm.loop !8

for.end29:                                        ; preds = %for.cond20
  %35 = load i8*, i8** %s, align 8
  call void @clear(i8* %35, i8 signext 54)
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %36 = load i32, i32* %i6, align 4
  %inc31 = add nsw i32 %36, 1
  store i32 %inc31, i32* %i6, align 4
  br label %for.cond17, !llvm.loop !9

for.end32:                                        ; preds = %for.cond17
  %37 = load i8*, i8** %s, align 8
  call void @clear(i8* %37, i8 signext 53)
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %38 = load i32, i32* %i5, align 4
  %inc34 = add nsw i32 %38, 1
  store i32 %inc34, i32* %i5, align 4
  br label %for.cond14, !llvm.loop !10

for.end35:                                        ; preds = %for.cond14
  %39 = load i8*, i8** %s, align 8
  call void @clear(i8* %39, i8 signext 52)
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %40 = load i32, i32* %i4, align 4
  %inc37 = add nsw i32 %40, 1
  store i32 %inc37, i32* %i4, align 4
  br label %for.cond11, !llvm.loop !11

for.end38:                                        ; preds = %for.cond11
  %41 = load i8*, i8** %s, align 8
  call void @clear(i8* %41, i8 signext 51)
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %42 = load i32, i32* %i3, align 4
  %inc40 = add nsw i32 %42, 1
  store i32 %inc40, i32* %i3, align 4
  br label %for.cond8, !llvm.loop !12

for.end41:                                        ; preds = %for.cond8
  %43 = load i8*, i8** %s, align 8
  call void @clear(i8* %43, i8 signext 50)
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %44 = load i32, i32* %i2, align 4
  %inc43 = add nsw i32 %44, 1
  store i32 %inc43, i32* %i2, align 4
  br label %for.cond5, !llvm.loop !13

for.end44:                                        ; preds = %for.cond5
  %45 = load i8*, i8** %s, align 8
  call void @clear(i8* %45, i8 signext 49)
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %46 = load i32, i32* %i1, align 4
  %inc46 = add nsw i32 %46, 1
  store i32 %inc46, i32* %i1, align 4
  br label %for.cond2, !llvm.loop !14

for.end47:                                        ; preds = %for.cond2
  %47 = load i8*, i8** %s, align 8
  call void @clear(i8* %47, i8 signext 48)
  br label %for.inc48

for.inc48:                                        ; preds = %for.end47
  %48 = load i32, i32* %i0, align 4
  %inc49 = add nsw i32 %48, 1
  store i32 %inc49, i32* %i0, align 4
  br label %for.cond, !llvm.loop !15

for.end50:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
