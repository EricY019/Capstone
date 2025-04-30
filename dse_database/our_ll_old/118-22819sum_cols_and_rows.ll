; ModuleID = './code/118-22819sum_cols_and_rows.c'
source_filename = "./code/118-22819sum_cols_and_rows.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.mdarr = private unnamed_addr constant [3 x [4 x i32]] [[4 x i32] [i32 1, i32 3, i32 5, i32 7], [4 x i32] [i32 2, i32 4, i32 6, i32 8], [4 x i32] [i32 0, i32 1, i32 2, i32 3]], align 4
@.str = private unnamed_addr constant [21 x i8] c"sum each row element\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"sum each col element\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Total rows and cols: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%2d row: %2d total\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%2d col: %2d total\0A\00", align 1
@sum_all.tot = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tot = alloca i32, align 4
  %mdarr = alloca [3 x [4 x i32]], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %mdarr, ptr align 4 @__const.main.mdarr, i64 48, i1 false)
  %call = call i32 @puts(ptr noundef @.str)
  %arraydecay = getelementptr inbounds [3 x [4 x i32]], ptr %mdarr, i64 0, i64 0
  call void @sum_rows(ptr noundef %arraydecay)
  %call1 = call i32 @puts(ptr noundef @.str.1)
  %arraydecay2 = getelementptr inbounds [3 x [4 x i32]], ptr %mdarr, i64 0, i64 0
  call void @sum_cols(ptr noundef %arraydecay2)
  %arraydecay3 = getelementptr inbounds [3 x [4 x i32]], ptr %mdarr, i64 0, i64 0
  %call4 = call i32 @sum_all(ptr noundef %arraydecay3)
  store i32 %call4, ptr %tot, align 4
  %0 = load i32, ptr %tot, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %0)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @puts(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sum_rows(ptr noundef %arr) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %tot_rows = alloca i32, align 4
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 0, ptr %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %r, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %tot_rows, align 4
  store i32 0, ptr %c, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %c, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %arr.addr, align 8
  %3 = load i32, ptr %r, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %c, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  %6 = load i32, ptr %tot_rows, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, ptr %tot_rows, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %7 = load i32, ptr %c, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %c, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %8 = load i32, ptr %r, align 4
  %9 = load i32, ptr %tot_rows, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %8, i32 noundef %9)
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %10 = load i32, ptr %r, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, ptr %r, align 4
  br label %for.cond, !llvm.loop !7

for.end8:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sum_cols(ptr noundef %arr) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %tot_cols = alloca i32, align 4
  %c = alloca i32, align 4
  %r = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 0, ptr %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %c, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %tot_cols, align 4
  store i32 0, ptr %r, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %r, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %arr.addr, align 8
  %3 = load i32, ptr %r, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %c, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  %6 = load i32, ptr %tot_cols, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, ptr %tot_cols, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %7 = load i32, ptr %r, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %r, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %for.cond1
  %8 = load i32, ptr %c, align 4
  %9 = load i32, ptr %tot_cols, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %8, i32 noundef %9)
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %10 = load i32, ptr %c, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, ptr %c, align 4
  br label %for.cond, !llvm.loop !9

for.end8:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @sum_all(ptr noundef %arr) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %r = alloca i32, align 4
  %c = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 0, ptr %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %0 = load i32, ptr %r, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %c, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %c, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %arr.addr, align 8
  %3 = load i32, ptr %r, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %c, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  %6 = load i32, ptr @sum_all.tot, align 4
  %add = add nsw i32 %6, %5
  store i32 %add, ptr @sum_all.tot, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %7 = load i32, ptr %c, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %c, align 4
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %8 = load i32, ptr %r, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, ptr %r, align 4
  br label %for.cond, !llvm.loop !11

for.end8:                                         ; preds = %for.cond
  %9 = load i32, ptr @sum_all.tot, align 4
  ret i32 %9
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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
