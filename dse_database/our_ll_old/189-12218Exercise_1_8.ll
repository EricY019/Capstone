; ModuleID = './code/189-12218Exercise_1_8.c'
source_filename = "./code/189-12218Exercise_1_8.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.cal = type { [12 x i8], i32 }

@__const.main.c = private unnamed_addr constant [12 x %struct.cal] [%struct.cal { [12 x i8] c"January\00\00\00\00\00", i32 31 }, %struct.cal { [12 x i8] c"Febrav\00\00\00\00\00\00", i32 28 }, %struct.cal { [12 x i8] c"March\00\00\00\00\00\00\00", i32 31 }, %struct.cal { [12 x i8] c"April\00\00\00\00\00\00\00", i32 30 }, %struct.cal { [12 x i8] c"May\00\00\00\00\00\00\00\00\00", i32 31 }, %struct.cal { [12 x i8] c"June\00\00\00\00\00\00\00\00", i32 30 }, %struct.cal { [12 x i8] c"July\00\00\00\00\00\00\00\00", i32 31 }, %struct.cal { [12 x i8] c"August\00\00\00\00\00\00", i32 31 }, %struct.cal { [12 x i8] c"Septem\00\00\00\00\00\00", i32 30 }, %struct.cal { [12 x i8] c"Octobe\00\00\00\00\00\00", i32 31 }, %struct.cal { [12 x i8] c"Novemb\00\00\00\00\00\00", i32 30 }, %struct.cal { [12 x i8] c"Decemb\00\00\00\00\00\00", i32 31 }], align 4
@.str = private unnamed_addr constant [9 x i8] c"%s\09\09 %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Months\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"No. of Days\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s\09\09 %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca [12 x %struct.cal], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %c, ptr align 4 @__const.main.c, i64 192, i1 false)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [12 x %struct.cal], ptr %c, i64 0, i64 %idxprom
  %monthName = getelementptr inbounds %struct.cal, ptr %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [12 x i8], ptr %monthName, i64 0, i64 0
  %2 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [12 x %struct.cal], ptr %c, i64 0, i64 %idxprom1
  %monthDays = getelementptr inbounds %struct.cal, ptr %arrayidx2, i32 0, i32 1
  %3 = load i32, ptr %monthDays, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arraydecay, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
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
