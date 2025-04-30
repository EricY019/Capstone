; ModuleID = './code/311-26821ex11.c'
source_filename = "./code/311-26821ex11.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [12 x i8] c"arg %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"California\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Oregon\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Washington\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Texas\00", align 1
@__const.main.states = private unnamed_addr constant [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"state %d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %states = alloca [4 x ptr], align 8
  %num_states = alloca i32, align 4
  %y = alloca i32, align 4
  %copies = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %i, align 4
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2, ptr noundef %5)
  %6 = load i32, ptr %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %states, ptr align 8 @__const.main.states, i64 32, i1 false)
  store i32 4, ptr %num_states, align 4
  store i32 0, ptr %y, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %7 = load i32, ptr %y, align 4
  %8 = load i32, ptr %num_states, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %while.body3, label %while.end7

while.body3:                                      ; preds = %while.cond1
  %9 = load i32, ptr %y, align 4
  %10 = load i32, ptr %y, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [4 x ptr], ptr %states, i64 0, i64 %idxprom4
  %11 = load ptr, ptr %arrayidx5, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %9, ptr noundef %11)
  %12 = load i32, ptr %y, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %y, align 4
  br label %while.cond1, !llvm.loop !7

while.end7:                                       ; preds = %while.cond1
  store i32 0, ptr %copies, align 4
  br label %while.cond8

while.cond8:                                      ; preds = %if.end, %while.end7
  %13 = load i32, ptr %copies, align 4
  %14 = load i32, ptr %argc.addr, align 4
  %cmp9 = icmp slt i32 %13, %14
  br i1 %cmp9, label %while.body10, label %while.end17

while.body10:                                     ; preds = %while.cond8
  %15 = load i32, ptr %copies, align 4
  %cmp11 = icmp eq i32 %15, 3
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.body10
  br label %while.end17

if.end:                                           ; preds = %while.body10
  %16 = load ptr, ptr %argv.addr, align 8
  %17 = load i32, ptr %copies, align 4
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds ptr, ptr %16, i64 %idxprom12
  %18 = load ptr, ptr %arrayidx13, align 8
  %19 = load i32, ptr %copies, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [4 x ptr], ptr %states, i64 0, i64 %idxprom14
  store ptr %18, ptr %arrayidx15, align 8
  %20 = load i32, ptr %copies, align 4
  %inc16 = add nsw i32 %20, 1
  store i32 %inc16, ptr %copies, align 4
  br label %while.cond8, !llvm.loop !8

while.end17:                                      ; preds = %if.then, %while.cond8
  store i32 0, ptr %r, align 4
  br label %while.cond18

while.cond18:                                     ; preds = %while.body20, %while.end17
  %21 = load i32, ptr %r, align 4
  %22 = load i32, ptr %num_states, align 4
  %cmp19 = icmp slt i32 %21, %22
  br i1 %cmp19, label %while.body20, label %while.end25

while.body20:                                     ; preds = %while.cond18
  %23 = load i32, ptr %r, align 4
  %24 = load i32, ptr %r, align 4
  %idxprom21 = sext i32 %24 to i64
  %arrayidx22 = getelementptr inbounds [4 x ptr], ptr %states, i64 0, i64 %idxprom21
  %25 = load ptr, ptr %arrayidx22, align 8
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %23, ptr noundef %25)
  %26 = load i32, ptr %r, align 4
  %inc24 = add nsw i32 %26, 1
  store i32 %inc24, ptr %r, align 4
  br label %while.cond18, !llvm.loop !9

while.end25:                                      ; preds = %while.cond18
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

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
