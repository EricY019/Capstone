; ModuleID = './code/206-3603arg_thread.c'
source_filename = "./code/206-3603arg_thread.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.FunctionArgument = type { i32, ptr }

@__stdoutp = external global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"OK!!\0A\00", align 1
@__const.main.func_arg = private unnamed_addr constant %struct.FunctionArgument { i32 10, ptr @.str.2 }, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"pthread_create returned %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"pthread_join returned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @func(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %func_arg = alloca ptr, align 8
  %ii = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  store ptr %0, ptr %func_arg, align 8
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %ii, align 4
  %2 = load ptr, ptr %func_arg, align 8
  %count = getelementptr inbounds %struct.FunctionArgument, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %count, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr @__stdoutp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str) #4
  %5 = load ptr, ptr @__stdoutp, align 8
  %call1 = call i32 @fflush(ptr noundef %5)
  %call2 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr @__stdoutp, align 8
  %8 = load ptr, ptr %func_arg, align 8
  %message = getelementptr inbounds %struct.FunctionArgument, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %message, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.1, ptr noundef %9) #4
  ret ptr null
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare i32 @fflush(ptr noundef) #2

declare i32 @"\01_sleep"(i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %child = alloca ptr, align 8
  %func_arg = alloca %struct.FunctionArgument, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %rc, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %func_arg, ptr align 8 @__const.main.func_arg, i64 16, i1 false)
  %call = call i32 @pthread_create(ptr noundef %child, ptr noundef null, ptr noundef @func, ptr noundef %func_arg)
  store i32 %call, ptr %rc, align 4
  %0 = load ptr, ptr @__stdoutp, align 8
  %1 = load i32, ptr %rc, align 4
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.3, i32 noundef %1) #4
  %2 = load ptr, ptr %child, align 8
  %call2 = call i32 @"\01_pthread_join"(ptr noundef %2, ptr noundef null)
  store i32 %call2, ptr %rc, align 4
  %3 = load ptr, ptr @__stdoutp, align 8
  %4 = load i32, ptr %rc, align 4
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.4, i32 noundef %4) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
