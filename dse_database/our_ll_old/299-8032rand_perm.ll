; ModuleID = './code/299-8032rand_perm.c'
source_filename = "./code/299-8032rand_perm.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.arr = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @random_range(i32 noundef %min, i32 noundef %max) #0 {
entry:
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %min, ptr %min.addr, align 4
  store i32 %max, ptr %max.addr, align 4
  store volatile i32 0, ptr %r, align 4
  %call = call i32 @rand()
  %0 = load i32, ptr %max.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = load i32, ptr %min.addr, align 4
  %sub = sub nsw i32 %add, %1
  %rem = srem i32 %call, %sub
  %2 = load i32, ptr %min.addr, align 4
  %add1 = add nsw i32 %rem, %2
  store volatile i32 %add1, ptr %r, align 4
  %3 = load volatile i32, ptr %r, align 4
  ret i32 %3
}

declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %arr, i32 noundef %x, i32 noundef %y) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  %0 = load ptr, ptr %arr.addr, align 8
  %1 = load i32, ptr %x.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %tmp, align 4
  %3 = load ptr, ptr %arr.addr, align 8
  %4 = load i32, ptr %y.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %3, i64 %idxprom1
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = load ptr, ptr %arr.addr, align 8
  %7 = load i32, ptr %x.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %6, i64 %idxprom3
  store i32 %5, ptr %arrayidx4, align 4
  %8 = load i32, ptr %tmp, align 4
  %9 = load ptr, ptr %arr.addr, align 8
  %10 = load i32, ptr %y.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %9, i64 %idxprom5
  store i32 %8, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [3 x i32], align 4
  %max = alloca i32, align 4
  %idx = alloca i32, align 4
  %r_idx = alloca i32, align 4
  %cnt1 = alloca i32, align 4
  %cnt2 = alloca i32, align 4
  %cnt3 = alloca i32, align 4
  %cnt4 = alloca i32, align 4
  %cnt5 = alloca i32, align 4
  %cnt6 = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arr, ptr align 4 @__const.main.arr, i64 12, i1 false)
  store i32 2, ptr %max, align 4
  store i32 0, ptr %idx, align 4
  store volatile i32 0, ptr %r_idx, align 4
  store i32 0, ptr %cnt6, align 4
  store i32 0, ptr %cnt5, align 4
  store i32 0, ptr %cnt4, align 4
  store i32 0, ptr %cnt3, align 4
  store i32 0, ptr %cnt2, align 4
  store i32 0, ptr %cnt1, align 4
  store i32 10000000, ptr %k, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  br label %while.cond

while.cond:                                       ; preds = %if.end93, %entry
  %0 = load i32, ptr %k, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %k, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end94

while.body:                                       ; preds = %while.cond
  store volatile i32 0, ptr %r_idx, align 4
  store i32 0, ptr %idx, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.body
  %1 = load i32, ptr %idx, align 4
  %2 = load i32, ptr %max, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  %3 = load i32, ptr %idx, align 4
  %4 = load i32, ptr %max, align 4
  %call4 = call i32 @random_range(i32 noundef %3, i32 noundef %4)
  store volatile i32 %call4, ptr %r_idx, align 4
  %arraydecay = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 0
  %5 = load i32, ptr %idx, align 4
  %6 = load volatile i32, ptr %r_idx, align 4
  call void @swap(ptr noundef %arraydecay, i32 noundef %5, i32 noundef %6)
  %7 = load i32, ptr %idx, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %idx, align 4
  br label %while.cond1, !llvm.loop !5

while.end:                                        ; preds = %while.cond1
  %arrayidx = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 0
  %8 = load i32, ptr %arrayidx, align 4
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end
  %arrayidx7 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 1
  %9 = load i32, ptr %arrayidx7, align 4
  %cmp8 = icmp eq i32 %9, 1
  br i1 %cmp8, label %land.lhs.true10, label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true
  %arrayidx11 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 2
  %10 = load i32, ptr %arrayidx11, align 4
  %cmp12 = icmp eq i32 %10, 2
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true10
  %11 = load i32, ptr %cnt1, align 4
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, ptr %cnt1, align 4
  br label %if.end93

if.else:                                          ; preds = %land.lhs.true10, %land.lhs.true, %while.end
  %arrayidx15 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 0
  %12 = load i32, ptr %arrayidx15, align 4
  %cmp16 = icmp eq i32 %12, 1
  br i1 %cmp16, label %land.lhs.true18, label %if.else28

land.lhs.true18:                                  ; preds = %if.else
  %arrayidx19 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 1
  %13 = load i32, ptr %arrayidx19, align 4
  %cmp20 = icmp eq i32 %13, 2
  br i1 %cmp20, label %land.lhs.true22, label %if.else28

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %arrayidx23 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 2
  %14 = load i32, ptr %arrayidx23, align 4
  %cmp24 = icmp eq i32 %14, 0
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %land.lhs.true22
  %15 = load i32, ptr %cnt2, align 4
  %inc27 = add nsw i32 %15, 1
  store i32 %inc27, ptr %cnt2, align 4
  br label %if.end92

if.else28:                                        ; preds = %land.lhs.true22, %land.lhs.true18, %if.else
  %arrayidx29 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 0
  %16 = load i32, ptr %arrayidx29, align 4
  %cmp30 = icmp eq i32 %16, 2
  br i1 %cmp30, label %land.lhs.true32, label %if.else42

land.lhs.true32:                                  ; preds = %if.else28
  %arrayidx33 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 1
  %17 = load i32, ptr %arrayidx33, align 4
  %cmp34 = icmp eq i32 %17, 0
  br i1 %cmp34, label %land.lhs.true36, label %if.else42

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %arrayidx37 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 2
  %18 = load i32, ptr %arrayidx37, align 4
  %cmp38 = icmp eq i32 %18, 1
  br i1 %cmp38, label %if.then40, label %if.else42

if.then40:                                        ; preds = %land.lhs.true36
  %19 = load i32, ptr %cnt3, align 4
  %inc41 = add nsw i32 %19, 1
  store i32 %inc41, ptr %cnt3, align 4
  br label %if.end91

if.else42:                                        ; preds = %land.lhs.true36, %land.lhs.true32, %if.else28
  %arrayidx43 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 0
  %20 = load i32, ptr %arrayidx43, align 4
  %cmp44 = icmp eq i32 %20, 0
  br i1 %cmp44, label %land.lhs.true46, label %if.else56

land.lhs.true46:                                  ; preds = %if.else42
  %arrayidx47 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 1
  %21 = load i32, ptr %arrayidx47, align 4
  %cmp48 = icmp eq i32 %21, 2
  br i1 %cmp48, label %land.lhs.true50, label %if.else56

land.lhs.true50:                                  ; preds = %land.lhs.true46
  %arrayidx51 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 2
  %22 = load i32, ptr %arrayidx51, align 4
  %cmp52 = icmp eq i32 %22, 1
  br i1 %cmp52, label %if.then54, label %if.else56

if.then54:                                        ; preds = %land.lhs.true50
  %23 = load i32, ptr %cnt4, align 4
  %inc55 = add nsw i32 %23, 1
  store i32 %inc55, ptr %cnt4, align 4
  br label %if.end90

if.else56:                                        ; preds = %land.lhs.true50, %land.lhs.true46, %if.else42
  %arrayidx57 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 0
  %24 = load i32, ptr %arrayidx57, align 4
  %cmp58 = icmp eq i32 %24, 1
  br i1 %cmp58, label %land.lhs.true60, label %if.else70

land.lhs.true60:                                  ; preds = %if.else56
  %arrayidx61 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 1
  %25 = load i32, ptr %arrayidx61, align 4
  %cmp62 = icmp eq i32 %25, 0
  br i1 %cmp62, label %land.lhs.true64, label %if.else70

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %arrayidx65 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 2
  %26 = load i32, ptr %arrayidx65, align 4
  %cmp66 = icmp eq i32 %26, 2
  br i1 %cmp66, label %if.then68, label %if.else70

if.then68:                                        ; preds = %land.lhs.true64
  %27 = load i32, ptr %cnt5, align 4
  %inc69 = add nsw i32 %27, 1
  store i32 %inc69, ptr %cnt5, align 4
  br label %if.end89

if.else70:                                        ; preds = %land.lhs.true64, %land.lhs.true60, %if.else56
  %arrayidx71 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 0
  %28 = load i32, ptr %arrayidx71, align 4
  %cmp72 = icmp eq i32 %28, 2
  br i1 %cmp72, label %land.lhs.true74, label %if.else84

land.lhs.true74:                                  ; preds = %if.else70
  %arrayidx75 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 1
  %29 = load i32, ptr %arrayidx75, align 4
  %cmp76 = icmp eq i32 %29, 1
  br i1 %cmp76, label %land.lhs.true78, label %if.else84

land.lhs.true78:                                  ; preds = %land.lhs.true74
  %arrayidx79 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 2
  %30 = load i32, ptr %arrayidx79, align 4
  %cmp80 = icmp eq i32 %30, 0
  br i1 %cmp80, label %if.then82, label %if.else84

if.then82:                                        ; preds = %land.lhs.true78
  %31 = load i32, ptr %cnt6, align 4
  %inc83 = add nsw i32 %31, 1
  store i32 %inc83, ptr %cnt6, align 4
  br label %if.end

if.else84:                                        ; preds = %land.lhs.true78, %land.lhs.true74, %if.else70
  %arrayidx85 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 0
  %32 = load i32, ptr %arrayidx85, align 4
  %arrayidx86 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 1
  %33 = load i32, ptr %arrayidx86, align 4
  %arrayidx87 = getelementptr inbounds [3 x i32], ptr %arr, i64 0, i64 2
  %34 = load i32, ptr %arrayidx87, align 4
  %call88 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %32, i32 noundef %33, i32 noundef %34)
  br label %if.end

if.end:                                           ; preds = %if.else84, %if.then82
  br label %if.end89

if.end89:                                         ; preds = %if.end, %if.then68
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then54
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then40
  br label %if.end92

if.end92:                                         ; preds = %if.end91, %if.then26
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %if.then
  br label %while.cond, !llvm.loop !7

while.end94:                                      ; preds = %while.cond
  %35 = load i32, ptr %cnt1, align 4
  %36 = load i32, ptr %cnt2, align 4
  %37 = load i32, ptr %cnt3, align 4
  %38 = load i32, ptr %cnt4, align 4
  %39 = load i32, ptr %cnt5, align 4
  %40 = load i32, ptr %cnt6, align 4
  %call95 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38, i32 noundef %39, i32 noundef %40)
  %call96 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
