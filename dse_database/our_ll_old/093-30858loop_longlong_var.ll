; ModuleID = './code/093-30858loop_longlong_var.c'
source_filename = "./code/093-30858loop_longlong_var.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %start = alloca i64, align 8
  %length = alloca i64, align 8
  %i = alloca i64, align 8
  %a = alloca ptr, align 8
  %alloc = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i64 6442450944, ptr %start, align 8
  store i64 1048576, ptr %length, align 8
  %call = call ptr @malloc(i64 noundef 8388608) #3
  store ptr %call, ptr %alloc, align 8
  %0 = load ptr, ptr %alloc, align 8
  %add.ptr = getelementptr inbounds i64, ptr %0, i64 -6442450944
  store ptr %add.ptr, ptr %a, align 8
  store i64 6442450944, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8
  %cmp = icmp slt i64 %1, 6443499520
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %i, align 8
  %3 = load ptr, ptr %a, align 8
  %4 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i64, ptr %3, i64 %4
  store i64 %2, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i64, ptr %i, align 8
  %inc = add nsw i64 %5, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i64 6442450944, ptr %i, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %6 = load i64, ptr %i, align 8
  %cmp2 = icmp slt i64 %6, 6443499520
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %7 = load ptr, ptr %a, align 8
  %8 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds i64, ptr %7, i64 %8
  %9 = load i64, ptr %arrayidx4, align 8
  %10 = load i64, ptr %i, align 8
  %cmp5 = icmp ne i64 %9, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body3
  br label %for.inc6

for.inc6:                                         ; preds = %if.end
  %11 = load i64, ptr %i, align 8
  %inc7 = add nsw i64 %11, 1
  store i64 %inc7, ptr %i, align 8
  br label %for.cond1, !llvm.loop !7

for.end8:                                         ; preds = %for.cond1
  %12 = load ptr, ptr %alloc, align 8
  call void @free(ptr noundef %12)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end8, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare void @free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
