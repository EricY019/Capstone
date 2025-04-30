; ModuleID = './code/180-32191ex13.c'
source_filename = "./code/180-32191ex13.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"two\00", align 1
@__const.main.string = private unnamed_addr constant [8 x i8] c"strang\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"arg %d: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"California\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Oregon\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Washington\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Texas\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"state %d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %string = alloca [8 x i8], align 1
  %states = alloca [5 x ptr], align 8
  %num_states = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 2
  store ptr @.str, ptr %arrayidx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %string, ptr align 1 @__const.main.string, i64 8, i1 false)
  %arraydecay = getelementptr inbounds [8 x i8], ptr %string, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %argv.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %3, ptr noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store ptr @.str.3, ptr %states, align 8
  %arrayinit.element = getelementptr inbounds ptr, ptr %states, i64 1
  store ptr @.str.4, ptr %arrayinit.element, align 8
  %arrayinit.element3 = getelementptr inbounds ptr, ptr %states, i64 2
  store ptr @.str.5, ptr %arrayinit.element3, align 8
  %arrayinit.element4 = getelementptr inbounds ptr, ptr %states, i64 3
  store ptr @.str.6, ptr %arrayinit.element4, align 8
  %arrayinit.element5 = getelementptr inbounds ptr, ptr %states, i64 4
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %8, i64 2
  %9 = load ptr, ptr %arrayidx6, align 8
  store ptr %9, ptr %arrayinit.element5, align 8
  store i32 5, ptr %num_states, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc13, %for.end
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %num_states, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond7
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [5 x ptr], ptr %states, i64 0, i64 %idxprom10
  %14 = load ptr, ptr %arrayidx11, align 8
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %12, ptr noundef %14)
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %15 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %15, 1
  store i32 %inc14, ptr %i, align 4
  br label %for.cond7, !llvm.loop !7

for.end15:                                        ; preds = %for.cond7
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
