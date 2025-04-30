; ModuleID = './code/262-7623pthread_create_with_param.c'
source_filename = "./code/262-7623pthread_create_with_param.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.char_print_parms = type { i8, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @char_print(ptr noundef %parameters) #0 {
entry:
  %parameters.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %parameters, ptr %parameters.addr, align 8
  %0 = load ptr, ptr %parameters.addr, align 8
  store ptr %0, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %p, align 8
  %count = getelementptr inbounds %struct.char_print_parms, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %count, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p, align 8
  %character = getelementptr inbounds %struct.char_print_parms, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %character, align 4
  %conv = sext i8 %5 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret ptr null
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %thread1_id = alloca ptr, align 8
  %thread2_id = alloca ptr, align 8
  %thread1_args = alloca %struct.char_print_parms, align 4
  %thread2_args = alloca %struct.char_print_parms, align 4
  store i32 0, ptr %retval, align 4
  %character = getelementptr inbounds %struct.char_print_parms, ptr %thread1_args, i32 0, i32 0
  store i8 120, ptr %character, align 4
  %count = getelementptr inbounds %struct.char_print_parms, ptr %thread1_args, i32 0, i32 1
  store i32 6, ptr %count, align 4
  %call = call i32 @pthread_create(ptr noundef %thread1_id, ptr noundef null, ptr noundef @char_print, ptr noundef %thread1_args)
  %character1 = getelementptr inbounds %struct.char_print_parms, ptr %thread2_args, i32 0, i32 0
  store i8 111, ptr %character1, align 4
  %count2 = getelementptr inbounds %struct.char_print_parms, ptr %thread2_args, i32 0, i32 1
  store i32 2, ptr %count2, align 4
  %call3 = call i32 @pthread_create(ptr noundef %thread2_id, ptr noundef null, ptr noundef @char_print, ptr noundef %thread2_args)
  %call4 = call i32 @"\01_sleep"(i32 noundef 1)
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
