; ModuleID = './code/298-1086059.c'
source_filename = "./code/298-1086059.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.n = private unnamed_addr constant [5 x i32] [i32 3, i32 5, i32 8, i32 10, i32 11], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @generateMatrix(i32 noundef %n) #0 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %ret = alloca ptr, align 8
  %i = alloca i32, align 4
  %round = alloca i32, align 4
  %i7 = alloca i32, align 4
  %j = alloca i32, align 4
  %j23 = alloca i32, align 4
  %j40 = alloca i32, align 4
  %j59 = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %2 = load i32, ptr %n.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, ptr %size, align 4
  %3 = load i32, ptr %n.addr, align 4
  %conv = sext i32 %3 to i64
  %mul1 = mul i64 %conv, 8
  %call = call ptr @malloc(i64 noundef %mul1) #4
  store ptr %call, ptr %ret, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %n.addr, align 4
  %conv4 = sext i32 %6 to i64
  %mul5 = mul i64 %conv4, 4
  %call6 = call ptr @malloc(i64 noundef %mul5) #4
  %7 = load ptr, ptr %ret, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  store ptr %call6, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %round, align 4
  store i32 1, ptr %i7, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end75, %for.end
  %10 = load i32, ptr %i7, align 4
  %11 = load i32, ptr %size, align 4
  %cmp8 = icmp slt i32 %10, %11
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, ptr %round, align 4
  store i32 %12, ptr %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc19, %while.body
  %13 = load i32, ptr %j, align 4
  %14 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %14, 1
  %15 = load i32, ptr %round, align 4
  %sub11 = sub nsw i32 %sub, %15
  %cmp12 = icmp slt i32 %13, %sub11
  br i1 %cmp12, label %for.body14, label %for.end22

for.body14:                                       ; preds = %for.cond10
  %16 = load i32, ptr %i7, align 4
  %17 = load ptr, ptr %ret, align 8
  %18 = load i32, ptr %round, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %17, i64 %idxprom15
  %19 = load ptr, ptr %arrayidx16, align 8
  %20 = load i32, ptr %j, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %19, i64 %idxprom17
  store i32 %16, ptr %arrayidx18, align 4
  br label %for.inc19

for.inc19:                                        ; preds = %for.body14
  %21 = load i32, ptr %j, align 4
  %inc20 = add nsw i32 %21, 1
  store i32 %inc20, ptr %j, align 4
  %22 = load i32, ptr %i7, align 4
  %inc21 = add nsw i32 %22, 1
  store i32 %inc21, ptr %i7, align 4
  br label %for.cond10, !llvm.loop !7

for.end22:                                        ; preds = %for.cond10
  %23 = load i32, ptr %round, align 4
  store i32 %23, ptr %j23, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc36, %for.end22
  %24 = load i32, ptr %j23, align 4
  %25 = load i32, ptr %n.addr, align 4
  %sub25 = sub nsw i32 %25, 1
  %26 = load i32, ptr %round, align 4
  %sub26 = sub nsw i32 %sub25, %26
  %cmp27 = icmp slt i32 %24, %sub26
  br i1 %cmp27, label %for.body29, label %for.end39

for.body29:                                       ; preds = %for.cond24
  %27 = load i32, ptr %i7, align 4
  %28 = load ptr, ptr %ret, align 8
  %29 = load i32, ptr %j23, align 4
  %idxprom30 = sext i32 %29 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %28, i64 %idxprom30
  %30 = load ptr, ptr %arrayidx31, align 8
  %31 = load i32, ptr %n.addr, align 4
  %sub32 = sub nsw i32 %31, 1
  %32 = load i32, ptr %round, align 4
  %sub33 = sub nsw i32 %sub32, %32
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx35 = getelementptr inbounds i32, ptr %30, i64 %idxprom34
  store i32 %27, ptr %arrayidx35, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %for.body29
  %33 = load i32, ptr %j23, align 4
  %inc37 = add nsw i32 %33, 1
  store i32 %inc37, ptr %j23, align 4
  %34 = load i32, ptr %i7, align 4
  %inc38 = add nsw i32 %34, 1
  store i32 %inc38, ptr %i7, align 4
  br label %for.cond24, !llvm.loop !8

for.end39:                                        ; preds = %for.cond24
  %35 = load i32, ptr %round, align 4
  store i32 %35, ptr %j40, align 4
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc55, %for.end39
  %36 = load i32, ptr %j40, align 4
  %37 = load i32, ptr %n.addr, align 4
  %sub42 = sub nsw i32 %37, 1
  %38 = load i32, ptr %round, align 4
  %sub43 = sub nsw i32 %sub42, %38
  %cmp44 = icmp slt i32 %36, %sub43
  br i1 %cmp44, label %for.body46, label %for.end58

for.body46:                                       ; preds = %for.cond41
  %39 = load i32, ptr %i7, align 4
  %40 = load ptr, ptr %ret, align 8
  %41 = load i32, ptr %n.addr, align 4
  %sub47 = sub nsw i32 %41, 1
  %42 = load i32, ptr %round, align 4
  %sub48 = sub nsw i32 %sub47, %42
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds ptr, ptr %40, i64 %idxprom49
  %43 = load ptr, ptr %arrayidx50, align 8
  %44 = load i32, ptr %n.addr, align 4
  %sub51 = sub nsw i32 %44, 1
  %45 = load i32, ptr %j40, align 4
  %sub52 = sub nsw i32 %sub51, %45
  %idxprom53 = sext i32 %sub52 to i64
  %arrayidx54 = getelementptr inbounds i32, ptr %43, i64 %idxprom53
  store i32 %39, ptr %arrayidx54, align 4
  br label %for.inc55

for.inc55:                                        ; preds = %for.body46
  %46 = load i32, ptr %j40, align 4
  %inc56 = add nsw i32 %46, 1
  store i32 %inc56, ptr %j40, align 4
  %47 = load i32, ptr %i7, align 4
  %inc57 = add nsw i32 %47, 1
  store i32 %inc57, ptr %i7, align 4
  br label %for.cond41, !llvm.loop !9

for.end58:                                        ; preds = %for.cond41
  %48 = load i32, ptr %round, align 4
  store i32 %48, ptr %j59, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc72, %for.end58
  %49 = load i32, ptr %j59, align 4
  %50 = load i32, ptr %n.addr, align 4
  %sub61 = sub nsw i32 %50, 1
  %51 = load i32, ptr %round, align 4
  %sub62 = sub nsw i32 %sub61, %51
  %cmp63 = icmp slt i32 %49, %sub62
  br i1 %cmp63, label %for.body65, label %for.end75

for.body65:                                       ; preds = %for.cond60
  %52 = load i32, ptr %i7, align 4
  %53 = load ptr, ptr %ret, align 8
  %54 = load i32, ptr %n.addr, align 4
  %sub66 = sub nsw i32 %54, 1
  %55 = load i32, ptr %j59, align 4
  %sub67 = sub nsw i32 %sub66, %55
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds ptr, ptr %53, i64 %idxprom68
  %56 = load ptr, ptr %arrayidx69, align 8
  %57 = load i32, ptr %round, align 4
  %idxprom70 = sext i32 %57 to i64
  %arrayidx71 = getelementptr inbounds i32, ptr %56, i64 %idxprom70
  store i32 %52, ptr %arrayidx71, align 4
  br label %for.inc72

for.inc72:                                        ; preds = %for.body65
  %58 = load i32, ptr %j59, align 4
  %inc73 = add nsw i32 %58, 1
  store i32 %inc73, ptr %j59, align 4
  %59 = load i32, ptr %i7, align 4
  %inc74 = add nsw i32 %59, 1
  store i32 %inc74, ptr %i7, align 4
  br label %for.cond60, !llvm.loop !10

for.end75:                                        ; preds = %for.cond60
  %60 = load i32, ptr %round, align 4
  %inc76 = add nsw i32 %60, 1
  store i32 %inc76, ptr %round, align 4
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %61 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %61, 2
  %mul77 = mul nsw i32 %div, 2
  %62 = load i32, ptr %n.addr, align 4
  %cmp78 = icmp ne i32 %mul77, %62
  br i1 %cmp78, label %if.then80, label %if.end87

if.then80:                                        ; preds = %while.end
  %63 = load i32, ptr %size, align 4
  %64 = load ptr, ptr %ret, align 8
  %65 = load i32, ptr %n.addr, align 4
  %div81 = sdiv i32 %65, 2
  %idxprom82 = sext i32 %div81 to i64
  %arrayidx83 = getelementptr inbounds ptr, ptr %64, i64 %idxprom82
  %66 = load ptr, ptr %arrayidx83, align 8
  %67 = load i32, ptr %n.addr, align 4
  %div84 = sdiv i32 %67, 2
  %idxprom85 = sext i32 %div84 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %66, i64 %idxprom85
  store i32 %63, ptr %arrayidx86, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then80, %while.end
  %68 = load ptr, ptr %ret, align 8
  store ptr %68, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end87, %if.then
  %69 = load ptr, ptr %retval, align 8
  ret ptr %69
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca [5 x i32], align 4
  %k = alloca i32, align 4
  %m = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %n, ptr align 4 @__const.main.n, i64 20, i1 false)
  store i32 0, ptr %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, ptr %k, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %k, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr %n, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call = call ptr @generateMatrix(i32 noundef %2)
  store ptr %call, ptr %m, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc17, %for.body
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %k, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [5 x i32], ptr %n, i64 0, i64 %idxprom2
  %5 = load i32, ptr %arrayidx3, align 4
  %cmp4 = icmp slt i32 %3, %5
  br i1 %cmp4, label %for.body5, label %for.end19

for.body5:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body5
  %6 = load i32, ptr %j, align 4
  %7 = load i32, ptr %k, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [5 x i32], ptr %n, i64 0, i64 %idxprom7
  %8 = load i32, ptr %arrayidx8, align 4
  %cmp9 = icmp slt i32 %6, %8
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond6
  %9 = load ptr, ptr %m, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds ptr, ptr %9, i64 %idxprom11
  %11 = load ptr, ptr %arrayidx12, align 8
  %12 = load i32, ptr %j, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %11, i64 %idxprom13
  %13 = load i32, ptr %arrayidx14, align 4
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %14 = load i32, ptr %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond6, !llvm.loop !12

for.end:                                          ; preds = %for.cond6
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %15 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %15, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond1, !llvm.loop !13

for.end19:                                        ; preds = %for.cond1
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc21

for.inc21:                                        ; preds = %for.end19
  %16 = load i32, ptr %k, align 4
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, ptr %k, align 4
  br label %for.cond, !llvm.loop !14

for.end23:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }

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
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
