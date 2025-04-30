; ModuleID = './code/003-5965christmas_tree.c'
source_filename = "./code/003-5965christmas_tree.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @ChristmasTree(i32 noundef %height) #0 {
entry:
  %height.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %height, ptr %height.addr, align 4
  store i32 0, ptr %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, ptr %m, align 4
  %1 = load i32, ptr %height.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %m, align 4
  store i32 %2, ptr %a, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i32, ptr %a, align 4
  %4 = load i32, ptr %height.addr, align 4
  %sub = sub nsw i32 %4, 1
  %cmp1 = icmp ne i32 %3, %sub
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %5 = load i32, ptr %a, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %a, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %m, align 4
  %7 = load i32, ptr %m, align 4
  %add = add nsw i32 %6, %7
  %add2 = add nsw i32 %add, 1
  store i32 %add2, ptr %b, align 4
  store i32 0, ptr %a, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %while.end
  %8 = load i32, ptr %a, align 4
  %9 = load i32, ptr %b, align 4
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %10 = load i32, ptr %a, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, ptr %a, align 4
  br label %for.cond3, !llvm.loop !7

for.end:                                          ; preds = %for.cond3
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %11 = load i32, ptr %m, align 4
  %inc10 = add nsw i32 %11, 1
  store i32 %inc10, ptr %m, align 4
  br label %for.cond, !llvm.loop !8

for.end11:                                        ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @ChristmasTree(i32 noundef 4)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  call void @ChristmasTree(i32 noundef 7)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  call void @ChristmasTree(i32 noundef 11)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
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
!8 = distinct !{!8, !6}
