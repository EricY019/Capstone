; ModuleID = 'code/013-8067millipede.c'
source_filename = "code/013-8067millipede.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@__const.main.padding_offsets = private unnamed_addr constant [8 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [19 x i8] c"    \E2\95\9A\E2\8A\99 \E2\8A\99\E2\95\9D\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s\E2\95\9A\E2\95\90(\E2\96\88\E2\96\88\E2\96\88)\E2\95\90\E2\95\9D\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s\E2\95\94\E2\95\90(\E2\96\88\E2\96\88\E2\96\88)\E2\95\90\E2\95\97\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"    \E2\95\94\E2\8A\99 \E2\8A\99\E2\95\97\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %padding_offsets = alloca [8 x i8*], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 20, i32* %size, align 4
  %0 = bitcast [8 x i8*]* %padding_offsets to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x i8*]* @__const.main.padding_offsets to i8*), i64 64, i1 false)
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strtol(i8* %3, i8** null, i32 10) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %size, align 4
  %cmp1 = icmp sge i32 %4, 0
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then3
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %size, align 4
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %rem = srem i32 %7, 8
  %idxprom = sext i32 %rem to i64
  %arrayidx7 = getelementptr inbounds [8 x i8*], [8 x i8*]* %padding_offsets, i64 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end22

if.else:                                          ; preds = %if.end
  %10 = load i32, i32* %size, align 4
  store i32 %10, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc18, %if.else
  %11 = load i32, i32* %i, align 4
  %cmp10 = icmp sle i32 %11, 0
  br i1 %cmp10, label %for.body12, label %for.end20

for.body12:                                       ; preds = %for.cond9
  %12 = load i32, i32* %i, align 4
  %call13 = call i32 @abs(i32 %12) #6
  %rem14 = srem i32 %call13, 8
  %idxprom15 = sext i32 %rem14 to i64
  %arrayidx16 = getelementptr inbounds [8 x i8*], [8 x i8*]* %padding_offsets, i64 0, i64 %idxprom15
  %13 = load i8*, i8** %arrayidx16, align 8
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %13)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body12
  %14 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %14, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond9, !llvm.loop !6

for.end20:                                        ; preds = %for.cond9
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end22

if.end22:                                         ; preds = %for.end20, %for.end
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
