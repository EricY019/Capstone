; ModuleID = './code/098-15981fact_async.c'
source_filename = "./code/098-15981fact_async.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._factorialData = type { i32, i32, ptr }

@.str = private unnamed_addr constant [17 x i8] c"Factorial is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @factorial(ptr noundef %args) #0 {
entry:
  %args.addr = alloca ptr, align 8
  %factorialData = alloca ptr, align 8
  %callback = alloca ptr, align 8
  %number = alloca i32, align 4
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %args, ptr %args.addr, align 8
  %0 = load ptr, ptr %args.addr, align 8
  store ptr %0, ptr %factorialData, align 8
  %1 = load ptr, ptr %factorialData, align 8
  %number1 = getelementptr inbounds %struct._factorialData, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %number1, align 8
  store i32 %2, ptr %number, align 4
  %3 = load ptr, ptr %factorialData, align 8
  %callback2 = getelementptr inbounds %struct._factorialData, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %callback2, align 8
  store ptr %4, ptr %callback, align 8
  store i32 1, ptr %num, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %number, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %num, align 4
  %mul = mul nsw i32 %8, %7
  store i32 %mul, ptr %num, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %num, align 4
  %11 = load ptr, ptr %factorialData, align 8
  %result = getelementptr inbounds %struct._factorialData, ptr %11, i32 0, i32 1
  store i32 %10, ptr %result, align 4
  %12 = load ptr, ptr %callback, align 8
  %13 = load ptr, ptr %factorialData, align 8
  call void %12(ptr noundef %13)
  call void @pthread_exit(ptr noundef null) #4
  unreachable
}

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @startThread(ptr noundef %data) #0 {
entry:
  %data.addr = alloca ptr, align 8
  %thread_id = alloca ptr, align 8
  %thread = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  %0 = load ptr, ptr %data.addr, align 8
  %call = call i32 @pthread_create(ptr noundef %thread_id, ptr noundef null, ptr noundef @factorial, ptr noundef %0)
  store i32 %call, ptr %thread, align 4
  ret void
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @callbackFunction(ptr noundef %factorialData) #0 {
entry:
  %factorialData.addr = alloca ptr, align 8
  store ptr %factorialData, ptr %factorialData.addr, align 8
  %0 = load ptr, ptr %factorialData.addr, align 8
  %result = getelementptr inbounds %struct._factorialData, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %result, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 16) #5
  store ptr %call, ptr %data, align 8
  %0 = load ptr, ptr %data, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %data, align 8
  %number = getelementptr inbounds %struct._factorialData, ptr %1, i32 0, i32 0
  store i32 5, ptr %number, align 8
  %2 = load ptr, ptr %data, align 8
  %callback = getelementptr inbounds %struct._factorialData, ptr %2, i32 0, i32 2
  store ptr @callbackFunction, ptr %callback, align 8
  %3 = load ptr, ptr %data, align 8
  call void @startThread(ptr noundef %3)
  %call2 = call i32 @"\01_sleep"(i32 noundef 2)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

declare i32 @"\01_sleep"(i32 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { noreturn }
attributes #5 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
