; ModuleID = './code/276-33239pthread.c'
source_filename = "./code/276-33239pthread.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__stdoutp = external global ptr, align 8
@__stderrp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"ERROR code %d calling pthread_create\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Error joining pthread\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @count_to_ten(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %ii = alloca i32, align 4
  %jj = alloca i32, align 4
  %buffer = alloca [100 x i8], align 1
  %tabs = alloca [20 x i8], align 1
  %skip = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %tabs, i8 0, i64 20, i1 false)
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %skip, align 4
  store i32 0, ptr %jj, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %jj, align 4
  %3 = load i32, ptr %skip, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [20 x i8], ptr %tabs, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [20 x i8], ptr %tabs, i64 0, i64 0
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 20, ptr noundef @.str, ptr noundef %arraydecay1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %jj, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %jj, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %ii, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc12, %for.end
  %5 = load i32, ptr %ii, align 4
  %cmp3 = icmp slt i32 %5, 10
  br i1 %cmp3, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond2
  %arraydecay5 = getelementptr inbounds [100 x i8], ptr %buffer, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [20 x i8], ptr %tabs, i64 0, i64 0
  %6 = load i32, ptr %ii, align 4
  %call7 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay5, i32 noundef 0, i64 noundef 100, ptr noundef @.str.1, ptr noundef %arraydecay6, i32 noundef %6)
  %arraydecay8 = getelementptr inbounds [100 x i8], ptr %buffer, i64 0, i64 0
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay8)
  %7 = load ptr, ptr @__stdoutp, align 8
  %call10 = call i32 @fflush(ptr noundef %7)
  %call11 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body4
  %8 = load i32, ptr %ii, align 4
  %inc13 = add nsw i32 %8, 1
  store i32 %inc13, ptr %ii, align 4
  br label %for.cond2, !llvm.loop !7

for.end14:                                        ; preds = %for.cond2
  ret ptr null
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

declare i32 @fflush(ptr noundef) #2

declare i32 @"\01_sleep"(i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ii = alloca i32, align 4
  %rc = alloca i32, align 4
  %num = alloca [6 x i32], align 4
  %new_thread = alloca [6 x ptr], align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ii, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %ii, align 4
  %2 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [6 x i32], ptr %num, i64 0, i64 %idxprom
  store i32 %1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %ii, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.end
  %4 = load i32, ptr %ii, align 4
  %cmp2 = icmp slt i32 %4, 6
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, ptr %ii, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [6 x ptr], ptr %new_thread, i64 0, i64 %idxprom4
  %6 = load i32, ptr %ii, align 4
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [6 x i32], ptr %num, i64 0, i64 %idxprom6
  %call = call i32 @pthread_create(ptr noundef %arrayidx5, ptr noundef null, ptr noundef @count_to_ten, ptr noundef %arrayidx7)
  store i32 %call, ptr %rc, align 4
  %cmp8 = icmp ne i32 %call, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %7 = load ptr, ptr @__stderrp, align 8
  %8 = load i32, ptr %rc, align 4
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.3, i32 noundef %8) #4
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body3
  br label %for.inc10

for.inc10:                                        ; preds = %if.end
  %9 = load i32, ptr %ii, align 4
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %ii, align 4
  br label %for.cond1, !llvm.loop !9

for.end12:                                        ; preds = %for.cond1
  store i32 0, ptr %ii, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc23, %for.end12
  %10 = load i32, ptr %ii, align 4
  %cmp14 = icmp slt i32 %10, 6
  br i1 %cmp14, label %for.body15, label %for.end25

for.body15:                                       ; preds = %for.cond13
  %11 = load i32, ptr %ii, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [6 x ptr], ptr %new_thread, i64 0, i64 %idxprom16
  %12 = load ptr, ptr %arrayidx17, align 8
  %call18 = call i32 @"\01_pthread_join"(ptr noundef %12, ptr noundef null)
  %cmp19 = icmp ne i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.body15
  %13 = load ptr, ptr @__stderrp, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.4) #4
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %for.body15
  br label %for.inc23

for.inc23:                                        ; preds = %if.end22
  %14 = load i32, ptr %ii, align 4
  %inc24 = add nsw i32 %14, 1
  store i32 %inc24, ptr %ii, align 4
  br label %for.cond13, !llvm.loop !10

for.end25:                                        ; preds = %for.cond13
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end25, %if.then20, %if.then
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
