; ModuleID = './code/132-11851gdb-sample2.c'
source_filename = "./code/132-11851gdb-sample2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [27 x i8] c"Child Thread Iteration %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Child Thread 2 Iteration %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Main Loop Iteration %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @Thread_function1(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store i32 1, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 11
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  %2 = load i32, ptr %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4
  %3 = load i32, ptr %i, align 4
  %rem = urem i32 %3, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call1 = call i32 @"\01_sleep"(i32 noundef 2)
  br label %if.end

if.else:                                          ; preds = %while.body
  %call2 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %arg.addr, align 8
  ret ptr %4
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_sleep"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @Thread_function2(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store i32 1, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 11
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %1)
  %2 = load i32, ptr %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4
  %3 = load i32, ptr %i, align 4
  %rem = urem i32 %3, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call1 = call i32 @"\01_sleep"(i32 noundef 2)
  br label %if.end

if.else:                                          ; preds = %while.body
  %call2 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %arg.addr, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %thread = alloca ptr, align 8
  %thread2 = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @pthread_create(ptr noundef %thread, ptr noundef null, ptr noundef @Thread_function1, ptr noundef null)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @pthread_create(ptr noundef %thread2, ptr noundef null, ptr noundef @Thread_function2, ptr noundef null)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 1, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %if.end4
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 11
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %i, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %1)
  %2 = load i32, ptr %i, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %i, align 4
  %3 = load i32, ptr %i, align 4
  %rem = urem i32 %3, 2
  %tobool6 = icmp ne i32 %rem, 0
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %while.body
  %call8 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %if.end10

if.else:                                          ; preds = %while.body
  %call9 = call i32 @"\01_sleep"(i32 noundef 2)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then3, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
