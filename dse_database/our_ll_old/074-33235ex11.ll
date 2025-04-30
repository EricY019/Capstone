; ModuleID = './code/074-33235ex11.c'
source_filename = "./code/074-33235ex11.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [13 x i8] c"arg: %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"California\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Oregon\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Washington\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Texas\00", align 1
@__const.main.states = private unnamed_addr constant [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"state: %d: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"newarray: %d: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"I HAVE CHANGED!\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %states = alloca [4 x ptr], align 8
  %num_states = alloca i32, align 4
  %newarray = alloca [4 x ptr], align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2, ptr noundef %5)
  %6 = load i32, ptr %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %states, ptr align 8 @__const.main.states, i64 32, i1 false)
  store i32 4, ptr %num_states, align 4
  store i32 0, ptr %i, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %num_states, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %while.body3, label %while.end7

while.body3:                                      ; preds = %while.cond1
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr %states, i64 0, i64 %idxprom4
  %11 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %9, ptr noundef %11)
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond1, !llvm.loop !7

while.end7:                                       ; preds = %while.cond1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end7
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %argc.addr, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %argv.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %15, i64 %idxprom9
  %17 = load ptr, ptr %arrayidx10, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds [4 x ptr], ptr %states, i64 0, i64 %idxprom11
  store ptr %17, ptr %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  call void @llvm.memset.p0.i64(ptr align 8 %newarray, i8 0, i64 32, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.end
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %num_states, align 4
  %cmp15 = icmp slt i32 %20, %21
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %22 = load i32, ptr %i, align 4
  %23 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [4 x ptr], ptr %states, i64 0, i64 %idxprom17
  %24 = load ptr, ptr %arrayidx18, align 8
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %22, ptr noundef %24)
  %25 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds [4 x ptr], ptr %states, i64 0, i64 %idxprom20
  %26 = load ptr, ptr %arrayidx21, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds [4 x ptr], ptr %newarray, i64 0, i64 %idxprom22
  store ptr %26, ptr %arrayidx23, align 8
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %28 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %28, 1
  store i32 %inc25, ptr %i, align 4
  br label %for.cond14, !llvm.loop !9

for.end26:                                        ; preds = %for.cond14
  store i32 0, ptr %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc33, %for.end26
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %num_states, align 4
  %cmp28 = icmp slt i32 %29, %30
  br i1 %cmp28, label %for.body29, label %for.end35

for.body29:                                       ; preds = %for.cond27
  %31 = load i32, ptr %i, align 4
  %32 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %32 to i64
  %arrayidx31 = getelementptr inbounds [4 x ptr], ptr %newarray, i64 0, i64 %idxprom30
  %33 = load ptr, ptr %arrayidx31, align 8
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %31, ptr noundef %33)
  br label %for.inc33

for.inc33:                                        ; preds = %for.body29
  %34 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %34, 1
  store i32 %inc34, ptr %i, align 4
  br label %for.cond27, !llvm.loop !10

for.end35:                                        ; preds = %for.cond27
  %arrayidx36 = getelementptr inbounds [4 x ptr], ptr %states, i64 0, i64 1
  store ptr @.str.7, ptr %arrayidx36, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc43, %for.end35
  %35 = load i32, ptr %i, align 4
  %36 = load i32, ptr %num_states, align 4
  %cmp38 = icmp slt i32 %35, %36
  br i1 %cmp38, label %for.body39, label %for.end45

for.body39:                                       ; preds = %for.cond37
  %37 = load i32, ptr %i, align 4
  %38 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %38 to i64
  %arrayidx41 = getelementptr inbounds [4 x ptr], ptr %newarray, i64 0, i64 %idxprom40
  %39 = load ptr, ptr %arrayidx41, align 8
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %37, ptr noundef %39)
  br label %for.inc43

for.inc43:                                        ; preds = %for.body39
  %40 = load i32, ptr %i, align 4
  %inc44 = add nsw i32 %40, 1
  store i32 %inc44, ptr %i, align 4
  br label %for.cond37, !llvm.loop !11

for.end45:                                        ; preds = %for.cond37
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!11 = distinct !{!11, !6}
