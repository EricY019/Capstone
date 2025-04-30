; ModuleID = 'code/166-2034t1.c'
source_filename = "code/166-2034t1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.str = private unnamed_addr constant [8 x i8] c"1.1.1.1\00", align 1
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"aa[%d]=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [8 x i8], align 1
  %aa = alloca [10 x [16 x i8]], align 16
  %p = alloca i8*, align 8
  %buff = alloca i8*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [8 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.main.str, i32 0, i32 0), i64 8, i1 false)
  %1 = bitcast [10 x [16 x i8]]* %aa to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 160, i1 false)
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %str, i64 0, i64 0
  store i8* %arraydecay, i8** %buff, align 8
  %call = call i8* @strsep(i8** %buff, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6
  store i8* %call, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10 x [16 x i8]], [10 x [16 x i8]]* %aa, i64 0, i64 %idxprom
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx, i64 0, i64 0
  %4 = load i8*, i8** %p, align 8
  %call2 = call i8* @strcpy(i8* %arraydecay1, i8* %4) #6
  %5 = load i8*, i8** %p, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %call4 = call i8* @strsep(i8** %buff, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6
  store i8* %call4, i8** %p, align 8
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %7 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %7, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [10 x [16 x i8]], [10 x [16 x i8]]* %aa, i64 0, i64 %idxprom5
  %arraydecay7 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx6, i64 0, i64 0
  %call8 = call i64 @strlen(i8* %arraydecay7) #7
  %cmp9 = icmp uge i64 %call8, 7
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [10 x [16 x i8]], [10 x [16 x i8]]* %aa, i64 0, i64 %idxprom10
  %arraydecay12 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx11, i64 0, i64 0
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %9, i8* %arraydecay12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc29, %for.end
  %12 = load i32, i32* %i, align 4
  %cmp16 = icmp slt i32 %12, 10
  br i1 %cmp16, label %for.body17, label %for.end31

for.body17:                                       ; preds = %for.cond15
  %13 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [10 x [16 x i8]], [10 x [16 x i8]]* %aa, i64 0, i64 %idxprom18
  %arraydecay20 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx19, i64 0, i64 0
  %call21 = call i64 @strlen(i8* %arraydecay20) #7
  %cmp22 = icmp uge i64 %call21, 7
  br i1 %cmp22, label %if.then23, label %if.end28

if.then23:                                        ; preds = %for.body17
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [10 x [16 x i8]], [10 x [16 x i8]]* %aa, i64 0, i64 %idxprom24
  %arraydecay26 = getelementptr inbounds [16 x i8], [16 x i8]* %arrayidx25, i64 0, i64 0
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %14, i8* %arraydecay26)
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %for.body17
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %16 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %16, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond15, !llvm.loop !7

for.end31:                                        ; preds = %for.cond15
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i8* @strsep(i8**, i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

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
