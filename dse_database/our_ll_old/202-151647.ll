; ModuleID = './code/202-151647.c'
source_filename = "./code/202-151647.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@seive = global ptr null, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @distinct(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %prev = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr @seive, align 8
  %1 = load i32, ptr %n.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %x, align 4
  store i32 1, ptr %prev, align 4
  store i32 0, ptr %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i32, ptr %n.addr, align 4
  %cmp = icmp ne i32 %3, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %x, align 4
  %5 = load i32, ptr %prev, align 4
  %cmp1 = icmp ne i32 %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %6 = load i32, ptr %count, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load i32, ptr %x, align 4
  store i32 %7, ptr %prev, align 4
  %8 = load i32, ptr %x, align 4
  %9 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %9, %8
  store i32 %div, ptr %n.addr, align 4
  %10 = load ptr, ptr @seive, align 8
  %11 = load i32, ptr %n.addr, align 4
  %idxprom2 = sext i32 %11 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %10, i64 %idxprom2
  %12 = load i32, ptr %arrayidx3, align 4
  store i32 %12, ptr %x, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %13 = load i32, ptr %count, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %x = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @calloc(i64 noundef 10000000, i64 noundef 4) #3
  store ptr %call, ptr @seive, align 8
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000000
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr @seive, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  store i32 %4, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.then
  %5 = load i32, ptr %j, align 4
  %cmp3 = icmp slt i32 %5, 10000000
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr @seive, align 8
  %8 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %7, i64 %idxprom5
  store i32 %6, ptr %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %j, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, ptr %j, align 4
  br label %for.cond2, !llvm.loop !7

for.end:                                          ; preds = %for.cond2
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc7

for.inc7:                                         ; preds = %if.end
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end8:                                         ; preds = %for.cond
  store i32 0, ptr %c, align 4
  store i32 1, ptr %x, align 4
  store i32 4, ptr %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %for.end8
  %12 = load i32, ptr %c, align 4
  %13 = load i32, ptr %n, align 4
  %cmp9 = icmp ne i32 %12, %13
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, ptr %x, align 4
  %call10 = call i32 @distinct(i32 noundef %14)
  %15 = load i32, ptr %n, align 4
  %cmp11 = icmp eq i32 %call10, %15
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %while.body
  %16 = load i32, ptr %c, align 4
  %inc13 = add nsw i32 %16, 1
  store i32 %inc13, ptr %c, align 4
  br label %if.end14

if.else:                                          ; preds = %while.body
  store i32 0, ptr %c, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %17 = load i32, ptr %x, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, ptr %x, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %18 = load i32, ptr %x, align 4
  %19 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %18, %19
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %sub)
  ret i32 0
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0,1) }

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
