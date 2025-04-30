; ModuleID = './code/197-9828declare-vla.c'
source_filename = "./code/197-9828declare-vla.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__func__.f = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str = private unnamed_addr constant [22 x i8] c"197-9828declare-vla.c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"A[i] == i\00", align 1
@__func__.f_data = private unnamed_addr constant [7 x i8] c"f_data\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f() #0 {
entry:
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 1000, ptr %N, align 4
  %0 = load i32, ptr %N, align 4
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 4
  store i64 %1, ptr %__vla_expr0, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %N, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %sub = sub nsw i32 0, %5
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %sub, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %N, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %vla, i64 %idxprom4
  store i32 %10, ptr %arrayidx5, align 4
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %12 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end8:                                         ; preds = %for.cond1
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end8
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %N, align 4
  %cmp10 = icmp slt i32 %13, %14
  br i1 %cmp10, label %for.body11, label %for.end17

for.body11:                                       ; preds = %for.cond9
  %15 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %vla, i64 %idxprom12
  %16 = load i32, ptr %arrayidx13, align 4
  %17 = load i32, ptr %i, align 4
  %cmp14 = icmp eq i32 %16, %17
  %lnot = xor i1 %cmp14, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body11
  call void @__assert_rtn(ptr noundef @__func__.f, ptr noundef @.str, i32 noundef 23, ptr noundef @.str.1) #3
  unreachable

18:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.body11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %18
  br label %for.inc15

for.inc15:                                        ; preds = %cond.end
  %19 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %19, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond9, !llvm.loop !8

for.end17:                                        ; preds = %for.cond9
  %20 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %20)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f_data() #0 {
entry:
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 1000, ptr %N, align 4
  %0 = load i32, ptr %N, align 4
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 4
  store i64 %1, ptr %__vla_expr0, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %N, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %sub = sub nsw i32 0, %5
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %sub, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %N, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %vla, i64 %idxprom4
  store i32 %10, ptr %arrayidx5, align 4
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %12 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %12, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond1, !llvm.loop !10

for.end8:                                         ; preds = %for.cond1
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end8
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %N, align 4
  %cmp10 = icmp slt i32 %13, %14
  br i1 %cmp10, label %for.body11, label %for.end17

for.body11:                                       ; preds = %for.cond9
  %15 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %vla, i64 %idxprom12
  %16 = load i32, ptr %arrayidx13, align 4
  %17 = load i32, ptr %i, align 4
  %cmp14 = icmp eq i32 %16, %17
  %lnot = xor i1 %cmp14, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body11
  call void @__assert_rtn(ptr noundef @__func__.f_data, ptr noundef @.str, i32 noundef 54, ptr noundef @.str.1) #3
  unreachable

18:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.body11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %18
  br label %for.inc15

for.inc15:                                        ; preds = %cond.end
  %19 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %19, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond9, !llvm.loop !11

for.end17:                                        ; preds = %for.cond9
  %20 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %20)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @f()
  call void @f_data()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold noreturn }

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
!11 = distinct !{!11, !6}
