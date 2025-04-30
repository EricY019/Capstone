; ModuleID = 'code/297-321832017-02-22-Strings.c'
source_filename = "code/297-321832017-02-22-Strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\0A\09\09HALLO WELT als Stringkonstante!\0A\09\09\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\0A\09\09\00", align 1
@__const.main.halloWelt = private unnamed_addr constant [11 x i8] c"HALLO WELT\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__const.main.hW = private unnamed_addr constant [12 x i8] c"HALLO WELT\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %stringArray = alloca [11 x i8], align 1
  %i = alloca i32, align 4
  %halloWelt = alloca [11 x i8], align 1
  %hW = alloca [12 x i8], align 1
  store i32 0, i32* %retval, align 4
  %call = call i32 @system(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %arrayidx = getelementptr inbounds [11 x i8], [11 x i8]* %stringArray, i64 0, i64 0
  store i8 72, i8* %arrayidx, align 1
  %arrayidx3 = getelementptr inbounds [11 x i8], [11 x i8]* %stringArray, i64 0, i64 1
  store i8 65, i8* %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [11 x i8], [11 x i8]* %stringArray, i64 0, i64 2
  store i8 76, i8* %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [11 x i8], [11 x i8]* %stringArray, i64 0, i64 3
  store i8 76, i8* %arrayidx5, align 1
  %arrayidx6 = getelementptr inbounds [11 x i8], [11 x i8]* %stringArray, i64 0, i64 4
  store i8 79, i8* %arrayidx6, align 1
  %arrayidx7 = getelementptr inbounds [11 x i8], [11 x i8]* %stringArray, i64 0, i64 5
  store i8 32, i8* %arrayidx7, align 1
  %arrayidx8 = getelementptr inbounds [11 x i8], [11 x i8]* %stringArray, i64 0, i64 6
  store i8 87, i8* %arrayidx8, align 1
  %arrayidx9 = getelementptr inbounds [11 x i8], [11 x i8]* %stringArray, i64 0, i64 7
  store i8 69, i8* %arrayidx9, align 1
  %arrayidx10 = getelementptr inbounds [11 x i8], [11 x i8]* %stringArray, i64 0, i64 8
  store i8 76, i8* %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds [11 x i8], [11 x i8]* %stringArray, i64 0, i64 9
  store i8 84, i8* %arrayidx11, align 1
  %arrayidx12 = getelementptr inbounds [11 x i8], [11 x i8]* %stringArray, i64 0, i64 10
  store i8 0, i8* %arrayidx12, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx13 = getelementptr inbounds [11 x i8], [11 x i8]* %stringArray, i64 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx13, align 1
  %conv = sext i8 %2 to i32
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %4 = bitcast [11 x i8]* %halloWelt to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.main.halloWelt, i32 0, i32 0), i64 11, i1 false)
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %halloWelt, i64 0, i64 0
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay)
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %5 = bitcast [12 x i8]* %hW to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.main.hW, i32 0, i32 0), i64 12, i1 false)
  %arraydecay18 = getelementptr inbounds [12 x i8], [12 x i8]* %hW, i64 0, i64 0
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay18)
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @system(i8*) #1

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
