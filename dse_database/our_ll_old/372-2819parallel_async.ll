; ModuleID = './code/372-2819parallel_async.c'
source_filename = "./code/372-2819parallel_async.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [12 x i8] c"malloc err\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %c = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 134217728) #3
  store ptr %call, ptr %a, align 8
  %call1 = call ptr @malloc(i64 noundef 134217728) #3
  store ptr %call1, ptr %b, align 8
  %call2 = call ptr @malloc(i64 noundef 134217728) #3
  store ptr %call2, ptr %c, align 8
  %0 = load ptr, ptr %a, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %b, align 8
  %tobool3 = icmp ne ptr %1, null
  br i1 %tobool3, label %land.lhs.true4, label %if.then

land.lhs.true4:                                   ; preds = %land.lhs.true
  %2 = load ptr, ptr %c, align 8
  %tobool5 = icmp ne ptr %2, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true4
  %3 = load ptr, ptr %a, align 8
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 0
  store i32 0, ptr %arrayidx, align 4
  %4 = load ptr, ptr %a, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %4, i64 1
  store i32 1, ptr %arrayidx7, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %5, 33554432
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %6, 2
  %7 = load ptr, ptr %a, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %7, i64 %idxprom
  store i32 %mul, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc14, %for.end
  %10 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %10, 33554432
  br i1 %cmp10, label %for.body11, label %for.end16

for.body11:                                       ; preds = %for.cond9
  %11 = load ptr, ptr %b, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %11, i64 %idxprom12
  store i32 1, ptr %arrayidx13, align 4
  br label %for.inc14

for.inc14:                                        ; preds = %for.body11
  %13 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond9, !llvm.loop !7

for.end16:                                        ; preds = %for.cond9
  store i32 0, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc26, %for.end16
  %14 = load i32, ptr %i, align 4
  %cmp18 = icmp slt i32 %14, 33554432
  br i1 %cmp18, label %for.body19, label %for.end28

for.body19:                                       ; preds = %for.cond17
  %15 = load ptr, ptr %a, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %15, i64 %idxprom20
  %17 = load i32, ptr %arrayidx21, align 4
  %18 = load ptr, ptr %b, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %18, i64 %idxprom22
  %20 = load i32, ptr %arrayidx23, align 4
  %add = add nsw i32 %17, %20
  %21 = load ptr, ptr %c, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %21, i64 %idxprom24
  store i32 %add, ptr %arrayidx25, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %23 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond17, !llvm.loop !8

for.end28:                                        ; preds = %for.cond17
  store i32 0, ptr %i, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc39, %for.end28
  %24 = load i32, ptr %i, align 4
  %cmp30 = icmp slt i32 %24, 33554432
  br i1 %cmp30, label %for.body31, label %for.end41

for.body31:                                       ; preds = %for.cond29
  %25 = load ptr, ptr %c, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %25, i64 %idxprom32
  %27 = load i32, ptr %arrayidx33, align 4
  %28 = load i32, ptr %i, align 4
  %mul34 = mul nsw i32 %28, 2
  %add35 = add nsw i32 %mul34, 1
  %cmp36 = icmp ne i32 %27, %add35
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %for.body31
  store i32 1, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %for.body31
  br label %for.inc39

for.inc39:                                        ; preds = %if.end38
  %29 = load i32, ptr %i, align 4
  %inc40 = add nsw i32 %29, 1
  store i32 %inc40, ptr %i, align 4
  br label %for.cond29, !llvm.loop !9

for.end41:                                        ; preds = %for.cond29
  %30 = load ptr, ptr %a, align 8
  call void @free(ptr noundef %30)
  %31 = load ptr, ptr %b, align 8
  call void @free(ptr noundef %31)
  %32 = load ptr, ptr %c, align 8
  call void @free(ptr noundef %32)
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end41, %if.then37, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

declare void @free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
