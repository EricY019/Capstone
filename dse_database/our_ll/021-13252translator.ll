; ModuleID = 'code/021-13252translator.c'
source_filename = "code/021-13252translator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__const.main.mas = private unnamed_addr constant [35 x i8] c"xrrJfvuGrgveJhbLqvQfznetbeClanZjbU\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trans(i8* %arr) #0 {
entry:
  %arr.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ch = alloca i8, align 1
  %number = alloca i32, align 4
  %n = alloca i32, align 4
  store i8* %arr, i8** %arr.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %arr.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  store i8 %3, i8* %ch, align 1
  %4 = load i8*, i8** %arr.addr, align 8
  %5 = load i32, i32* %i, align 4
  %sub = sub nsw i32 33, %5
  %idxprom1 = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %7 = load i8*, i8** %arr.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom3
  store i8 %6, i8* %arrayidx4, align 1
  %9 = load i8, i8* %ch, align 1
  %10 = load i8*, i8** %arr.addr, align 8
  %11 = load i32, i32* %i, align 4
  %sub5 = sub nsw i32 33, %11
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 %idxprom6
  store i8 %9, i8* %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc41, %for.end
  %13 = load i8*, i8** %arr.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  %15 = load i8, i8* %arrayidx10, align 1
  %conv = sext i8 %15 to i32
  %cmp11 = icmp ne i32 %conv, 0
  br i1 %cmp11, label %for.body13, label %for.end43

for.body13:                                       ; preds = %for.cond8
  %16 = load i8*, i8** %arr.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %16, i64 %idxprom14
  %18 = load i8, i8* %arrayidx15, align 1
  store i8 %18, i8* %ch, align 1
  store i32 13, i32* %n, align 4
  %19 = load i8*, i8** %arr.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %19, i64 %idxprom16
  %21 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %21 to i32
  %cmp19 = icmp sge i32 %conv18, 65
  br i1 %cmp19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body13
  %22 = load i8*, i8** %arr.addr, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %22, i64 %idxprom21
  %24 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %24 to i32
  %cmp24 = icmp sle i32 %conv23, 90
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %25 = load i8*, i8** %arr.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %25, i64 %idxprom26
  store i8 65, i8* %arrayidx27, align 1
  %27 = load i8, i8* %ch, align 1
  %conv28 = sext i8 %27 to i32
  %sub29 = sub nsw i32 %conv28, 65
  store i32 %sub29, i32* %number, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body13
  %28 = load i8, i8* %ch, align 1
  %conv30 = sext i8 %28 to i32
  %sub31 = sub nsw i32 %conv30, 97
  store i32 %sub31, i32* %number, align 4
  %29 = load i8*, i8** %arr.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %29, i64 %idxprom32
  store i8 97, i8* %arrayidx33, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load i32, i32* %number, align 4
  %32 = load i32, i32* %n, align 4
  %add = add nsw i32 %31, %32
  %rem = srem i32 %add, 26
  store i32 %rem, i32* %number, align 4
  %33 = load i8*, i8** %arr.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %34 to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %33, i64 %idxprom34
  %35 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %35 to i32
  %36 = load i32, i32* %number, align 4
  %add37 = add nsw i32 %conv36, %36
  %conv38 = trunc i32 %add37 to i8
  %37 = load i8*, i8** %arr.addr, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %38 to i64
  %arrayidx40 = getelementptr inbounds i8, i8* %37, i64 %idxprom39
  store i8 %conv38, i8* %arrayidx40, align 1
  br label %for.inc41

for.inc41:                                        ; preds = %if.end
  %39 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %39, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond8, !llvm.loop !6

for.end43:                                        ; preds = %for.cond8
  %40 = load i8*, i8** %arr.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %40)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %mas = alloca [35 x i8], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [35 x i8]* %mas to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([35 x i8], [35 x i8]* @__const.main.mas, i32 0, i32 0), i64 35, i1 false)
  %arraydecay = getelementptr inbounds [35 x i8], [35 x i8]* %mas, i64 0, i64 0
  call void @trans(i8* %arraydecay)
  ret i32 0
}

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
