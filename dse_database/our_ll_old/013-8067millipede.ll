; ModuleID = './code/013-8067millipede.c'
source_filename = "./code/013-8067millipede.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@__const.main.padding_offsets = private unnamed_addr constant [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.1, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.3], align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"    \E2\95\9A\E2\8A\99 \E2\8A\99\E2\95\9D\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s\E2\95\9A\E2\95\90(\E2\96\88\E2\96\88\E2\96\88)\E2\95\90\E2\95\9D\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s\E2\95\94\E2\95\90(\E2\96\88\E2\96\88\E2\96\88)\E2\95\90\E2\95\97\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"    \E2\95\94\E2\8A\99 \E2\8A\99\E2\95\97\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %padding_offsets = alloca [8 x ptr], align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 20, ptr %size, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %padding_offsets, ptr align 8 @__const.main.padding_offsets, i64 64, i1 false)
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i64 @strtol(ptr noundef %2, ptr noundef null, i32 noundef 10)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %size, align 4
  %cmp1 = icmp sge i32 %3, 0
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %size, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %rem = srem i32 %6, 8
  %idxprom = sext i32 %rem to i64
  %arrayidx7 = getelementptr inbounds [8 x ptr], ptr %padding_offsets, i64 0, i64 %idxprom
  %7 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end21

if.else:                                          ; preds = %if.end
  %9 = load i32, ptr %size, align 4
  store i32 %9, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc17, %if.else
  %10 = load i32, ptr %i, align 4
  %cmp10 = icmp sle i32 %10, 0
  br i1 %cmp10, label %for.body12, label %for.end19

for.body12:                                       ; preds = %for.cond9
  %11 = load i32, ptr %i, align 4
  %12 = call i32 @llvm.abs.i32(i32 %11, i1 true)
  %rem13 = srem i32 %12, 8
  %idxprom14 = sext i32 %rem13 to i64
  %arrayidx15 = getelementptr inbounds [8 x ptr], ptr %padding_offsets, i64 0, i64 %idxprom14
  %13 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %13)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body12
  %14 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %14, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond9, !llvm.loop !7

for.end19:                                        ; preds = %for.cond9
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %if.end21

if.end21:                                         ; preds = %for.end19, %for.end
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
