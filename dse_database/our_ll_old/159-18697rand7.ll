; ModuleID = './code/159-18697rand7.c'
source_filename = "./code/159-18697rand7.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [21 x i8] c"%d came up %d times\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @rand5() #0 {
entry:
  %call = call i32 @rand()
  %rem = srem i32 %call, 5
  ret i32 %rem
}

declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @rand7() #0 {
entry:
  %sum = alloca i32, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call i32 @rand5()
  %mul = mul nsw i32 %call, 5
  %call1 = call i32 @rand5()
  %add = add nsw i32 %mul, %call1
  store i32 %add, ptr %sum, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %0 = load i32, ptr %sum, align 4
  %cmp = icmp sgt i32 %0, 20
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr %sum, align 4
  %rem = srem i32 %1, 7
  ret i32 %rem
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %results = alloca [7 x i32], align 4
  %i = alloca i32, align 4
  %i4 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  call void @llvm.memset.p0.i64(ptr align 4 %results, i8 0, i64 28, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1000000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand7()
  %idxprom = sext i32 %call2 to i64
  %arrayidx = getelementptr inbounds [7 x i32], ptr %results, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc3 = add nsw i32 %2, 1
  store i32 %inc3, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc12, %for.end
  %3 = load i32, ptr %i4, align 4
  %cmp6 = icmp slt i32 %3, 7
  br i1 %cmp6, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond5
  %4 = load i32, ptr %i4, align 4
  %5 = load i32, ptr %i4, align 4
  %idxprom9 = sext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [7 x i32], ptr %results, i64 0, i64 %idxprom9
  %6 = load i32, ptr %arrayidx10, align 4
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4, i32 noundef %6)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %7 = load i32, ptr %i4, align 4
  %inc13 = add nsw i32 %7, 1
  store i32 %inc13, ptr %i4, align 4
  br label %for.cond5, !llvm.loop !8

for.end14:                                        ; preds = %for.cond5
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
