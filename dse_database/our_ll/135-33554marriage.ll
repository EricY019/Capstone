; ModuleID = 'code/135-33554marriage.c'
source_filename = "code/135-33554marriage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.response = type { i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Dear %s,\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Unfortunately your last date contacted us to\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"say that they will not be seeing you again\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Good news: your last date has asked us to\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"arrange another meeting. Please call ASAP.\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Congratulations! Your last date has contacted\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"us with a proposal of marriage.\00", align 1
@replies = dso_local global [3 x void (i8*, i32)*] [void (i8*, i32)* @dump, void (i8*, i32)* @second_chance, void (i8*, i32)* @marriage], align 16
@.str.7 = private unnamed_addr constant [5 x i8] c"Mike\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Luis\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Matt\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"William\00", align 1
@__const.main.r = private unnamed_addr constant [4 x %struct.response] [%struct.response { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 0 }, %struct.response { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 1 }, %struct.response { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 1 }, %struct.response { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 2 }], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump(i8* %r.coerce0, i32 %r.coerce1) #0 {
entry:
  %r = alloca %struct.response, align 8
  %0 = bitcast %struct.response* %r to { i8*, i32 }*
  %1 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %r.coerce0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %r.coerce1, i32* %2, align 8
  %name = getelementptr inbounds %struct.response, %struct.response* %r, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %3)
  %call1 = call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %call2 = call i32 @puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @second_chance(i8* %r.coerce0, i32 %r.coerce1) #0 {
entry:
  %r = alloca %struct.response, align 8
  %0 = bitcast %struct.response* %r to { i8*, i32 }*
  %1 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %r.coerce0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %r.coerce1, i32* %2, align 8
  %name = getelementptr inbounds %struct.response, %struct.response* %r, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %3)
  %call1 = call i32 @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %call2 = call i32 @puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @marriage(i8* %r.coerce0, i32 %r.coerce1) #0 {
entry:
  %r = alloca %struct.response, align 8
  %0 = bitcast %struct.response* %r to { i8*, i32 }*
  %1 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %r.coerce0, i8** %1, align 8
  %2 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %r.coerce1, i32* %2, align 8
  %name = getelementptr inbounds %struct.response, %struct.response* %r, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %3)
  %call1 = call i32 @puts(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %call2 = call i32 @puts(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca [4 x %struct.response], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x %struct.response]* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x %struct.response]* @__const.main.r to i8*), i64 64, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x %struct.response], [4 x %struct.response]* %r, i64 0, i64 %idxprom
  %type = getelementptr inbounds %struct.response, %struct.response* %arrayidx, i32 0, i32 1
  %3 = load i32, i32* %type, align 8
  %idxprom1 = zext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [3 x void (i8*, i32)*], [3 x void (i8*, i32)*]* @replies, i64 0, i64 %idxprom1
  %4 = load void (i8*, i32)*, void (i8*, i32)** %arrayidx2, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [4 x %struct.response], [4 x %struct.response]* %r, i64 0, i64 %idxprom3
  %6 = bitcast %struct.response* %arrayidx4 to { i8*, i32 }*
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 16
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %6, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  call void %4(i8* %8, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
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
