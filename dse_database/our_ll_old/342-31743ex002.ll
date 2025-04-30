; ModuleID = './code/342-31743ex002.c'
source_filename = "./code/342-31743ex002.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._opaque_pthread_attr_t = type { i64, [56 x i8] }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tid = alloca [513 x ptr], align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 513
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call ptr @spawn_thread()
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [513 x ptr], ptr %tid, i64 0, i64 %idxprom
  store ptr %call, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %3, 513
  br i1 %cmp2, label %for.body3, label %for.end9

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [513 x ptr], ptr %tid, i64 0, i64 %idxprom4
  %5 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 @"\01_pthread_join"(ptr noundef %5, ptr noundef null)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body3
  %6 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %6, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end9:                                         ; preds = %for.cond1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @spawn_thread() #0 {
entry:
  %tid = alloca ptr, align 8
  %attr = alloca %struct._opaque_pthread_attr_t, align 8
  %call = call i32 @pthread_attr_init(ptr noundef %attr)
  %call1 = call i32 @pthread_attr_setstacksize(ptr noundef %attr, i64 noundef 16384)
  %call2 = call i32 @pthread_create(ptr noundef %tid, ptr noundef %attr, ptr noundef @thread_start, ptr noundef null)
  %call3 = call i32 @pthread_attr_destroy(ptr noundef %attr)
  %0 = load ptr, ptr %tid, align 8
  ret ptr %0
}

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

declare i32 @pthread_attr_init(ptr noundef) #1

declare i32 @pthread_attr_setstacksize(ptr noundef, i64 noundef) #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @thread_start(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call i32 @"\01_usleep"(i32 noundef 1000)
  %0 = load ptr, ptr %arg.addr, align 8
  ret ptr %0
}

declare i32 @pthread_attr_destroy(ptr noundef) #1

declare i32 @"\01_usleep"(i32 noundef) #1

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
