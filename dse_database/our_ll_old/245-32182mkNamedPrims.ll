; ModuleID = './code/245-32182mkNamedPrims.c'
source_filename = "./code/245-32182mkNamedPrims.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [42 x i8] c"/* Automatically generated on %s, %s */\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Dec  5 2024\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"17:46:50\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"extern sqExport vm_exports[];\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"extern sqExport os_exports[];\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"extern sqExport %s_exports[];\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"\0AsqExport *pluginExports[] = {\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\09vm_exports,\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\09os_exports,\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"\09%s_exports,\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"\09NULL\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"};\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  store i32 1, ptr %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc13, %for.end
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %argc.addr, align 4
  %cmp8 = icmp slt i32 %6, %7
  br i1 %cmp8, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond7
  %8 = load ptr, ptr %argv.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %8, i64 %idxprom10
  %10 = load ptr, ptr %arrayidx11, align 8
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %10)
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %11 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, ptr %i, align 4
  br label %for.cond7, !llvm.loop !7

for.end15:                                        ; preds = %for.cond7
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
