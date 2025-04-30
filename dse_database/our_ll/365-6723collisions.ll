; ModuleID = 'code/365-6723collisions.c'
source_filename = "code/365-6723collisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.pvals = private unnamed_addr constant [18 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7, i32 11, i32 13, i32 17, i32 19, i32 23, i32 29, i32 31, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43], align 16
@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pvals = alloca [18 x i32], align 16
  %i = alloca i32, align 4
  %collisions = alloca [15 x i32], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [18 x i32]* %pvals to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([18 x i32]* @__const.main.pvals to i8*), i64 72, i1 false)
  %call = call i64 @time(i64* null) #5
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [18 x i32], [18 x i32]* %pvals, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call3 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc9, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %5, 10
  br i1 %cmp5, label %for.body7, label %for.end11

for.body7:                                        ; preds = %for.cond4
  %arraydecay = getelementptr inbounds [18 x i32], [18 x i32]* %pvals, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [15 x i32], [15 x i32]* %collisions, i64 0, i64 0
  call void @test_all_pvals(i32* %arraydecay, i32* %arraydecay8, i32 15, i32 500, i32 200)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body7
  %6 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %6, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond4, !llvm.loop !6

for.end11:                                        ; preds = %for.cond4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_all_pvals(i32* %pvals, i32* %collisions, i32 %num, i32 %num_runs, i32 %len) #0 {
entry:
  %pvals.addr = alloca i32*, align 8
  %collisions.addr = alloca i32*, align 8
  %num.addr = alloca i32, align 4
  %num_runs.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %pvals, i32** %pvals.addr, align 8
  store i32* %collisions, i32** %collisions.addr, align 8
  store i32 %num, i32* %num.addr, align 4
  store i32 %num_runs, i32* %num_runs.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32*, i32** %collisions.addr, align 8
  %1 = bitcast i32* %0 to i8*
  %2 = load i32, i32* %num.addr, align 4
  %conv = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 %conv, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %num_runs.addr, align 4
  %7 = load i32, i32* %len.addr, align 4
  %call = call i32 @test_pval(i32 %5, i32 %6, i32 %7)
  %8 = load i32*, i32** %collisions.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  %10 = load i32*, i32** %collisions.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %10, i64 %idxprom2
  %12 = load i32, i32* %arrayidx3, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call5 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bias_hash(i32 %a, i32 %b, i32 %p) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %p, i32* %p.addr, align 4
  %0 = load i32, i32* %p.addr, align 4
  %1 = load i32, i32* %a.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %b.addr, align 4
  %xor = xor i32 %mul, %2
  store i32 %xor, i32* %a.addr, align 4
  %3 = load i32, i32* %a.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %a.addr, align 4
  %sub = sub nsw i32 0, %4
  store i32 %sub, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %a.addr, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_collisions(i32 %hash, i32* %data, i32 %cur) #0 {
entry:
  %hash.addr = alloca i32, align 4
  %data.addr = alloca i32*, align 8
  %cur.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %collisions = alloca i32, align 4
  store i32 %hash, i32* %hash.addr, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 %cur, i32* %cur.addr, align 4
  store i32 0, i32* %collisions, align 4
  %0 = load i32, i32* %hash.addr, align 4
  %1 = load i32*, i32** %data.addr, align 8
  %2 = load i32, i32* %cur.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %cur.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %data.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* %hash.addr, align 4
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %collisions, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %collisions, align 4
  %10 = load i32*, i32** %data.addr, align 8
  %11 = load i32, i32* %cur.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  store i32 -1, i32* %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc6 = add nsw i32 %12, 1
  store i32 %inc6, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %collisions, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_pval(i32 %pval, i32 %num_runs, i32 %len) #0 {
entry:
  %pval.addr = alloca i32, align 4
  %num_runs.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %data = alloca i32*, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %collisions = alloca i32, align 4
  store i32 %pval, i32* %pval.addr, align 4
  store i32 %num_runs, i32* %num_runs.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i32, i32* %num_runs.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 4, %conv
  %call = call noalias align 16 i8* @malloc(i64 %mul) #5
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %data, align 8
  store i32 0, i32* %collisions, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %num_runs.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #5
  %4 = load i32, i32* %len.addr, align 4
  %mul3 = mul nsw i32 2, %4
  %rem = srem i32 %call2, %mul3
  %5 = load i32, i32* %len.addr, align 4
  %sub = sub nsw i32 %rem, %5
  store i32 %sub, i32* %a, align 4
  %call4 = call i32 @rand() #5
  %6 = load i32, i32* %len.addr, align 4
  %mul5 = mul nsw i32 2, %6
  %rem6 = srem i32 %call4, %mul5
  %7 = load i32, i32* %len.addr, align 4
  %sub7 = sub nsw i32 %rem6, %7
  store i32 %sub7, i32* %b, align 4
  %8 = load i32, i32* %a, align 4
  %9 = load i32, i32* %b, align 4
  %10 = load i32, i32* %pval.addr, align 4
  %call8 = call i32 @bias_hash(i32 %8, i32 %9, i32 %10)
  %11 = load i32*, i32** %data, align 8
  %12 = load i32, i32* %i, align 4
  %call9 = call i32 @count_collisions(i32 %call8, i32* %11, i32 %12)
  %13 = load i32, i32* %collisions, align 4
  %add = add nsw i32 %13, %call9
  store i32 %add, i32* %collisions, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %15 = load i32*, i32** %data, align 8
  %16 = bitcast i32* %15 to i8*
  call void @free(i8* %16) #5
  %17 = load i32, i32* %collisions, align 4
  ret i32 %17
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
