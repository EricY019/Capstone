; ModuleID = './code/009-20916bubble_sort.c'
source_filename = "./code/009-20916bubble_sort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.a = private unnamed_addr constant [10 x i32] [i32 23, i32 45, i32 11, i32 24, i32 67, i32 89, i32 6, i32 3, i32 55, i32 77], align 4
@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [10 x i32], align 4
  %size = alloca i32, align 4
  %pass = alloca i32, align 4
  %temp = alloca i32, align 4
  %comp = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 4 @__const.main.a, i64 40, i1 false)
  store i32 9, ptr %size, align 4
  store i32 0, ptr %pass, align 4
  store i32 0, ptr %temp, align 4
  store i32 0, ptr %comp, align 4
  store i32 1, ptr %pass, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %pass, align 4
  %1 = load i32, ptr %size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %comp, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %comp, align 4
  %3 = load i32, ptr %size, align 4
  %4 = load i32, ptr %pass, align 4
  %sub = sub nsw i32 %3, %4
  %cmp2 = icmp slt i32 %2, %sub
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, ptr %comp, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %7 = load i32, ptr %comp, align 4
  %add = add nsw i32 %7, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 %idxprom4
  %8 = load i32, ptr %arrayidx5, align 4
  %cmp6 = icmp sgt i32 %6, %8
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %9 = load i32, ptr %comp, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 %idxprom7
  %10 = load i32, ptr %arrayidx8, align 4
  store i32 %10, ptr %temp, align 4
  %11 = load i32, ptr %comp, align 4
  %add9 = add nsw i32 %11, 1
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 %idxprom10
  %12 = load i32, ptr %arrayidx11, align 4
  %13 = load i32, ptr %comp, align 4
  %idxprom12 = sext i32 %13 to i64
  %arrayidx13 = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 %idxprom12
  store i32 %12, ptr %arrayidx13, align 4
  %14 = load i32, ptr %temp, align 4
  %15 = load i32, ptr %comp, align 4
  %add14 = add nsw i32 %15, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 %idxprom15
  store i32 %14, ptr %arrayidx16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %comp, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %comp, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %17 = load i32, ptr %pass, align 4
  %inc18 = add nsw i32 %17, 1
  store i32 %inc18, ptr %pass, align 4
  br label %for.cond, !llvm.loop !7

for.end19:                                        ; preds = %for.cond
  store i32 0, ptr %pass, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc25, %for.end19
  %18 = load i32, ptr %pass, align 4
  %cmp21 = icmp slt i32 %18, 10
  br i1 %cmp21, label %for.body22, label %for.end27

for.body22:                                       ; preds = %for.cond20
  %19 = load i32, ptr %pass, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 %idxprom23
  %20 = load i32, ptr %arrayidx24, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %20)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body22
  %21 = load i32, ptr %pass, align 4
  %inc26 = add nsw i32 %21, 1
  store i32 %inc26, ptr %pass, align 4
  br label %for.cond20, !llvm.loop !8

for.end27:                                        ; preds = %for.cond20
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
