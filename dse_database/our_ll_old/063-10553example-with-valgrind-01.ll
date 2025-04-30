; ModuleID = './code/063-10553example-with-valgrind-01.c'
source_filename = "./code/063-10553example-with-valgrind-01.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"Allocating blocks...\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Using blocks...\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Freeing block...\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %blocks = alloca [10 x ptr], align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str) #5
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call ptr @malloc(i64 noundef 1024) #6
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %blocks, i64 0, i64 %idxprom
  store ptr %call1, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call2 = call i32 @"\01_sleep"(i32 noundef 1)
  %4 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1) #5
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc12, %for.end
  %5 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %5, 10
  br i1 %cmp5, label %for.body6, label %for.end14

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [10 x ptr], ptr %blocks, i64 0, i64 %idxprom7
  %7 = load ptr, ptr %arrayidx8, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [10 x ptr], ptr %blocks, i64 0, i64 %idxprom9
  %9 = load ptr, ptr %arrayidx10, align 8
  %10 = call i64 @llvm.objectsize.i64.p0(ptr %9, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memset_chk(ptr noundef %7, i32 noundef 1, i64 noundef 1024, i64 noundef %10) #5
  br label %for.inc12

for.inc12:                                        ; preds = %for.body6
  %11 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %11, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond4, !llvm.loop !7

for.end14:                                        ; preds = %for.cond4
  %call15 = call i32 @"\01_sleep"(i32 noundef 1)
  %12 = load ptr, ptr @__stderrp, align 8
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.2) #5
  store i32 9, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc20, %for.end14
  %13 = load i32, ptr %i, align 4
  %cmp18 = icmp sgt i32 %13, 0
  br i1 %cmp18, label %for.body19, label %for.end21

for.body19:                                       ; preds = %for.cond17
  br label %for.inc20

for.inc20:                                        ; preds = %for.body19
  %14 = load i32, ptr %i, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond17, !llvm.loop !8

for.end21:                                        ; preds = %for.cond17
  %15 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %15 to i64
  %arrayidx23 = getelementptr inbounds [10 x ptr], ptr %blocks, i64 0, i64 %idxprom22
  %16 = load ptr, ptr %arrayidx23, align 8
  call void @free(ptr noundef %16)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare i32 @"\01_sleep"(i32 noundef) #3

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare void @free(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { allocsize(0) }

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
