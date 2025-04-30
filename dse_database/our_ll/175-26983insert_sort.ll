; ModuleID = 'code/175-26983insert_sort.c'
source_filename = "code/175-26983insert_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.num = private unnamed_addr constant [8 x i32] [i32 52, i32 38, i32 11, i32 78, i32 90, i32 44, i32 16, i32 27], align 16
@.str = private unnamed_addr constant [6 x i8] c"%d \0A \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"pause\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_sort(i32* %a, i32 %n) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca i32, align 4
  %k = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load i32*, i32** %a.addr, align 8
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32*, i32** %a.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp slt i32 %4, %7
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %8, %9
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %j, align 4
  %cmp5 = icmp ne i32 %12, %13
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %14 = load i32*, i32** %a.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 %idxprom6
  %16 = load i32, i32* %arrayidx7, align 4
  store i32 %16, i32* %temp, align 4
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %k, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %if.then
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %j, align 4
  %cmp9 = icmp sgt i32 %18, %19
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %20 = load i32*, i32** %a.addr, align 8
  %21 = load i32, i32* %k, align 4
  %sub = sub nsw i32 %21, 1
  %idxprom11 = sext i32 %sub to i64
  %arrayidx12 = getelementptr inbounds i32, i32* %20, i64 %idxprom11
  %22 = load i32, i32* %arrayidx12, align 4
  %23 = load i32*, i32** %a.addr, align 8
  %24 = load i32, i32* %k, align 4
  %idxprom13 = sext i32 %24 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %23, i64 %idxprom13
  store i32 %22, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %25 = load i32, i32* %k, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond8, !llvm.loop !6

for.end:                                          ; preds = %for.cond8
  %26 = load i32, i32* %temp, align 4
  %27 = load i32*, i32** %a.addr, align 8
  %28 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %28 to i64
  %arrayidx16 = getelementptr inbounds i32, i32* %27, i64 %idxprom15
  store i32 %26, i32* %arrayidx16, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %while.end
  br label %for.inc17

for.inc17:                                        ; preds = %if.end
  %29 = load i32, i32* %i, align 4
  %inc18 = add nsw i32 %29, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end19:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %num = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [8 x i32]* %num to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x i32]* @__const.main.num to i8*), i64 32, i1 false)
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %num, i64 0, i64 0
  call void @insert_sort(i32* %arraydecay, i32 8)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %num, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @system(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @system(i8*) #2

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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
