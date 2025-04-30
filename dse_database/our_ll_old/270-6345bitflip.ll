; ModuleID = './code/270-6345bitflip.c'
source_filename = "./code/270-6345bitflip.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.timespec = type { i64, i64 }

@ITERATIONS = constant i32 100000, align 4
@LENGTH = constant i32 65536, align 4
@.str = private unnamed_addr constant [19 x i8] c"C-char[], %u, %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %length = alloca i32, align 4
  %start = alloca %struct.timespec, align 8
  %stop = alloca %struct.timespec, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %i5 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 16, ptr %length, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc25, %entry
  %0 = load i32, ptr %length, align 4
  %cmp = icmp ule i32 %0, 65536
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %length, align 4
  %2 = zext i32 %1 to i64
  %3 = call ptr @llvm.stacksave.p0()
  store ptr %3, ptr %saved_stack, align 8
  %vla = alloca i8, i64 %2, align 1
  store i64 %2, ptr %__vla_expr0, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %length, align 4
  %cmp2 = icmp ult i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand()
  %and = and i32 %call, 1
  %conv = trunc i32 %and to i8
  %6 = load i32, ptr %i, align 4
  %idxprom = zext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, ptr %vla, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %7 = load i32, ptr %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %call4 = call i32 @clock_gettime(i32 noundef 0, ptr noundef %start)
  store i32 0, ptr %i5, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc16, %for.end
  %8 = load i32, ptr %i5, align 4
  %cmp7 = icmp ult i32 %8, 100000
  br i1 %cmp7, label %for.body9, label %for.end18

for.body9:                                        ; preds = %for.cond6
  %call10 = call i32 @rand()
  %9 = load i32, ptr %length, align 4
  %sub = sub i32 %9, 1
  %and11 = and i32 %call10, %sub
  %idxprom12 = zext i32 %and11 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %vla, i64 %idxprom12
  %10 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %10 to i32
  %xor = xor i32 %conv14, 1
  %conv15 = trunc i32 %xor to i8
  store i8 %conv15, ptr %arrayidx13, align 1
  br label %for.inc16

for.inc16:                                        ; preds = %for.body9
  %11 = load i32, ptr %i5, align 4
  %inc17 = add i32 %11, 1
  store i32 %inc17, ptr %i5, align 4
  br label %for.cond6, !llvm.loop !7

for.end18:                                        ; preds = %for.cond6
  %call19 = call i32 @clock_gettime(i32 noundef 0, ptr noundef %stop)
  %12 = load i32, ptr %length, align 4
  %tv_sec = getelementptr inbounds %struct.timespec, ptr %stop, i32 0, i32 0
  %13 = load i64, ptr %tv_sec, align 8
  %tv_sec20 = getelementptr inbounds %struct.timespec, ptr %start, i32 0, i32 0
  %14 = load i64, ptr %tv_sec20, align 8
  %sub21 = sub nsw i64 %13, %14
  %mul = mul nsw i64 %sub21, 1000000000
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %stop, i32 0, i32 1
  %15 = load i64, ptr %tv_nsec, align 8
  %tv_nsec22 = getelementptr inbounds %struct.timespec, ptr %start, i32 0, i32 1
  %16 = load i64, ptr %tv_nsec22, align 8
  %sub23 = sub nsw i64 %15, %16
  %add = add nsw i64 %mul, %sub23
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12, i64 noundef %add)
  %17 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %17)
  br label %for.inc25

for.inc25:                                        ; preds = %for.end18
  %18 = load i32, ptr %length, align 4
  %shl = shl i32 %18, 1
  store i32 %shl, ptr %length, align 4
  br label %for.cond, !llvm.loop !8

for.end26:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

declare i32 @rand() #2

declare i32 @clock_gettime(i32 noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
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
