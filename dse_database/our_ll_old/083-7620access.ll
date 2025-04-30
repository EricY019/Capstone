; ModuleID = './code/083-7620access.c'
source_filename = "./code/083-7620access.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"/readable\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"/writeable\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"/allaccess\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"/forbidden\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"/nonexistent\00", align 1
@__const.main.files = private unnamed_addr constant [5 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"F_OK(%s): %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"errno: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"R_OK(%s): %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"X_OK(%s): %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"W_OK(%s): %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %files = alloca [5 x ptr], align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %files, ptr align 8 @__const.main.files, i64 40, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x ptr], ptr %files, i64 0, i64 %idxprom
  %2 = load ptr, ptr %arrayidx, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [5 x ptr], ptr %files, i64 0, i64 %idxprom2
  %4 = load ptr, ptr %arrayidx3, align 8
  %call = call i32 @access(ptr noundef %4, i32 noundef 0)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %2, i32 noundef %call)
  %call5 = call ptr @__error()
  %5 = load i32, ptr %call5, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %5)
  %call7 = call ptr @__error()
  store i32 0, ptr %call7, align 4
  %6 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [5 x ptr], ptr %files, i64 0, i64 %idxprom8
  %7 = load ptr, ptr %arrayidx9, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [5 x ptr], ptr %files, i64 0, i64 %idxprom10
  %9 = load ptr, ptr %arrayidx11, align 8
  %call12 = call i32 @access(ptr noundef %9, i32 noundef 4)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %7, i32 noundef %call12)
  %call14 = call ptr @__error()
  %10 = load i32, ptr %call14, align 4
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %10)
  %call16 = call ptr @__error()
  store i32 0, ptr %call16, align 4
  %11 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [5 x ptr], ptr %files, i64 0, i64 %idxprom17
  %12 = load ptr, ptr %arrayidx18, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [5 x ptr], ptr %files, i64 0, i64 %idxprom19
  %14 = load ptr, ptr %arrayidx20, align 8
  %call21 = call i32 @access(ptr noundef %14, i32 noundef 1)
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %12, i32 noundef %call21)
  %call23 = call ptr @__error()
  %15 = load i32, ptr %call23, align 4
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %15)
  %call25 = call ptr @__error()
  store i32 0, ptr %call25, align 4
  %16 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [5 x ptr], ptr %files, i64 0, i64 %idxprom26
  %17 = load ptr, ptr %arrayidx27, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [5 x ptr], ptr %files, i64 0, i64 %idxprom28
  %19 = load ptr, ptr %arrayidx29, align 8
  %call30 = call i32 @access(ptr noundef %19, i32 noundef 2)
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %17, i32 noundef %call30)
  %call32 = call ptr @__error()
  %20 = load i32, ptr %call32, align 4
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %20)
  %call34 = call ptr @__error()
  store i32 0, ptr %call34, align 4
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

declare i32 @access(ptr noundef, i32 noundef) #2

declare ptr @__error() #2

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
