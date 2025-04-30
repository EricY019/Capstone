; ModuleID = './code/182-26410cutrod.c'
source_filename = "./code/182-26410cutrod.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.p = private unnamed_addr constant [11 x i32] [i32 0, i32 1, i32 5, i32 8, i32 9, i32 10, i32 17, i32 17, i32 20, i32 24, i32 30], align 4
@.str = private unnamed_addr constant [12 x i8] c"the max:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"my cut:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %p = alloca [11 x i32], align 4
  %max = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %p, ptr align 4 @__const.main.p, i64 44, i1 false)
  %arraydecay = getelementptr inbounds [11 x i32], ptr %p, i64 0, i64 0
  %call = call i32 @cut_rod(ptr noundef %arraydecay, i32 noundef 12)
  store i32 %call, ptr %max, align 4
  %0 = load i32, ptr %max, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @cut_rod(ptr noundef %p, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %0)
  store i32 0, ptr %q, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp sle i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %q, align 4
  %5 = load ptr, ptr %p.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load i32, ptr %n.addr, align 4
  %10 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, %10
  %call2 = call i32 @cut_rod(ptr noundef %8, i32 noundef %sub)
  %add = add nsw i32 %7, %call2
  %cmp3 = icmp sgt i32 %4, %add
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load i32, ptr %q, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load ptr, ptr %p.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %12, i64 %idxprom4
  %14 = load i32, ptr %arrayidx5, align 4
  %15 = load ptr, ptr %p.addr, align 8
  %16 = load i32, ptr %n.addr, align 4
  %17 = load i32, ptr %i, align 4
  %sub6 = sub nsw i32 %16, %17
  %call7 = call i32 @cut_rod(ptr noundef %15, i32 noundef %sub6)
  %add8 = add nsw i32 %14, %call7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %add8, %cond.false ]
  store i32 %cond, ptr %q, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %q, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

declare i32 @printf(ptr noundef, ...) #2

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
