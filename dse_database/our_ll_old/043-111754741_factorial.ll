; ModuleID = './code/043-111754741_factorial.c'
source_filename = "./code/043-111754741_factorial.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"overflow!\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @CalcMM(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %2 = load i32, ptr %n.addr, align 4
  %sub = sub i32 %2, 1
  %call = call i32 @CalcMM(i32 noundef %sub)
  %mul = mul i32 %1, %call
  store i32 %mul, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @CalcNN(i32 noundef %n, ptr noundef %pOut) #0 {
entry:
  %n.addr = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %res = alloca [1000 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %carry = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pOut.addr, align 8
  %2 = load ptr, ptr %pOut.addr, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %4 = load i32, ptr %n.addr, align 4
  %call = call i32 @CalcMM(i32 noundef %4)
  %call1 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %1, i32 noundef 0, i64 noundef %3, ptr noundef @.str, i32 noundef %call)
  br label %while.end

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 4 %res, i8 0, i64 4000, i1 false)
  %5 = getelementptr inbounds <{ i32, [999 x i32] }>, ptr %res, i32 0, i32 0
  store i32 6, ptr %5, align 4
  store i32 4, ptr %i, align 4
  store i32 1, ptr %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %if.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp sle i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end27

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  store i32 0, ptr %carry, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %j, align 4
  %9 = load i32, ptr %len, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %10 = load i32, ptr %j, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %res, i64 0, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4
  %12 = load i32, ptr %i, align 4
  %mul = mul i32 %11, %12
  %13 = load i32, ptr %carry, align 4
  %add = add i32 %mul, %13
  %14 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds [1000 x i32], ptr %res, i64 0, i64 %idxprom6
  store i32 %add, ptr %arrayidx7, align 4
  %15 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %15 to i64
  %arrayidx9 = getelementptr inbounds [1000 x i32], ptr %res, i64 0, i64 %idxprom8
  %16 = load i32, ptr %arrayidx9, align 4
  %div = udiv i32 %16, 10
  store i32 %div, ptr %carry, align 4
  %17 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds [1000 x i32], ptr %res, i64 0, i64 %idxprom10
  %18 = load i32, ptr %arrayidx11, align 4
  %rem = urem i32 %18, 10
  store i32 %rem, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %19 = load i32, ptr %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond3, !llvm.loop !5

for.end:                                          ; preds = %for.cond3
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %for.end
  %20 = load i32, ptr %carry, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %for.body13, label %for.end20

for.body13:                                       ; preds = %for.cond12
  %21 = load i32, ptr %carry, align 4
  %rem14 = srem i32 %21, 10
  %22 = load i32, ptr %len, align 4
  %inc15 = add nsw i32 %22, 1
  store i32 %inc15, ptr %len, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds [1000 x i32], ptr %res, i64 0, i64 %idxprom16
  store i32 %rem14, ptr %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body13
  %23 = load i32, ptr %carry, align 4
  %div19 = sdiv i32 %23, 10
  store i32 %div19, ptr %carry, align 4
  br label %for.cond12, !llvm.loop !7

for.end20:                                        ; preds = %for.cond12
  %24 = load i32, ptr %len, align 4
  %cmp21 = icmp sge i32 %24, 1000
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.end20
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %while.end

if.end24:                                         ; preds = %for.end20
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %25 = load i32, ptr %i, align 4
  %inc26 = add nsw i32 %25, 1
  store i32 %inc26, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end27:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  %26 = load ptr, ptr %pOut.addr, align 8
  %27 = load i32, ptr %len, align 4
  %idxprom28 = sext i32 %27 to i64
  %arrayidx29 = getelementptr inbounds i8, ptr %26, i64 %idxprom28
  store i8 0, ptr %arrayidx29, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end27
  %28 = load i32, ptr %len, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, ptr %len, align 4
  %cmp30 = icmp sgt i32 %28, 0
  br i1 %cmp30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i32, ptr %len, align 4
  %idxprom31 = sext i32 %29 to i64
  %arrayidx32 = getelementptr inbounds [1000 x i32], ptr %res, i64 0, i64 %idxprom31
  %30 = load i32, ptr %arrayidx32, align 4
  %add33 = add i32 %30, 48
  %conv = trunc i32 %add33 to i8
  %31 = load ptr, ptr %pOut.addr, align 8
  %32 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %32, 1
  store i32 %inc34, ptr %i, align 4
  %idxprom35 = sext i32 %32 to i64
  %arrayidx36 = getelementptr inbounds i8, ptr %31, i64 %idxprom35
  store i8 %conv, ptr %arrayidx36, align 1
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %if.then, %if.then22, %while.cond
  ret void
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [1000 x i8], align 1
  store i32 0, ptr %retval, align 4
  %arraydecay = getelementptr inbounds [1000 x i8], ptr %buf, i64 0, i64 0
  call void @CalcNN(i32 noundef 5, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [1000 x i8], ptr %buf, i64 0, i64 0
  %call = call i32 @puts(ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [1000 x i8], ptr %buf, i64 0, i64 0
  call void @CalcNN(i32 noundef 12, ptr noundef %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1000 x i8], ptr %buf, i64 0, i64 0
  %call4 = call i32 @puts(ptr noundef %arraydecay3)
  %arraydecay5 = getelementptr inbounds [1000 x i8], ptr %buf, i64 0, i64 0
  call void @CalcNN(i32 noundef 13, ptr noundef %arraydecay5)
  %arraydecay6 = getelementptr inbounds [1000 x i8], ptr %buf, i64 0, i64 0
  %call7 = call i32 @puts(ptr noundef %arraydecay6)
  %arraydecay8 = getelementptr inbounds [1000 x i8], ptr %buf, i64 0, i64 0
  call void @CalcNN(i32 noundef 20, ptr noundef %arraydecay8)
  %arraydecay9 = getelementptr inbounds [1000 x i8], ptr %buf, i64 0, i64 0
  %call10 = call i32 @puts(ptr noundef %arraydecay9)
  %arraydecay11 = getelementptr inbounds [1000 x i8], ptr %buf, i64 0, i64 0
  call void @CalcNN(i32 noundef 100, ptr noundef %arraydecay11)
  %arraydecay12 = getelementptr inbounds [1000 x i8], ptr %buf, i64 0, i64 0
  %call13 = call i32 @puts(ptr noundef %arraydecay12)
  ret i32 0
}

declare i32 @puts(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
