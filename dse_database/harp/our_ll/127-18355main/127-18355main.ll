; ModuleID = 'code/127-18355main.c'
source_filename = "code/127-18355main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [4 x i8] c"abm\00", align 1
@__const.main.b = private unnamed_addr constant [5 x i8] c"aqid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %a = alloca [4 x i8], align 1
  %b = alloca [5 x i8], align 1
  %c = alloca [10 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = bitcast [4 x i8]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.a, i32 0, i32 0), i64 4, i1 false)
  %1 = bitcast [5 x i8]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.main.b, i32 0, i32 0), i64 5, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %a, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [5 x i8], [5 x i8]* %b, i64 0, i64 %idxprom2
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %a, i64 0, i64 %idxprom7
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %8 to i32
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [5 x i8], [5 x i8]* %b, i64 0, i64 %idxprom10
  %10 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %10 to i32
  %cmp13 = icmp sge i32 %conv9, %conv12
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [4 x i8], [4 x i8]* %a, i64 0, i64 %idxprom15
  %12 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %12 to i32
  %sub = sub nsw i32 %conv17, 32
  %conv18 = trunc i32 %sub to i8
  %13 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [10 x i8], [10 x i8]* %c, i64 0, i64 %idxprom19
  store i8 %conv18, i8* %arrayidx20, align 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %14 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %14 to i64
  %arrayidx22 = getelementptr inbounds [5 x i8], [5 x i8]* %b, i64 0, i64 %idxprom21
  %15 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %15 to i32
  %sub24 = sub nsw i32 %conv23, 32
  %conv25 = trunc i32 %sub24 to i8
  %16 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %16 to i64
  %arrayidx27 = getelementptr inbounds [10 x i8], [10 x i8]* %c, i64 0, i64 %idxprom26
  store i8 %conv25, i8* %arrayidx27, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %18 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [10 x i8], [10 x i8]* %c, i64 0, i64 %idxprom28
  store i8 0, i8* %arrayidx29, align 1
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %c, i64 0, i64 0
  %call = call i32 @puts(i8* %arraydecay)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @puts(i8*) #2

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
