; ModuleID = './code/031-12718select_sort.c'
source_filename = "./code/031-12718select_sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.a = private unnamed_addr constant [11 x i32] [i32 9, i32 7, i32 3, i32 4, i32 6, i32 2, i32 0, i32 11, i32 5, i32 10, i32 1], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @select_sort(ptr noundef %a, i32 noundef %a_len) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %a_len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %min = alloca i32, align 4
  %min_pos = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %a_len, ptr %a_len.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %a_len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr %min, align 4
  %5 = load i32, ptr %i, align 4
  store i32 %5, ptr %min_pos, align 4
  %6 = load i32, ptr %i, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %7 = load i32, ptr %j, align 4
  %8 = load i32, ptr %a_len.addr, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %9 = load ptr, ptr %a.addr, align 8
  %10 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %9, i64 %idxprom4
  %11 = load i32, ptr %arrayidx5, align 4
  %12 = load i32, ptr %min, align 4
  %cmp6 = icmp slt i32 %11, %12
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %13 = load ptr, ptr %a.addr, align 8
  %14 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %14 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %13, i64 %idxprom7
  %15 = load i32, ptr %arrayidx8, align 4
  store i32 %15, ptr %min, align 4
  %16 = load i32, ptr %j, align 4
  store i32 %16, ptr %min_pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %18 = load ptr, ptr %a.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %18, i64 %idxprom9
  %20 = load i32, ptr %arrayidx10, align 4
  %21 = load ptr, ptr %a.addr, align 8
  %22 = load i32, ptr %min_pos, align 4
  %idxprom11 = sext i32 %22 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %21, i64 %idxprom11
  store i32 %20, ptr %arrayidx12, align 4
  %23 = load i32, ptr %min, align 4
  %24 = load ptr, ptr %a.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %24, i64 %idxprom13
  store i32 %23, ptr %arrayidx14, align 4
  br label %for.inc15

for.inc15:                                        ; preds = %for.end
  %26 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %26, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end17:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [11 x i32], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 4 @__const.main.a, i64 44, i1 false)
  %arraydecay = getelementptr inbounds [11 x i32], ptr %a, i64 0, i64 0
  call void @select_sort(ptr noundef %arraydecay, i32 noundef 11)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [11 x i32], ptr %a, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
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
!8 = distinct !{!8, !6}
