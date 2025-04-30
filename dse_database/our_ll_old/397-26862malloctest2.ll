; ModuleID = './code/397-26862malloctest2.c'
source_filename = "./code/397-26862malloctest2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.slot = type { ptr, i64 }

@s = global [4096 x %struct.slot] zeroinitializer, align 8
@.str = private unnamed_addr constant [28 x i8] c"Freed     %8zu bytes at %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Allocated %8zu bytes at %p, ok = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sp = alloca i64, align 8
  %sq = alloca i64, align 8
  %p = alloca ptr, align 8
  %ep = alloca ptr, align 8
  %q = alloca ptr, align 8
  %eq = alloca ptr, align 8
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ok = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %err, align 4
  store i32 0, ptr %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc59, %entry
  %0 = load i32, ptr %r, align 4
  %cmp = icmp slt i32 %0, 32768
  br i1 %cmp, label %for.body, label %for.end61

for.body:                                         ; preds = %for.cond
  %call = call i64 @lrand48()
  %rem = srem i64 %call, 4096
  %conv = trunc i64 %rem to i32
  store i32 %conv, ptr %i, align 4
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4096 x %struct.slot], ptr @s, i64 0, i64 %idxprom
  %ptr = getelementptr inbounds %struct.slot, ptr %arrayidx, i32 0, i32 0
  %2 = load ptr, ptr %ptr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [4096 x %struct.slot], ptr @s, i64 0, i64 %idxprom1
  %ptr3 = getelementptr inbounds %struct.slot, ptr %arrayidx2, i32 0, i32 0
  %4 = load ptr, ptr %ptr3, align 8
  call void @free(ptr noundef %4)
  %5 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [4096 x %struct.slot], ptr @s, i64 0, i64 %idxprom4
  %size = getelementptr inbounds %struct.slot, ptr %arrayidx5, i32 0, i32 1
  %6 = load i64, ptr %size, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [4096 x %struct.slot], ptr @s, i64 0, i64 %idxprom6
  %ptr8 = getelementptr inbounds %struct.slot, ptr %arrayidx7, i32 0, i32 0
  %8 = load ptr, ptr %ptr8, align 8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %6, ptr noundef %8)
  %9 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [4096 x %struct.slot], ptr @s, i64 0, i64 %idxprom10
  %ptr12 = getelementptr inbounds %struct.slot, ptr %arrayidx11, i32 0, i32 0
  store ptr null, ptr %ptr12, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [4096 x %struct.slot], ptr @s, i64 0, i64 %idxprom13
  %size15 = getelementptr inbounds %struct.slot, ptr %arrayidx14, i32 0, i32 1
  store i64 0, ptr %size15, align 8
  br label %if.end58

if.else:                                          ; preds = %for.body
  %call16 = call i64 @lrand48()
  store i64 %call16, ptr %sp, align 8
  %call17 = call i64 @lrand48()
  %rem18 = srem i64 %call17, 20
  %add = add nsw i64 12, %rem18
  %11 = load i64, ptr %sp, align 8
  %shr = lshr i64 %11, %add
  store i64 %shr, ptr %sp, align 8
  %12 = load i64, ptr %sp, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [4096 x %struct.slot], ptr @s, i64 0, i64 %idxprom19
  %size21 = getelementptr inbounds %struct.slot, ptr %arrayidx20, i32 0, i32 1
  store i64 %12, ptr %size21, align 8
  %14 = load i64, ptr %sp, align 8
  %call22 = call ptr @malloc(i64 noundef %14) #5
  store ptr %call22, ptr %p, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [4096 x %struct.slot], ptr @s, i64 0, i64 %idxprom23
  %ptr25 = getelementptr inbounds %struct.slot, ptr %arrayidx24, i32 0, i32 0
  store ptr %call22, ptr %ptr25, align 8
  %16 = load ptr, ptr %p, align 8
  %17 = load i64, ptr %sp, align 8
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %17
  store ptr %add.ptr, ptr %ep, align 8
  store i32 1, ptr %ok, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %if.else
  %18 = load i32, ptr %j, align 4
  %cmp27 = icmp slt i32 %18, 4096
  br i1 %cmp27, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.cond26
  %19 = load i32, ptr %j, align 4
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds [4096 x %struct.slot], ptr @s, i64 0, i64 %idxprom30
  %ptr32 = getelementptr inbounds %struct.slot, ptr %arrayidx31, i32 0, i32 0
  %20 = load ptr, ptr %ptr32, align 8
  store ptr %20, ptr %q, align 8
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %j, align 4
  %cmp33 = icmp ne i32 %21, %22
  br i1 %cmp33, label %land.lhs.true, label %if.end52

land.lhs.true:                                    ; preds = %for.body29
  %23 = load ptr, ptr %q, align 8
  %tobool35 = icmp ne ptr %23, null
  br i1 %tobool35, label %if.then36, label %if.end52

if.then36:                                        ; preds = %land.lhs.true
  %24 = load i32, ptr %j, align 4
  %idxprom37 = sext i32 %24 to i64
  %arrayidx38 = getelementptr inbounds [4096 x %struct.slot], ptr @s, i64 0, i64 %idxprom37
  %size39 = getelementptr inbounds %struct.slot, ptr %arrayidx38, i32 0, i32 1
  %25 = load i64, ptr %size39, align 8
  store i64 %25, ptr %sq, align 8
  %26 = load ptr, ptr %q, align 8
  %27 = load i64, ptr %sq, align 8
  %add.ptr40 = getelementptr inbounds i8, ptr %26, i64 %27
  store ptr %add.ptr40, ptr %eq, align 8
  %28 = load ptr, ptr %p, align 8
  %29 = load ptr, ptr %q, align 8
  %cmp41 = icmp ult ptr %28, %29
  br i1 %cmp41, label %land.lhs.true43, label %lor.lhs.false

land.lhs.true43:                                  ; preds = %if.then36
  %30 = load ptr, ptr %ep, align 8
  %31 = load ptr, ptr %q, align 8
  %cmp44 = icmp ugt ptr %30, %31
  br i1 %cmp44, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true43, %if.then36
  %32 = load ptr, ptr %p, align 8
  %33 = load ptr, ptr %q, align 8
  %cmp46 = icmp uge ptr %32, %33
  br i1 %cmp46, label %land.lhs.true48, label %if.end

land.lhs.true48:                                  ; preds = %lor.lhs.false
  %34 = load ptr, ptr %p, align 8
  %35 = load ptr, ptr %eq, align 8
  %cmp49 = icmp ult ptr %34, %35
  br i1 %cmp49, label %if.then51, label %if.end

if.then51:                                        ; preds = %land.lhs.true48, %land.lhs.true43
  store i32 0, ptr %ok, align 4
  store i32 1, ptr %err, align 4
  br label %for.end

if.end:                                           ; preds = %land.lhs.true48, %lor.lhs.false
  br label %if.end52

if.end52:                                         ; preds = %if.end, %land.lhs.true, %for.body29
  br label %for.inc

for.inc:                                          ; preds = %if.end52
  %36 = load i32, ptr %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond26, !llvm.loop !5

for.end:                                          ; preds = %if.then51, %for.cond26
  %37 = load i64, ptr %sp, align 8
  %38 = load ptr, ptr %p, align 8
  %39 = load i32, ptr %ok, align 4
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %37, ptr noundef %38, i32 noundef %39)
  %40 = load ptr, ptr %p, align 8
  %tobool54 = icmp ne ptr %40, null
  br i1 %tobool54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %for.end
  %41 = load ptr, ptr %p, align 8
  %42 = load i64, ptr %sp, align 8
  %43 = load ptr, ptr %p, align 8
  %44 = call i64 @llvm.objectsize.i64.p0(ptr %43, i1 false, i1 true, i1 false)
  %call56 = call ptr @__memset_chk(ptr noundef %41, i32 noundef 238, i64 noundef %42, i64 noundef %44) #6
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %for.end
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %45 = load i32, ptr %r, align 4
  %inc60 = add nsw i32 %45, 1
  store i32 %inc60, ptr %r, align 4
  br label %for.cond, !llvm.loop !7

for.end61:                                        ; preds = %for.cond
  %46 = load i32, ptr %err, align 4
  ret i32 %46
}

declare i64 @lrand48() #1

declare void @free(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

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
