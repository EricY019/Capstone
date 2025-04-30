; ModuleID = './code/218-33366priority_queue_my1.0.c'
source_filename = "./code/218-33366priority_queue_my1.0.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@start = global i32 0, align 4
@end = global i32 0, align 4
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [26 x i8] c"\E4\B8\8D\E8\83\BD\E6\B7\BB\E5\8A\A0\E5\85\83\E7\B4\A0\E4\BA\86\EF\BC\81\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\E8\B6\85\E8\BF\87\E5\BE\97\E6\9B\B4\E5\A4\9A\E4\BA\86!\0A\00", align 1
@queue = global [1000000 x i32] zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"queue is empty, nothing will be pop!\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"end\E5\8F\AF\E4\BB\A5\E8\B5\B0\E5\88\B0start\E7\9A\84\E5\89\8D\E9\9D\A2\EF\BC\8C\E8\BF\99\E4\B8\8D\E5\8F\AF\E8\83\BD\EF\BC\81\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"size = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"start=%d end=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @push(i32 noundef %element) #0 {
entry:
  %element.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %element, ptr %element.addr, align 4
  %0 = load i32, ptr @end, align 4
  %cmp = icmp eq i32 %0, 1000000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str) #3
  br label %if.end22

if.else:                                          ; preds = %entry
  %2 = load i32, ptr @end, align 4
  %cmp1 = icmp sgt i32 %2, 1000000
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %3 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.1) #3
  br label %if.end

if.else4:                                         ; preds = %if.else
  %4 = load i32, ptr @start, align 4
  store i32 %4, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else4
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr @end, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %element.addr, align 4
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1000000 x i32], ptr @queue, i64 0, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4
  %cmp6 = icmp sgt i32 %7, %9
  br i1 %cmp6, label %if.then7, label %if.else8

if.then7:                                         ; preds = %for.body
  br label %for.inc

if.else8:                                         ; preds = %for.body
  br label %for.end

for.inc:                                          ; preds = %if.then7
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.else8, %for.cond
  %11 = load i32, ptr @end, align 4
  %inc9 = add nsw i32 %11, 1
  store i32 %inc9, ptr @end, align 4
  %12 = load i32, ptr @end, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc18, %for.end
  %13 = load i32, ptr %j, align 4
  %14 = load i32, ptr %i, align 4
  %cmp11 = icmp sgt i32 %13, %14
  br i1 %cmp11, label %for.body12, label %for.end19

for.body12:                                       ; preds = %for.cond10
  %15 = load i32, ptr %j, align 4
  %sub13 = sub nsw i32 %15, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds [1000000 x i32], ptr @queue, i64 0, i64 %idxprom14
  %16 = load i32, ptr %arrayidx15, align 4
  %17 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [1000000 x i32], ptr @queue, i64 0, i64 %idxprom16
  store i32 %16, ptr %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body12
  %18 = load i32, ptr %j, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond10, !llvm.loop !7

for.end19:                                        ; preds = %for.cond10
  %19 = load i32, ptr %element.addr, align 4
  %20 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %arrayidx21 = getelementptr inbounds [1000000 x i32], ptr @queue, i64 0, i64 %idxprom20
  store i32 %19, ptr %arrayidx21, align 4
  br label %if.end

if.end:                                           ; preds = %for.end19, %if.then2
  br label %if.end22

if.end22:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @pop() #0 {
entry:
  %0 = load i32, ptr @start, align 4
  %1 = load i32, ptr @end, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.2) #3
  br label %if.end5

if.else:                                          ; preds = %entry
  %3 = load i32, ptr @start, align 4
  %4 = load i32, ptr @end, align 4
  %cmp1 = icmp sgt i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.3) #3
  br label %if.end

if.else4:                                         ; preds = %if.else
  %6 = load i32, ptr @start, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr @start, align 4
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @front() #0 {
entry:
  %0 = load i32, ptr @start, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1000000 x i32], ptr @queue, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @empty() #0 {
entry:
  %0 = load i32, ptr @start, align 4
  %1 = load i32, ptr @end, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @size() #0 {
entry:
  %0 = load i32, ptr @end, align 4
  %1 = load i32, ptr @start, align 4
  %sub = sub nsw i32 %0, %1
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, ptr @start, align 4
  %1 = load i32, ptr @end, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.2) #3
  br label %if.end8

if.else:                                          ; preds = %entry
  %3 = load i32, ptr @start, align 4
  %4 = load i32, ptr @end, align 4
  %cmp1 = icmp sgt i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.3) #3
  br label %if.end8

if.else4:                                         ; preds = %if.else
  %6 = load i32, ptr @start, align 4
  store i32 %6, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else4
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr @end, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [1000000 x i32], ptr @queue, i64 0, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end

if.end:                                           ; preds = %for.end
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then2, %if.end
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @push(i32 noundef 1)
  call void @print()
  %call = call i32 @size()
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %call)
  call void @push(i32 noundef 2)
  call void @print()
  %call2 = call i32 @size()
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %call2)
  call void @push(i32 noundef 3)
  call void @print()
  %call4 = call i32 @size()
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %call4)
  call void @pop()
  call void @print()
  %call6 = call i32 @size()
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %call6)
  call void @pop()
  call void @print()
  %call8 = call i32 @size()
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %call8)
  call void @pop()
  call void @print()
  %call10 = call i32 @size()
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %call10)
  call void @pop()
  call void @print()
  %call12 = call i32 @size()
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %call12)
  call void @pop()
  call void @print()
  %call14 = call i32 @size()
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %call14)
  %0 = load i32, ptr @start, align 4
  %1 = load i32, ptr @end, align 4
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %0, i32 noundef %1)
  call void @push(i32 noundef 4)
  call void @push(i32 noundef 9)
  call void @print()
  %call17 = call i32 @size()
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %call17)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

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
