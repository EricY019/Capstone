; ModuleID = './code/255-10765pr44715.c'
source_filename = "./code/255-10765pr44715.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @foo(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  switch i32 %0, label %sw.default39 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb8
    i32 3, label %sw.bb13
    i32 4, label %sw.bb24
    i32 5, label %sw.bb34
  ]

sw.bb:                                            ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.bb
  %1 = load i32, ptr %y.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.cond
  br label %while.end

if.end:                                           ; preds = %while.cond
  store i32 0, ptr %tmp, align 4
  %2 = load i32, ptr %tmp, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %if.end
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %if.end, %if.then
  call void @abort() #2
  unreachable

sw.bb2:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end5, %sw.bb2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, ptr %y.addr, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.cond
  br label %do.end

if.end5:                                          ; preds = %do.cond
  store i32 0, ptr %tmp6, align 4
  %4 = load i32, ptr %tmp6, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %do.body, label %do.end, !llvm.loop !7

do.end:                                           ; preds = %if.end5, %if.then4
  call void @abort() #2
  unreachable

sw.bb8:                                           ; preds = %entry
  %5 = load i32, ptr %y.addr, align 4
  %tobool9 = icmp ne i32 %5, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %sw.bb8
  br label %sw.epilog40

if.end11:                                         ; preds = %sw.bb8
  store i32 0, ptr %tmp12, align 4
  %6 = load i32, ptr %tmp12, align 4
  store i32 %6, ptr %z, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end11
  %7 = load i32, ptr %z, align 4
  %cmp = icmp slt i32 %7, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %z, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %z, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  call void @abort() #2
  unreachable

sw.bb13:                                          ; preds = %entry
  store i32 0, ptr %z, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc21, %sw.bb13
  %9 = load i32, ptr %z, align 4
  %10 = load i32, ptr %y.addr, align 4
  %tobool15 = icmp ne i32 %10, 0
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.cond14
  br label %for.end23

if.end17:                                         ; preds = %for.cond14
  store i32 5, ptr %tmp18, align 4
  %11 = load i32, ptr %tmp18, align 4
  %cmp19 = icmp slt i32 %9, %11
  br i1 %cmp19, label %for.body20, label %for.end23

for.body20:                                       ; preds = %if.end17
  br label %for.inc21

for.inc21:                                        ; preds = %for.body20
  %12 = load i32, ptr %z, align 4
  %inc22 = add nsw i32 %12, 1
  store i32 %inc22, ptr %z, align 4
  br label %for.cond14, !llvm.loop !9

for.end23:                                        ; preds = %if.end17, %if.then16
  call void @abort() #2
  unreachable

sw.bb24:                                          ; preds = %entry
  store i32 0, ptr %z, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %if.end31, %sw.bb24
  %13 = load i32, ptr %z, align 4
  %cmp26 = icmp slt i32 %13, 5
  br i1 %cmp26, label %for.body27, label %for.end33

for.body27:                                       ; preds = %for.cond25
  br label %for.inc28

for.inc28:                                        ; preds = %for.body27
  %14 = load i32, ptr %y.addr, align 4
  %tobool29 = icmp ne i32 %14, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %for.inc28
  br label %for.end33

if.end31:                                         ; preds = %for.inc28
  store i32 1, ptr %tmp32, align 4
  %15 = load i32, ptr %tmp32, align 4
  %16 = load i32, ptr %z, align 4
  %add = add nsw i32 %16, %15
  store i32 %add, ptr %z, align 4
  br label %for.cond25, !llvm.loop !10

for.end33:                                        ; preds = %if.then30, %for.cond25
  call void @abort() #2
  unreachable

sw.bb34:                                          ; preds = %entry
  %17 = load i32, ptr %y.addr, align 4
  %tobool35 = icmp ne i32 %17, 0
  br i1 %tobool35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %sw.bb34
  br label %sw.epilog40

if.end37:                                         ; preds = %sw.bb34
  store i32 1, ptr %tmp38, align 4
  %18 = load i32, ptr %tmp38, align 4
  switch i32 %18, label %sw.default [
  ]

sw.default:                                       ; preds = %if.end37
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  call void @abort() #2
  unreachable

sw.default39:                                     ; preds = %entry
  call void @abort() #2
  unreachable

sw.epilog40:                                      ; preds = %if.then36, %if.then10
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bar(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end54, %entry
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end55

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %x.addr, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end6

if.then:                                          ; preds = %while.body
  br label %while.cond2

while.cond2:                                      ; preds = %while.body5, %if.then
  %2 = load i32, ptr %y.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %while.cond2
  br label %while.end

if.end:                                           ; preds = %while.cond2
  store i32 0, ptr %tmp, align 4
  %3 = load i32, ptr %tmp, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %while.body5, label %while.end

while.body5:                                      ; preds = %if.end
  br label %while.cond2, !llvm.loop !11

while.end:                                        ; preds = %if.end, %if.then3
  call void @abort() #2
  unreachable

if.end6:                                          ; preds = %while.body
  %4 = load i32, ptr %x.addr, align 4
  %cmp7 = icmp eq i32 %4, 1
  br i1 %cmp7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end6
  br label %do.body

do.body:                                          ; preds = %if.end11, %if.then8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load i32, ptr %y.addr, align 4
  %tobool9 = icmp ne i32 %5, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.cond
  br label %do.end

if.end11:                                         ; preds = %do.cond
  store i32 0, ptr %tmp12, align 4
  %6 = load i32, ptr %tmp12, align 4
  %tobool13 = icmp ne i32 %6, 0
  br i1 %tobool13, label %do.body, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %if.end11, %if.then10
  call void @abort() #2
  unreachable

if.end14:                                         ; preds = %if.end6
  %7 = load i32, ptr %x.addr, align 4
  %cmp15 = icmp eq i32 %7, 2
  br i1 %cmp15, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end14
  %8 = load i32, ptr %y.addr, align 4
  %tobool17 = icmp ne i32 %8, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then16
  br label %while.end55

if.end19:                                         ; preds = %if.then16
  store i32 0, ptr %tmp20, align 4
  %9 = load i32, ptr %tmp20, align 4
  store i32 %9, ptr %z, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end19
  %10 = load i32, ptr %z, align 4
  %cmp21 = icmp slt i32 %10, 5
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %z, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %z, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @abort() #2
  unreachable

if.end22:                                         ; preds = %if.end14
  %12 = load i32, ptr %x.addr, align 4
  %cmp23 = icmp eq i32 %12, 3
  br i1 %cmp23, label %if.then24, label %if.end35

if.then24:                                        ; preds = %if.end22
  store i32 0, ptr %z, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc32, %if.then24
  %13 = load i32, ptr %z, align 4
  %14 = load i32, ptr %y.addr, align 4
  %tobool26 = icmp ne i32 %14, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.cond25
  br label %for.end34

if.end28:                                         ; preds = %for.cond25
  store i32 5, ptr %tmp29, align 4
  %15 = load i32, ptr %tmp29, align 4
  %cmp30 = icmp slt i32 %13, %15
  br i1 %cmp30, label %for.body31, label %for.end34

for.body31:                                       ; preds = %if.end28
  br label %for.inc32

for.inc32:                                        ; preds = %for.body31
  %16 = load i32, ptr %z, align 4
  %inc33 = add nsw i32 %16, 1
  store i32 %inc33, ptr %z, align 4
  br label %for.cond25, !llvm.loop !14

for.end34:                                        ; preds = %if.end28, %if.then27
  call void @abort() #2
  unreachable

if.end35:                                         ; preds = %if.end22
  %17 = load i32, ptr %x.addr, align 4
  %cmp36 = icmp eq i32 %17, 4
  br i1 %cmp36, label %if.then37, label %if.end47

if.then37:                                        ; preds = %if.end35
  store i32 0, ptr %z, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %if.end44, %if.then37
  %18 = load i32, ptr %z, align 4
  %cmp39 = icmp slt i32 %18, 5
  br i1 %cmp39, label %for.body40, label %for.end46

for.body40:                                       ; preds = %for.cond38
  br label %for.inc41

for.inc41:                                        ; preds = %for.body40
  %19 = load i32, ptr %y.addr, align 4
  %tobool42 = icmp ne i32 %19, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.inc41
  br label %for.end46

if.end44:                                         ; preds = %for.inc41
  store i32 1, ptr %tmp45, align 4
  %20 = load i32, ptr %tmp45, align 4
  %21 = load i32, ptr %z, align 4
  %add = add nsw i32 %21, %20
  store i32 %add, ptr %z, align 4
  br label %for.cond38, !llvm.loop !15

for.end46:                                        ; preds = %if.then43, %for.cond38
  call void @abort() #2
  unreachable

if.end47:                                         ; preds = %if.end35
  %22 = load i32, ptr %x.addr, align 4
  %cmp48 = icmp eq i32 %22, 5
  br i1 %cmp48, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.end47
  %23 = load i32, ptr %y.addr, align 4
  %tobool50 = icmp ne i32 %23, 0
  br i1 %tobool50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then49
  br label %while.end55

if.end52:                                         ; preds = %if.then49
  store i32 1, ptr %tmp53, align 4
  %24 = load i32, ptr %tmp53, align 4
  switch i32 %24, label %sw.default [
  ]

sw.default:                                       ; preds = %if.end52
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  call void @abort() #2
  unreachable

if.end54:                                         ; preds = %if.end47
  br label %while.cond, !llvm.loop !16

while.end55:                                      ; preds = %if.then51, %if.then18, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @baz(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  %tmp49 = alloca i32, align 4
  %tmp57 = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end58, %if.then55, %if.then21, %entry
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end59

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %y.addr, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %y.addr, align 4
  %cmp1 = icmp eq i32 %inc, 2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  ret void

if.end:                                           ; preds = %while.body
  %2 = load i32, ptr %x.addr, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %if.then3, label %if.end9

if.then3:                                         ; preds = %if.end
  br label %while.cond4

while.cond4:                                      ; preds = %while.body8, %if.then5, %if.then3
  %3 = load i32, ptr %y.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.cond4
  br label %while.cond4

if.end6:                                          ; preds = %while.cond4
  store i32 0, ptr %tmp, align 4
  %4 = load i32, ptr %tmp, align 4
  %tobool7 = icmp ne i32 %4, 0
  br i1 %tobool7, label %while.body8, label %while.end

while.body8:                                      ; preds = %if.end6
  br label %while.cond4, !llvm.loop !17

while.end:                                        ; preds = %if.end6
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %if.end
  %5 = load i32, ptr %x.addr, align 4
  %cmp10 = icmp eq i32 %5, 1
  br i1 %cmp10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.end9
  br label %do.body

do.body:                                          ; preds = %if.end14, %if.then11
  br label %do.cond

do.cond:                                          ; preds = %if.then13, %do.body
  %6 = load i32, ptr %y.addr, align 4
  %tobool12 = icmp ne i32 %6, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %do.cond
  br label %do.cond

if.end14:                                         ; preds = %do.cond
  store i32 0, ptr %tmp15, align 4
  %7 = load i32, ptr %tmp15, align 4
  %tobool16 = icmp ne i32 %7, 0
  br i1 %tobool16, label %do.body, label %do.end, !llvm.loop !18

do.end:                                           ; preds = %if.end14
  call void @abort() #2
  unreachable

if.end17:                                         ; preds = %if.end9
  %8 = load i32, ptr %x.addr, align 4
  %cmp18 = icmp eq i32 %8, 2
  br i1 %cmp18, label %if.then19, label %if.end26

if.then19:                                        ; preds = %if.end17
  %9 = load i32, ptr %y.addr, align 4
  %tobool20 = icmp ne i32 %9, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then19
  br label %while.cond, !llvm.loop !19

if.end22:                                         ; preds = %if.then19
  store i32 0, ptr %tmp23, align 4
  %10 = load i32, ptr %tmp23, align 4
  store i32 %10, ptr %z, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end22
  %11 = load i32, ptr %z, align 4
  %cmp24 = icmp slt i32 %11, 5
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %z, align 4
  %inc25 = add nsw i32 %12, 1
  store i32 %inc25, ptr %z, align 4
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  call void @abort() #2
  unreachable

if.end26:                                         ; preds = %if.end17
  %13 = load i32, ptr %x.addr, align 4
  %cmp27 = icmp eq i32 %13, 3
  br i1 %cmp27, label %if.then28, label %if.end39

if.then28:                                        ; preds = %if.end26
  store i32 0, ptr %z, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc36, %if.then28
  %14 = load i32, ptr %z, align 4
  %15 = load i32, ptr %y.addr, align 4
  %tobool30 = icmp ne i32 %15, 0
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.cond29
  br label %for.inc36

if.end32:                                         ; preds = %for.cond29
  store i32 5, ptr %tmp33, align 4
  %16 = load i32, ptr %tmp33, align 4
  %cmp34 = icmp slt i32 %14, %16
  br i1 %cmp34, label %for.body35, label %for.end38

for.body35:                                       ; preds = %if.end32
  br label %for.inc36

for.inc36:                                        ; preds = %for.body35, %if.then31
  %17 = load i32, ptr %z, align 4
  %inc37 = add nsw i32 %17, 1
  store i32 %inc37, ptr %z, align 4
  br label %for.cond29, !llvm.loop !21

for.end38:                                        ; preds = %if.end32
  call void @abort() #2
  unreachable

if.end39:                                         ; preds = %if.end26
  %18 = load i32, ptr %x.addr, align 4
  %cmp40 = icmp eq i32 %18, 4
  br i1 %cmp40, label %if.then41, label %if.end51

if.then41:                                        ; preds = %if.end39
  store i32 0, ptr %z, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %if.end48, %if.then41
  %19 = load i32, ptr %z, align 4
  %cmp43 = icmp slt i32 %19, 5
  br i1 %cmp43, label %for.body44, label %for.end50

for.body44:                                       ; preds = %for.cond42
  br label %for.inc45

for.inc45:                                        ; preds = %if.then47, %for.body44
  %20 = load i32, ptr %y.addr, align 4
  %tobool46 = icmp ne i32 %20, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.inc45
  br label %for.inc45

if.end48:                                         ; preds = %for.inc45
  store i32 1, ptr %tmp49, align 4
  %21 = load i32, ptr %tmp49, align 4
  %22 = load i32, ptr %z, align 4
  %add = add nsw i32 %22, %21
  store i32 %add, ptr %z, align 4
  br label %for.cond42, !llvm.loop !22

for.end50:                                        ; preds = %for.cond42
  call void @abort() #2
  unreachable

if.end51:                                         ; preds = %if.end39
  %23 = load i32, ptr %x.addr, align 4
  %cmp52 = icmp eq i32 %23, 5
  br i1 %cmp52, label %if.then53, label %if.end58

if.then53:                                        ; preds = %if.end51
  %24 = load i32, ptr %y.addr, align 4
  %tobool54 = icmp ne i32 %24, 0
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.then53
  br label %while.cond, !llvm.loop !19

if.end56:                                         ; preds = %if.then53
  store i32 1, ptr %tmp57, align 4
  %25 = load i32, ptr %tmp57, align 4
  switch i32 %25, label %sw.default [
  ]

sw.default:                                       ; preds = %if.end56
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  call void @abort() #2
  unreachable

if.end58:                                         ; preds = %if.end51
  br label %while.cond, !llvm.loop !19

while.end59:                                      ; preds = %while.cond
  call void @abort() #2
  unreachable
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @foo(i32 noundef 0, i32 noundef 1)
  call void @foo(i32 noundef 1, i32 noundef 1)
  call void @foo(i32 noundef 2, i32 noundef 1)
  call void @foo(i32 noundef 3, i32 noundef 1)
  call void @foo(i32 noundef 4, i32 noundef 1)
  call void @foo(i32 noundef 5, i32 noundef 1)
  call void @bar(i32 noundef 0, i32 noundef 1)
  call void @bar(i32 noundef 1, i32 noundef 1)
  call void @bar(i32 noundef 2, i32 noundef 1)
  call void @bar(i32 noundef 3, i32 noundef 1)
  call void @bar(i32 noundef 4, i32 noundef 1)
  call void @bar(i32 noundef 5, i32 noundef 1)
  call void @baz(i32 noundef 0, i32 noundef 0)
  call void @baz(i32 noundef 1, i32 noundef 0)
  call void @baz(i32 noundef 2, i32 noundef 0)
  call void @baz(i32 noundef 3, i32 noundef 0)
  call void @baz(i32 noundef 4, i32 noundef 0)
  call void @baz(i32 noundef 5, i32 noundef 0)
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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
