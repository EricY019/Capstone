; ModuleID = './code/218-6095mutex.c'
source_filename = "./code/218-6095mutex.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@semaforo = global ptr null, align 8
@enteroCompartido = global ptr null, align 8
@.str = private unnamed_addr constant [57 x i8] c"Hola soy la hebra %d y el ultimo numero que deje fue %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Hebra padre ha terminado de esperar por sus hijas\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"- Finalmente enteroCompartido= %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @procedimiento(ptr noundef %in) #0 {
entry:
  %retval = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %tid = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %in, ptr %in.addr, align 8
  %0 = load ptr, ptr %in.addr, align 8
  %1 = ptrtoint ptr %0 to i32
  store i32 %1, ptr %tid, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr @semaforo, align 8
  %call = call i32 @pthread_mutex_lock(ptr noundef %3)
  %4 = load ptr, ptr @enteroCompartido, align 8
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 0
  %5 = load i32, ptr %arrayidx, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %arrayidx, align 4
  %6 = load i32, ptr %i, align 4
  %add = add nsw i32 %6, 1
  %cmp1 = icmp slt i32 %add, 10000
  br i1 %cmp1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %tid, align 4
  %8 = load ptr, ptr @enteroCompartido, align 8
  %9 = load i32, ptr %8, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7, i32 noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load ptr, ptr @semaforo, align 8
  %call3 = call i32 @pthread_mutex_unlock(ptr noundef %10)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4
  %inc4 = add nsw i32 %11, 1
  store i32 %inc4, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %retval, align 8
  ret ptr %12
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %hebra1 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call ptr @malloc(i64 noundef 4) #3
  store ptr %call, ptr @enteroCompartido, align 8
  %call1 = call ptr @malloc(i64 noundef 64) #3
  store ptr %call1, ptr @semaforo, align 8
  %0 = load ptr, ptr @semaforo, align 8
  %call2 = call i32 @pthread_mutex_init(ptr noundef %0, ptr noundef null)
  store i32 4, ptr %j, align 4
  %call3 = call ptr @malloc(i64 noundef 32) #3
  store ptr %call3, ptr %hebra1, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %hebra1, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load i32, ptr %i, align 4
  %conv = sext i32 %5 to i64
  %6 = inttoptr i64 %conv to ptr
  %call4 = call i32 @pthread_create(ptr noundef %arrayidx, ptr noundef null, ptr noundef @procedimiento, ptr noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc12, %for.end
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %j, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond5
  %10 = load ptr, ptr %hebra1, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %10, i64 %idxprom9
  %12 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 @"\01_pthread_join"(ptr noundef %12, ptr noundef null)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %13 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %13, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond5, !llvm.loop !8

for.end14:                                        ; preds = %for.cond5
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %14 = load ptr, ptr @enteroCompartido, align 8
  %15 = load i32, ptr %14, align 4
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %15)
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
