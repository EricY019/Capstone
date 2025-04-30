; ModuleID = './code/355-10969FindInPartiallySortedMatrix.c'
source_filename = "./code/355-10969FindInPartiallySortedMatrix.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.matrix = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 1, i32 2, i32 8, i32 9], [4 x i32] [i32 2, i32 4, i32 9, i32 12], [4 x i32] [i32 4, i32 7, i32 10, i32 13], [4 x i32] [i32 6, i32 8, i32 11, i32 15]], align 4
@.str = private unnamed_addr constant [7 x i8] c"%d,%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @findNumber(ptr noundef %matrix, ptr noundef %row, ptr noundef %columns, i32 noundef %number) #0 {
entry:
  %retval = alloca i32, align 4
  %matrix.addr = alloca ptr, align 8
  %row.addr = alloca ptr, align 8
  %columns.addr = alloca ptr, align 8
  %number.addr = alloca i32, align 4
  %minRow = alloca i32, align 4
  %maxCol = alloca i32, align 4
  store ptr %matrix, ptr %matrix.addr, align 8
  store ptr %row, ptr %row.addr, align 8
  store ptr %columns, ptr %columns.addr, align 8
  store i32 %number, ptr %number.addr, align 4
  store i32 0, ptr %minRow, align 4
  %0 = load ptr, ptr %columns.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %maxCol, align 4
  %2 = load ptr, ptr %matrix.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %row.addr, align 8
  %cmp1 = icmp ult ptr %3, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %columns.addr, align 8
  %cmp3 = icmp ult ptr %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.end
  %5 = load i32, ptr %minRow, align 4
  %cmp4 = icmp slt i32 %5, 4
  br i1 %cmp4, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load i32, ptr %maxCol, align 4
  %cmp5 = icmp sge i32 %6, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %matrix.addr, align 8
  %cmp6 = icmp ne ptr %7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %matrix.addr, align 8
  %10 = load i32, ptr %minRow, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4 x i32], ptr %9, i64 %idxprom
  %11 = load i32, ptr %maxCol, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [4 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %12 = load i32, ptr %arrayidx8, align 4
  %13 = load i32, ptr %number.addr, align 4
  %cmp9 = icmp eq i32 %12, %13
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  %14 = load i32, ptr %minRow, align 4
  %15 = load ptr, ptr %row.addr, align 8
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr %maxCol, align 4
  %17 = load ptr, ptr %columns.addr, align 8
  store i32 %16, ptr %17, align 4
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %while.body
  %18 = load ptr, ptr %matrix.addr, align 8
  %19 = load i32, ptr %minRow, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds [4 x i32], ptr %18, i64 %idxprom11
  %20 = load i32, ptr %maxCol, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds [4 x i32], ptr %arrayidx12, i64 0, i64 %idxprom13
  %21 = load i32, ptr %arrayidx14, align 4
  %22 = load i32, ptr %number.addr, align 4
  %cmp15 = icmp slt i32 %21, %22
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else
  %23 = load i32, ptr %minRow, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %minRow, align 4
  br label %if.end25

if.else17:                                        ; preds = %if.else
  %24 = load ptr, ptr %matrix.addr, align 8
  %25 = load i32, ptr %minRow, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [4 x i32], ptr %24, i64 %idxprom18
  %26 = load i32, ptr %maxCol, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds [4 x i32], ptr %arrayidx19, i64 0, i64 %idxprom20
  %27 = load i32, ptr %arrayidx21, align 4
  %28 = load i32, ptr %number.addr, align 4
  %cmp22 = icmp sgt i32 %27, %28
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else17
  %29 = load i32, ptr %maxCol, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr %maxCol, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.else17
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then16
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then10, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %matrix = alloca [4 x [4 x i32]], align 4
  %result = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 3, ptr %row, align 4
  store i32 3, ptr %col, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %matrix, ptr align 4 @__const.main.matrix, i64 64, i1 false)
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], ptr %matrix, i64 0, i64 0
  %call = call i32 @findNumber(ptr noundef %arraydecay, ptr noundef %row, ptr noundef %col, i32 noundef 7)
  store i32 %call, ptr %result, align 4
  %0 = load i32, ptr %row, align 4
  %1 = load i32, ptr %col, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0, i32 noundef %1)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
