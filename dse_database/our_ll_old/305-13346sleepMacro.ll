; ModuleID = './code/305-13346sleepMacro.c'
source_filename = "./code/305-13346sleepMacro.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sleep(i32 noundef %seconds) #0 {
entry:
  %seconds.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %plsDontUseThisNameElseWhereOrIWontCompile = alloca i32, align 4
  store i32 %seconds, ptr %seconds.addr, align 4
  %0 = load i32, ptr %seconds.addr, align 4
  %div = sdiv i32 %0, 6
  store i32 %div, ptr %i, align 4
  %1 = load i32, ptr %i, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %skip

if.end:                                           ; preds = %entry
  br label %batches

batches:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %batches
  %2 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %cmp1 = icmp slt i32 %2, 2147483646
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void asm sideeffect "nop", ""() #1, !srcloc !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %i, align 4
  %cmp2 = icmp sgt i32 %dec, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.end
  br label %batches

if.end4:                                          ; preds = %for.end
  br label %skip

skip:                                             ; preds = %if.end4, %if.then
  %5 = load i32, ptr %seconds.addr, align 4
  %rem = srem i32 %5, 6
  store i32 %rem, ptr %i, align 4
  %6 = load i32, ptr %i, align 4
  %cmp5 = icmp eq i32 %6, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %skip
  br label %if.end17

if.end7:                                          ; preds = %skip
  br label %singles

singles:                                          ; preds = %if.then16, %if.end7
  store i32 0, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc11, %singles
  %7 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %cmp9 = icmp slt i32 %7, 357913941
  br i1 %cmp9, label %for.body10, label %for.end13

for.body10:                                       ; preds = %for.cond8
  call void asm sideeffect "nop", ""() #1, !srcloc !8
  br label %for.inc11

for.inc11:                                        ; preds = %for.body10
  %8 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %inc12 = add nsw i32 %8, 1
  store i32 %inc12, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond8, !llvm.loop !9

for.end13:                                        ; preds = %for.cond8
  %9 = load i32, ptr %i, align 4
  %dec14 = add nsw i32 %9, -1
  store i32 %dec14, ptr %i, align 4
  %cmp15 = icmp sgt i32 %dec14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end13
  br label %singles

if.end17:                                         ; preds = %if.then6, %for.end13
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %plsDontUseThisNameElseWhereOrIWontCompile = alloca i32, align 4
  %plsDontUseThisNameElseWhereOrIWontCompile26 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %conv = sitofp i32 %0 to double
  %cmp = fcmp olt double %conv, 0x4195555555000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void asm sideeffect "nop", ""() #1, !srcloc !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %2 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %conv3 = sitofp i32 %2 to double
  %cmp4 = fcmp olt double %conv3, 0x4195555555000000
  br i1 %cmp4, label %for.body6, label %for.end9

for.body6:                                        ; preds = %for.cond2
  call void asm sideeffect "nop", ""() #1, !srcloc !12
  br label %for.inc7

for.inc7:                                         ; preds = %for.body6
  %3 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %inc8 = add nsw i32 %3, 1
  store i32 %inc8, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond2, !llvm.loop !13

for.end9:                                         ; preds = %for.cond2
  store i32 0, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc15, %for.end9
  %4 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %conv11 = sitofp i32 %4 to double
  %cmp12 = fcmp olt double %conv11, 0x4195555555000000
  br i1 %cmp12, label %for.body14, label %for.end17

for.body14:                                       ; preds = %for.cond10
  call void asm sideeffect "nop", ""() #1, !srcloc !14
  br label %for.inc15

for.inc15:                                        ; preds = %for.body14
  %5 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %inc16 = add nsw i32 %5, 1
  store i32 %inc16, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond10, !llvm.loop !15

for.end17:                                        ; preds = %for.cond10
  store i32 0, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc23, %for.end17
  %6 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %conv19 = sitofp i32 %6 to double
  %cmp20 = fcmp olt double %conv19, 0x4195555555000000
  br i1 %cmp20, label %for.body22, label %for.end25

for.body22:                                       ; preds = %for.cond18
  call void asm sideeffect "nop", ""() #1, !srcloc !16
  br label %for.inc23

for.inc23:                                        ; preds = %for.body22
  %7 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  %inc24 = add nsw i32 %7, 1
  store i32 %inc24, ptr %plsDontUseThisNameElseWhereOrIWontCompile, align 4
  br label %for.cond18, !llvm.loop !17

for.end25:                                        ; preds = %for.cond18
  store i32 0, ptr %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc31, %for.end25
  %8 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  %cmp28 = icmp slt i32 %8, 357913941
  br i1 %cmp28, label %for.body30, label %for.end33

for.body30:                                       ; preds = %for.cond27
  call void asm sideeffect "nop", ""() #1, !srcloc !18
  br label %for.inc31

for.inc31:                                        ; preds = %for.body30
  %9 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  %inc32 = add nsw i32 %9, 1
  store i32 %inc32, ptr %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  br label %for.cond27, !llvm.loop !19

for.end33:                                        ; preds = %for.cond27
  store i32 0, ptr %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc38, %for.end33
  %10 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  %cmp35 = icmp slt i32 %10, 0
  br i1 %cmp35, label %for.body37, label %for.end40

for.body37:                                       ; preds = %for.cond34
  call void asm sideeffect "nop", ""() #1, !srcloc !20
  br label %for.inc38

for.inc38:                                        ; preds = %for.body37
  %11 = load i32, ptr %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  %inc39 = add nsw i32 %11, 1
  store i32 %inc39, ptr %plsDontUseThisNameElseWhereOrIWontCompile26, align 4
  br label %for.cond34, !llvm.loop !21

for.end40:                                        ; preds = %for.cond34
  call void @sleep(i32 noundef 7)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{i64 2148139807}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i64 2148140125}
!9 = distinct !{!9, !7}
!10 = !{i64 2148140426}
!11 = distinct !{!11, !7}
!12 = !{i64 2148140673}
!13 = distinct !{!13, !7}
!14 = !{i64 2148140920}
!15 = distinct !{!15, !7}
!16 = !{i64 2148141167}
!17 = distinct !{!17, !7}
!18 = !{i64 2148141468}
!19 = distinct !{!19, !7}
!20 = !{i64 2148141709}
!21 = distinct !{!21, !7}
