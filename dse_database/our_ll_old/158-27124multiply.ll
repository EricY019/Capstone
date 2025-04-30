; ModuleID = './code/158-27124multiply.c'
source_filename = "./code/158-27124multiply.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [19 x i8] c"%101s\0A%101s\0A%101s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n1 = alloca [101 x i8], align 1
  %n2 = alloca [101 x i8], align 1
  %m = alloca [102 x i8], align 1
  %t = alloca i64, align 8
  %e = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %i10 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %multi = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 1 %n1, i8 0, i64 101, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %n2, i8 0, i64 101, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %m, i8 0, i64 102, i1 false)
  store i32 0, ptr %e, align 4
  store i32 100, ptr %k, align 4
  store i32 0, ptr %r, align 4
  %call = call i64 @time(ptr noundef %t)
  %0 = load i64, ptr %t, align 8
  %conv = trunc i64 %0 to i32
  call void @srand(i32 noundef %conv)
  %arraydecay = getelementptr inbounds [102 x i8], ptr %m, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 32, i64 101, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  %rem = srem i32 %call2, 9
  %add = add nsw i32 %rem, 48
  %conv3 = trunc i32 %add to i8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [101 x i8], ptr %n1, i64 0, i64 %idxprom
  store i8 %conv3, ptr %arrayidx, align 1
  %call4 = call i32 @rand()
  %rem5 = srem i32 %call4, 9
  %add6 = add nsw i32 %rem5, 48
  %conv7 = trunc i32 %add6 to i8
  %3 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %3 to i64
  %arrayidx9 = getelementptr inbounds [101 x i8], ptr %n2, i64 0, i64 %idxprom8
  store i8 %conv7, ptr %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 99, ptr %i10, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc28, %for.end
  %5 = load i32, ptr %i10, align 4
  %cmp12 = icmp sge i32 %5, 0
  br i1 %cmp12, label %for.body14, label %for.end30

for.body14:                                       ; preds = %for.cond11
  %6 = load i32, ptr %i10, align 4
  %idxprom15 = sext i32 %6 to i64
  %arrayidx16 = getelementptr inbounds [101 x i8], ptr %n1, i64 0, i64 %idxprom15
  %7 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %7 to i32
  %sub = sub nsw i32 %conv17, 48
  store i32 %sub, ptr %a, align 4
  %8 = load i32, ptr %i10, align 4
  %idxprom18 = sext i32 %8 to i64
  %arrayidx19 = getelementptr inbounds [101 x i8], ptr %n2, i64 0, i64 %idxprom18
  %9 = load i8, ptr %arrayidx19, align 1
  %conv20 = sext i8 %9 to i32
  %sub21 = sub nsw i32 %conv20, 48
  store i32 %sub21, ptr %b, align 4
  %10 = load i32, ptr %a, align 4
  %11 = load i32, ptr %b, align 4
  %mul = mul nsw i32 %10, %11
  %12 = load i32, ptr %r, align 4
  %add22 = add nsw i32 %mul, %12
  store i32 %add22, ptr %multi, align 4
  %13 = load i32, ptr %multi, align 4
  %rem23 = srem i32 %13, 10
  store i32 %rem23, ptr %e, align 4
  %14 = load i32, ptr %multi, align 4
  %div = sdiv i32 %14, 10
  store i32 %div, ptr %r, align 4
  %15 = load i32, ptr %e, align 4
  %add24 = add nsw i32 %15, 48
  %conv25 = trunc i32 %add24 to i8
  %16 = load i32, ptr %k, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [102 x i8], ptr %m, i64 0, i64 %idxprom26
  store i8 %conv25, ptr %arrayidx27, align 1
  %17 = load i32, ptr %k, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %k, align 4
  br label %for.inc28

for.inc28:                                        ; preds = %for.body14
  %18 = load i32, ptr %i10, align 4
  %dec29 = add nsw i32 %18, -1
  store i32 %dec29, ptr %i10, align 4
  br label %for.cond11, !llvm.loop !7

for.end30:                                        ; preds = %for.cond11
  %19 = load i32, ptr %r, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end30
  %20 = load i32, ptr %r, align 4
  %add31 = add nsw i32 %20, 48
  %conv32 = trunc i32 %add31 to i8
  %21 = load i32, ptr %k, align 4
  %idxprom33 = sext i32 %21 to i64
  %arrayidx34 = getelementptr inbounds [102 x i8], ptr %m, i64 0, i64 %idxprom33
  store i8 %conv32, ptr %arrayidx34, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end30
  %arraydecay35 = getelementptr inbounds [101 x i8], ptr %n1, i64 0, i64 0
  %arraydecay36 = getelementptr inbounds [101 x i8], ptr %n2, i64 0, i64 0
  %arraydecay37 = getelementptr inbounds [102 x i8], ptr %m, i64 0, i64 0
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay35, ptr noundef %arraydecay36, ptr noundef %arraydecay37)
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare i64 @time(ptr noundef) #2

declare void @srand(i32 noundef) #2

declare i32 @rand() #2

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
