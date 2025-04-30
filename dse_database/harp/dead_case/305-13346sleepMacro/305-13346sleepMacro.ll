; ModuleID = 'code/305-13346sleepMacro.c'
source_filename = "code/305-13346sleepMacro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sleep(i32 %seconds) #0 {
entry:
  %seconds.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %plsDontUseThisNameElseWhereOrIWontCompile = alloca i32, align 4
  store i32 %seconds, i32* %seconds.addr, align 4
  %0 = load i32, i32* %seconds.addr, align 4
  %div = sdiv i32 %0, 6
  store i32 %div, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %skip

if.end:                                           ; preds = %entry
  br label %batches

batches:                                          ; preds = %if.then3, %if.end
  store i32 0, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %batches
  %2 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %cmp1 = icmp slt i32 %2, 2147483646
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %i, align 4
  %cmp2 = icmp sgt i32 %dec, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.end
  br label %batches

if.end4:                                          ; preds = %for.end
  br label %skip

skip:                                             ; preds = %if.end4, %if.then
  %5 = load i32, i32* %seconds.addr, align 4
  %rem = srem i32 %5, 6
  store i32 %rem, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %skip
  br label %if.end17

if.end7:                                          ; preds = %skip
  br label %singles

singles:                                          ; preds = %if.then16, %if.end7
  store i32 0, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc11, %singles
  %7 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %cmp9 = icmp slt i32 %7, 357913941
  br i1 %cmp9, label %for.body10, label %for.end13

for.body10:                                       ; preds = %for.cond8
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !7
  br label %for.inc11

for.inc11:                                        ; preds = %for.body10
  %8 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %inc12 = add nsw i32 %8, 1
  store i32 %inc12, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond8, !llvm.loop !8

for.end13:                                        ; preds = %for.cond8
  %9 = load i32, i32* %i, align 4
  %dec14 = add nsw i32 %9, -1
  store i32 %dec14, i32* %i, align 4
  %cmp15 = icmp sgt i32 %dec14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end13
  br label %singles

if.end17:                                         ; preds = %if.then6, %for.end13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %plsDontUseThisNameElseWhereOrIWontCompile = alloca i32, align 4
  %plsDontUseThisNameElseWhereOrIWontCompile26 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %conv = sitofp i32 %0 to double
  %cmp = fcmp olt double %conv, 0x4195555555000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %2 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %conv3 = sitofp i32 %2 to double
  %cmp4 = fcmp olt double %conv3, 0x4195555555000000
  br i1 %cmp4, label %for.body6, label %for.end9

for.body6:                                        ; preds = %for.cond2
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !11
  br label %for.inc7

for.inc7:                                         ; preds = %for.body6
  %3 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %inc8 = add nsw i32 %3, 1
  store i32 %inc8, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond2, !llvm.loop !12

for.end9:                                         ; preds = %for.cond2
  store i32 0, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc15, %for.end9
  %4 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %conv11 = sitofp i32 %4 to double
  %cmp12 = fcmp olt double %conv11, 0x4195555555000000
  br i1 %cmp12, label %for.body14, label %for.end17

for.body14:                                       ; preds = %for.cond10
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !13
  br label %for.inc15

for.inc15:                                        ; preds = %for.body14
  %5 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %inc16 = add nsw i32 %5, 1
  store i32 %inc16, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond10, !llvm.loop !14

for.end17:                                        ; preds = %for.cond10
  store i32 0, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc23, %for.end17
  %6 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %conv19 = sitofp i32 %6 to double
  %cmp20 = fcmp olt double %conv19, 0x4195555555000000
  br i1 %cmp20, label %for.body22, label %for.end25

for.body22:                                       ; preds = %for.cond18
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !15
  br label %for.inc23

for.inc23:                                        ; preds = %for.body22
  %7 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %inc24 = add nsw i32 %7, 1
  store i32 %inc24, i32* %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond18, !llvm.loop !16

for.end25:                                        ; preds = %for.cond18
  store i32 0, i32* %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc31, %for.end25
  %8 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  %cmp28 = icmp slt i32 %8, 357913941
  br i1 %cmp28, label %for.body30, label %for.end33

for.body30:                                       ; preds = %for.cond27
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !17
  br label %for.inc31

for.inc31:                                        ; preds = %for.body30
  %9 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  %inc32 = add nsw i32 %9, 1
  store i32 %inc32, i32* %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  br label %for.cond27, !llvm.loop !18

for.end33:                                        ; preds = %for.cond27
  store i32 0, i32* %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc38, %for.end33
  %10 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  %cmp35 = icmp slt i32 %10, 0
  br i1 %cmp35, label %for.body37, label %for.end40

for.body37:                                       ; preds = %for.cond34
  call void asm sideeffect "nop", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !19
  br label %for.inc38

for.inc38:                                        ; preds = %for.body37
  %11 = load i32, i32* %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  %inc39 = add nsw i32 %11, 1
  store i32 %inc39, i32* %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  br label %for.cond34, !llvm.loop !20

for.end40:                                        ; preds = %for.cond34
  call void @sleep(i32 7)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 2147588902}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i64 2147589220}
!8 = distinct !{!8, !6}
!9 = !{i64 2147589521}
!10 = distinct !{!10, !6}
!11 = !{i64 2147589768}
!12 = distinct !{!12, !6}
!13 = !{i64 2147590015}
!14 = distinct !{!14, !6}
!15 = !{i64 2147590262}
!16 = distinct !{!16, !6}
!17 = !{i64 2147590563}
!18 = distinct !{!18, !6}
!19 = !{i64 2147590804}
!20 = distinct !{!20, !6}
