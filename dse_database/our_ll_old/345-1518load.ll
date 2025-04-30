; ModuleID = './code/345-1518load.c'
source_filename = "./code/345-1518load.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %from = alloca i64, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 20, ptr %j, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i64 @atol(ptr noundef %2)
  store i64 %call, ptr %from, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 20, ptr %from, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i64 1, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %if.end
  %3 = load i64, ptr %j, align 8
  %tobool = icmp ne i64 %3, 0
  br i1 %tobool, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %from, align 8
  store i64 %4, ptr %j, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i64, ptr %j, align 8
  %cmp2 = icmp sgt i64 %5, 0
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i64, ptr %i, align 8
  %7 = load i64, ptr %j, align 8
  %rem = srem i64 %6, %7
  %tobool4 = icmp ne i64 %rem, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body3
  br label %for.end

if.end6:                                          ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %8 = load i64, ptr %j, align 8
  %dec = add nsw i64 %8, -1
  store i64 %dec, ptr %j, align 8
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %if.then5, %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %9 = load i64, ptr %i, align 8
  %inc = add nsw i64 %9, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end8:                                         ; preds = %for.cond
  %10 = load i64, ptr %i, align 8
  %dec9 = add nsw i64 %10, -1
  store i64 %dec9, ptr %i, align 8
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %dec9)
  ret i32 0
}

declare i64 @atol(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

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
