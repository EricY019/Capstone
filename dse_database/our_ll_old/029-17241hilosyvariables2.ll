; ModuleID = './code/029-17241hilosyvariables2.c'
source_filename = "./code/029-17241hilosyvariables2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@variable_global = global i32 0, align 4
@tid = global [2 x ptr] zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"\0AError al crear el hilo :[%d]\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0A Hilo creado!\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"\0A El valor de variable global para el primer hilo es: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"\0A El valor de variable global para el segundo hilo es: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x ptr], ptr @tid, i64 0, i64 %idxprom
  %call = call i32 @pthread_create(ptr noundef %arrayidx, ptr noundef null, ptr noundef @trabajo, ptr noundef null)
  store i32 %call, ptr %err, align 4
  %2 = load i32, ptr %err, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i32, ptr %err, align 4
  %call2 = call ptr @"\01_strerror"(i32 noundef %3)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %call2)
  br label %if.end

if.else:                                          ; preds = %while.body
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call5 = call i32 @"\01_sleep"(i32 noundef 10)
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @trabajo(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %id = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  store i32 0, ptr %j, align 4
  %call = call ptr @pthread_self()
  store ptr %call, ptr %id, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @variable_global, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @variable_global, align 4
  %2 = load ptr, ptr %id, align 8
  %3 = load ptr, ptr @tid, align 8
  %call1 = call i32 @pthread_equal(ptr noundef %2, ptr noundef %3)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr @variable_global, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %4)
  br label %if.end

if.else:                                          ; preds = %for.body
  %5 = load i32, ptr @variable_global, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %j, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret ptr null
}

declare i32 @printf(ptr noundef, ...) #1

declare ptr @"\01_strerror"(i32 noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

declare ptr @pthread_self() #1

declare i32 @pthread_equal(ptr noundef, ptr noundef) #1

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
