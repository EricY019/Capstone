; ModuleID = './code/303-33904problem_five.c'
source_filename = "./code/303-33904problem_five.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [19 x i8] c"The largest is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %rem = srem i32 %0, 20
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %rem1 = srem i32 %1, 19
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %2 = load i32, ptr %i, align 4
  %rem4 = srem i32 %2, 18
  %cmp5 = icmp eq i32 %rem4, 0
  br i1 %cmp5, label %land.lhs.true6, label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %3 = load i32, ptr %i, align 4
  %rem7 = srem i32 %3, 17
  %cmp8 = icmp eq i32 %rem7, 0
  br i1 %cmp8, label %land.lhs.true9, label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %4 = load i32, ptr %i, align 4
  %rem10 = srem i32 %4, 16
  %cmp11 = icmp eq i32 %rem10, 0
  br i1 %cmp11, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %5 = load i32, ptr %i, align 4
  %rem13 = srem i32 %5, 15
  %cmp14 = icmp eq i32 %rem13, 0
  br i1 %cmp14, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %6 = load i32, ptr %i, align 4
  %rem16 = srem i32 %6, 14
  %cmp17 = icmp eq i32 %rem16, 0
  br i1 %cmp17, label %land.lhs.true18, label %if.end

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %7 = load i32, ptr %i, align 4
  %rem19 = srem i32 %7, 13
  %cmp20 = icmp eq i32 %rem19, 0
  br i1 %cmp20, label %land.lhs.true21, label %if.end

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %8 = load i32, ptr %i, align 4
  %rem22 = srem i32 %8, 11
  %cmp23 = icmp eq i32 %rem22, 0
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true21
  br label %for.end

if.end:                                           ; preds = %land.lhs.true21, %land.lhs.true18, %land.lhs.true15, %land.lhs.true12, %land.lhs.true9, %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %10 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10)
  ret i32 0
}

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
