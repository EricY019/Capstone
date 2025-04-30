; ModuleID = 'code/311-26821ex11.c'
source_filename = "code/311-26821ex11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"arg %d: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"California\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Oregon\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Washington\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Texas\00", align 1
@__const.main.states = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [14 x i8] c"state %d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %states = alloca [4 x i8*], align 16
  %num_states = alloca i32, align 4
  %y = alloca i32, align 4
  %copies = alloca i32, align 4
  %r = alloca i32, align 4
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %2, i8* %5)
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %7 = bitcast [4 x i8*]* %states to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([4 x i8*]* @__const.main.states to i8*), i64 32, i1 false)
  store i32 4, i32* %num_states, align 4
  store i32 0, i32* %y, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %8 = load i32, i32* %y, align 4
  %9 = load i32, i32* %num_states, align 4
  %cmp2 = icmp slt i32 %8, %9
  br i1 %cmp2, label %while.body3, label %while.end7

while.body3:                                      ; preds = %while.cond1
  %10 = load i32, i32* %y, align 4
  %11 = load i32, i32* %y, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds [4 x i8*], [4 x i8*]* %states, i64 0, i64 %idxprom4
  %12 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %10, i8* %12)
  %13 = load i32, i32* %y, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %y, align 4
  br label %while.cond1, !llvm.loop !6

while.end7:                                       ; preds = %while.cond1
  store i32 0, i32* %copies, align 4
  br label %while.cond8

while.cond8:                                      ; preds = %if.end, %while.end7
  %14 = load i32, i32* %copies, align 4
  %15 = load i32, i32* %argc.addr, align 4
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %while.body10, label %while.end17

while.body10:                                     ; preds = %while.cond8
  %16 = load i32, i32* %copies, align 4
  %cmp11 = icmp eq i32 %16, 3
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.body10
  br label %while.end17

if.end:                                           ; preds = %while.body10
  %17 = load i8**, i8*** %argv.addr, align 8
  %18 = load i32, i32* %copies, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds i8*, i8** %17, i64 %idxprom12
  %19 = load i8*, i8** %arrayidx13, align 8
  %20 = load i32, i32* %copies, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [4 x i8*], [4 x i8*]* %states, i64 0, i64 %idxprom14
  store i8* %19, i8** %arrayidx15, align 8
  %21 = load i32, i32* %copies, align 4
  %inc16 = add nsw i32 %21, 1
  store i32 %inc16, i32* %copies, align 4
  br label %while.cond8, !llvm.loop !7

while.end17:                                      ; preds = %if.then, %while.cond8
  store i32 0, i32* %r, align 4
  br label %while.cond18

while.cond18:                                     ; preds = %while.body20, %while.end17
  %22 = load i32, i32* %r, align 4
  %23 = load i32, i32* %num_states, align 4
  %cmp19 = icmp slt i32 %22, %23
  br i1 %cmp19, label %while.body20, label %while.end25

while.body20:                                     ; preds = %while.cond18
  %24 = load i32, i32* %r, align 4
  %25 = load i32, i32* %r, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [4 x i8*], [4 x i8*]* %states, i64 0, i64 %idxprom21
  %26 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %24, i8* %26)
  %27 = load i32, i32* %r, align 4
  %inc24 = add nsw i32 %27, 1
  store i32 %inc24, i32* %r, align 4
  br label %while.cond18, !llvm.loop !8

while.end25:                                      ; preds = %while.cond18
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
