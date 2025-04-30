; ModuleID = './code/190-33379024.c'
source_filename = "./code/190-33379024.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.s = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @next_permutation(ptr noundef %a, i32 noundef %len) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %_ = alloca i32, align 4
  %_32 = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 -1, ptr %s, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4
  %1 = load i32, ptr %len.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8
  %3 = load i32, ptr %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load ptr, ptr %a.addr, align 8
  %6 = load i32, ptr %k, align 4
  %add = add nsw i32 %6, 1
  %idxprom1 = sext i32 %add to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  %7 = load i32, ptr %arrayidx2, align 4
  %cmp3 = icmp slt i32 %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %k, align 4
  store i32 %8, ptr %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %s, align 4
  %cmp4 = icmp eq i32 %10, -1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %for.end
  store i32 0, ptr %l, align 4
  store i32 0, ptr %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc17, %if.end6
  %11 = load i32, ptr %k, align 4
  %12 = load i32, ptr %len.addr, align 4
  %cmp8 = icmp slt i32 %11, %12
  br i1 %cmp8, label %for.body9, label %for.end19

for.body9:                                        ; preds = %for.cond7
  %13 = load ptr, ptr %a.addr, align 8
  %14 = load i32, ptr %s, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %13, i64 %idxprom10
  %15 = load i32, ptr %arrayidx11, align 4
  %16 = load ptr, ptr %a.addr, align 8
  %17 = load i32, ptr %k, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %16, i64 %idxprom12
  %18 = load i32, ptr %arrayidx13, align 4
  %cmp14 = icmp slt i32 %15, %18
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %for.body9
  %19 = load i32, ptr %k, align 4
  store i32 %19, ptr %l, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %for.body9
  br label %for.inc17

for.inc17:                                        ; preds = %if.end16
  %20 = load i32, ptr %k, align 4
  %inc18 = add nsw i32 %20, 1
  store i32 %inc18, ptr %k, align 4
  br label %for.cond7, !llvm.loop !7

for.end19:                                        ; preds = %for.cond7
  br label %do.body

do.body:                                          ; preds = %for.end19
  %21 = load ptr, ptr %a.addr, align 8
  %22 = load i32, ptr %s, align 4
  %idxprom20 = sext i32 %22 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %21, i64 %idxprom20
  %23 = load i32, ptr %arrayidx21, align 4
  store i32 %23, ptr %_, align 4
  %24 = load ptr, ptr %a.addr, align 8
  %25 = load i32, ptr %l, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %24, i64 %idxprom22
  %26 = load i32, ptr %arrayidx23, align 4
  %27 = load ptr, ptr %a.addr, align 8
  %28 = load i32, ptr %s, align 4
  %idxprom24 = sext i32 %28 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %27, i64 %idxprom24
  store i32 %26, ptr %arrayidx25, align 4
  %29 = load i32, ptr %_, align 4
  %30 = load ptr, ptr %a.addr, align 8
  %31 = load i32, ptr %l, align 4
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %30, i64 %idxprom26
  store i32 %29, ptr %arrayidx27, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %32 = load i32, ptr %len.addr, align 4
  %sub28 = sub nsw i32 %32, 1
  store i32 %sub28, ptr %l, align 4
  %33 = load i32, ptr %s, align 4
  %add29 = add nsw i32 %33, 1
  store i32 %add29, ptr %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end41, %do.end
  %34 = load i32, ptr %k, align 4
  %35 = load i32, ptr %l, align 4
  %cmp30 = icmp slt i32 %34, %35
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body31

do.body31:                                        ; preds = %while.body
  %36 = load ptr, ptr %a.addr, align 8
  %37 = load i32, ptr %k, align 4
  %idxprom33 = sext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds i32, ptr %36, i64 %idxprom33
  %38 = load i32, ptr %arrayidx34, align 4
  store i32 %38, ptr %_32, align 4
  %39 = load ptr, ptr %a.addr, align 8
  %40 = load i32, ptr %l, align 4
  %idxprom35 = sext i32 %40 to i64
  %arrayidx36 = getelementptr inbounds i32, ptr %39, i64 %idxprom35
  %41 = load i32, ptr %arrayidx36, align 4
  %42 = load ptr, ptr %a.addr, align 8
  %43 = load i32, ptr %k, align 4
  %idxprom37 = sext i32 %43 to i64
  %arrayidx38 = getelementptr inbounds i32, ptr %42, i64 %idxprom37
  store i32 %41, ptr %arrayidx38, align 4
  %44 = load i32, ptr %_32, align 4
  %45 = load ptr, ptr %a.addr, align 8
  %46 = load i32, ptr %l, align 4
  %idxprom39 = sext i32 %46 to i64
  %arrayidx40 = getelementptr inbounds i32, ptr %45, i64 %idxprom39
  store i32 %44, ptr %arrayidx40, align 4
  br label %do.end41

do.end41:                                         ; preds = %do.body31
  %47 = load i32, ptr %k, align 4
  %inc42 = add nsw i32 %47, 1
  store i32 %inc42, ptr %k, align 4
  %48 = load i32, ptr %l, align 4
  %dec = add nsw i32 %48, -1
  store i32 %dec, ptr %l, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then5
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [10 x i32], align 4
  %slen = alloca i32, align 4
  %perm = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %s, ptr align 4 @__const.main.s, i64 40, i1 false)
  store i32 10, ptr %slen, align 4
  store i32 1, ptr %perm, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %arraydecay = getelementptr inbounds [10 x i32], ptr %s, i64 0, i64 0
  %0 = load i32, ptr %slen, align 4
  %call = call i32 @next_permutation(ptr noundef %arraydecay, i32 noundef %0)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load i32, ptr %perm, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %perm, align 4
  %cmp = icmp slt i32 %inc, 1000000
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %slen, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %s, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc3 = add nsw i32 %6, 1
  store i32 %inc3, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
