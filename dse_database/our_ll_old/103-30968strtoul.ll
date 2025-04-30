; ModuleID = './code/103-30968strtoul.c'
source_filename = "./code/103-30968strtoul.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [7 x i8] c"   10M\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"  10m\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"+20M\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"+ 30M\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"1G\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"12 M\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"  13 M\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"w 10 M\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" w 10 M\00", align 1
@__const.main.pList = private unnamed_addr constant [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr null], align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"[%s] = [%lu], p = [%s], [%s]\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"success\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i64, align 8
  %p = alloca ptr, align 8
  %pList = alloca [10 x ptr], align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i64 0, ptr %x, align 8
  store ptr null, ptr %p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pList, ptr align 8 @__const.main.pList, i64 80, i1 false)
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %pList, i64 0, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [10 x ptr], ptr %pList, i64 0, i64 %idxprom1
  %3 = load ptr, ptr %arrayidx2, align 8
  %call = call i64 @strtoul(ptr noundef %3, ptr noundef %p, i32 noundef 0)
  store i64 %call, ptr %x, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [10 x ptr], ptr %pList, i64 0, i64 %idxprom3
  %5 = load ptr, ptr %arrayidx4, align 8
  %6 = load i64, ptr %x, align 8
  %7 = load ptr, ptr %p, align 8
  %8 = load ptr, ptr %p, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds [10 x ptr], ptr %pList, i64 0, i64 %idxprom5
  %10 = load ptr, ptr %arrayidx6, align 8
  %cmp7 = icmp eq ptr %8, %10
  %11 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, ptr @.str.10, ptr @.str.11
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %cond)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #2

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
