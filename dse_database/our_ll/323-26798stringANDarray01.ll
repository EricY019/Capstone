; ModuleID = 'code/323-26798stringANDarray01.c'
source_filename = "code/323-26798stringANDarray01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [12 x i8] c"I am a boy.\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"string a is : %s \0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"string b is :\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [12 x i8], align 1
  %b = alloca [20 x i8], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [12 x i8]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.main.a, i32 0, i32 0), i64 12, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %a, i64 0, i64 0
  %1 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext
  %2 = load i8, i8* %add.ptr, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [12 x i8], [12 x i8]* %a, i64 0, i64 0
  %3 = load i32, i32* %i, align 4
  %idx.ext3 = sext i32 %3 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %arraydecay2, i64 %idx.ext3
  %4 = load i8, i8* %add.ptr4, align 1
  %arraydecay5 = getelementptr inbounds [20 x i8], [20 x i8]* %b, i64 0, i64 0
  %5 = load i32, i32* %i, align 4
  %idx.ext6 = sext i32 %5 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %arraydecay5, i64 %idx.ext6
  store i8 %4, i8* %add.ptr7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [20 x i8], [20 x i8]* %b, i64 0, i64 0
  %7 = load i32, i32* %i, align 4
  %idx.ext9 = sext i32 %7 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %arraydecay8, i64 %idx.ext9
  store i8 0, i8* %add.ptr10, align 1
  %arraydecay11 = getelementptr inbounds [12 x i8], [12 x i8]* %a, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %arraydecay11)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc23, %for.end
  %arraydecay14 = getelementptr inbounds [20 x i8], [20 x i8]* %b, i64 0, i64 0
  %8 = load i32, i32* %i, align 4
  %idx.ext15 = sext i32 %8 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %arraydecay14, i64 %idx.ext15
  %9 = load i8, i8* %add.ptr16, align 1
  %conv17 = sext i8 %9 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  br i1 %cmp18, label %for.body20, label %for.end25

for.body20:                                       ; preds = %for.cond13
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [20 x i8], [20 x i8]* %b, i64 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv21 = sext i8 %11 to i32
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %conv21)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body20
  %12 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %12, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond13, !llvm.loop !6

for.end25:                                        ; preds = %for.cond13
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
