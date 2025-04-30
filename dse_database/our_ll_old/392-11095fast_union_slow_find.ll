; ModuleID = './code/392-11095fast_union_slow_find.c'
source_filename = "./code/392-11095fast_union_slow_find.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%d is the parent of 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @makeSet(ptr noundef %S, i32 noundef %size) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %S, ptr %S.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %S.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  store i32 %2, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @find(ptr noundef %S, i32 noundef %size, i32 noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %S.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store ptr %S, ptr %S.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4
  %2 = load i32, ptr %size.addr, align 4
  %cmp1 = icmp sge i32 %1, %2
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %S.addr, align 8
  %4 = load i32, ptr %x.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %6 = load i32, ptr %x.addr, align 4
  %cmp2 = icmp eq i32 %5, %6
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %7 = load i32, ptr %x.addr, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %S.addr, align 8
  %9 = load i32, ptr %size.addr, align 4
  %10 = load ptr, ptr %S.addr, align 8
  %11 = load i32, ptr %x.addr, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %10, i64 %idxprom5
  %12 = load i32, ptr %arrayidx6, align 4
  %call = call i32 @find(ptr noundef %8, i32 noundef %9, i32 noundef %12)
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @Union(ptr noundef %S, i32 noundef %root1, i32 noundef %root2, i32 noundef %size) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %root1.addr = alloca i32, align 4
  %root2.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store ptr %S, ptr %S.addr, align 8
  store i32 %root1, ptr %root1.addr, align 4
  store i32 %root2, ptr %root2.addr, align 4
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %S.addr, align 8
  %1 = load i32, ptr %size.addr, align 4
  %2 = load i32, ptr %root1.addr, align 4
  %call = call i32 @find(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  %3 = load ptr, ptr %S.addr, align 8
  %4 = load i32, ptr %size.addr, align 4
  %5 = load i32, ptr %root2.addr, align 4
  %call1 = call i32 @find(ptr noundef %3, i32 noundef %4, i32 noundef %5)
  %cmp = icmp eq i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %root1.addr, align 4
  %cmp2 = icmp slt i32 %6, 0
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, ptr %root1.addr, align 4
  %8 = load i32, ptr %size.addr, align 4
  %cmp3 = icmp sgt i32 %7, %8
  br i1 %cmp3, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %9 = load i32, ptr %root2.addr, align 4
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %land.lhs.true
  %10 = load i32, ptr %root2.addr, align 4
  %11 = load i32, ptr %size.addr, align 4
  %cmp6 = icmp sgt i32 %10, %11
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false5, %land.lhs.true
  br label %return

if.end8:                                          ; preds = %lor.lhs.false5, %lor.lhs.false
  %12 = load i32, ptr %root2.addr, align 4
  %13 = load ptr, ptr %S.addr, align 8
  %14 = load i32, ptr %root1.addr, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, ptr %13, i64 %idxprom
  store i32 %12, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @display(ptr noundef %S, i32 noundef %size) #0 {
entry:
  %S.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %S, ptr %S.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %S.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %S = alloca [8 x i32], align 4
  %p = alloca i32, align 4
  %arraydecay = getelementptr inbounds [8 x i32], ptr %S, i64 0, i64 0
  call void @makeSet(ptr noundef %arraydecay, i32 noundef 8)
  %arraydecay1 = getelementptr inbounds [8 x i32], ptr %S, i64 0, i64 0
  call void @Union(ptr noundef %arraydecay1, i32 noundef 5, i32 noundef 6, i32 noundef 8)
  %arraydecay2 = getelementptr inbounds [8 x i32], ptr %S, i64 0, i64 0
  call void @Union(ptr noundef %arraydecay2, i32 noundef 1, i32 noundef 2, i32 noundef 8)
  %arraydecay3 = getelementptr inbounds [8 x i32], ptr %S, i64 0, i64 0
  call void @Union(ptr noundef %arraydecay3, i32 noundef 0, i32 noundef 2, i32 noundef 8)
  %arraydecay4 = getelementptr inbounds [8 x i32], ptr %S, i64 0, i64 0
  call void @Union(ptr noundef %arraydecay4, i32 noundef 2, i32 noundef 3, i32 noundef 8)
  %arraydecay5 = getelementptr inbounds [8 x i32], ptr %S, i64 0, i64 0
  call void @display(ptr noundef %arraydecay5, i32 noundef 8)
  %arraydecay6 = getelementptr inbounds [8 x i32], ptr %S, i64 0, i64 0
  %call = call i32 @find(ptr noundef %arraydecay6, i32 noundef 8, i32 noundef 0)
  store i32 %call, ptr %p, align 4
  %0 = load i32, ptr %p, align 4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %0)
  ret i32 0
}

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
