; ModuleID = './code/012-18647kernels_async.c'
source_filename = "./code/012-18647kernels_async.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [12 x i8] c"malloc err\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
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
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %if.end
  %5 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %5, 1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %i, align 4
  %cmp9 = icmp slt i32 %6, 33554432
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %7 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %7, 2
  %8 = load ptr, ptr %a, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %8, i64 %idxprom
  store i32 %mul, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond8, !llvm.loop !5

for.end:                                          ; preds = %for.cond8
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %11 = load i32, ptr %j, align 4
  %inc13 = add nsw i32 %11, 1
  store i32 %inc13, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end14:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc20, %for.end14
  %12 = load i32, ptr %i, align 4
  %cmp16 = icmp slt i32 %12, 33554432
  br i1 %cmp16, label %for.body17, label %for.end22

for.body17:                                       ; preds = %for.cond15
  %13 = load ptr, ptr %b, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds i32, ptr %13, i64 %idxprom18
  store i32 1, ptr %arrayidx19, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body17
  %15 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond15, !llvm.loop !8

for.end22:                                        ; preds = %for.cond15
  store i32 0, ptr %i, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc32, %for.end22
  %16 = load i32, ptr %i, align 4
  %cmp24 = icmp slt i32 %16, 33554432
  br i1 %cmp24, label %for.body25, label %for.end34

for.body25:                                       ; preds = %for.cond23
  %17 = load ptr, ptr %a, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %18 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %17, i64 %idxprom26
  %19 = load i32, ptr %arrayidx27, align 4
  %20 = load ptr, ptr %b, align 8
  %21 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds i32, ptr %20, i64 %idxprom28
  %22 = load i32, ptr %arrayidx29, align 4
  %add = add nsw i32 %19, %22
  %23 = load ptr, ptr %c, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %23, i64 %idxprom30
  store i32 %add, ptr %arrayidx31, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %for.body25
  %25 = load i32, ptr %i, align 4
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, ptr %i, align 4
  br label %for.cond23, !llvm.loop !9

for.end34:                                        ; preds = %for.cond23
  store i32 0, ptr %i, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc45, %for.end34
  %26 = load i32, ptr %i, align 4
  %cmp36 = icmp slt i32 %26, 33554432
  br i1 %cmp36, label %for.body37, label %for.end47

for.body37:                                       ; preds = %for.cond35
  %27 = load ptr, ptr %c, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds i32, ptr %27, i64 %idxprom38
  %29 = load i32, ptr %arrayidx39, align 4
  %30 = load i32, ptr %i, align 4
  %mul40 = mul nsw i32 %30, 2
  %add41 = add nsw i32 %mul40, 1
  %cmp42 = icmp ne i32 %29, %add41
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %for.body37
  store i32 1, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %for.body37
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %31 = load i32, ptr %i, align 4
  %inc46 = add nsw i32 %31, 1
  store i32 %inc46, ptr %i, align 4
  br label %for.cond35, !llvm.loop !10

for.end47:                                        ; preds = %for.cond35
  %32 = load ptr, ptr %a, align 8
  call void @free(ptr noundef %32)
  %33 = load ptr, ptr %b, align 8
  call void @free(ptr noundef %33)
  %34 = load ptr, ptr %c, align 8
  call void @free(ptr noundef %34)
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end47, %if.then43, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
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
!10 = distinct !{!10, !6}
