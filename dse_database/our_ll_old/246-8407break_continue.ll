; ModuleID = './code/246-8407break_continue.c'
source_filename = "./code/246-8407break_continue.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i29 = alloca i32, align 4
  %j30 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end3, %if.then, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %i, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %rem = srem i32 %2, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.cond, !llvm.loop !5

if.end:                                           ; preds = %while.body
  %3 = load i32, ptr %i, align 4
  %cmp1 = icmp eq i32 %3, 16
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %while.end

if.end3:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %if.then2, %while.cond
  store i32 0, ptr %i, align 4
  br label %while.cond4

while.cond4:                                      ; preds = %while.end27, %if.then10, %while.end
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %5, 20
  br i1 %cmp5, label %while.body6, label %while.end28

while.body6:                                      ; preds = %while.cond4
  %6 = load i32, ptr %i, align 4
  %add7 = add nsw i32 %6, 1
  store i32 %add7, ptr %i, align 4
  %7 = load i32, ptr %i, align 4
  %rem8 = srem i32 %7, 2
  %tobool9 = icmp ne i32 %rem8, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %while.body6
  br label %while.cond4, !llvm.loop !7

if.end11:                                         ; preds = %while.body6
  %8 = load i32, ptr %i, align 4
  %cmp12 = icmp eq i32 %8, 16
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end11
  br label %while.end28

if.end14:                                         ; preds = %if.end11
  %9 = load i32, ptr %i, align 4
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %9)
  store i32 20, ptr %j, align 4
  br label %while.cond16

while.cond16:                                     ; preds = %if.end25, %if.then21, %if.end14
  %10 = load i32, ptr %j, align 4
  %tobool17 = icmp ne i32 %10, 0
  br i1 %tobool17, label %while.body18, label %while.end27

while.body18:                                     ; preds = %while.cond16
  %11 = load i32, ptr %j, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, ptr %j, align 4
  %12 = load i32, ptr %j, align 4
  %rem19 = srem i32 %12, 2
  %tobool20 = icmp ne i32 %rem19, 0
  br i1 %tobool20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %while.body18
  br label %while.cond16, !llvm.loop !8

if.end22:                                         ; preds = %while.body18
  %13 = load i32, ptr %j, align 4
  %cmp23 = icmp eq i32 %13, 4
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  br label %while.end27

if.end25:                                         ; preds = %if.end22
  %14 = load i32, ptr %j, align 4
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %14)
  br label %while.cond16, !llvm.loop !8

while.end27:                                      ; preds = %if.then24, %while.cond16
  br label %while.cond4, !llvm.loop !7

while.end28:                                      ; preds = %if.then13, %while.cond4
  store i32 0, ptr %i29, align 4
  store i32 10, ptr %j30, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end28
  %15 = load i32, ptr %i29, align 4
  %rem31 = srem i32 %15, 2
  %tobool32 = icmp ne i32 %rem31, 0
  br i1 %tobool32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %for.cond
  br label %for.inc

if.end34:                                         ; preds = %for.cond
  %16 = load i32, ptr %i29, align 4
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %16)
  %17 = load i32, ptr %i29, align 4
  %18 = load i32, ptr %j30, align 4
  %cmp36 = icmp eq i32 %17, %18
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end34
  br label %for.end

if.end38:                                         ; preds = %if.end34
  br label %for.inc

for.inc:                                          ; preds = %if.end38, %if.then33
  %19 = load i32, ptr %i29, align 4
  %add39 = add nsw i32 %19, 1
  store i32 %add39, ptr %i29, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then37
  %20 = load i32, ptr %i, align 4
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %20)
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
