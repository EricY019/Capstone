; ModuleID = './code/297-30183exemple_semaphores.c'
source_filename = "./code/297-30183exemple_semaphores.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@semaphore = global i32 0, align 4
@__stdoutp = external global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"Thread %d dans portion critique\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Thread %d sort de la portion critique\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %thread = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @sem_init(ptr noundef @semaphore, i32 noundef 0, i32 noundef 3)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv = sext i32 %1 to i64
  %2 = inttoptr i64 %conv to ptr
  %call1 = call i32 @pthread_create(ptr noundef %thread, ptr noundef null, ptr noundef @routine_thread, ptr noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(ptr noundef null) #4
  unreachable
}

declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @routine_thread(ptr noundef %numero_thread) #0 {
entry:
  %numero_thread.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %numero_thread, ptr %numero_thread.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @"\01_sem_wait"(ptr noundef @semaphore)
  %1 = load ptr, ptr @__stdoutp, align 8
  %2 = load ptr, ptr %numero_thread.addr, align 8
  %3 = ptrtoint ptr %2 to i32
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str, i32 noundef %3) #5
  %call2 = call i32 @aleatoire(i32 noundef 4)
  %call3 = call i32 @"\01_sleep"(i32 noundef %call2)
  %4 = load ptr, ptr @__stdoutp, align 8
  %5 = load ptr, ptr %numero_thread.addr, align 8
  %6 = ptrtoint ptr %5 to i32
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1, i32 noundef %6) #5
  %call5 = call i32 @sem_post(ptr noundef @semaphore)
  %call6 = call i32 @aleatoire(i32 noundef 4)
  %call7 = call i32 @"\01_sleep"(i32 noundef %call6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret ptr null
}

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #2

declare i32 @"\01_sem_wait"(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @"\01_sleep"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @aleatoire(i32 noundef %maximum) #0 {
entry:
  %maximum.addr = alloca i32, align 4
  %d = alloca double, align 8
  store i32 %maximum, ptr %maximum.addr, align 4
  %0 = load i32, ptr %maximum.addr, align 4
  %conv = sitofp i32 %0 to double
  %call = call i32 @rand()
  %conv1 = sitofp i32 %call to double
  %mul = fmul double %conv, %conv1
  store double %mul, ptr %d, align 8
  %1 = load double, ptr %d, align 8
  %div = fdiv double %1, 0x41E0000000000000
  store double %div, ptr %d, align 8
  %2 = load double, ptr %d, align 8
  %conv2 = fptosi double %2 to i32
  ret i32 %conv2
}

declare i32 @sem_post(ptr noundef) #1

declare i32 @rand() #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

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
