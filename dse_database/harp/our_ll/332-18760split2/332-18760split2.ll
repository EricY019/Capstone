; ModuleID = 'code/332-18760split2.c'
source_filename = "code/332-18760split2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.str = private unnamed_addr constant [20 x i8] c"0 1 2 3 4 5 6 7 8 9\00", align 16
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strsplit(i8* %str, i8** %parts, i8* %delimiter) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %parts.addr = alloca i8**, align 8
  %delimiter.addr = alloca i8*, align 8
  %pch = alloca i8*, align 8
  %i = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  store i8** %parts, i8*** %parts.addr, align 8
  store i8* %delimiter, i8** %delimiter.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %call = call noalias align 16 i8* @strdup(i8* %0) #5
  store i8* %call, i8** %tmp, align 8
  %1 = load i8*, i8** %tmp, align 8
  %2 = load i8*, i8** %delimiter.addr, align 8
  %call1 = call i8* @strtok(i8* %1, i8* %2) #5
  store i8* %call1, i8** %pch, align 8
  %3 = load i8*, i8** %pch, align 8
  %call2 = call noalias align 16 i8* @strdup(i8* %3) #5
  %4 = load i8**, i8*** %parts.addr, align 8
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  store i8* %call2, i8** %arrayidx, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i8*, i8** %pch, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %delimiter.addr, align 8
  %call3 = call i8* @strtok(i8* null, i8* %7) #5
  store i8* %call3, i8** %pch, align 8
  %8 = load i8*, i8** %pch, align 8
  %cmp = icmp eq i8* null, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = load i8*, i8** %pch, align 8
  %call4 = call noalias align 16 i8* @strdup(i8* %9) #5
  %10 = load i8**, i8*** %parts.addr, align 8
  %11 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i8*, i8** %10, i64 %idxprom6
  store i8* %call4, i8** %arrayidx7, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %if.then, %while.cond
  %12 = load i8*, i8** %tmp, align 8
  call void @free(i8* %12) #5
  %13 = load i8*, i8** %pch, align 8
  call void @free(i8* %13) #5
  %14 = load i32, i32* %i, align 4
  ret i32 %14
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @strdup(i8*) #1

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [20 x i8], align 16
  %parts = alloca i8**, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [20 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.main.str, i32 0, i32 0), i64 20, i1 false)
  %call = call noalias align 16 i8* @calloc(i64 10, i64 8) #5
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %parts, align 8
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %2 = load i8**, i8*** %parts, align 8
  %call1 = call i32 @strsplit(i8* %arraydecay, i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %conv = sext i32 %call1 to i64
  store i64 %conv, i64* %size, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i64, i64* %size, align 8
  %conv2 = trunc i64 %4 to i32
  %cmp = icmp slt i32 %3, %conv2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8**, i8*** %parts, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call4 = call i32 @atoi(i8* %7) #6
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %call4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
