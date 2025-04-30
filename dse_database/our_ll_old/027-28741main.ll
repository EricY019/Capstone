; ModuleID = './code/027-28741main.c'
source_filename = "./code/027-28741main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@ALL_IS_OK = global ptr inttoptr (i64 123456789 to ptr), align 8
@.str = private unnamed_addr constant [5 x i8] c"boys\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"girls\00", align 1
@mess = global [2 x ptr] [ptr @.str, ptr @.str.1], align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Hi %s! (I'm %lx)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Thread %lx completed ok \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @writer(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %arg.addr, align 8
  %call = call ptr @pthread_self()
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %1, ptr noundef %call)
  store i32 800000, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load i32, ptr %j, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %j, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr @ALL_IS_OK, align 8
  ret ptr %4
}

declare i32 @printf(ptr noundef, ...) #1

declare ptr @pthread_self() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %status = alloca ptr, align 8
  %writer1_pid = alloca ptr, align 8
  %writer2_pid = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %0 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @mess, i64 0, i64 1), align 8
  %call = call i32 @pthread_create(ptr noundef %writer1_pid, ptr noundef null, ptr noundef @writer, ptr noundef %0)
  %1 = load ptr, ptr @mess, align 8
  %call1 = call i32 @pthread_create(ptr noundef %writer2_pid, ptr noundef null, ptr noundef @writer, ptr noundef %1)
  %2 = load ptr, ptr %writer1_pid, align 8
  %call2 = call i32 @"\01_pthread_join"(ptr noundef %2, ptr noundef %status)
  %3 = load ptr, ptr %status, align 8
  %4 = load ptr, ptr @ALL_IS_OK, align 8
  %cmp = icmp eq ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %writer1_pid, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %writer2_pid, align 8
  %call4 = call i32 @"\01_pthread_join"(ptr noundef %6, ptr noundef %status)
  %7 = load ptr, ptr %status, align 8
  %8 = load ptr, ptr @ALL_IS_OK, align 8
  %cmp5 = icmp eq ptr %7, %8
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  %9 = load ptr, ptr %writer2_pid, align 8
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %9)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

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
