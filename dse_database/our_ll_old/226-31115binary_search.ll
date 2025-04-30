; ModuleID = './code/226-31115binary_search.c'
source_filename = "./code/226-31115binary_search.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@array = global [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Found in %d attempts\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Not Found in %d attempts\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bSearch(i32 noundef %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %arrayLen = alloca i32, align 4
  %count = alloca i32, align 4
  %oldi = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  store i32 10, ptr %arrayLen, align 4
  store i32 0, ptr %count, align 4
  store i32 0, ptr %oldi, align 4
  %0 = load i32, ptr %arrayLen, align 4
  %div = sdiv i32 %0, 2
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end37, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %arrayLen, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %cmp1 = icmp sge i32 %3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, ptr %i, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  %6 = load i32, ptr %oldi, align 4
  %7 = load i32, ptr %i, align 4
  %cmp2 = icmp eq i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  store i32 %8, ptr %temp, align 4
  %9 = load i32, ptr %count, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %count, align 4
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr @array, i64 0, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4
  %12 = load i32, ptr %val.addr, align 4
  %cmp3 = icmp sgt i32 %11, %12
  br i1 %cmp3, label %if.then4, label %if.else27

if.then4:                                         ; preds = %if.end
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %oldi, align 4
  %cmp5 = icmp sgt i32 %13, %14
  br i1 %cmp5, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.then4
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %oldi, align 4
  %sub = sub nsw i32 %15, %16
  %div7 = sdiv i32 %sub, 2
  %cmp8 = icmp ne i32 %div7, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %i, align 4
  %19 = load i32, ptr %oldi, align 4
  %sub10 = sub nsw i32 %18, %19
  %div11 = sdiv i32 %sub10, 2
  %sub12 = sub nsw i32 %17, %div11
  store i32 %sub12, ptr %i, align 4
  br label %if.end14

if.else:                                          ; preds = %if.then6
  %20 = load i32, ptr %i, align 4
  %sub13 = sub nsw i32 %20, 1
  store i32 %sub13, ptr %i, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  br label %if.end26

if.else15:                                        ; preds = %if.then4
  %21 = load i32, ptr %oldi, align 4
  %22 = load i32, ptr %i, align 4
  %div16 = sdiv i32 %22, 2
  %sub17 = sub nsw i32 %21, %div16
  %cmp18 = icmp ne i32 %sub17, 0
  br i1 %cmp18, label %if.then19, label %if.else23

if.then19:                                        ; preds = %if.else15
  %23 = load i32, ptr %i, align 4
  %24 = load i32, ptr %oldi, align 4
  %25 = load i32, ptr %i, align 4
  %sub20 = sub nsw i32 %24, %25
  %div21 = sdiv i32 %sub20, 2
  %sub22 = sub nsw i32 %23, %div21
  store i32 %sub22, ptr %i, align 4
  br label %if.end25

if.else23:                                        ; preds = %if.else15
  %26 = load i32, ptr %i, align 4
  %sub24 = sub nsw i32 %26, 1
  store i32 %sub24, ptr %i, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.then19
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end14
  br label %if.end37

if.else27:                                        ; preds = %if.end
  %27 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %27 to i64
  %arrayidx29 = getelementptr inbounds [10 x i32], ptr @array, i64 0, i64 %idxprom28
  %28 = load i32, ptr %arrayidx29, align 4
  %29 = load i32, ptr %val.addr, align 4
  %cmp30 = icmp slt i32 %28, %29
  br i1 %cmp30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.else27
  %30 = load i32, ptr %i, align 4
  %31 = load i32, ptr %oldi, align 4
  %32 = load i32, ptr %i, align 4
  %add = add nsw i32 %31, %32
  %div32 = sdiv i32 %add, 2
  %add33 = add nsw i32 %30, %div32
  store i32 %add33, ptr %i, align 4
  br label %if.end36

if.else34:                                        ; preds = %if.else27
  %33 = load i32, ptr %count, align 4
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %33)
  br label %return

if.end36:                                         ; preds = %if.then31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end26
  %34 = load i32, ptr %temp, align 4
  store i32 %34, ptr %oldi, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then, %land.end
  %35 = load i32, ptr %count, align 4
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %35)
  br label %return

return:                                           ; preds = %for.end, %if.else34
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  call void @bSearch(i32 noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  call void @bSearch(i32 noundef 11)
  call void @bSearch(i32 noundef 0)
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
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
