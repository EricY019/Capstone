; ModuleID = './code/010-2826array.c'
source_filename = "./code/010-2826array.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.temp = private unnamed_addr constant [10 x i32] [i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2, i32 -2], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %temp = alloca [10 x i32], align 4
  %temp2 = alloca [10 x i32], align 4
  %temp3 = alloca [10 x i32], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %temp, ptr align 4 @__const.main.temp, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %temp2, i8 0, i64 40, i1 false)
  %0 = getelementptr inbounds [10 x i32], ptr %temp2, i32 0, i32 0
  store i32 -1, ptr %0, align 4
  %1 = getelementptr inbounds [10 x i32], ptr %temp2, i32 0, i32 1
  store i32 -1, ptr %1, align 4
  %2 = getelementptr inbounds [10 x i32], ptr %temp2, i32 0, i32 2
  store i32 -1, ptr %2, align 4
  %3 = getelementptr inbounds [10 x i32], ptr %temp2, i32 0, i32 3
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds [10 x i32], ptr %temp2, i32 0, i32 4
  store i32 -1, ptr %4, align 4
  %5 = getelementptr inbounds [10 x i32], ptr %temp2, i32 0, i32 5
  store i32 -1, ptr %5, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %temp3, i8 0, i64 40, i1 false)
  %6 = getelementptr inbounds [10 x i32], ptr %temp3, i32 0, i32 1
  store i32 -3, ptr %6, align 4
  %7 = getelementptr inbounds [10 x i32], ptr %temp3, i32 0, i32 2
  store i32 -3, ptr %7, align 4
  %8 = getelementptr inbounds [10 x i32], ptr %temp3, i32 0, i32 3
  store i32 -3, ptr %8, align 4
  %9 = getelementptr inbounds [10 x i32], ptr %temp3, i32 0, i32 4
  store i32 -3, ptr %9, align 4
  %10 = getelementptr inbounds [10 x i32], ptr %temp3, i32 0, i32 5
  store i32 -3, ptr %10, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %11, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %temp, i64 0, i64 %idxprom
  %13 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %13)
  %14 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %14 to i64
  %arrayidx2 = getelementptr inbounds [10 x i32], ptr %temp2, i64 0, i64 %idxprom1
  %15 = load i32, ptr %arrayidx2, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15)
  %16 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %16 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %temp3, i64 0, i64 %idxprom4
  %17 = load i32, ptr %arrayidx5, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
