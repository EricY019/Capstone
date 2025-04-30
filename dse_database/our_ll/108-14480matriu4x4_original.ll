; ModuleID = 'code/108-14480matriu4x4_original.c'
source_filename = "code/108-14480matriu4x4_original.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @multiplica([4 x i32]* %A, [4 x i32]* %B, [4 x i32]* %C, i32 %n_iter) #0 {
entry:
  %A.addr = alloca [4 x i32]*, align 8
  %B.addr = alloca [4 x i32]*, align 8
  %C.addr = alloca [4 x i32]*, align 8
  %n_iter.addr = alloca i32, align 4
  %iter = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store [4 x i32]* %A, [4 x i32]** %A.addr, align 8
  store [4 x i32]* %B, [4 x i32]** %B.addr, align 8
  store [4 x i32]* %C, [4 x i32]** %C.addr, align 8
  store i32 %n_iter, i32* %n_iter.addr, align 4
  store i32 0, i32* %iter, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %0 = load i32, i32* %iter, align 4
  %1 = load i32, i32* %n_iter.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc27, %for.body
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %2, 4
  br i1 %cmp2, label %for.body3, label %for.end29

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %j, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc24, %for.body3
  %3 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %3, 4
  br i1 %cmp5, label %for.body6, label %for.end26

for.body6:                                        ; preds = %for.cond4
  store i32 0, i32* %k, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %4 = load i32, i32* %k, align 4
  %cmp8 = icmp slt i32 %4, 4
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %5 = load [4 x i32]*, [4 x i32]** %C.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 %idxprom
  %7 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom10
  %8 = load i32, i32* %arrayidx11, align 4
  %9 = load [4 x i32]*, [4 x i32]** %A.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 %idxprom12
  %11 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx13, i64 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %13 = load [4 x i32]*, [4 x i32]** %B.addr, align 8
  %14 = load i32, i32* %k, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 %idxprom16
  %15 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx17, i64 0, i64 %idxprom18
  %16 = load i32, i32* %arrayidx19, align 4
  %mul = mul nsw i32 %12, %16
  %add = add nsw i32 %8, %mul
  %17 = load [4 x i32]*, [4 x i32]** %C.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 %idxprom20
  %19 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx21, i64 0, i64 %idxprom22
  store i32 %add, i32* %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %20 = load i32, i32* %k, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond7, !llvm.loop !4

for.end:                                          ; preds = %for.cond7
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %21 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond4, !llvm.loop !6

for.end26:                                        ; preds = %for.cond4
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %22 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %22, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end29:                                        ; preds = %for.cond1
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %23 = load i32, i32* %iter, align 4
  %inc31 = add nsw i32 %23, 1
  store i32 %inc31, i32* %iter, align 4
  br label %for.cond, !llvm.loop !8

for.end32:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_matriu([4 x i32]* %C) #0 {
entry:
  %C.addr = alloca [4 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store [4 x i32]* %C, [4 x i32]** %C.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load [4 x i32]*, [4 x i32]** %C.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end9:                                         ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %A = alloca [4 x [4 x i32]], align 16
  %B = alloca [4 x [4 x i32]], align 16
  %C = alloca [4 x [4 x i32]], align 16
  %n_iter = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [4 x [4 x i32]]* %C to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 64, i1 false)
  store i32 10000000, i32* %n_iter, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end13

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp ult i32 %2, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @rand() #5
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %A, i64 0, i64 %idxprom
  %4 = load i32, i32* %j, align 4
  %idxprom4 = zext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx, i64 0, i64 %idxprom4
  store i32 %call, i32* %arrayidx5, align 4
  %call6 = call i32 @rand() #5
  %5 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %B, i64 0, i64 %idxprom7
  %6 = load i32, i32* %j, align 4
  %idxprom9 = zext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx8, i64 0, i64 %idxprom9
  store i32 %call6, i32* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %7 = load i32, i32* %j, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !11

for.end:                                          ; preds = %for.cond1
  br label %for.inc11

for.inc11:                                        ; preds = %for.end
  %8 = load i32, i32* %i, align 4
  %inc12 = add i32 %8, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  %9 = load i32, i32* %argc.addr, align 4
  %cmp14 = icmp sgt i32 %9, 1
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.end13
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %10, i64 1
  %11 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 @atoi(i8* %11) #6
  store i32 %call16, i32* %n_iter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end13
  %arraydecay = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %A, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %B, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %C, i64 0, i64 0
  %12 = load i32, i32* %n_iter, align 4
  call void @multiplica([4 x i32]* %arraydecay, [4 x i32]* %arraydecay17, [4 x i32]* %arraydecay18, i32 %12)
  %arraydecay19 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* %C, i64 0, i64 0
  call void @print_matriu([4 x i32]* %arraydecay19)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
