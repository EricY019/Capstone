; ModuleID = 'code/038-11057Peakfinder.c'
source_filename = "code/038-11057Peakfinder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.array = private unnamed_addr constant [5 x [5 x i32]] [[5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 75], [5 x i32] [i32 6, i32 5, i32 4, i32 5, i32 3], [5 x i32] [i32 3, i32 6, i32 7, i32 8, i32 3], [5 x i32] [i32 4, i32 3, i32 0, i32 9, i32 4], [5 x i32] [i32 2, i32 4, i32 2, i32 10, i32 11]], align 16
@.str = private unnamed_addr constant [42 x i8] c"Peek found at: Column %d  Row %d, is: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [5 x [5 x i32]], align 16
  %mid = alloca i32, align 4
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %maxi = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [5 x [5 x i32]]* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([5 x [5 x i32]]* @__const.main.array to i8*), i64 100, i1 false)
  store i32 2, i32* %mid, align 4
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom
  %2 = load i32, i32* %mid, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx, i64 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  store i32 %3, i32* %max, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom3
  %6 = load i32, i32* %mid, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx4, i64 0, i64 %idxprom5
  %7 = load i32, i32* %arrayidx6, align 4
  %8 = load i32, i32* %max, align 4
  %cmp7 = icmp sge i32 %7, %8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom8
  %10 = load i32, i32* %mid, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx9, i64 0, i64 %idxprom10
  %11 = load i32, i32* %arrayidx11, align 4
  store i32 %11, i32* %max, align 4
  %12 = load i32, i32* %i, align 4
  store i32 %12, i32* %maxi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %max, align 4
  %15 = load i32, i32* %maxi, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom12
  %16 = load i32, i32* %mid, align 4
  %sub = sub nsw i32 %16, 1
  %idxprom14 = sext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx13, i64 0, i64 %idxprom14
  %17 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp slt i32 %14, %17
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.end
  %18 = load i32, i32* %mid, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %mid, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc32, %if.then17
  %19 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %19, 5
  br i1 %cmp19, label %for.body20, label %for.end34

for.body20:                                       ; preds = %for.cond18
  %20 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %20 to i64
  %arrayidx22 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom21
  %21 = load i32, i32* %mid, align 4
  %idxprom23 = sext i32 %21 to i64
  %arrayidx24 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx22, i64 0, i64 %idxprom23
  %22 = load i32, i32* %arrayidx24, align 4
  %23 = load i32, i32* %max, align 4
  %cmp25 = icmp sge i32 %22, %23
  br i1 %cmp25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %for.body20
  %24 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom27
  %25 = load i32, i32* %mid, align 4
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx28, i64 0, i64 %idxprom29
  %26 = load i32, i32* %arrayidx30, align 4
  store i32 %26, i32* %max, align 4
  %27 = load i32, i32* %i, align 4
  store i32 %27, i32* %maxi, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %for.body20
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %28 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %28, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond18, !llvm.loop !6

for.end34:                                        ; preds = %for.cond18
  br label %if.end60

if.else:                                          ; preds = %for.end
  %29 = load i32, i32* %max, align 4
  %30 = load i32, i32* %maxi, align 4
  %idxprom35 = sext i32 %30 to i64
  %arrayidx36 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom35
  %31 = load i32, i32* %mid, align 4
  %add = add nsw i32 %31, 1
  %idxprom37 = sext i32 %add to i64
  %arrayidx38 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx36, i64 0, i64 %idxprom37
  %32 = load i32, i32* %arrayidx38, align 4
  %cmp39 = icmp slt i32 %29, %32
  br i1 %cmp39, label %if.then40, label %if.end59

if.then40:                                        ; preds = %if.else
  %33 = load i32, i32* %mid, align 4
  %inc41 = add nsw i32 %33, 1
  store i32 %inc41, i32* %mid, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc56, %if.then40
  %34 = load i32, i32* %i, align 4
  %cmp43 = icmp slt i32 %34, 5
  br i1 %cmp43, label %for.body44, label %for.end58

for.body44:                                       ; preds = %for.cond42
  %35 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %35 to i64
  %arrayidx46 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom45
  %36 = load i32, i32* %mid, align 4
  %idxprom47 = sext i32 %36 to i64
  %arrayidx48 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx46, i64 0, i64 %idxprom47
  %37 = load i32, i32* %arrayidx48, align 4
  %38 = load i32, i32* %max, align 4
  %cmp49 = icmp sge i32 %37, %38
  br i1 %cmp49, label %if.then50, label %if.end55

if.then50:                                        ; preds = %for.body44
  %39 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %39 to i64
  %arrayidx52 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom51
  %40 = load i32, i32* %mid, align 4
  %idxprom53 = sext i32 %40 to i64
  %arrayidx54 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx52, i64 0, i64 %idxprom53
  %41 = load i32, i32* %arrayidx54, align 4
  store i32 %41, i32* %max, align 4
  %42 = load i32, i32* %i, align 4
  store i32 %42, i32* %maxi, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %for.body44
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %43 = load i32, i32* %i, align 4
  %inc57 = add nsw i32 %43, 1
  store i32 %inc57, i32* %i, align 4
  br label %for.cond42, !llvm.loop !7

for.end58:                                        ; preds = %for.cond42
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end34
  %44 = load i32, i32* %max, align 4
  %45 = load i32, i32* %maxi, align 4
  %idxprom61 = sext i32 %45 to i64
  %arrayidx62 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom61
  %46 = load i32, i32* %mid, align 4
  %sub63 = sub nsw i32 %46, 1
  %idxprom64 = sext i32 %sub63 to i64
  %arrayidx65 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx62, i64 0, i64 %idxprom64
  %47 = load i32, i32* %arrayidx65, align 4
  %cmp66 = icmp slt i32 %44, %47
  br i1 %cmp66, label %if.then67, label %if.else86

if.then67:                                        ; preds = %if.end60
  %48 = load i32, i32* %mid, align 4
  %dec68 = add nsw i32 %48, -1
  store i32 %dec68, i32* %mid, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc83, %if.then67
  %49 = load i32, i32* %i, align 4
  %cmp70 = icmp slt i32 %49, 5
  br i1 %cmp70, label %for.body71, label %for.end85

for.body71:                                       ; preds = %for.cond69
  %50 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %50 to i64
  %arrayidx73 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom72
  %51 = load i32, i32* %mid, align 4
  %idxprom74 = sext i32 %51 to i64
  %arrayidx75 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx73, i64 0, i64 %idxprom74
  %52 = load i32, i32* %arrayidx75, align 4
  %53 = load i32, i32* %max, align 4
  %cmp76 = icmp sge i32 %52, %53
  br i1 %cmp76, label %if.then77, label %if.end82

if.then77:                                        ; preds = %for.body71
  %54 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %54 to i64
  %arrayidx79 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom78
  %55 = load i32, i32* %mid, align 4
  %idxprom80 = sext i32 %55 to i64
  %arrayidx81 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx79, i64 0, i64 %idxprom80
  %56 = load i32, i32* %arrayidx81, align 4
  store i32 %56, i32* %max, align 4
  %57 = load i32, i32* %i, align 4
  store i32 %57, i32* %maxi, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %for.body71
  br label %for.inc83

for.inc83:                                        ; preds = %if.end82
  %58 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %58, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond69, !llvm.loop !8

for.end85:                                        ; preds = %for.cond69
  br label %if.end113

if.else86:                                        ; preds = %if.end60
  %59 = load i32, i32* %max, align 4
  %60 = load i32, i32* %maxi, align 4
  %idxprom87 = sext i32 %60 to i64
  %arrayidx88 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom87
  %61 = load i32, i32* %mid, align 4
  %add89 = add nsw i32 %61, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx88, i64 0, i64 %idxprom90
  %62 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp slt i32 %59, %62
  br i1 %cmp92, label %if.then93, label %if.end112

if.then93:                                        ; preds = %if.else86
  %63 = load i32, i32* %mid, align 4
  %inc94 = add nsw i32 %63, 1
  store i32 %inc94, i32* %mid, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc109, %if.then93
  %64 = load i32, i32* %i, align 4
  %cmp96 = icmp slt i32 %64, 5
  br i1 %cmp96, label %for.body97, label %for.end111

for.body97:                                       ; preds = %for.cond95
  %65 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %65 to i64
  %arrayidx99 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom98
  %66 = load i32, i32* %mid, align 4
  %idxprom100 = sext i32 %66 to i64
  %arrayidx101 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx99, i64 0, i64 %idxprom100
  %67 = load i32, i32* %arrayidx101, align 4
  %68 = load i32, i32* %max, align 4
  %cmp102 = icmp sge i32 %67, %68
  br i1 %cmp102, label %if.then103, label %if.end108

if.then103:                                       ; preds = %for.body97
  %69 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %69 to i64
  %arrayidx105 = getelementptr inbounds [5 x [5 x i32]], [5 x [5 x i32]]* %array, i64 0, i64 %idxprom104
  %70 = load i32, i32* %mid, align 4
  %idxprom106 = sext i32 %70 to i64
  %arrayidx107 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx105, i64 0, i64 %idxprom106
  %71 = load i32, i32* %arrayidx107, align 4
  store i32 %71, i32* %max, align 4
  %72 = load i32, i32* %i, align 4
  store i32 %72, i32* %maxi, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %for.body97
  br label %for.inc109

for.inc109:                                       ; preds = %if.end108
  %73 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %73, 1
  store i32 %inc110, i32* %i, align 4
  br label %for.cond95, !llvm.loop !9

for.end111:                                       ; preds = %for.cond95
  br label %if.end112

if.end112:                                        ; preds = %for.end111, %if.else86
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %for.end85
  %74 = load i32, i32* %mid, align 4
  %add114 = add nsw i32 %74, 1
  %75 = load i32, i32* %maxi, align 4
  %add115 = add nsw i32 %75, 1
  %76 = load i32, i32* %max, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %add114, i32 %add115, i32 %76)
  %77 = load i32, i32* %retval, align 4
  ret i32 %77
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
