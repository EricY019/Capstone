; ModuleID = './code/382-28395christmas_tree.c'
source_filename = "./code/382-28395christmas_tree.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @christmas_tree(i32 noundef %h) #0 {
entry:
  %h.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %ch = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 %h, ptr %h.addr, align 4
  store i32 1, ptr %d, align 4
  store i32 1, ptr %ch, align 4
  store i32 2, ptr %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %a, align 4
  %1 = load i32, ptr %h.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %d, align 4
  %add = add nsw i32 %2, 2
  store i32 %add, ptr %d, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %a, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %a, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %d, align 4
  %div = sdiv i32 %4, 2
  store i32 %div, ptr %e, align 4
  store i32 1, ptr %a, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc19, %for.end
  %5 = load i32, ptr %a, align 4
  %6 = load i32, ptr %h.addr, align 4
  %cmp2 = icmp sle i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end21

for.body3:                                        ; preds = %for.cond1
  store i32 1, ptr %b, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc7, %for.body3
  %7 = load i32, ptr %b, align 4
  %8 = load i32, ptr %e, align 4
  %cmp5 = icmp sle i32 %7, %8
  br i1 %cmp5, label %for.body6, label %for.end9

for.body6:                                        ; preds = %for.cond4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body6
  %9 = load i32, ptr %b, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, ptr %b, align 4
  br label %for.cond4, !llvm.loop !7

for.end9:                                         ; preds = %for.cond4
  store i32 1, ptr %c, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc14, %for.end9
  %10 = load i32, ptr %c, align 4
  %11 = load i32, ptr %ch, align 4
  %cmp11 = icmp sle i32 %10, %11
  br i1 %cmp11, label %for.body12, label %for.end16

for.body12:                                       ; preds = %for.cond10
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body12
  %12 = load i32, ptr %c, align 4
  %inc15 = add nsw i32 %12, 1
  store i32 %inc15, ptr %c, align 4
  br label %for.cond10, !llvm.loop !8

for.end16:                                        ; preds = %for.cond10
  %13 = load i32, ptr %ch, align 4
  %add17 = add nsw i32 %13, 2
  store i32 %add17, ptr %ch, align 4
  %14 = load i32, ptr %e, align 4
  %sub = sub nsw i32 %14, 1
  store i32 %sub, ptr %e, align 4
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc19

for.inc19:                                        ; preds = %for.end16
  %15 = load i32, ptr %a, align 4
  %inc20 = add nsw i32 %15, 1
  store i32 %inc20, ptr %a, align 4
  br label %for.cond1, !llvm.loop !9

for.end21:                                        ; preds = %for.cond1
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @christmas_tree(i32 noundef 4)
  call void @christmas_tree(i32 noundef 7)
  call void @christmas_tree(i32 noundef 11)
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
!9 = distinct !{!9, !6}
