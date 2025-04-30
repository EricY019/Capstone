; ModuleID = './code/325-4606tc14_laog_dinphils.c'
source_filename = "./code/325-4606tc14_laog_dinphils.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }

@chop = internal global [5 x %struct._opaque_pthread_mutex_t] zeroinitializer, align 8
@phil = internal global [5 x ptr] zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @dine(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %left = alloca i64, align 8
  %right = alloca i64, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  %1 = ptrtoint ptr %0 to i64
  store i64 %1, ptr %left, align 8
  %2 = load i64, ptr %left, align 8
  %add = add nsw i64 %2, 1
  %rem = srem i64 %add, 5
  store i64 %rem, ptr %right, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %3, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %left, align 8
  %arrayidx = getelementptr inbounds [5 x %struct._opaque_pthread_mutex_t], ptr @chop, i64 0, i64 %4
  %call = call i32 @pthread_mutex_lock(ptr noundef %arrayidx)
  %5 = load i64, ptr %right, align 8
  %arrayidx1 = getelementptr inbounds [5 x %struct._opaque_pthread_mutex_t], ptr @chop, i64 0, i64 %5
  %call2 = call i32 @pthread_mutex_lock(ptr noundef %arrayidx1)
  %6 = load i64, ptr %left, align 8
  %arrayidx3 = getelementptr inbounds [5 x %struct._opaque_pthread_mutex_t], ptr @chop, i64 0, i64 %6
  %call4 = call i32 @pthread_mutex_unlock(ptr noundef %arrayidx3)
  %7 = load i64, ptr %right, align 8
  %arrayidx5 = getelementptr inbounds [5 x %struct._opaque_pthread_mutex_t], ptr @chop, i64 0, i64 %7
  %call6 = call i32 @pthread_mutex_unlock(ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp slt i64 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [5 x %struct._opaque_pthread_mutex_t], ptr @chop, i64 0, i64 %1
  %call = call i32 @pthread_mutex_init(ptr noundef %arrayidx, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i64, ptr %i, align 8
  %inc = add nsw i64 %2, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %3 = load i64, ptr %i, align 8
  %cmp2 = icmp slt i64 %3, 5
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %4 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds [5 x ptr], ptr @phil, i64 0, i64 %4
  %5 = load i64, ptr %i, align 8
  %6 = inttoptr i64 %5 to ptr
  %call5 = call i32 @pthread_create(ptr noundef %arrayidx4, ptr noundef null, ptr noundef @dine, ptr noundef %6)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %7 = load i64, ptr %i, align 8
  %inc7 = add nsw i64 %7, 1
  store i64 %inc7, ptr %i, align 8
  br label %for.cond1, !llvm.loop !8

for.end8:                                         ; preds = %for.cond1
  %call9 = call i32 @"\01_sleep"(i32 noundef 1)
  store i64 0, ptr %i, align 8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc15, %for.end8
  %8 = load i64, ptr %i, align 8
  %cmp11 = icmp slt i64 %8, 5
  br i1 %cmp11, label %for.body12, label %for.end17

for.body12:                                       ; preds = %for.cond10
  %9 = load i64, ptr %i, align 8
  %arrayidx13 = getelementptr inbounds [5 x ptr], ptr @phil, i64 0, i64 %9
  %10 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @"\01_pthread_join"(ptr noundef %10, ptr noundef null)
  br label %for.inc15

for.inc15:                                        ; preds = %for.body12
  %11 = load i64, ptr %i, align 8
  %inc16 = add nsw i64 %11, 1
  store i64 %inc16, ptr %i, align 8
  br label %for.cond10, !llvm.loop !9

for.end17:                                        ; preds = %for.cond10
  ret i32 0
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
