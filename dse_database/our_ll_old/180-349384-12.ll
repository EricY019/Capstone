; ModuleID = './code/180-349384-12.c'
source_filename = "./code/180-349384-12.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.nums = private unnamed_addr constant [10 x i32] [i32 0, i32 -1, i32 7, i32 -15, i32 123, i32 -325, i32 2567, i32 -10342, i32 2147483647, i32 -2147483648], align 4
@.str = private unnamed_addr constant [6 x i8] c"%11s\0A\00", align 1
@itoa_rec.i = internal global i32 0, align 4
@itoa_rec.sign = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca [128 x i8], align 1
  %nums = alloca [10 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %nums, ptr align 4 @__const.main.nums, i64 40, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %nums, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %arraydecay = getelementptr inbounds [128 x i8], ptr %s, i64 0, i64 0
  call void @itoa_rec(i32 noundef %2, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [128 x i8], ptr %s, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @itoa_rec(i32 noundef %n, ptr noundef %s) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %un = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load i32, ptr @itoa_rec.sign, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr @itoa_rec.sign, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %2 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 0, %3
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, ptr %n.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %4, %cond.false ]
  store i32 %cond, ptr %un, align 4
  %5 = load i32, ptr %un, align 4
  %div = udiv i32 %5, 10
  %tobool2 = icmp ne i32 %div, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %cond.end
  %6 = load i32, ptr %un, align 4
  %div4 = udiv i32 %6, 10
  %7 = load ptr, ptr %s.addr, align 8
  call void @itoa_rec(i32 noundef %div4, ptr noundef %7)
  br label %if.end8

if.else:                                          ; preds = %cond.end
  store i32 0, ptr @itoa_rec.i, align 4
  %8 = load i32, ptr @itoa_rec.sign, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.else
  %9 = load ptr, ptr %s.addr, align 8
  %10 = load i32, ptr @itoa_rec.i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr @itoa_rec.i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 %idxprom
  store i8 45, ptr %arrayidx, align 1
  store i32 0, ptr @itoa_rec.sign, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then3
  %11 = load i32, ptr %un, align 4
  %rem = urem i32 %11, 10
  %add = add i32 %rem, 48
  %conv = trunc i32 %add to i8
  %12 = load ptr, ptr %s.addr, align 8
  %13 = load i32, ptr @itoa_rec.i, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, ptr @itoa_rec.i, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %12, i64 %idxprom10
  store i8 %conv, ptr %arrayidx11, align 1
  %14 = load ptr, ptr %s.addr, align 8
  %15 = load i32, ptr @itoa_rec.i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %14, i64 %idxprom12
  store i8 0, ptr %arrayidx13, align 1
  ret void
}

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
