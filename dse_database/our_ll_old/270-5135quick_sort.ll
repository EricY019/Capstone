; ModuleID = './code/270-5135quick_sort.c'
source_filename = "./code/270-5135quick_sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.array = private unnamed_addr constant [10 x i32] [i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @Partion(ptr noundef %R, i32 noundef %low, i32 noundef %high) #0 {
entry:
  %R.addr = alloca ptr, align 8
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store ptr %R, ptr %R.addr, align 8
  store i32 %low, ptr %low.addr, align 4
  store i32 %high, ptr %high.addr, align 4
  %0 = load ptr, ptr %R.addr, align 8
  %1 = load i32, ptr %low.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %temp, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %entry
  %3 = load i32, ptr %low.addr, align 4
  %4 = load i32, ptr %high.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end30

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body6, %while.body
  %5 = load i32, ptr %low.addr, align 4
  %6 = load i32, ptr %high.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %7 = load ptr, ptr %R.addr, align 8
  %8 = load i32, ptr %high.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %7, i64 %idxprom3
  %9 = load i32, ptr %arrayidx4, align 4
  %10 = load i32, ptr %temp, align 4
  %cmp5 = icmp sgt i32 %9, %10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %11 = phi i1 [ false, %while.cond1 ], [ %cmp5, %land.rhs ]
  br i1 %11, label %while.body6, label %while.end

while.body6:                                      ; preds = %land.end
  %12 = load i32, ptr %high.addr, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr %high.addr, align 4
  br label %while.cond1, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %13 = load i32, ptr %low.addr, align 4
  %14 = load i32, ptr %high.addr, align 4
  %cmp7 = icmp slt i32 %13, %14
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %15 = load ptr, ptr %R.addr, align 8
  %16 = load i32, ptr %high.addr, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %15, i64 %idxprom8
  %17 = load i32, ptr %arrayidx9, align 4
  %18 = load ptr, ptr %R.addr, align 8
  %19 = load i32, ptr %low.addr, align 4
  %idxprom10 = sext i32 %19 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %18, i64 %idxprom10
  store i32 %17, ptr %arrayidx11, align 4
  %20 = load i32, ptr %low.addr, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %low.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %while.cond12

while.cond12:                                     ; preds = %while.body19, %if.end
  %21 = load i32, ptr %low.addr, align 4
  %22 = load i32, ptr %high.addr, align 4
  %cmp13 = icmp slt i32 %21, %22
  br i1 %cmp13, label %land.rhs14, label %land.end18

land.rhs14:                                       ; preds = %while.cond12
  %23 = load ptr, ptr %R.addr, align 8
  %24 = load i32, ptr %low.addr, align 4
  %idxprom15 = sext i32 %24 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %23, i64 %idxprom15
  %25 = load i32, ptr %arrayidx16, align 4
  %26 = load i32, ptr %temp, align 4
  %cmp17 = icmp slt i32 %25, %26
  br label %land.end18

land.end18:                                       ; preds = %land.rhs14, %while.cond12
  %27 = phi i1 [ false, %while.cond12 ], [ %cmp17, %land.rhs14 ]
  br i1 %27, label %while.body19, label %while.end21

while.body19:                                     ; preds = %land.end18
  %28 = load i32, ptr %low.addr, align 4
  %inc20 = add nsw i32 %28, 1
  store i32 %inc20, ptr %low.addr, align 4
  br label %while.cond12, !llvm.loop !7

while.end21:                                      ; preds = %land.end18
  %29 = load i32, ptr %low.addr, align 4
  %30 = load i32, ptr %high.addr, align 4
  %cmp22 = icmp slt i32 %29, %30
  br i1 %cmp22, label %if.then23, label %if.end29

if.then23:                                        ; preds = %while.end21
  %31 = load ptr, ptr %R.addr, align 8
  %32 = load i32, ptr %low.addr, align 4
  %idxprom24 = sext i32 %32 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %31, i64 %idxprom24
  %33 = load i32, ptr %arrayidx25, align 4
  %34 = load ptr, ptr %R.addr, align 8
  %35 = load i32, ptr %high.addr, align 4
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %34, i64 %idxprom26
  store i32 %33, ptr %arrayidx27, align 4
  %36 = load i32, ptr %high.addr, align 4
  %dec28 = add nsw i32 %36, -1
  store i32 %dec28, ptr %high.addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %while.end21
  br label %while.cond, !llvm.loop !8

while.end30:                                      ; preds = %while.cond
  %37 = load i32, ptr %temp, align 4
  %38 = load ptr, ptr %R.addr, align 8
  %39 = load i32, ptr %low.addr, align 4
  %idxprom31 = sext i32 %39 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %38, i64 %idxprom31
  store i32 %37, ptr %arrayidx32, align 4
  %40 = load i32, ptr %low.addr, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @Quick_Sort(ptr noundef %R, i32 noundef %s, i32 noundef %t) #0 {
entry:
  %R.addr = alloca ptr, align 8
  %s.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %R, ptr %R.addr, align 8
  store i32 %s, ptr %s.addr, align 4
  store i32 %t, ptr %t.addr, align 4
  %0 = load i32, ptr %s.addr, align 4
  %1 = load i32, ptr %t.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %R.addr, align 8
  %3 = load i32, ptr %s.addr, align 4
  %4 = load i32, ptr %t.addr, align 4
  %call = call i32 @Partion(ptr noundef %2, i32 noundef %3, i32 noundef %4)
  store i32 %call, ptr %i, align 4
  %5 = load ptr, ptr %R.addr, align 8
  %6 = load i32, ptr %s.addr, align 4
  %7 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %7, 1
  call void @Quick_Sort(ptr noundef %5, i32 noundef %6, i32 noundef %sub)
  %8 = load ptr, ptr %R.addr, align 8
  %9 = load i32, ptr %i, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, ptr %t.addr, align 4
  call void @Quick_Sort(ptr noundef %8, i32 noundef %add, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [10 x i32], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 4 @__const.main.array, i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 0
  call void @Quick_Sort(ptr noundef %arraydecay, i32 noundef 0, i32 noundef 9)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %array, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

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
!9 = distinct !{!9, !6}
