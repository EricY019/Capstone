; ModuleID = 'code/299-8032rand_perm.c'
source_filename = "code/299-8032rand_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.arr = private unnamed_addr constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @random_range(i32 %min, i32 %max) #0 {
entry:
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  store volatile i32 0, i32* %r, align 4
  %call = call i32 @rand() #4
  %0 = load i32, i32* %max.addr, align 4
  %add = add nsw i32 %0, 1
  %1 = load i32, i32* %min.addr, align 4
  %sub = sub nsw i32 %add, %1
  %rem = srem i32 %call, %sub
  %2 = load i32, i32* %min.addr, align 4
  %add1 = add nsw i32 %rem, %2
  store volatile i32 %add1, i32* %r, align 4
  %3 = load volatile i32, i32* %r, align 4
  ret i32 %3
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i32* %arr, i32 %x, i32 %y) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %tmp, align 4
  %3 = load i32*, i32** %arr.addr, align 8
  %4 = load i32, i32* %y.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 %idxprom1
  %5 = load i32, i32* %arrayidx2, align 4
  %6 = load i32*, i32** %arr.addr, align 8
  %7 = load i32, i32* %x.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %6, i64 %idxprom3
  store i32 %5, i32* %arrayidx4, align 4
  %8 = load i32, i32* %tmp, align 4
  %9 = load i32*, i32** %arr.addr, align 8
  %10 = load i32, i32* %y.addr, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %idxprom5
  store i32 %8, i32* %arrayidx6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
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
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x i32]* %arr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.main.arr to i8*), i64 12, i1 false)
  store i32 2, i32* %max, align 4
  store i32 0, i32* %idx, align 4
  store volatile i32 0, i32* %r_idx, align 4
  store i32 0, i32* %cnt6, align 4
  store i32 0, i32* %cnt5, align 4
  store i32 0, i32* %cnt4, align 4
  store i32 0, i32* %cnt3, align 4
  store i32 0, i32* %cnt2, align 4
  store i32 0, i32* %cnt1, align 4
  store i32 10000000, i32* %k, align 4
  %call = call i64 @time(i64* null) #4
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end93, %entry
  %1 = load i32, i32* %k, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %k, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end94

while.body:                                       ; preds = %while.cond
  store volatile i32 0, i32* %r_idx, align 4
  store i32 0, i32* %idx, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.body
  %2 = load i32, i32* %idx, align 4
  %3 = load i32, i32* %max, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  %4 = load i32, i32* %idx, align 4
  %5 = load i32, i32* %max, align 4
  %call4 = call i32 @random_range(i32 %4, i32 %5)
  store volatile i32 %call4, i32* %r_idx, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 0
  %6 = load i32, i32* %idx, align 4
  %7 = load volatile i32, i32* %r_idx, align 4
  call void @swap(i32* %arraydecay, i32 %6, i32 %7)
  %8 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %idx, align 4
  br label %while.cond1, !llvm.loop !4

while.end:                                        ; preds = %while.cond1
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 0
  %9 = load i32, i32* %arrayidx, align 4
  %cmp5 = icmp eq i32 %9, 0
  br i1 %cmp5, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.end
  %arrayidx7 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 1
  %10 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp eq i32 %10, 1
  br i1 %cmp8, label %land.lhs.true10, label %if.else

land.lhs.true10:                                  ; preds = %land.lhs.true
  %arrayidx11 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 2
  %11 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp eq i32 %11, 2
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true10
  %12 = load i32, i32* %cnt1, align 4
  %inc14 = add nsw i32 %12, 1
  store i32 %inc14, i32* %cnt1, align 4
  br label %if.end93

if.else:                                          ; preds = %land.lhs.true10, %land.lhs.true, %while.end
  %arrayidx15 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 0
  %13 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %13, 1
  br i1 %cmp16, label %land.lhs.true18, label %if.else28

land.lhs.true18:                                  ; preds = %if.else
  %arrayidx19 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 1
  %14 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp eq i32 %14, 2
  br i1 %cmp20, label %land.lhs.true22, label %if.else28

land.lhs.true22:                                  ; preds = %land.lhs.true18
  %arrayidx23 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 2
  %15 = load i32, i32* %arrayidx23, align 4
  %cmp24 = icmp eq i32 %15, 0
  br i1 %cmp24, label %if.then26, label %if.else28

if.then26:                                        ; preds = %land.lhs.true22
  %16 = load i32, i32* %cnt2, align 4
  %inc27 = add nsw i32 %16, 1
  store i32 %inc27, i32* %cnt2, align 4
  br label %if.end92

if.else28:                                        ; preds = %land.lhs.true22, %land.lhs.true18, %if.else
  %arrayidx29 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 0
  %17 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp eq i32 %17, 2
  br i1 %cmp30, label %land.lhs.true32, label %if.else42

land.lhs.true32:                                  ; preds = %if.else28
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 1
  %18 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp eq i32 %18, 0
  br i1 %cmp34, label %land.lhs.true36, label %if.else42

land.lhs.true36:                                  ; preds = %land.lhs.true32
  %arrayidx37 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 2
  %19 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp eq i32 %19, 1
  br i1 %cmp38, label %if.then40, label %if.else42

if.then40:                                        ; preds = %land.lhs.true36
  %20 = load i32, i32* %cnt3, align 4
  %inc41 = add nsw i32 %20, 1
  store i32 %inc41, i32* %cnt3, align 4
  br label %if.end91

if.else42:                                        ; preds = %land.lhs.true36, %land.lhs.true32, %if.else28
  %arrayidx43 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 0
  %21 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp eq i32 %21, 0
  br i1 %cmp44, label %land.lhs.true46, label %if.else56

land.lhs.true46:                                  ; preds = %if.else42
  %arrayidx47 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 1
  %22 = load i32, i32* %arrayidx47, align 4
  %cmp48 = icmp eq i32 %22, 2
  br i1 %cmp48, label %land.lhs.true50, label %if.else56

land.lhs.true50:                                  ; preds = %land.lhs.true46
  %arrayidx51 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 2
  %23 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp eq i32 %23, 1
  br i1 %cmp52, label %if.then54, label %if.else56

if.then54:                                        ; preds = %land.lhs.true50
  %24 = load i32, i32* %cnt4, align 4
  %inc55 = add nsw i32 %24, 1
  store i32 %inc55, i32* %cnt4, align 4
  br label %if.end90

if.else56:                                        ; preds = %land.lhs.true50, %land.lhs.true46, %if.else42
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 0
  %25 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp eq i32 %25, 1
  br i1 %cmp58, label %land.lhs.true60, label %if.else70

land.lhs.true60:                                  ; preds = %if.else56
  %arrayidx61 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 1
  %26 = load i32, i32* %arrayidx61, align 4
  %cmp62 = icmp eq i32 %26, 0
  br i1 %cmp62, label %land.lhs.true64, label %if.else70

land.lhs.true64:                                  ; preds = %land.lhs.true60
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 2
  %27 = load i32, i32* %arrayidx65, align 4
  %cmp66 = icmp eq i32 %27, 2
  br i1 %cmp66, label %if.then68, label %if.else70

if.then68:                                        ; preds = %land.lhs.true64
  %28 = load i32, i32* %cnt5, align 4
  %inc69 = add nsw i32 %28, 1
  store i32 %inc69, i32* %cnt5, align 4
  br label %if.end89

if.else70:                                        ; preds = %land.lhs.true64, %land.lhs.true60, %if.else56
  %arrayidx71 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 0
  %29 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp eq i32 %29, 2
  br i1 %cmp72, label %land.lhs.true74, label %if.else84

land.lhs.true74:                                  ; preds = %if.else70
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 1
  %30 = load i32, i32* %arrayidx75, align 4
  %cmp76 = icmp eq i32 %30, 1
  br i1 %cmp76, label %land.lhs.true78, label %if.else84

land.lhs.true78:                                  ; preds = %land.lhs.true74
  %arrayidx79 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 2
  %31 = load i32, i32* %arrayidx79, align 4
  %cmp80 = icmp eq i32 %31, 0
  br i1 %cmp80, label %if.then82, label %if.else84

if.then82:                                        ; preds = %land.lhs.true78
  %32 = load i32, i32* %cnt6, align 4
  %inc83 = add nsw i32 %32, 1
  store i32 %inc83, i32* %cnt6, align 4
  br label %if.end

if.else84:                                        ; preds = %land.lhs.true78, %land.lhs.true74, %if.else70
  %arrayidx85 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 0
  %33 = load i32, i32* %arrayidx85, align 4
  %arrayidx86 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 1
  %34 = load i32, i32* %arrayidx86, align 4
  %arrayidx87 = getelementptr inbounds [3 x i32], [3 x i32]* %arr, i64 0, i64 2
  %35 = load i32, i32* %arrayidx87, align 4
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
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
  br label %while.cond, !llvm.loop !6

while.end94:                                      ; preds = %while.cond
  %36 = load i32, i32* %cnt1, align 4
  %37 = load i32, i32* %cnt2, align 4
  %38 = load i32, i32* %cnt3, align 4
  %39 = load i32, i32* %cnt4, align 4
  %40 = load i32, i32* %cnt5, align 4
  %41 = load i32, i32* %cnt6, align 4
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %call96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %retval, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
