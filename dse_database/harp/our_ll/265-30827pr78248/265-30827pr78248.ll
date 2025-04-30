; ModuleID = 'code/265-30827pr78248.c'
source_filename = "code/265-30827pr78248.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i16, [2 x i8] }

@c = dso_local global i32 2, align 4
@__const.main.h = private unnamed_addr constant { i8, i8, [2 x i8] } { i8 -2, i8 127, [2 x i8] undef }, align 4
@e = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@b = dso_local global [1 x i32] zeroinitializer, align 4
@d = dso_local global i32 0, align 4
@a = internal global %struct.S zeroinitializer, align 4
@g = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %h = alloca %struct.S, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.S* %h to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 getelementptr inbounds ({ i8, i8, [2 x i8] }, { i8, i8, [2 x i8] }* @__const.main.h, i32 0, i32 0), i64 4, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %1 = load i32, i32* @e, align 4
  %cmp = icmp slt i32 %1, 640
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* @f, align 4
  %cmp2 = icmp slt i32 %2, 1
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* @c, align 4
  %cmp4 = icmp slt i32 %3, 2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %4 = load i32, i32* @e, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1 x i32], [1 x i32]* @b, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* @d, align 4
  %6 = bitcast %struct.S* %h to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.S* @a to i8*), i64 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %7 = load i32, i32* @c, align 4
  store i32 %7, i32* @g, align 4
  store i32 1, i32* @c, align 4
  %8 = bitcast %struct.S* %h to i16*
  %bf.load = load i16, i16* %8, align 4
  %bf.shl = shl i16 %bf.load, 1
  %bf.ashr = ashr i16 %bf.shl, 1
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  br label %for.end

if.end6:                                          ; preds = %if.end
  %9 = load i32, i32* @g, align 4
  store i32 %9, i32* @c, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %10 = load i32, i32* @f, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* @f, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %if.then5, %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %11 = load i32, i32* @e, align 4
  %inc8 = add nsw i32 %11, 1
  store i32 %inc8, i32* @e, align 4
  br label %for.cond, !llvm.loop !6

for.end9:                                         ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
