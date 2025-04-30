; ModuleID = './code/003-32982realloc.c'
source_filename = "./code/003-32982realloc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@min_size = constant i64 1024, align 8
@max_size = constant i64 1048576, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %ptrs = alloca [100 x ptr], align 8
  %size = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand()
  %conv = sext i32 %call to i64
  %rem = urem i64 %conv, 1047552
  %add = add i64 %rem, 1024
  store i64 %add, ptr %size, align 8
  %call1 = call ptr @realloc(ptr noundef null, i64 noundef 1) #5
  %1 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [100 x ptr], ptr %ptrs, i64 0, i64 %1
  store ptr %call1, ptr %arrayidx, align 8
  %2 = load i64, ptr %i, align 8
  %arrayidx2 = getelementptr inbounds [100 x ptr], ptr %ptrs, i64 0, i64 %2
  %3 = load ptr, ptr %arrayidx2, align 8
  %4 = load i64, ptr %size, align 8
  %call3 = call ptr @realloc(ptr noundef %3, i64 noundef %4) #5
  %5 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds [100 x ptr], ptr %ptrs, i64 0, i64 %5
  store ptr %call3, ptr %arrayidx4, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds [100 x ptr], ptr %ptrs, i64 0, i64 %6
  %7 = load ptr, ptr %arrayidx5, align 8
  %8 = load i64, ptr %size, align 8
  %9 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds [100 x ptr], ptr %ptrs, i64 0, i64 %9
  %10 = load ptr, ptr %arrayidx6, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %10, i1 false, i1 true, i1 false)
  %call7 = call ptr @__memset_chk(ptr noundef %7, i32 noundef 1, i64 noundef %8, i64 noundef %11) #6
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, ptr %i, align 8
  %inc = add i64 %12, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i64 0, ptr %i, align 8
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc13, %for.end
  %13 = load i64, ptr %i, align 8
  %cmp9 = icmp ult i64 %13, 100
  br i1 %cmp9, label %for.body11, label %for.end15

for.body11:                                       ; preds = %for.cond8
  %14 = load i64, ptr %i, align 8
  %arrayidx12 = getelementptr inbounds [100 x ptr], ptr %ptrs, i64 0, i64 %14
  %15 = load ptr, ptr %arrayidx12, align 8
  call void @free(ptr noundef %15)
  br label %for.inc13

for.inc13:                                        ; preds = %for.body11
  %16 = load i64, ptr %i, align 8
  %inc14 = add i64 %16, 1
  store i64 %inc14, ptr %i, align 8
  br label %for.cond8, !llvm.loop !7

for.end15:                                        ; preds = %for.cond8
  ret i32 0
}

declare i32 @rand() #1

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

declare void @free(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { allocsize(1) }
attributes #6 = { nounwind }

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
