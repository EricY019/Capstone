; ModuleID = './code/311-1974120081218-1.c'
source_filename = "./code/311-1974120081218-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.A = type { i32, i32, [512 x i8] }

@a = global %struct.A zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @foo() #0 {
entry:
  call void @llvm.memset.p0.i64(ptr align 4 @a, i8 38, i64 520, i1 false)
  %0 = load i32, ptr @a, align 4
  ret i32 %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bar() #0 {
entry:
  call void @llvm.memset.p0.i64(ptr align 4 @a, i8 54, i64 520, i1 false)
  store i32 909522486, ptr @a, align 4
  store i32 909588022, ptr getelementptr inbounds (%struct.A, ptr @a, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo()
  %cmp = icmp ne i32 %call, 640034342
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %cmp1 = icmp ult i64 %conv, 520
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr @a, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp ne i32 %conv3, 38
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %for.body
  call void @abort() #3
  unreachable

if.end7:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end7
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  call void @bar()
  %4 = load i32, ptr getelementptr inbounds (%struct.A, ptr @a, i32 0, i32 1), align 4
  %cmp8 = icmp ne i32 %4, 909588022
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %for.end
  call void @abort() #3
  unreachable

if.end11:                                         ; preds = %for.end
  store i32 909522486, ptr getelementptr inbounds (%struct.A, ptr @a, i32 0, i32 1), align 4
  store i32 0, ptr %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc24, %if.end11
  %5 = load i32, ptr %i, align 4
  %conv13 = sext i32 %5 to i64
  %cmp14 = icmp ult i64 %conv13, 520
  br i1 %cmp14, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond12
  %6 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %6 to i64
  %arrayidx18 = getelementptr inbounds i8, ptr @a, i64 %idxprom17
  %7 = load i8, ptr %arrayidx18, align 1
  %conv19 = sext i8 %7 to i32
  %cmp20 = icmp ne i32 %conv19, 54
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %for.body16
  call void @abort() #3
  unreachable

if.end23:                                         ; preds = %for.body16
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %8 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %8, 1
  store i32 %inc25, ptr %i, align 4
  br label %for.cond12, !llvm.loop !7

for.end26:                                        ; preds = %for.cond12
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noreturn nounwind }

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
