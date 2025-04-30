; ModuleID = 'code/338-21843RecursiveTest.c'
source_filename = "code/338-21843RecursiveTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printArray(i32* %data) #0 {
entry:
  %data.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %data, i32** %data.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %data.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comb(i32 %n, i32 %r, i32 %lvl, i32* %data) #0 {
entry:
  %n.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %lvl.addr = alloca i32, align 4
  %data.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  store i32 %lvl, i32* %lvl.addr, align 4
  store i32* %data, i32** %data.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %r.addr, align 4
  %cmp = icmp sge i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32*, i32** %data.addr, align 8
  %5 = load i32, i32* %lvl.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  %6 = load i32, i32* %r.addr, align 4
  %cmp1 = icmp eq i32 %6, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32*, i32** %data.addr, align 8
  call void @printArray(i32* %7)
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %8, 1
  %9 = load i32, i32* %r.addr, align 4
  %sub2 = sub nsw i32 %9, 1
  %10 = load i32, i32* %lvl.addr, align 4
  %add = add nsw i32 %10, 1
  %11 = load i32*, i32** %data.addr, align 8
  call void @comb(i32 %sub, i32 %sub2, i32 %add, i32* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %data = alloca [3 x i32], align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [3 x i32]* %data to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %0, i8 0, i64 12, i1 false)
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %data, i64 0, i64 0
  call void @comb(i32 5, i32 3, i32 0, i32* %arraydecay)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
