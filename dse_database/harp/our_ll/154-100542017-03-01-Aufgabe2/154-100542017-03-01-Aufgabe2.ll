; ModuleID = 'code/154-100542017-03-01-Aufgabe2.c'
source_filename = "code/154-100542017-03-01-Aufgabe2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@__const.main.prozente = private unnamed_addr constant [5 x i32] [i32 38, i32 33, i32 30, i32 31, i32 25], align 16
@.str.1 = private unnamed_addr constant [26 x i8] c"\0A\0A\09\09Vor der Sortierung:\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"\09\09%d --> %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\0A\0A\09\09Nach der Sortierung:\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\0A\09\09%d --> %d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmpfunc(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  %sub = sub nsw i32 %2, %5
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %prozente = alloca [5 x i32], align 16
  %size = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %i4 = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @system(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @setbuf(%struct._IO_FILE* %0, i8* null) #5
  %1 = bitcast [5 x i32]* %prozente to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([5 x i32]* @__const.main.prozente to i8*), i64 20, i1 false)
  store i32 5, i32* %size, align 4
  %2 = load i32, i32* %size, align 4
  %3 = zext i32 %2 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %vla = alloca [2 x i32], i64 %3, align 16
  store i64 %3, i64* %__vla_expr0, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %prozente, i64 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %7, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %prozente, i64 0, i64 0
  %11 = bitcast i32* %arraydecay to i8*
  call void @qsort(i8* %11, i64 5, i64 4, i32 (i8*, i8*)* @cmpfunc)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %i4, align 4
  %12 = load i32, i32* %size, align 4
  store i32 %12, i32* %j, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc18, %for.end
  %13 = load i32, i32* %j, align 4
  %cmp6 = icmp sgt i32 %13, 0
  br i1 %cmp6, label %for.body7, label %for.end19

for.body7:                                        ; preds = %for.cond5
  %14 = load i32, i32* %i4, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [5 x i32], [5 x i32]* %prozente, i64 0, i64 %idxprom8
  %15 = load i32, i32* %arrayidx9, align 4
  %16 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [2 x i32], [2 x i32]* %vla, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx11, i64 0, i64 0
  store i32 %15, i32* %arrayidx12, align 8
  %17 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %17, 1
  %18 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %vla, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx14, i64 0, i64 0
  %19 = load i32, i32* %arrayidx15, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %sub, i32 %19)
  %20 = load i32, i32* %i4, align 4
  %inc17 = add nsw i32 %20, 1
  store i32 %inc17, i32* %i4, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body7
  %21 = load i32, i32* %j, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond5, !llvm.loop !6

for.end19:                                        ; preds = %for.cond5
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  %22 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %22)
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

declare dso_local i32 @system(i8*) #1

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE*, i8*) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
