; ModuleID = './code/357-12046task_3.c'
source_filename = "./code/357-12046task_3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"(%d - %d)\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %prim1 = alloca i32, align 4
  %prim2 = alloca i32, align 4
  %x = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %prim1, align 4
  store i32 3, ptr %prim2, align 4
  store i32 1, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4
  %cmp = icmp sle i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %m, align 4
  store i32 0, ptr %n, align 4
  store i32 1, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %prim1, align 4
  %cmp1 = icmp sle i32 %1, %2
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %3 = load i32, ptr %m, align 4
  %cmp2 = icmp eq i32 %3, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %cmp2, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  %6 = load i32, ptr %prim1, align 4
  %7 = load i32, ptr %i, align 4
  %cmp3 = icmp eq i32 %7, 0
  %conv = zext i1 %cmp3 to i32
  %and = and i32 %6, %conv
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %8 = load i32, ptr %m, align 4
  %inc4 = add nsw i32 %8, 1
  store i32 %inc4, ptr %m, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %lor.end
  store i32 1, ptr %i, align 4
  br label %while.cond5

while.cond5:                                      ; preds = %if.end20, %while.end
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %prim2, align 4
  %cmp6 = icmp sle i32 %9, %10
  br i1 %cmp6, label %lor.end11, label %lor.rhs8

lor.rhs8:                                         ; preds = %while.cond5
  %11 = load i32, ptr %n, align 4
  %cmp9 = icmp eq i32 %11, 0
  br label %lor.end11

lor.end11:                                        ; preds = %lor.rhs8, %while.cond5
  %12 = phi i1 [ true, %while.cond5 ], [ %cmp9, %lor.rhs8 ]
  br i1 %12, label %while.body12, label %while.end21

while.body12:                                     ; preds = %lor.end11
  %13 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %13, 1
  store i32 %inc13, ptr %i, align 4
  %14 = load i32, ptr %prim2, align 4
  %15 = load i32, ptr %i, align 4
  %cmp14 = icmp eq i32 %15, 0
  %conv15 = zext i1 %cmp14 to i32
  %and16 = and i32 %14, %conv15
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %while.body12
  %16 = load i32, ptr %n, align 4
  %inc19 = add nsw i32 %16, 1
  store i32 %inc19, ptr %n, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %while.body12
  br label %while.cond5, !llvm.loop !7

while.end21:                                      ; preds = %lor.end11
  %17 = load i32, ptr %m, align 4
  %cmp22 = icmp eq i32 %17, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %while.end21
  %18 = load i32, ptr %n, align 4
  %cmp24 = icmp eq i32 %18, 0
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true
  %19 = load i32, ptr %prim1, align 4
  %20 = load i32, ptr %prim2, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %19, i32 noundef %20)
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %land.lhs.true, %while.end21
  %21 = load i32, ptr %prim1, align 4
  %inc28 = add nsw i32 %21, 1
  store i32 %inc28, ptr %prim1, align 4
  %22 = load i32, ptr %prim2, align 4
  %inc29 = add nsw i32 %22, 1
  store i32 %inc29, ptr %prim2, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %23 = load i32, ptr %x, align 4
  %inc30 = add nsw i32 %23, 1
  store i32 %inc30, ptr %x, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
