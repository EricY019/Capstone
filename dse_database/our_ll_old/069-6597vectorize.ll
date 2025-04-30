; ModuleID = './code/069-6597vectorize.c'
source_filename = "./code/069-6597vectorize.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca ptr, align 8
  %y = alloca ptr, align 8
  %z = alloca ptr, align 8
  %stopper_for_apply = alloca ptr, align 8
  %.compoundliteral = alloca [1 x i32], align 4
  %list_for_apply = alloca ptr, align 8
  %.compoundliteral3 = alloca [4 x ptr], align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 10) #3
  store ptr %call, ptr %x, align 8
  %call1 = call ptr @malloc(i64 noundef 100) #3
  store ptr %call1, ptr %y, align 8
  %call2 = call ptr @malloc(i64 noundef 1000) #3
  store ptr %call2, ptr %z, align 8
  store i32 0, ptr %.compoundliteral, align 4
  %arraydecay = getelementptr inbounds [1 x i32], ptr %.compoundliteral, i64 0, i64 0
  store ptr %arraydecay, ptr %stopper_for_apply, align 8
  %0 = load ptr, ptr %x, align 8
  store ptr %0, ptr %.compoundliteral3, align 8
  %arrayinit.element = getelementptr inbounds ptr, ptr %.compoundliteral3, i64 1
  %1 = load ptr, ptr %y, align 8
  store ptr %1, ptr %arrayinit.element, align 8
  %arrayinit.element4 = getelementptr inbounds ptr, ptr %.compoundliteral3, i64 2
  %2 = load ptr, ptr %z, align 8
  store ptr %2, ptr %arrayinit.element4, align 8
  %arrayinit.element5 = getelementptr inbounds ptr, ptr %.compoundliteral3, i64 3
  %3 = load ptr, ptr %stopper_for_apply, align 8
  store ptr %3, ptr %arrayinit.element5, align 8
  %arraydecay6 = getelementptr inbounds [4 x ptr], ptr %.compoundliteral3, i64 0, i64 0
  store ptr %arraydecay6, ptr %list_for_apply, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %list_for_apply, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  %7 = load ptr, ptr %stopper_for_apply, align 8
  %cmp = icmp ne ptr %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %list_for_apply, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %8, i64 %idxprom7
  %10 = load ptr, ptr %arrayidx8, align 8
  call void @free(ptr noundef %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
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
