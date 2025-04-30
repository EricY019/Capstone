; ModuleID = './code/029-2070120061031-1.c'
source_filename = "./code/029-2070120061031-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@nunmap = constant [3 x i8] c"\11\FF\01", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @ff(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void asm sideeffect "", ""() #1, !srcloc !5
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f(i16 noundef signext %delta) #0 {
entry:
  %delta.addr = alloca i16, align 2
  %p0 = alloca i16, align 2
  %s = alloca i16, align 2
  store i16 %delta, ptr %delta.addr, align 2
  store i16 2, ptr %p0, align 2
  store i16 0, ptr %s, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, ptr %s, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, ptr %delta.addr, align 2
  %conv2 = sext i16 %1 to i32
  %2 = load i16, ptr %p0, align 2
  %conv3 = sext i16 %2 to i32
  %add = add nsw i32 %conv3, %conv2
  %conv4 = trunc i32 %add to i16
  store i16 %conv4, ptr %p0, align 2
  %3 = load i16, ptr %s, align 2
  %conv5 = sext i16 %3 to i32
  call void @ff(i32 noundef %conv5)
  %4 = load i16, ptr %p0, align 2
  %idxprom = sext i16 %4 to i64
  %arrayidx = getelementptr inbounds [3 x i8], ptr @nunmap, i64 0, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 17
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void asm sideeffect "", ""() #1, !srcloc !6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i16, ptr %s, align 2
  %inc = add i16 %6, 1
  store i16 %inc, ptr %s, align 2
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @f(i16 noundef signext -1)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{i64 206}
!6 = !{i64 408}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
