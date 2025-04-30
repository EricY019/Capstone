; ModuleID = './code/038-11057Peakfinder.c'
source_filename = "./code/038-11057Peakfinder.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.array = private unnamed_addr constant [5 x [5 x i32]] [[5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 75], [5 x i32] [i32 6, i32 5, i32 4, i32 5, i32 3], [5 x i32] [i32 3, i32 6, i32 7, i32 8, i32 3], [5 x i32] [i32 4, i32 3, i32 0, i32 9, i32 4], [5 x i32] [i32 2, i32 4, i32 2, i32 10, i32 11]], align 4
@.str = private unnamed_addr constant [42 x i8] c"Peek found at: Column %d  Row %d, is: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [5 x [5 x i32]], align 4
  %mid = alloca i32, align 4
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %maxi = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 4 @__const.main.array, i64 100, i1 false)
  store i32 2, ptr %mid, align 4
  %0 = load i32, ptr %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom
  %1 = load i32, ptr %mid, align 4
  %idxprom1 = sext i32 %1 to i64
  %arrayidx2 = getelementptr inbounds [5 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %2 = load i32, ptr %arrayidx2, align 4
  store i32 %2, ptr %max, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %3, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom3
  %5 = load i32, ptr %mid, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [5 x i32], ptr %arrayidx4, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4
  %7 = load i32, ptr %max, align 4
  %cmp7 = icmp sge i32 %6, %7
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom8
  %9 = load i32, ptr %mid, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr %arrayidx9, i64 0, i64 %idxprom10
  %10 = load i32, ptr %arrayidx11, align 4
  store i32 %10, ptr %max, align 4
  %11 = load i32, ptr %i, align 4
  store i32 %11, ptr %maxi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %max, align 4
  %14 = load i32, ptr %maxi, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom12
  %15 = load i32, ptr %mid, align 4
  %sub = sub nsw i32 %15, 1
  %idxprom14 = sext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds [5 x i32], ptr %arrayidx13, i64 0, i64 %idxprom14
  %16 = load i32, ptr %arrayidx15, align 4
  %cmp16 = icmp slt i32 %13, %16
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.end
  %17 = load i32, ptr %mid, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %mid, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc32, %if.then17
  %18 = load i32, ptr %i, align 4
  %cmp19 = icmp slt i32 %18, 5
  br i1 %cmp19, label %for.body20, label %for.end34

for.body20:                                       ; preds = %for.cond18
  %19 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom21
  %20 = load i32, ptr %mid, align 4
  %idxprom23 = sext i32 %20 to i64
  %arrayidx24 = getelementptr inbounds [5 x i32], ptr %arrayidx22, i64 0, i64 %idxprom23
  %21 = load i32, ptr %arrayidx24, align 4
  %22 = load i32, ptr %max, align 4
  %cmp25 = icmp sge i32 %21, %22
  br i1 %cmp25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %for.body20
  %23 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %23 to i64
  %arrayidx28 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom27
  %24 = load i32, ptr %mid, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [5 x i32], ptr %arrayidx28, i64 0, i64 %idxprom29
  %25 = load i32, ptr %arrayidx30, align 4
  store i32 %25, ptr %max, align 4
  %26 = load i32, ptr %i, align 4
  store i32 %26, ptr %maxi, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %for.body20
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %27 = load i32, ptr %i, align 4
  %inc33 = add nsw i32 %27, 1
  store i32 %inc33, ptr %i, align 4
  br label %for.cond18, !llvm.loop !7

for.end34:                                        ; preds = %for.cond18
  br label %if.end60

if.else:                                          ; preds = %for.end
  %28 = load i32, ptr %max, align 4
  %29 = load i32, ptr %maxi, align 4
  %idxprom35 = sext i32 %29 to i64
  %arrayidx36 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom35
  %30 = load i32, ptr %mid, align 4
  %add = add nsw i32 %30, 1
  %idxprom37 = sext i32 %add to i64
  %arrayidx38 = getelementptr inbounds [5 x i32], ptr %arrayidx36, i64 0, i64 %idxprom37
  %31 = load i32, ptr %arrayidx38, align 4
  %cmp39 = icmp slt i32 %28, %31
  br i1 %cmp39, label %if.then40, label %if.end59

if.then40:                                        ; preds = %if.else
  %32 = load i32, ptr %mid, align 4
  %inc41 = add nsw i32 %32, 1
  store i32 %inc41, ptr %mid, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc56, %if.then40
  %33 = load i32, ptr %i, align 4
  %cmp43 = icmp slt i32 %33, 5
  br i1 %cmp43, label %for.body44, label %for.end58

for.body44:                                       ; preds = %for.cond42
  %34 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom45
  %35 = load i32, ptr %mid, align 4
  %idxprom47 = sext i32 %35 to i64
  %arrayidx48 = getelementptr inbounds [5 x i32], ptr %arrayidx46, i64 0, i64 %idxprom47
  %36 = load i32, ptr %arrayidx48, align 4
  %37 = load i32, ptr %max, align 4
  %cmp49 = icmp sge i32 %36, %37
  br i1 %cmp49, label %if.then50, label %if.end55

if.then50:                                        ; preds = %for.body44
  %38 = load i32, ptr %i, align 4
  %idxprom51 = sext i32 %38 to i64
  %arrayidx52 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom51
  %39 = load i32, ptr %mid, align 4
  %idxprom53 = sext i32 %39 to i64
  %arrayidx54 = getelementptr inbounds [5 x i32], ptr %arrayidx52, i64 0, i64 %idxprom53
  %40 = load i32, ptr %arrayidx54, align 4
  store i32 %40, ptr %max, align 4
  %41 = load i32, ptr %i, align 4
  store i32 %41, ptr %maxi, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %for.body44
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %42 = load i32, ptr %i, align 4
  %inc57 = add nsw i32 %42, 1
  store i32 %inc57, ptr %i, align 4
  br label %for.cond42, !llvm.loop !8

for.end58:                                        ; preds = %for.cond42
  br label %if.end59

if.end59:                                         ; preds = %for.end58, %if.else
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %for.end34
  %43 = load i32, ptr %max, align 4
  %44 = load i32, ptr %maxi, align 4
  %idxprom61 = sext i32 %44 to i64
  %arrayidx62 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom61
  %45 = load i32, ptr %mid, align 4
  %sub63 = sub nsw i32 %45, 1
  %idxprom64 = sext i32 %sub63 to i64
  %arrayidx65 = getelementptr inbounds [5 x i32], ptr %arrayidx62, i64 0, i64 %idxprom64
  %46 = load i32, ptr %arrayidx65, align 4
  %cmp66 = icmp slt i32 %43, %46
  br i1 %cmp66, label %if.then67, label %if.else86

if.then67:                                        ; preds = %if.end60
  %47 = load i32, ptr %mid, align 4
  %dec68 = add nsw i32 %47, -1
  store i32 %dec68, ptr %mid, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc83, %if.then67
  %48 = load i32, ptr %i, align 4
  %cmp70 = icmp slt i32 %48, 5
  br i1 %cmp70, label %for.body71, label %for.end85

for.body71:                                       ; preds = %for.cond69
  %49 = load i32, ptr %i, align 4
  %idxprom72 = sext i32 %49 to i64
  %arrayidx73 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom72
  %50 = load i32, ptr %mid, align 4
  %idxprom74 = sext i32 %50 to i64
  %arrayidx75 = getelementptr inbounds [5 x i32], ptr %arrayidx73, i64 0, i64 %idxprom74
  %51 = load i32, ptr %arrayidx75, align 4
  %52 = load i32, ptr %max, align 4
  %cmp76 = icmp sge i32 %51, %52
  br i1 %cmp76, label %if.then77, label %if.end82

if.then77:                                        ; preds = %for.body71
  %53 = load i32, ptr %i, align 4
  %idxprom78 = sext i32 %53 to i64
  %arrayidx79 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom78
  %54 = load i32, ptr %mid, align 4
  %idxprom80 = sext i32 %54 to i64
  %arrayidx81 = getelementptr inbounds [5 x i32], ptr %arrayidx79, i64 0, i64 %idxprom80
  %55 = load i32, ptr %arrayidx81, align 4
  store i32 %55, ptr %max, align 4
  %56 = load i32, ptr %i, align 4
  store i32 %56, ptr %maxi, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %for.body71
  br label %for.inc83

for.inc83:                                        ; preds = %if.end82
  %57 = load i32, ptr %i, align 4
  %inc84 = add nsw i32 %57, 1
  store i32 %inc84, ptr %i, align 4
  br label %for.cond69, !llvm.loop !9

for.end85:                                        ; preds = %for.cond69
  br label %if.end113

if.else86:                                        ; preds = %if.end60
  %58 = load i32, ptr %max, align 4
  %59 = load i32, ptr %maxi, align 4
  %idxprom87 = sext i32 %59 to i64
  %arrayidx88 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom87
  %60 = load i32, ptr %mid, align 4
  %add89 = add nsw i32 %60, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds [5 x i32], ptr %arrayidx88, i64 0, i64 %idxprom90
  %61 = load i32, ptr %arrayidx91, align 4
  %cmp92 = icmp slt i32 %58, %61
  br i1 %cmp92, label %if.then93, label %if.end112

if.then93:                                        ; preds = %if.else86
  %62 = load i32, ptr %mid, align 4
  %inc94 = add nsw i32 %62, 1
  store i32 %inc94, ptr %mid, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc109, %if.then93
  %63 = load i32, ptr %i, align 4
  %cmp96 = icmp slt i32 %63, 5
  br i1 %cmp96, label %for.body97, label %for.end111

for.body97:                                       ; preds = %for.cond95
  %64 = load i32, ptr %i, align 4
  %idxprom98 = sext i32 %64 to i64
  %arrayidx99 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom98
  %65 = load i32, ptr %mid, align 4
  %idxprom100 = sext i32 %65 to i64
  %arrayidx101 = getelementptr inbounds [5 x i32], ptr %arrayidx99, i64 0, i64 %idxprom100
  %66 = load i32, ptr %arrayidx101, align 4
  %67 = load i32, ptr %max, align 4
  %cmp102 = icmp sge i32 %66, %67
  br i1 %cmp102, label %if.then103, label %if.end108

if.then103:                                       ; preds = %for.body97
  %68 = load i32, ptr %i, align 4
  %idxprom104 = sext i32 %68 to i64
  %arrayidx105 = getelementptr inbounds [5 x [5 x i32]], ptr %array, i64 0, i64 %idxprom104
  %69 = load i32, ptr %mid, align 4
  %idxprom106 = sext i32 %69 to i64
  %arrayidx107 = getelementptr inbounds [5 x i32], ptr %arrayidx105, i64 0, i64 %idxprom106
  %70 = load i32, ptr %arrayidx107, align 4
  store i32 %70, ptr %max, align 4
  %71 = load i32, ptr %i, align 4
  store i32 %71, ptr %maxi, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then103, %for.body97
  br label %for.inc109

for.inc109:                                       ; preds = %if.end108
  %72 = load i32, ptr %i, align 4
  %inc110 = add nsw i32 %72, 1
  store i32 %inc110, ptr %i, align 4
  br label %for.cond95, !llvm.loop !10

for.end111:                                       ; preds = %for.cond95
  br label %if.end112

if.end112:                                        ; preds = %for.end111, %if.else86
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %for.end85
  %73 = load i32, ptr %mid, align 4
  %add114 = add nsw i32 %73, 1
  %74 = load i32, ptr %maxi, align 4
  %add115 = add nsw i32 %74, 1
  %75 = load i32, ptr %max, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %add114, i32 noundef %add115, i32 noundef %75)
  %76 = load i32, ptr %retval, align 4
  ret i32 %76
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
