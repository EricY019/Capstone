; ModuleID = './code/280-21035config.align.c'
source_filename = "./code/280-21035config.align.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca ptr, align 8
  %v = alloca ptr, align 8
  %sp = alloca ptr, align 8
  %sq = alloca ptr, align 8
  %ip = alloca ptr, align 8
  %iq = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 30) #2
  store ptr %call, ptr %buf, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 30
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv = trunc i32 %1 to i8
  %2 = load ptr, ptr %buf, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %5 = load ptr, ptr %buf, align 8
  store ptr %5, ptr %v, align 8
  %6 = load ptr, ptr %v, align 8
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %add.ptr, ptr %sp, align 8
  %7 = load ptr, ptr %v, align 8
  %add.ptr1 = getelementptr inbounds i8, ptr %7, i64 2
  store ptr %add.ptr1, ptr %sq, align 8
  %8 = load ptr, ptr %sp, align 8
  %9 = load i16, ptr %8, align 2
  %conv2 = sext i16 %9 to i32
  %10 = load ptr, ptr %sq, align 8
  %11 = load i16, ptr %10, align 2
  %conv3 = sext i16 %11 to i32
  %cmp4 = icmp eq i32 %conv2, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.end
  %12 = load ptr, ptr %v, align 8
  %add.ptr6 = getelementptr inbounds i8, ptr %12, i64 1
  store ptr %add.ptr6, ptr %ip, align 8
  %13 = load ptr, ptr %v, align 8
  %add.ptr7 = getelementptr inbounds i8, ptr %13, i64 2
  store ptr %add.ptr7, ptr %iq, align 8
  %14 = load ptr, ptr %ip, align 8
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %iq, align 8
  %17 = load i32, ptr %16, align 4
  %cmp8 = icmp eq i32 %15, %17
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
