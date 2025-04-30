; ModuleID = './code/260-8865vm0.c'
source_filename = "./code/260-8865vm0.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [7 x i8] c"i: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f() #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 10, ptr %a, align 4
  store i32 2, ptr %b, align 4
  store i32 200000000, ptr %c, align 4
  store i32 7, ptr %d, align 4
  store i32 1, ptr %e, align 4
  store i32 0, ptr %f, align 4
  %0 = load i32, ptr %a, align 4
  store i32 %0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end9, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %c, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %while.body, label %while.end10

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %d, align 4
  %rem = srem i32 %3, %4
  %5 = load i32, ptr %f, align 4
  %cmp1 = icmp eq i32 %rem, %5
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  br label %while.cond2

while.cond2:                                      ; preds = %if.end, %if.then
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %c, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %while.body4, label %while.end

while.body4:                                      ; preds = %while.cond2
  %8 = load i32, ptr %e, align 4
  %9 = load i32, ptr %i, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, ptr %i, align 4
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %d, align 4
  %rem5 = srem i32 %10, %11
  %12 = load i32, ptr %f, align 4
  %cmp6 = icmp eq i32 %rem5, %12
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %while.body4
  br label %while.end

if.end:                                           ; preds = %while.body4
  br label %while.cond2, !llvm.loop !5

while.end:                                        ; preds = %if.then7, %while.cond2
  br label %if.end9

if.else:                                          ; preds = %while.body
  %13 = load i32, ptr %b, align 4
  %14 = load i32, ptr %i, align 4
  %add8 = add nsw i32 %14, %13
  store i32 %add8, ptr %i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %while.end
  br label %while.cond, !llvm.loop !7

while.end10:                                      ; preds = %while.cond
  %15 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @f()
  ret i32 0
}

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
