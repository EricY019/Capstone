; ModuleID = './code/035-3150801.c'
source_filename = "./code/035-3150801.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [23 x i8] c"Thread desordenada %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Thread %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @desordenado(ptr noundef %valor) #0 {
entry:
  %valor.addr = alloca ptr, align 8
  store ptr %valor, ptr %valor.addr, align 8
  %0 = load ptr, ptr %valor.addr, align 8
  %1 = load i32, ptr %0, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  ret ptr null
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @criar_threads_de_qualquer_forma() #0 {
entry:
  %thrs = alloca [10 x ptr], align 8
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %thrs, i64 0, i64 %idxprom
  %call = call i32 @pthread_create(ptr noundef %arrayidx, ptr noundef null, ptr noundef @desordenado, ptr noundef %i)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @criar_threads_de_forma_ordenada(ptr noundef %quantidade) #0 {
entry:
  %retval = alloca ptr, align 8
  %quantidade.addr = alloca ptr, align 8
  %valor = alloca i32, align 4
  %thr = alloca ptr, align 8
  store ptr %quantidade, ptr %quantidade.addr, align 8
  %0 = load ptr, ptr %quantidade.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %valor, align 4
  %2 = load i32, ptr %valor, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  %3 = load i32, ptr %valor, align 4
  %cmp = icmp eq i32 %3, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %valor, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %valor, align 4
  %call1 = call i32 @pthread_create(ptr noundef %thr, ptr noundef null, ptr noundef @criar_threads_de_forma_ordenada, ptr noundef %valor)
  %5 = load ptr, ptr %thr, align 8
  %call2 = call i32 @"\01_pthread_join"(ptr noundef %5, ptr noundef null)
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8
  ret ptr %6
}

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %min, align 4
  call void @criar_threads_de_qualquer_forma()
  %call = call i32 @"\01_sleep"(i32 noundef 1)
  %call1 = call ptr @criar_threads_de_forma_ordenada(ptr noundef %min)
  ret i32 0
}

declare i32 @"\01_sleep"(i32 noundef) #1

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
