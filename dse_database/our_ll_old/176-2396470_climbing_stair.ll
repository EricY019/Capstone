; ModuleID = './code/176-2396470_climbing_stair.c'
source_filename = "./code/176-2396470_climbing_stair.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @climbStairs(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false1

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp eq i32 %2, 2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %3 = load i32, ptr %n.addr, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %4 = load i32, ptr %n.addr, align 4
  %add = add nsw i32 %4, 1
  %5 = zext i32 %add to i64
  %6 = call ptr @llvm.stacksave.p0()
  store ptr %6, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %5, align 4
  store i64 %5, ptr %__vla_expr0, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %n.addr, align 4
  %cmp3 = icmp sle i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %i, align 4
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %cmp6 = icmp eq i32 %10, 2
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %lor.lhs.false5, %for.body
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %11, ptr %arrayidx, align 4
  br label %for.inc

if.end8:                                          ; preds = %lor.lhs.false5
  %13 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %13, 1
  %idxprom9 = sext i32 %sub to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %vla, i64 %idxprom9
  %14 = load i32, ptr %arrayidx10, align 4
  %15 = load i32, ptr %i, align 4
  %sub11 = sub nsw i32 %15, 2
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %vla, i64 %idxprom12
  %16 = load i32, ptr %arrayidx13, align 4
  %add14 = add nsw i32 %14, %16
  %17 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %vla, i64 %idxprom15
  store i32 %add14, ptr %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %if.then7
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %n.addr, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %vla, i64 %idxprom17
  %20 = load i32, ptr %arrayidx18, align 4
  store i32 %20, ptr %retval, align 4
  %21 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %21)
  br label %return

return:                                           ; preds = %for.end, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
