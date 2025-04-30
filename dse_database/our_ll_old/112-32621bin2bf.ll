; ModuleID = './code/112-32621bin2bf.c'
source_filename = "./code/112-32621bin2bf.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c".[-]\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"[<\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c">-]\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"[<++>-]<\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"[<++++++>-]<\00", align 1
@__stdinp = external global ptr, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_and_reset() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bf10(i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %c.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bf50(i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %r = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  store i32 7, ptr %m, align 4
  %0 = load i32, ptr %c.addr, align 4
  %1 = load i32, ptr %m, align 4
  %div = sdiv i32 %0, %1
  store i32 %div, ptr %d, align 4
  %2 = load i32, ptr %c.addr, align 4
  %3 = load i32, ptr %m, align 4
  %rem = srem i32 %2, %3
  store i32 %rem, ptr %r, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %m, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc7, %for.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %d, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body5, label %for.end9

for.body5:                                        ; preds = %for.cond3
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body5
  %9 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond3, !llvm.loop !8

for.end9:                                         ; preds = %for.cond3
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %10 = load i32, ptr %r, align 4
  call void @bf10(i32 noundef %10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bf100(i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %r = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %rem = srem i32 %0, 2
  store i32 %rem, ptr %r, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %1 = load i32, ptr %c.addr, align 4
  %div = sdiv i32 %1, 2
  call void @bf50(i32 noundef %div)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %2 = load i32, ptr %r, align 4
  call void @bf10(i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bf255(i32 noundef %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %r = alloca i32, align 4
  %m = alloca i32, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %c.addr, align 4
  %rem = srem i32 %0, 6
  store i32 %rem, ptr %r, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %1 = load i32, ptr %c.addr, align 4
  %div = sdiv i32 %1, 6
  call void @bf50(i32 noundef %div)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %2 = load i32, ptr %r, align 4
  call void @bf10(i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %0 = load ptr, ptr @__stdinp, align 8
  %call = call i32 @fgetc(ptr noundef %0)
  store i32 %call, ptr %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %c, align 4
  %cmp1 = icmp sle i32 %1, 10
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i32, ptr %c, align 4
  call void @bf10(i32 noundef %2)
  call void @print_and_reset()
  br label %if.end9

if.else:                                          ; preds = %while.body
  %3 = load i32, ptr %c, align 4
  %cmp2 = icmp sle i32 %3, 50
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  %4 = load i32, ptr %c, align 4
  call void @bf50(i32 noundef %4)
  call void @print_and_reset()
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %5 = load i32, ptr %c, align 4
  %cmp5 = icmp sle i32 %5, 100
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else4
  %6 = load i32, ptr %c, align 4
  call void @bf100(i32 noundef %6)
  call void @print_and_reset()
  br label %if.end

if.else7:                                         ; preds = %if.else4
  %7 = load i32, ptr %c, align 4
  call void @bf255(i32 noundef %7)
  call void @print_and_reset()
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i32 @fgetc(ptr noundef) #1

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
!9 = distinct !{!9, !6}
