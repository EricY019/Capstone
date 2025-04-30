; ModuleID = './code/342-24042pr87168.c'
source_filename = "./code/342-24042pr87168.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@b = global i32 0, align 4
@f = global i32 0, align 4
@e = global i32 0, align 4
@a = global i32 0, align 4
@d = global i32 0, align 4
@g = global ptr null, align 8
@c = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %while.cond

while.cond:                                       ; preds = %L3, %entry
  %0 = load i32, ptr @b, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %L1

L1:                                               ; preds = %if.then7, %while.body
  %1 = load i32, ptr %j, align 4
  store i32 %1, ptr @f, align 4
  br label %L2

L2:                                               ; preds = %for.end, %if.then, %L1
  %2 = load i32, ptr %i, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %L2
  %3 = load i32, ptr @e, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr @f, align 4
  store i32 %4, ptr %i, align 4
  br label %L2

if.end:                                           ; preds = %land.lhs.true, %L2
  %5 = load i32, ptr @f, align 4
  store i32 %5, ptr %j, align 4
  %6 = load i32, ptr @a, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %L3

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %7 = load i32, ptr %m, align 4
  %cmp = icmp slt i32 %7, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr @d, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  br label %L1

if.end8:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %9 = load i32, ptr %m, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %m, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %L2

L3:                                               ; preds = %if.then4
  %10 = load ptr, ptr @g, align 8
  %cmp9 = icmp ne ptr %j, %10
  %conv = zext i1 %cmp9 to i32
  %11 = load i32, ptr @c, align 4
  %or = or i32 %conv, %11
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
