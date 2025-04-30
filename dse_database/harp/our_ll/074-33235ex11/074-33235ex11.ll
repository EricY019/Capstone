; ModuleID = 'code/074-33235ex11.c'
source_filename = "code/074-33235ex11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"arg: %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"California\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Oregon\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Washington\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Texas\00", align 1
@__const.main.states = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [15 x i8] c"state: %d: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"newarray: %d: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"I HAVE CHANGED!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %states = alloca [4 x i8*], align 16
  %num_states = alloca i32, align 4
  %newarray = alloca [4 x i8*], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %2, i8* %5)
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %7 = bitcast [4 x i8*]* %states to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i8*]* @__const.main.states to i8*), i64 32, i1 false)
  store i32 4, i32* %num_states, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %num_states, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %while.body3, label %while.end7

while.body3:                                      ; preds = %while.cond1
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds [4 x i8*], [4 x i8*]* %states, i64 0, i64 %idxprom4
  %12 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %10, i8* %12)
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond1, !llvm.loop !6

while.end7:                                       ; preds = %while.cond1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end7
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %argc.addr, align 4
  %cmp8 = icmp slt i32 %14, %15
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i8**, i8*** %argv.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds i8*, i8** %16, i64 %idxprom9
  %18 = load i8*, i8** %arrayidx10, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %arrayidx12 = getelementptr inbounds [4 x i8*], [4 x i8*]* %states, i64 0, i64 %idxprom11
  store i8* %18, i8** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %20, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %21 = bitcast [4 x i8*]* %newarray to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %21, i8 0, i64 32, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc24, %for.end
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %num_states, align 4
  %cmp15 = icmp slt i32 %22, %23
  br i1 %cmp15, label %for.body16, label %for.end26

for.body16:                                       ; preds = %for.cond14
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [4 x i8*], [4 x i8*]* %states, i64 0, i64 %idxprom17
  %26 = load i8*, i8** %arrayidx18, align 8
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %24, i8* %26)
  %27 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds [4 x i8*], [4 x i8*]* %states, i64 0, i64 %idxprom20
  %28 = load i8*, i8** %arrayidx21, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %29 to i64
  %arrayidx23 = getelementptr inbounds [4 x i8*], [4 x i8*]* %newarray, i64 0, i64 %idxprom22
  store i8* %28, i8** %arrayidx23, align 8
  br label %for.inc24

for.inc24:                                        ; preds = %for.body16
  %30 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %30, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond14, !llvm.loop !8

for.end26:                                        ; preds = %for.cond14
  store i32 0, i32* %i, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc33, %for.end26
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %num_states, align 4
  %cmp28 = icmp slt i32 %31, %32
  br i1 %cmp28, label %for.body29, label %for.end35

for.body29:                                       ; preds = %for.cond27
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %34 to i64
  %arrayidx31 = getelementptr inbounds [4 x i8*], [4 x i8*]* %newarray, i64 0, i64 %idxprom30
  %35 = load i8*, i8** %arrayidx31, align 8
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %33, i8* %35)
  br label %for.inc33

for.inc33:                                        ; preds = %for.body29
  %36 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %36, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond27, !llvm.loop !9

for.end35:                                        ; preds = %for.cond27
  %arrayidx36 = getelementptr inbounds [4 x i8*], [4 x i8*]* %states, i64 0, i64 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8** %arrayidx36, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc43, %for.end35
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %num_states, align 4
  %cmp38 = icmp slt i32 %37, %38
  br i1 %cmp38, label %for.body39, label %for.end45

for.body39:                                       ; preds = %for.cond37
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %40 to i64
  %arrayidx41 = getelementptr inbounds [4 x i8*], [4 x i8*]* %newarray, i64 0, i64 %idxprom40
  %41 = load i8*, i8** %arrayidx41, align 8
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %39, i8* %41)
  br label %for.inc43

for.inc43:                                        ; preds = %for.body39
  %42 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %42, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond37, !llvm.loop !10

for.end45:                                        ; preds = %for.cond37
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }

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
