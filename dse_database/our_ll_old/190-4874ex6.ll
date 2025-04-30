; ModuleID = './code/190-4874ex6.c'
source_filename = "./code/190-4874ex6.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.timespec = type { i64, i64 }

@__stdoutp = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"status = %d, count = %lu: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"count = %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i64, align 8
  %ts = alloca %struct.timespec, align 8
  %thread = alloca ptr, align 8
  %status = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 0
  store i64 0, ptr %tv_sec, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %ts, i32 0, i32 1
  store i64 10000, ptr %tv_nsec, align 8
  %0 = load ptr, ptr @__stdoutp, align 8
  %call = call i32 @setvbuf(ptr noundef %0, ptr noundef null, i32 noundef 2, i64 noundef 0)
  store i64 0, ptr %count, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %count, align 8
  %cmp = icmp ult i64 %1, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 @pthread_create(ptr noundef %thread, ptr noundef null, ptr noundef @test_thread, ptr noundef null)
  store i32 %call1, ptr %status, align 4
  %2 = load i32, ptr %status, align 4
  %cmp2 = icmp ne i32 %2, 0
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %status, align 4
  %4 = load i64, ptr %count, align 8
  %call3 = call ptr @__error()
  %5 = load i32, ptr %call3, align 4
  %call4 = call ptr @"\01_strerror"(i32 noundef %5)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3, i64 noundef %4, ptr noundef %call4)
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %for.body
  %6 = load i64, ptr %count, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.else
  %7 = load ptr, ptr %thread, align 8
  %call7 = call i32 @"\01_pthread_join"(ptr noundef %7, ptr noundef null)
  %call8 = call i32 @"\01_nanosleep"(ptr noundef %ts, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i64, ptr %count, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %count, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

declare i32 @setvbuf(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @test_thread(ptr noundef %v_param) #0 {
entry:
  %v_param.addr = alloca ptr, align 8
  store ptr %v_param, ptr %v_param.addr, align 8
  ret ptr null
}

declare i32 @printf(ptr noundef, ...) #1

declare ptr @"\01_strerror"(i32 noundef) #1

declare ptr @__error() #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @"\01_nanosleep"(ptr noundef, ptr noundef) #1

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
