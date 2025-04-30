; ModuleID = './code/331-1322array_bidimensional.c'
source_filename = "./code/331-1322array_bidimensional.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.matrix_b = private unnamed_addr constant [2 x [3 x i32]] [[3 x i32] [i32 10, i32 20, i32 30], [3 x i32] [i32 40, i32 50, i32 60]], align 4
@.str = private unnamed_addr constant [9 x i8] c"num: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ROW[%d] : \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d | \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %matrix_a = alloca [2 x [3 x i32]], align 4
  %matrix_b = alloca [2 x [3 x i32]], align 4
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %matrix_a, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %matrix_b, ptr align 4 @__const.main.matrix_b, i64 24, i1 false)
  %arrayidx = getelementptr inbounds [2 x [3 x i32]], ptr %matrix_b, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x i32], ptr %arrayidx, i64 0, i64 1
  %0 = load i32, ptr %arrayidx1, align 4
  store i32 %0, ptr %num, align 4
  %1 = load i32, ptr %num, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 2
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  store i32 0, ptr %y, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %y, align 4
  %cmp4 = icmp slt i32 %4, 3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [2 x [3 x i32]], ptr %matrix_b, i64 0, i64 %idxprom
  %6 = load i32, ptr %y, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [3 x i32], ptr %arrayidx6, i64 0, i64 %idxprom7
  %7 = load i32, ptr %arrayidx8, align 4
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %8 = load i32, ptr %y, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %y, align 4
  br label %for.cond3, !llvm.loop !5

for.end:                                          ; preds = %for.cond3
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end13:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
