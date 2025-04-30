; ModuleID = 'code/135-13575Upcase.c'
source_filename = "code/135-13575Upcase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"dp = %s\0A\00", align 1
@__const.main.str = private unnamed_addr constant [20 x i8] c"Nice weather today!\00", align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"str= %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"up = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @upcase(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %dst = alloca i8, align 1
  %dp = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  store i8* %dst, i8** %dp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c, align 1
  %4 = load i8, i8* %c, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = load i8, i8* %c, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8, i8* %c, align 1
  %conv5 = sext i8 %6 to i32
  %add = add nsw i32 %conv5, -32
  %conv6 = trunc i32 %add to i8
  store i8 %conv6, i8* %c, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %7 = load i8, i8* %c, align 1
  %8 = load i8*, i8** %dp, align 8
  %incdec.ptr7 = getelementptr inbounds i8, i8* %8, i32 -1
  store i8* %incdec.ptr7, i8** %dp, align 8
  store i8 %7, i8* %8, align 1
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %9 = load i8*, i8** %dp, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %9)
  %10 = load i8*, i8** %dp, align 8
  ret i8* %10
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %str = alloca [20 x i8], align 16
  %0 = bitcast [20 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.main.str, i32 0, i32 0), i64 20, i1 false)
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %call2 = call i8* @upcase(i8* %arraydecay1)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %call2)
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
