; ModuleID = './code/365-6723collisions.c'
source_filename = "./code/365-6723collisions.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.pvals = private unnamed_addr constant [18 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7, i32 11, i32 13, i32 17, i32 19, i32 23, i32 29, i32 31, i32 33, i32 35, i32 37, i32 39, i32 41, i32 43], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pvals = alloca [18 x i32], align 4
  %i = alloca i32, align 4
  %collisions = alloca [15 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %pvals, ptr align 4 @__const.main.pvals, i64 72, i1 false)
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [18 x i32], ptr %pvals, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call3 = call i32 @puts(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc9, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %4, 10
  br i1 %cmp5, label %for.body7, label %for.end11

for.body7:                                        ; preds = %for.cond4
  %arraydecay = getelementptr inbounds [18 x i32], ptr %pvals, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [15 x i32], ptr %collisions, i64 0, i64 0
  call void @test_all_pvals(ptr noundef %arraydecay, ptr noundef %arraydecay8, i32 noundef 15, i32 noundef 500, i32 noundef 200)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body7
  %5 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %5, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond4, !llvm.loop !7

for.end11:                                        ; preds = %for.cond4
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare void @srand(i32 noundef) #2

declare i64 @time(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

declare i32 @puts(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_all_pvals(ptr noundef %pvals, ptr noundef %collisions, i32 noundef %num, i32 noundef %num_runs, i32 noundef %len) #0 {
entry:
  %pvals.addr = alloca ptr, align 8
  %collisions.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %num_runs.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pvals, ptr %pvals.addr, align 8
  store ptr %collisions, ptr %collisions.addr, align 8
  store i32 %num, ptr %num.addr, align 4
  store i32 %num_runs, ptr %num_runs.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %collisions.addr, align 8
  %1 = load i32, ptr %num.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = load ptr, ptr %collisions.addr, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %call = call ptr @__memset_chk(ptr noundef %0, i32 noundef 0, i64 noundef %conv, i64 noundef %3) #6
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %num.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %num_runs.addr, align 4
  %8 = load i32, ptr %len.addr, align 4
  %call2 = call i32 @test_pval(i32 noundef %6, i32 noundef %7, i32 noundef %8)
  %9 = load ptr, ptr %collisions.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom
  store i32 %call2, ptr %arrayidx, align 4
  %11 = load ptr, ptr %collisions.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %12 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %11, i64 %idxprom3
  %13 = load i32, ptr %arrayidx4, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call6 = call i32 @puts(ptr noundef @.str.2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @bias_hash(i32 noundef %a, i32 noundef %b, i32 noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %p.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %p, ptr %p.addr, align 4
  %0 = load i32, ptr %p.addr, align 4
  %1 = load i32, ptr %a.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, ptr %b.addr, align 4
  %xor = xor i32 %mul, %2
  store i32 %xor, ptr %a.addr, align 4
  %3 = load i32, ptr %a.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %a.addr, align 4
  %sub = sub nsw i32 0, %4
  store i32 %sub, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %a.addr, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @count_collisions(i32 noundef %hash, ptr noundef %data, i32 noundef %cur) #0 {
entry:
  %hash.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %cur.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %collisions = alloca i32, align 4
  store i32 %hash, ptr %hash.addr, align 4
  store ptr %data, ptr %data.addr, align 8
  store i32 %cur, ptr %cur.addr, align 4
  store i32 0, ptr %collisions, align 4
  %0 = load i32, ptr %hash.addr, align 4
  %1 = load ptr, ptr %data.addr, align 8
  %2 = load i32, ptr %cur.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  store i32 %0, ptr %arrayidx, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %cur.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %data.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  %7 = load i32, ptr %arrayidx2, align 4
  %8 = load i32, ptr %hash.addr, align 4
  %cmp3 = icmp eq i32 %7, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %collisions, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %collisions, align 4
  %10 = load ptr, ptr %data.addr, align 8
  %11 = load i32, ptr %cur.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 %idxprom4
  store i32 -1, ptr %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4
  %inc6 = add nsw i32 %12, 1
  store i32 %inc6, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %collisions, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @test_pval(i32 noundef %pval, i32 noundef %num_runs, i32 noundef %len) #0 {
entry:
  %pval.addr = alloca i32, align 4
  %num_runs.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %collisions = alloca i32, align 4
  store i32 %pval, ptr %pval.addr, align 4
  store i32 %num_runs, ptr %num_runs.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  %0 = load i32, ptr %num_runs.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 4, %conv
  %call = call ptr @malloc(i64 noundef %mul) #7
  store ptr %call, ptr %data, align 8
  store i32 0, ptr %collisions, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %num_runs.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  %3 = load i32, ptr %len.addr, align 4
  %mul3 = mul nsw i32 2, %3
  %rem = srem i32 %call2, %mul3
  %4 = load i32, ptr %len.addr, align 4
  %sub = sub nsw i32 %rem, %4
  store i32 %sub, ptr %a, align 4
  %call4 = call i32 @rand()
  %5 = load i32, ptr %len.addr, align 4
  %mul5 = mul nsw i32 2, %5
  %rem6 = srem i32 %call4, %mul5
  %6 = load i32, ptr %len.addr, align 4
  %sub7 = sub nsw i32 %rem6, %6
  store i32 %sub7, ptr %b, align 4
  %7 = load i32, ptr %a, align 4
  %8 = load i32, ptr %b, align 4
  %9 = load i32, ptr %pval.addr, align 4
  %call8 = call i32 @bias_hash(i32 noundef %7, i32 noundef %8, i32 noundef %9)
  %10 = load ptr, ptr %data, align 8
  %11 = load i32, ptr %i, align 4
  %call9 = call i32 @count_collisions(i32 noundef %call8, ptr noundef %10, i32 noundef %11)
  %12 = load i32, ptr %collisions, align 4
  %add = add nsw i32 %12, %call9
  store i32 %add, ptr %collisions, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %data, align 8
  call void @free(ptr noundef %14)
  %15 = load i32, ptr %collisions, align 4
  ret i32 %15
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

declare i32 @rand() #2

declare void @free(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { allocsize(0) }

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
