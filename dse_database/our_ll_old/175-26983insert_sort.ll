; ModuleID = './code/175-26983insert_sort.c'
source_filename = "./code/175-26983insert_sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.num = private unnamed_addr constant [8 x i32] [i32 52, i32 38, i32 11, i32 78, i32 90, i32 44, i32 16, i32 27], align 4
@.str = private unnamed_addr constant [6 x i8] c"%d \0A \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insert_sort(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load ptr, ptr %a.addr, align 8
  %3 = load i32, ptr %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load ptr, ptr %a.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, ptr %5, i64 %idxprom1
  %7 = load i32, ptr %arrayidx2, align 4
  %cmp3 = icmp slt i32 %4, %7
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, ptr %j, align 4
  %9 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, ptr %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %j, align 4
  %cmp5 = icmp ne i32 %12, %13
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %14 = load ptr, ptr %a.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %14, i64 %idxprom6
  %16 = load i32, ptr %arrayidx7, align 4
  store i32 %16, ptr %temp, align 4
  %17 = load i32, ptr %i, align 4
  store i32 %17, ptr %k, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.then
  %18 = load i32, ptr %k, align 4
  %19 = load i32, ptr %j, align 4
  %cmp9 = icmp sgt i32 %18, %19
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %20 = load ptr, ptr %a.addr, align 8
  %21 = load i32, ptr %k, align 4
  %sub = sub nsw i32 %21, 1
  %idxprom11 = sext i32 %sub to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %20, i64 %idxprom11
  %22 = load i32, ptr %arrayidx12, align 4
  %23 = load ptr, ptr %a.addr, align 8
  %24 = load i32, ptr %k, align 4
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %23, i64 %idxprom13
  store i32 %22, ptr %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %25 = load i32, ptr %k, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, ptr %k, align 4
  br label %for.cond8, !llvm.loop !7

for.end:                                          ; preds = %for.cond8
  %26 = load i32, ptr %temp, align 4
  %27 = load ptr, ptr %a.addr, align 8
  %28 = load i32, ptr %j, align 4
  %idxprom15 = sext i32 %28 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %27, i64 %idxprom15
  store i32 %26, ptr %arrayidx16, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %while.end
  br label %for.inc17

for.inc17:                                        ; preds = %if.end
  %29 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %29, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end19:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num = alloca [8 x i32], align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %num, ptr align 4 @__const.main.num, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [8 x i32], ptr %num, i64 0, i64 0
  call void @insert_sort(ptr noundef %arraydecay, i32 noundef 8)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr %num, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @"\01_system"(ptr noundef @.str.1)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

declare i32 @"\01_system"(ptr noundef) #2

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
