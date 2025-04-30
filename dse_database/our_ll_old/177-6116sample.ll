; ModuleID = './code/177-6116sample.c'
source_filename = "./code/177-6116sample.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %sub = sub nsw i32 %0, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #3
  store ptr %call, ptr %a, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %argc.addr, align 4
  %sub1 = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %argv.addr, align 8
  %4 = load i32, ptr %i, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %call3 = call i32 @atoi(ptr noundef %5)
  %6 = load ptr, ptr %a, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %6, i64 %idxprom4
  store i32 %call3, ptr %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %a, align 8
  %10 = load i32, ptr %argc.addr, align 4
  call void @shell_sort(ptr noundef %9, i32 noundef %10)
  store i32 0, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc14, %for.end
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %argc.addr, align 4
  %sub7 = sub nsw i32 %12, 1
  %cmp8 = icmp slt i32 %11, %sub7
  br i1 %cmp8, label %for.body10, label %for.end16

for.body10:                                       ; preds = %for.cond6
  %13 = load ptr, ptr %a, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %13, i64 %idxprom11
  %15 = load i32, ptr %arrayidx12, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body10
  %16 = load i32, ptr %i, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, ptr %i, align 4
  br label %for.cond6, !llvm.loop !7

for.end16:                                        ; preds = %for.cond6
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %17 = load ptr, ptr %a, align 8
  call void @free(ptr noundef %17)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @atoi(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @shell_sort(ptr noundef %a, i32 noundef %size) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %h = alloca i32, align 4
  %v = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 1, ptr %h, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %h, align 4
  %mul = mul nsw i32 %0, 3
  %add = add nsw i32 %mul, 1
  store i32 %add, ptr %h, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %1 = load i32, ptr %h, align 4
  %2 = load i32, ptr %size.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  br label %do.body1

do.body1:                                         ; preds = %do.cond20, %do.end
  %3 = load i32, ptr %h, align 4
  %div = sdiv i32 %3, 3
  store i32 %div, ptr %h, align 4
  %4 = load i32, ptr %h, align 4
  store i32 %4, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %do.body1
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %size.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %a.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4
  store i32 %9, ptr %v, align 4
  %10 = load i32, ptr %i, align 4
  store i32 %10, ptr %j, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %11 = load i32, ptr %j, align 4
  %12 = load i32, ptr %h, align 4
  %cmp4 = icmp sge i32 %11, %12
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond3
  %13 = load ptr, ptr %a.addr, align 8
  %14 = load i32, ptr %j, align 4
  %15 = load i32, ptr %h, align 4
  %sub = sub nsw i32 %14, %15
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %13, i64 %idxprom5
  %16 = load i32, ptr %arrayidx6, align 4
  %17 = load i32, ptr %v, align 4
  %cmp7 = icmp sgt i32 %16, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond3
  %18 = phi i1 [ false, %for.cond3 ], [ %cmp7, %land.rhs ]
  br i1 %18, label %for.body8, label %for.end

for.body8:                                        ; preds = %land.end
  %19 = load ptr, ptr %a.addr, align 8
  %20 = load i32, ptr %j, align 4
  %21 = load i32, ptr %h, align 4
  %sub9 = sub nsw i32 %20, %21
  %idxprom10 = sext i32 %sub9 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %19, i64 %idxprom10
  %22 = load i32, ptr %arrayidx11, align 4
  %23 = load ptr, ptr %a.addr, align 8
  %24 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %24 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %23, i64 %idxprom12
  store i32 %22, ptr %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %25 = load i32, ptr %h, align 4
  %26 = load i32, ptr %j, align 4
  %sub14 = sub nsw i32 %26, %25
  store i32 %sub14, ptr %j, align 4
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %land.end
  %27 = load i32, ptr %i, align 4
  %28 = load i32, ptr %j, align 4
  %cmp15 = icmp ne i32 %27, %28
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %29 = load i32, ptr %v, align 4
  %30 = load ptr, ptr %a.addr, align 8
  %31 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %31 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %30, i64 %idxprom16
  store i32 %29, ptr %arrayidx17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc18

for.inc18:                                        ; preds = %if.end
  %32 = load i32, ptr %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end19:                                        ; preds = %for.cond
  br label %do.cond20

do.cond20:                                        ; preds = %for.end19
  %33 = load i32, ptr %h, align 4
  %cmp21 = icmp ne i32 %33, 1
  br i1 %cmp21, label %do.body1, label %do.end22, !llvm.loop !11

do.end22:                                         ; preds = %do.cond20
  ret void
}

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
!11 = distinct !{!11, !6}
