; ModuleID = 'code/355-10969FindInPartiallySortedMatrix.c'
source_filename = "code/355-10969FindInPartiallySortedMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.matrix = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 1, i32 2, i32 8, i32 9], [4 x i32] [i32 2, i32 4, i32 9, i32 12], [4 x i32] [i32 4, i32 7, i32 10, i32 13], [4 x i32] [i32 6, i32 8, i32 11, i32 15]], align 16
@.str = private unnamed_addr constant [7 x i8] c"%d,%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @findNumber([4 x i32]* %matrix, i32* %row, i32* %columns, i32 %number) #0 {
entry:
  %retval = alloca i32, align 4
  %matrix.addr = alloca [4 x i32]*, align 8
  %row.addr = alloca i32*, align 8
  %columns.addr = alloca i32*, align 8
  %number.addr = alloca i32, align 4
  %minRow = alloca i32, align 4
  %maxCol = alloca i32, align 4
  store [4 x i32]* %matrix, [4 x i32]** %matrix.addr, align 8
  store i32* %row, i32** %row.addr, align 8
  store i32* %columns, i32** %columns.addr, align 8
  store i32 %number, i32* %number.addr, align 4
  store i32 0, i32* %minRow, align 4
  %0 = load i32*, i32** %columns.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %maxCol, align 4
  %2 = load [4 x i32]*, [4 x i32]** %matrix.addr, align 8
  %cmp = icmp eq [4 x i32]* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32*, i32** %row.addr, align 8
  %cmp1 = icmp ult i32* %3, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i32*, i32** %columns.addr, align 8
  %cmp3 = icmp ult i32* %4, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.end
  %5 = load i32, i32* %minRow, align 4
  %cmp4 = icmp slt i32 %5, 4
  br i1 %cmp4, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %6 = load i32, i32* %maxCol, align 4
  %cmp5 = icmp sge i32 %6, 0
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load [4 x i32]*, [4 x i32]** %matrix.addr, align 8
  %cmp6 = icmp ne [4 x i32]* %7, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp6, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load [4 x i32]*, [4 x i32]** %matrix.addr, align 8
  %10 = load i32, i32* %minRow, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 %idxprom
  %11 = load i32, i32* %maxCol, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %13 = load i32, i32* %number.addr, align 4
  %cmp9 = icmp eq i32 %12, %13
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %while.body
  %14 = load i32, i32* %minRow, align 4
  %15 = load i32*, i32** %row.addr, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %maxCol, align 4
  %17 = load i32*, i32** %columns.addr, align 8
  store i32 %16, i32* %17, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %while.body
  %18 = load [4 x i32]*, [4 x i32]** %matrix.addr, align 8
  %19 = load i32, i32* %minRow, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 %idxprom11
  %20 = load i32, i32* %maxCol, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx12, i64 0, i64 %idxprom13
  %21 = load i32, i32* %arrayidx14, align 4
  %22 = load i32, i32* %number.addr, align 4
  %cmp15 = icmp slt i32 %21, %22
  br i1 %cmp15, label %if.then16, label %if.else17

if.then16:                                        ; preds = %if.else
  %23 = load i32, i32* %minRow, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %minRow, align 4
  br label %if.end25

if.else17:                                        ; preds = %if.else
  %24 = load [4 x i32]*, [4 x i32]** %matrix.addr, align 8
  %25 = load i32, i32* %minRow, align 4
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 %idxprom18
  %26 = load i32, i32* %maxCol, align 4
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx19, i64 0, i64 %idxprom20
  %27 = load i32, i32* %arrayidx21, align 4
  %28 = load i32, i32* %number.addr, align 4
  %cmp22 = icmp sgt i32 %27, %28
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.else17
  %29 = load i32, i32* %maxCol, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %maxCol, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.else17
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then16
  br label %if.end26

if.end26:                                         ; preds = %if.end25
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then10, %if.then
  %30 = load i32, i32* %retval, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %matrix = alloca [4 x [4 x i32]], align 16
  %result = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 3, i32* %row, align 4
  store i32 3, i32* %col, align 4
  %0 = bitcast [4 x [4 x i32]]* %matrix to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x [4 x i32]]* @__const.main.matrix to i8*), i64 64, i1 false)
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %matrix, i64 0, i64 0
  %call = call i32 @findNumber([4 x i32]* %arraydecay, i32* %row, i32* %col, i32 7)
  store i32 %call, i32* %result, align 4
  %1 = load i32, i32* %row, align 4
  %2 = load i32, i32* %col, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
