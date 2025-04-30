; ModuleID = './code/053-23623spat.c'
source_filename = "./code/053-23623spat.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_mutex_t = type { i64, [56 x i8] }

@m = global [1 x %struct._opaque_pthread_mutex_t] zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @th(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %id = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  %1 = ptrtoint ptr %0 to i64
  %conv = trunc i64 %1 to i32
  store i32 %conv, ptr %id, align 4
  %2 = load i32, ptr %id, align 4
  store i32 %2, ptr %i, align 4
  store i32 1, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %4, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [1 x %struct._opaque_pthread_mutex_t], ptr @m, i64 0, i64 %idxprom
  %call = call i32 @pthread_mutex_lock(ptr noundef %arrayidx)
  %7 = load i32, ptr %j, align 4
  %8 = load i32, ptr %i, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, ptr %i, align 4
  %9 = load i32, ptr %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  br label %while.cond4

while.cond4:                                      ; preds = %while.body7, %while.end
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %id, align 4
  %cmp5 = icmp ugt i32 %10, %11
  br i1 %cmp5, label %while.body7, label %while.end11

while.body7:                                      ; preds = %while.cond4
  %12 = load i32, ptr %j, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr %j, align 4
  %13 = load i32, ptr %j, align 4
  %14 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %14, %13
  store i32 %sub, ptr %i, align 4
  %15 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [1 x %struct._opaque_pthread_mutex_t], ptr @m, i64 0, i64 %idxprom8
  %call10 = call i32 @pthread_mutex_unlock(ptr noundef %arrayidx9)
  br label %while.cond4, !llvm.loop !7

while.end11:                                      ; preds = %while.cond4
  ret ptr null
}

declare i32 @pthread_mutex_lock(ptr noundef) #1

declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %ids = alloca [1 x ptr], align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1 x %struct._opaque_pthread_mutex_t], ptr @m, i64 0, i64 %idxprom
  %call = call i32 @pthread_mutex_init(ptr noundef %arrayidx, ptr noundef null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %3, 1
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [1 x ptr], ptr %ids, i64 0, i64 %idxprom4
  %5 = load i32, ptr %i, align 4
  %conv = sext i32 %5 to i64
  %6 = inttoptr i64 %conv to ptr
  %call6 = call i32 @pthread_create(ptr noundef %arrayidx5, ptr noundef null, ptr noundef @th, ptr noundef %6)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body3
  %7 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond1, !llvm.loop !9

for.end9:                                         ; preds = %for.cond1
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc17, %for.end9
  %8 = load i32, ptr %i, align 4
  %cmp11 = icmp slt i32 %8, 1
  br i1 %cmp11, label %for.body13, label %for.end19

for.body13:                                       ; preds = %for.cond10
  %9 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [1 x ptr], ptr %ids, i64 0, i64 %idxprom14
  %10 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i32 @"\01_pthread_join"(ptr noundef %10, ptr noundef null)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body13
  %11 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %11, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond10, !llvm.loop !10

for.end19:                                        ; preds = %for.cond10
  ret i32 0
}

declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

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
!10 = distinct !{!10, !6}
