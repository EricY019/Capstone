; ModuleID = './code/348-10151mini-mini.c'
source_filename = "./code/348-10151mini-mini.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [9 x i8] c"test.one\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"test.two\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %ac, ptr noundef %av) #0 {
entry:
  %retval = alloca i32, align 4
  %ac.addr = alloca i32, align 4
  %av.addr = alloca ptr, align 8
  %fd = alloca i32, align 4
  %dfd = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %ac, ptr %ac.addr, align 4
  store ptr %av, ptr %av.addr, align 8
  %call = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef @.str, i32 noundef 2561, i32 noundef 438)
  store i32 %call, ptr %fd, align 4
  %0 = load i32, ptr %fd, align 4
  %call1 = call i32 @"\01_close"(i32 noundef %0)
  %call2 = call i32 (ptr, i32, ...) @"\01_open"(ptr noundef @.str.1, i32 noundef 1048576)
  store i32 %call2, ptr %dfd, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @rename(ptr noundef @.str, ptr noundef @.str.2)
  %2 = load i32, ptr %dfd, align 4
  %call4 = call i32 @"\01_fsync"(i32 noundef %2)
  %call5 = call i32 @rename(ptr noundef @.str.2, ptr noundef @.str)
  %3 = load i32, ptr %dfd, align 4
  %call6 = call i32 @"\01_fsync"(i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call7 = call i32 @unlink(ptr noundef @.str)
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare i32 @"\01_open"(ptr noundef, i32 noundef, ...) #1

declare i32 @"\01_close"(i32 noundef) #1

declare i32 @rename(ptr noundef, ptr noundef) #1

declare i32 @"\01_fsync"(i32 noundef) #1

declare i32 @unlink(ptr noundef) #1

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
