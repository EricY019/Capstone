; ModuleID = './code/108-14480matriu4x4_original.c'
source_filename = "./code/108-14480matriu4x4_original.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @multiplica(ptr noundef %A, ptr noundef %B, ptr noundef %C, i32 noundef %n_iter) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %C.addr = alloca ptr, align 8
  %n_iter.addr = alloca i32, align 4
  %iter = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store ptr %B, ptr %B.addr, align 8
  store ptr %C, ptr %C.addr, align 8
  store i32 %n_iter, ptr %n_iter.addr, align 4
  store i32 0, ptr %iter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %0 = load i32, ptr %iter, align 4
  %1 = load i32, ptr %n_iter.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc27, %for.body
  %2 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %2, 4
  br i1 %cmp2, label %for.body3, label %for.end29

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc24, %for.body3
  %3 = load i32, ptr %j, align 4
  %cmp5 = icmp slt i32 %3, 4
  br i1 %cmp5, label %for.body6, label %for.end26

for.body6:                                        ; preds = %for.cond4
  store i32 0, ptr %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %4 = load i32, ptr %k, align 4
  %cmp8 = icmp slt i32 %4, 4
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %5 = load ptr, ptr %C.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %5, i64 %idxprom
  %7 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 %idxprom10
  %8 = load i32, ptr %arrayidx11, align 4
  %9 = load ptr, ptr %A.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [4 x i32], ptr %9, i64 %idxprom12
  %11 = load i32, ptr %k, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], ptr %arrayidx13, i64 0, i64 %idxprom14
  %12 = load i32, ptr %arrayidx15, align 4
  %13 = load ptr, ptr %B.addr, align 8
  %14 = load i32, ptr %k, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [4 x i32], ptr %13, i64 %idxprom16
  %15 = load i32, ptr %j, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [4 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %16 = load i32, ptr %arrayidx19, align 4
  %mul = mul nsw i32 %12, %16
  %add = add nsw i32 %8, %mul
  %17 = load ptr, ptr %C.addr, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [4 x i32], ptr %17, i64 %idxprom20
  %19 = load i32, ptr %j, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [4 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  store i32 %add, ptr %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %20 = load i32, ptr %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond7, !llvm.loop !5

for.end:                                          ; preds = %for.cond7
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %21 = load i32, ptr %j, align 4
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, ptr %j, align 4
  br label %for.cond4, !llvm.loop !7

for.end26:                                        ; preds = %for.cond4
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %22 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %22, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond1, !llvm.loop !8

for.end29:                                        ; preds = %for.cond1
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %23 = load i32, ptr %iter, align 4
  %inc31 = add nsw i32 %23, 1
  store i32 %inc31, ptr %iter, align 4
  br label %for.cond, !llvm.loop !9

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_matriu(ptr noundef %C) #0 {
entry:
  %C.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store ptr %C, ptr %C.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load ptr, ptr %C.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %2, i64 %idxprom
  %4 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, ptr %arrayidx5, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4
  br label %for.cond, !llvm.loop !11

for.end9:                                         ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %A = alloca [4 x [4 x i32]], align 4
  %B = alloca [4 x [4 x i32]], align 4
  %C = alloca [4 x [4 x i32]], align 4
  %n_iter = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 4 %C, i8 0, i64 64, i1 false)
  store i32 10000000, ptr %n_iter, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp ult i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand()
  %2 = load i32, ptr %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x i32]], ptr %A, i64 0, i64 %idxprom
  %3 = load i32, ptr %j, align 4
  %idxprom4 = zext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  store i32 %call, ptr %arrayidx5, align 4
  %call6 = call i32 @rand()
  %4 = load i32, ptr %i, align 4
  %idxprom7 = zext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [4 x [4 x i32]], ptr %B, i64 0, i64 %idxprom7
  %5 = load i32, ptr %j, align 4
  %idxprom9 = zext i32 %5 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], ptr %arrayidx8, i64 0, i64 %idxprom9
  store i32 %call6, ptr %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %7 = load i32, ptr %i, align 4
  %inc12 = add i32 %7, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond, !llvm.loop !13

for.end13:                                        ; preds = %for.cond
  %8 = load i32, ptr %argc.addr, align 4
  %cmp14 = icmp sgt i32 %8, 1
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.end13
  %9 = load ptr, ptr %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx15, align 8
  %call16 = call i32 @atoi(ptr noundef %10)
  store i32 %call16, ptr %n_iter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end13
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], ptr %A, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [4 x [4 x i32]], ptr %B, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [4 x [4 x i32]], ptr %C, i64 0, i64 0
  %11 = load i32, ptr %n_iter, align 4
  call void @multiplica(ptr noundef %arraydecay, ptr noundef %arraydecay17, ptr noundef %arraydecay18, i32 noundef %11)
  %arraydecay19 = getelementptr inbounds [4 x [4 x i32]], ptr %C, i64 0, i64 0
  call void @print_matriu(ptr noundef %arraydecay19)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @rand() #1

declare i32 @atoi(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
