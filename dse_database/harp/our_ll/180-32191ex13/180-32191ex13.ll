; ModuleID = 'code/180-32191ex13.c'
source_filename = "code/180-32191ex13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"two\00", align 1
@__const.main.string = private unnamed_addr constant [8 x i8] c"strang\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"arg %d: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"California\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Oregon\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Washington\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Texas\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"state %d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %string = alloca [8 x i8], align 1
  %states = alloca [5 x i8*], align 16
  %num_states = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %arrayidx, align 8
  %1 = bitcast [8 x i8]* %string to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.main.string, i32 0, i32 0), i64 8, i1 false)
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %string, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay)
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %5 = load i8**, i8*** %argv.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx1 = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %7 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %4, i8* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %arrayinit.begin = getelementptr inbounds [5 x i8*], [5 x i8*]* %states, i64 0, i64 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %arrayinit.begin, align 8
  %arrayinit.element = getelementptr inbounds i8*, i8** %arrayinit.begin, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %arrayinit.element, align 8
  %arrayinit.element3 = getelementptr inbounds i8*, i8** %arrayinit.element, i64 1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %arrayinit.element3, align 8
  %arrayinit.element4 = getelementptr inbounds i8*, i8** %arrayinit.element3, i64 1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %arrayinit.element4, align 8
  %arrayinit.element5 = getelementptr inbounds i8*, i8** %arrayinit.element4, i64 1
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %9, i64 2
  %10 = load i8*, i8** %arrayidx6, align 8
  store i8* %10, i8** %arrayinit.element5, align 8
  store i32 5, i32* %num_states, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc13, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %num_states, align 4
  %cmp8 = icmp slt i32 %11, %12
  br i1 %cmp8, label %for.body9, label %for.end15

for.body9:                                        ; preds = %for.cond7
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [5 x i8*], [5 x i8*]* %states, i64 0, i64 %idxprom10
  %15 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %13, i8* %15)
  br label %for.inc13

for.inc13:                                        ; preds = %for.body9
  %16 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond7, !llvm.loop !6

for.end15:                                        ; preds = %for.cond7
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
!6 = distinct !{!6, !5}
