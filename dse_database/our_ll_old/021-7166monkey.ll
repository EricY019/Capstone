; ModuleID = './code/021-7166monkey.c'
source_filename = "./code/021-7166monkey.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [37 x i8] c"Solution: %d coconuts to begin with\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sailors = alloca i32, align 4
  %monkeys = alloca i32, align 4
  %j = alloca i32, align 4
  %coconuts_tot = alloca i32, align 4
  %coconuts = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 5, ptr %sailors, align 4
  store i32 1, ptr %monkeys, align 4
  store i32 0, ptr %coconuts_tot, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end6
  %0 = load i32, ptr %coconuts_tot, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %coconuts_tot, align 4
  %1 = load i32, ptr %coconuts_tot, align 4
  store i32 %1, ptr %coconuts, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %2 = load i32, ptr %j, align 4
  %3 = load i32, ptr %sailors, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %monkeys, align 4
  %5 = load i32, ptr %coconuts, align 4
  %sub = sub nsw i32 %5, %4
  store i32 %sub, ptr %coconuts, align 4
  %6 = load i32, ptr %coconuts, align 4
  %7 = load i32, ptr %sailors, align 4
  %rem = srem i32 %6, %7
  %cmp1 = icmp ne i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %8 = load i32, ptr %coconuts, align 4
  %9 = load i32, ptr %sailors, align 4
  %div = sdiv i32 %8, %9
  %10 = load i32, ptr %coconuts, align 4
  %sub2 = sub nsw i32 %10, %div
  store i32 %sub2, ptr %coconuts, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond
  %12 = load i32, ptr %coconuts, align 4
  %13 = load i32, ptr %sailors, align 4
  %rem3 = srem i32 %12, %13
  %cmp4 = icmp eq i32 %rem3, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.end
  br label %while.end

if.end6:                                          ; preds = %for.end
  br label %while.body

while.end:                                        ; preds = %if.then5
  %14 = load i32, ptr %coconuts_tot, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %14)
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
