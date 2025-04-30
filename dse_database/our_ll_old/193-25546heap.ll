; ModuleID = './code/193-25546heap.c'
source_filename = "./code/193-25546heap.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [14 x i8] c"initialising\0A\00", align 1
@arr = global [1000000 x ptr] zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"running\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nbytes = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %nbytes, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000000 x ptr], ptr @arr, i64 0, i64 %idxprom
  store ptr null, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 -1, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc20, %for.end
  %3 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %3, 3000000
  br i1 %cmp3, label %for.body4, label %for.end22

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, ptr %j, align 4
  %inc5 = add nsw i32 %4, 1
  store i32 %inc5, ptr %j, align 4
  %5 = load i32, ptr %j, align 4
  %cmp6 = icmp eq i32 %5, 1000000
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  store i32 0, ptr %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %6 = load i32, ptr %j, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [1000000 x ptr], ptr @arr, i64 0, i64 %idxprom7
  %7 = load ptr, ptr %arrayidx8, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %8 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [1000000 x ptr], ptr @arr, i64 0, i64 %idxprom10
  %9 = load ptr, ptr %arrayidx11, align 8
  call void @free(ptr noundef %9)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  %10 = load i32, ptr %nbytes, align 4
  %conv = sext i32 %10 to i64
  %call13 = call ptr @malloc(i64 noundef %conv) #3
  %11 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [1000000 x ptr], ptr @arr, i64 0, i64 %idxprom14
  store ptr %call13, ptr %arrayidx15, align 8
  %12 = load i32, ptr %nbytes, align 4
  %add = add nsw i32 %12, 8
  store i32 %add, ptr %nbytes, align 4
  %13 = load i32, ptr %nbytes, align 4
  %cmp16 = icmp sgt i32 %13, 32
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end12
  store i32 0, ptr %nbytes, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end12
  br label %for.inc20

for.inc20:                                        ; preds = %if.end19
  %14 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %14, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond2, !llvm.loop !7

for.end22:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc34, %for.end22
  %15 = load i32, ptr %i, align 4
  %cmp24 = icmp slt i32 %15, 1000000
  br i1 %cmp24, label %for.body26, label %for.end36

for.body26:                                       ; preds = %for.cond23
  %16 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %16 to i64
  %arrayidx28 = getelementptr inbounds [1000000 x ptr], ptr @arr, i64 0, i64 %idxprom27
  %17 = load ptr, ptr %arrayidx28, align 8
  %tobool29 = icmp ne ptr %17, null
  br i1 %tobool29, label %if.then30, label %if.end33

if.then30:                                        ; preds = %for.body26
  %18 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %18 to i64
  %arrayidx32 = getelementptr inbounds [1000000 x ptr], ptr @arr, i64 0, i64 %idxprom31
  %19 = load ptr, ptr %arrayidx32, align 8
  call void @free(ptr noundef %19)
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %for.body26
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %20 = load i32, ptr %i, align 4
  %inc35 = add nsw i32 %20, 1
  store i32 %inc35, ptr %i, align 4
  br label %for.cond23, !llvm.loop !8

for.end36:                                        ; preds = %for.cond23
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare void @free(ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
