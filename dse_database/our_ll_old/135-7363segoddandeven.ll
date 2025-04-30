; ModuleID = './code/135-7363segoddandeven.c'
source_filename = "./code/135-7363segoddandeven.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__const.main.a = private unnamed_addr constant [10 x i32] [i32 2, i32 2, i32 2, i32 5, i32 8, i32 1, i32 1, i32 4, i32 1, i32 0], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @seg(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %i, align 4
  %0 = load i32, ptr %n.addr, align 4
  store i32 %0, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end26

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body4, %while.body
  %3 = load ptr, ptr %a.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %rem = srem i32 %5, 2
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %j, align 4
  %cmp3 = icmp slt i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %8 = phi i1 [ false, %while.cond1 ], [ %cmp3, %land.rhs ]
  br i1 %8, label %while.body4, label %while.end

while.body4:                                      ; preds = %land.end
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond1, !llvm.loop !5

while.end:                                        ; preds = %land.end
  br label %while.cond5

while.cond5:                                      ; preds = %while.body13, %while.end
  %10 = load ptr, ptr %a.addr, align 8
  %11 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %10, i64 %idxprom6
  %12 = load i32, ptr %arrayidx7, align 4
  %rem8 = srem i32 %12, 2
  %cmp9 = icmp eq i32 %rem8, 1
  br i1 %cmp9, label %land.rhs10, label %land.end12

land.rhs10:                                       ; preds = %while.cond5
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %j, align 4
  %cmp11 = icmp slt i32 %13, %14
  br label %land.end12

land.end12:                                       ; preds = %land.rhs10, %while.cond5
  %15 = phi i1 [ false, %while.cond5 ], [ %cmp11, %land.rhs10 ]
  br i1 %15, label %while.body13, label %while.end14

while.body13:                                     ; preds = %land.end12
  %16 = load i32, ptr %j, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %j, align 4
  br label %while.cond5, !llvm.loop !7

while.end14:                                      ; preds = %land.end12
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %j, align 4
  %cmp15 = icmp slt i32 %17, %18
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %while.end14
  %19 = load ptr, ptr %a.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %19, i64 %idxprom16
  %21 = load i32, ptr %arrayidx17, align 4
  store i32 %21, ptr %temp, align 4
  %22 = load ptr, ptr %a.addr, align 8
  %23 = load i32, ptr %j, align 4
  %idxprom18 = sext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %22, i64 %idxprom18
  %24 = load i32, ptr %arrayidx19, align 4
  %25 = load ptr, ptr %a.addr, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %25, i64 %idxprom20
  store i32 %24, ptr %arrayidx21, align 4
  %27 = load i32, ptr %temp, align 4
  %28 = load ptr, ptr %a.addr, align 8
  %29 = load i32, ptr %j, align 4
  %idxprom22 = sext i32 %29 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %28, i64 %idxprom22
  store i32 %27, ptr %arrayidx23, align 4
  %30 = load i32, ptr %i, align 4
  %inc24 = add nsw i32 %30, 1
  store i32 %inc24, ptr %i, align 4
  %31 = load i32, ptr %j, align 4
  %dec25 = add nsw i32 %31, -1
  store i32 %dec25, ptr %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end14
  br label %while.cond, !llvm.loop !8

while.end26:                                      ; preds = %while.cond
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end26
  %32 = load i32, ptr %i, align 4
  %33 = load i32, ptr %n.addr, align 4
  %cmp27 = icmp slt i32 %32, %33
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load ptr, ptr %a.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %34, i64 %idxprom28
  %36 = load i32, ptr %arrayidx29, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %36)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %37, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [10 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 4 @__const.main.a, i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 0
  call void @seg(ptr noundef %arraydecay, i32 noundef 8)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
