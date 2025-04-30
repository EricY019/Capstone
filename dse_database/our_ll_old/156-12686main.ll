; ModuleID = './code/156-12686main.c'
source_filename = "./code/156-12686main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [17 x i8] c"Hello world! %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @validate(i32 noundef %number) #0 {
entry:
  %number.addr = alloca i32, align 4
  %res = alloca i32, align 4
  %count = alloca [5 x i32], align 4
  %digit = alloca i32, align 4
  store i32 %number, ptr %number.addr, align 4
  store i32 1, ptr %res, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %count, i8 0, i64 20, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %number.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %number.addr, align 4
  %rem = srem i32 %1, 10
  store i32 %rem, ptr %digit, align 4
  %2 = load i32, ptr %digit, align 4
  %rem1 = srem i32 %2, 2
  %cmp2 = icmp ne i32 %rem1, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 0, ptr %res, align 4
  br label %while.end

if.else:                                          ; preds = %while.body
  %3 = load i32, ptr %digit, align 4
  %sub = sub nsw i32 %3, 1
  %div = sdiv i32 %sub, 2
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr %count, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  %5 = load i32, ptr %number.addr, align 4
  %div3 = sdiv i32 %5, 10
  store i32 %div3, ptr %number.addr, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %if.then, %while.cond
  %arrayidx4 = getelementptr inbounds [5 x i32], ptr %count, i64 0, i64 0
  %6 = load i32, ptr %arrayidx4, align 4
  %rem5 = srem i32 %6, 2
  %cmp6 = icmp eq i32 %rem5, 1
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %arrayidx7 = getelementptr inbounds [5 x i32], ptr %count, i64 0, i64 1
  %7 = load i32, ptr %arrayidx7, align 4
  %rem8 = srem i32 %7, 2
  %cmp9 = icmp eq i32 %rem8, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %while.end
  store i32 0, ptr %res, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %8 = load i32, ptr %res, align 4
  ret i32 %8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ctr = alloca i32, align 4
  %have = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %have, align 4
  store i32 11111111, ptr %ctr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ctr, align 4
  %cmp = icmp slt i32 %0, 100000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %ctr, align 4
  %call = call i32 @validate(i32 noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %have, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %have, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %ctr, align 4
  %inc1 = add nsw i32 %3, 1
  store i32 %inc1, ptr %ctr, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %have, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!7 = distinct !{!7, !6}
