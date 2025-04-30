; ModuleID = 'code/103-30968strtoul.c'
source_filename = "code/103-30968strtoul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"   10M\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"  10m\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"+20M\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"+ 30M\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"1G\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"12 M\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"  13 M\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"w 10 M\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c" w 10 M\00", align 1
@__const.main.pList = private unnamed_addr constant [10 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@.str.9 = private unnamed_addr constant [30 x i8] c"[%s] = [%lu], p = [%s], [%s]\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"success\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i64, align 8
  %p = alloca i8*, align 8
  %pList = alloca [10 x i8*], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %x, align 8
  store i8* null, i8** %p, align 8
  %0 = bitcast [10 x i8*]* %pList to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([10 x i8*]* @__const.main.pList to i8*), i64 80, i1 false)
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i8*], [10 x i8*]* %pList, i64 0, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [10 x i8*], [10 x i8*]* %pList, i64 0, i64 %idxprom1
  %4 = load i8*, i8** %arrayidx2, align 8
  %call = call i64 @strtoul(i8* %4, i8** %p, i32 0) #4
  store i64 %call, i64* %x, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [10 x i8*], [10 x i8*]* %pList, i64 0, i64 %idxprom3
  %6 = load i8*, i8** %arrayidx4, align 8
  %7 = load i64, i64* %x, align 8
  %8 = load i8*, i8** %p, align 8
  %9 = load i8*, i8** %p, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [10 x i8*], [10 x i8*]* %pList, i64 0, i64 %idxprom5
  %11 = load i8*, i8** %arrayidx6, align 8
  %cmp7 = icmp eq i8* %9, %11
  %12 = zext i1 %cmp7 to i64
  %cond = select i1 %cmp7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %6, i64 %7, i8* %8, i8* %cond)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i64 @strtoul(i8*, i8**, i32) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
