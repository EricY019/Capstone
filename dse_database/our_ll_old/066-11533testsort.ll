; ModuleID = './code/066-11533testsort.c'
source_filename = "./code/066-11533testsort.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %bufs = alloca [500 x [20 x i8]], align 1
  %lines = alloca [500 x ptr], align 8
  %lens = alloca [500 x i64], align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  call void @srandom(i32 noundef 1)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, 500
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %call = call i64 @random()
  %rem = srem i64 %call, 19
  %1 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [500 x i64], ptr %lens, i64 0, i64 %1
  store i64 %rem, ptr %arrayidx, align 8
  %2 = load i64, ptr %i, align 8
  %arrayidx1 = getelementptr inbounds [500 x [20 x i8]], ptr %bufs, i64 0, i64 %2
  %arraydecay = getelementptr inbounds [20 x i8], ptr %arrayidx1, i64 0, i64 0
  %3 = load i64, ptr %i, align 8
  %arrayidx2 = getelementptr inbounds [500 x ptr], ptr %lines, i64 0, i64 %3
  store ptr %arraydecay, ptr %arrayidx2, align 8
  store i64 0, ptr %j, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %4 = load i64, ptr %j, align 8
  %5 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds [500 x i64], ptr %lens, i64 0, i64 %5
  %6 = load i64, ptr %arrayidx4, align 8
  %cmp5 = icmp ult i64 %4, %6
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %call7 = call i64 @random()
  %rem8 = srem i64 %call7, 26
  %add = add nsw i64 %rem8, 97
  %conv = trunc i64 %add to i8
  %7 = load i64, ptr %i, align 8
  %arrayidx9 = getelementptr inbounds [500 x ptr], ptr %lines, i64 0, i64 %7
  %8 = load ptr, ptr %arrayidx9, align 8
  %9 = load i64, ptr %j, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 %9
  store i8 %conv, ptr %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %10 = load i64, ptr %j, align 8
  %inc = add i64 %10, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond3, !llvm.loop !5

for.end:                                          ; preds = %for.cond3
  %11 = load i64, ptr %i, align 8
  %arrayidx11 = getelementptr inbounds [500 x ptr], ptr %lines, i64 0, i64 %11
  %12 = load ptr, ptr %arrayidx11, align 8
  %13 = load i64, ptr %j, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %12, i64 %13
  store i8 0, ptr %arrayidx12, align 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %14 = load i64, ptr %i, align 8
  %inc14 = add i64 %14, 1
  store i64 %inc14, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end15:                                        ; preds = %for.cond
  %arraydecay16 = getelementptr inbounds [500 x ptr], ptr %lines, i64 0, i64 0
  call void @qsort(ptr noundef %arraydecay16, i64 noundef 500, i64 noundef 8, ptr noundef @compare)
  store i64 0, ptr %i, align 8
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc26, %for.end15
  %15 = load i64, ptr %i, align 8
  %cmp18 = icmp ult i64 %15, 500
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond17
  %16 = load i64, ptr %i, align 8
  %arrayidx20 = getelementptr inbounds [500 x ptr], ptr %lines, i64 0, i64 %16
  %17 = load ptr, ptr %arrayidx20, align 8
  %cmp21 = icmp ne ptr %17, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond17
  %18 = phi i1 [ false, %for.cond17 ], [ %cmp21, %land.rhs ]
  br i1 %18, label %for.body23, label %for.end28

for.body23:                                       ; preds = %land.end
  %19 = load i64, ptr %i, align 8
  %arrayidx24 = getelementptr inbounds [500 x ptr], ptr %lines, i64 0, i64 %19
  %20 = load ptr, ptr %arrayidx24, align 8
  %call25 = call i32 @puts(ptr noundef %20)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body23
  %21 = load i64, ptr %i, align 8
  %inc27 = add i64 %21, 1
  store i64 %inc27, ptr %i, align 8
  br label %for.cond17, !llvm.loop !8

for.end28:                                        ; preds = %land.end
  ret i32 0
}

declare void @srandom(i32 noundef) #1

declare i64 @random() #1

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @compare(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load ptr, ptr %b.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %call = call i32 @strcmp(ptr noundef %1, ptr noundef %3) #3
  ret i32 %call
}

declare i32 @puts(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

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
