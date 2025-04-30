; ModuleID = './code/176-18338partial_sum.c'
source_filename = "./code/176-18338partial_sum.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@total_sum = global i32 0, align 4
@__const.main.num1 = private unnamed_addr constant [2 x i32] [i32 1, i32 4999], align 4
@__const.main.num2 = private unnamed_addr constant [2 x i32] [i32 5000, i32 10000], align 4
@.str = private unnamed_addr constant [35 x i8] c"The main thread continues running\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"total_sum=%d and it should be 50005000\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @partial_sum(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %ni = alloca i32, align 4
  %nf = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  store i32 0, ptr %j, align 4
  %0 = load ptr, ptr %arg.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 0
  %1 = load i32, ptr %arrayidx, align 4
  store i32 %1, ptr %ni, align 4
  %2 = load ptr, ptr %arg.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %2, i64 1
  %3 = load i32, ptr %arrayidx1, align 4
  store i32 %3, ptr %nf, align 4
  %4 = load i32, ptr %ni, align 4
  store i32 %4, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %j, align 4
  %6 = load i32, ptr %nf, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr @total_sum, align 4
  %8 = load i32, ptr %j, align 4
  %add = add nsw i32 %7, %8
  store i32 %add, ptr @total_sum, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  call void @pthread_exit(ptr noundef null) #4
  unreachable
}

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %th1 = alloca ptr, align 8
  %th2 = alloca ptr, align 8
  %num1 = alloca [2 x i32], align 4
  %num2 = alloca [2 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %num1, ptr align 4 @__const.main.num1, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %num2, ptr align 4 @__const.main.num2, i64 8, i1 false)
  %arraydecay = getelementptr inbounds [2 x i32], ptr %num1, i64 0, i64 0
  %call = call i32 @pthread_create(ptr noundef %th1, ptr noundef null, ptr noundef @partial_sum, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [2 x i32], ptr %num2, i64 0, i64 0
  %call2 = call i32 @pthread_create(ptr noundef %th2, ptr noundef null, ptr noundef @partial_sum, ptr noundef %arraydecay1)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load ptr, ptr %th1, align 8
  %call4 = call i32 @"\01_pthread_join"(ptr noundef %0, ptr noundef null)
  %1 = load ptr, ptr %th2, align 8
  %call5 = call i32 @"\01_pthread_join"(ptr noundef %1, ptr noundef null)
  %2 = load i32, ptr @total_sum, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #3

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
