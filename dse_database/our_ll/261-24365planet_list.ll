; ModuleID = 'code/261-24365planet_list.c'
source_filename = "code/261-24365planet_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Mercury\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Venus\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Earth\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Mars\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Jupiter\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Saturn\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Uranus\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Neptune\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Pluto\00", align 1
@__const.main.planets = private unnamed_addr constant [9 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__const.main.fmt = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %planets = alloca [9 x i8*], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fmt = alloca [4 x i8], align 1
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [9 x i8*]* %planets to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([9 x i8*]* @__const.main.planets to i8*), i64 72, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [9 x i8*], [9 x i8*]* %planets, i64 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %5 = bitcast [4 x i8]* %fmt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.fmt, i32 0, i32 0), i64 4, i1 false)
  store i32 3, i32* %k, align 4
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %fmt, i64 0, i64 0
  %6 = load i32, i32* %k, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* %arraydecay, i32 %6)
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
