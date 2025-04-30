; ModuleID = 'code/397-26862malloctest2.c'
source_filename = "code/397-26862malloctest2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slot = type { i8*, i64 }

@s = dso_local global [4096 x %struct.slot] zeroinitializer, align 16
@.str = private unnamed_addr constant [28 x i8] c"Freed     %8zu bytes at %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Allocated %8zu bytes at %p, ok = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sp = alloca i64, align 8
  %sq = alloca i64, align 8
  %p = alloca i8*, align 8
  %ep = alloca i8*, align 8
  %q = alloca i8*, align 8
  %eq = alloca i8*, align 8
  %r = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ok = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %err, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc58, %entry
  %0 = load i32, i32* %r, align 4
  %cmp = icmp slt i32 %0, 32768
  br i1 %cmp, label %for.body, label %for.end60

for.body:                                         ; preds = %for.cond
  %call = call i64 @lrand48() #4
  %rem = srem i64 %call, 4096
  %conv = trunc i64 %rem to i32
  store i32 %conv, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [4096 x %struct.slot], [4096 x %struct.slot]* @s, i64 0, i64 %idxprom
  %ptr = getelementptr inbounds %struct.slot, %struct.slot* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %ptr, align 16
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [4096 x %struct.slot], [4096 x %struct.slot]* @s, i64 0, i64 %idxprom1
  %ptr3 = getelementptr inbounds %struct.slot, %struct.slot* %arrayidx2, i32 0, i32 0
  %4 = load i8*, i8** %ptr3, align 16
  call void @free(i8* %4) #4
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [4096 x %struct.slot], [4096 x %struct.slot]* @s, i64 0, i64 %idxprom4
  %size = getelementptr inbounds %struct.slot, %struct.slot* %arrayidx5, i32 0, i32 1
  %6 = load i64, i64* %size, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [4096 x %struct.slot], [4096 x %struct.slot]* @s, i64 0, i64 %idxprom6
  %ptr8 = getelementptr inbounds %struct.slot, %struct.slot* %arrayidx7, i32 0, i32 0
  %8 = load i8*, i8** %ptr8, align 16
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %6, i8* %8)
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [4096 x %struct.slot], [4096 x %struct.slot]* @s, i64 0, i64 %idxprom10
  %ptr12 = getelementptr inbounds %struct.slot, %struct.slot* %arrayidx11, i32 0, i32 0
  store i8* null, i8** %ptr12, align 16
  %10 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [4096 x %struct.slot], [4096 x %struct.slot]* @s, i64 0, i64 %idxprom13
  %size15 = getelementptr inbounds %struct.slot, %struct.slot* %arrayidx14, i32 0, i32 1
  store i64 0, i64* %size15, align 8
  br label %if.end57

if.else:                                          ; preds = %for.body
  %call16 = call i64 @lrand48() #4
  store i64 %call16, i64* %sp, align 8
  %call17 = call i64 @lrand48() #4
  %rem18 = srem i64 %call17, 20
  %add = add nsw i64 12, %rem18
  %11 = load i64, i64* %sp, align 8
  %shr = lshr i64 %11, %add
  store i64 %shr, i64* %sp, align 8
  %12 = load i64, i64* %sp, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [4096 x %struct.slot], [4096 x %struct.slot]* @s, i64 0, i64 %idxprom19
  %size21 = getelementptr inbounds %struct.slot, %struct.slot* %arrayidx20, i32 0, i32 1
  store i64 %12, i64* %size21, align 8
  %14 = load i64, i64* %sp, align 8
  %call22 = call noalias align 16 i8* @malloc(i64 %14) #4
  store i8* %call22, i8** %p, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %15 to i64
  %arrayidx24 = getelementptr inbounds [4096 x %struct.slot], [4096 x %struct.slot]* @s, i64 0, i64 %idxprom23
  %ptr25 = getelementptr inbounds %struct.slot, %struct.slot* %arrayidx24, i32 0, i32 0
  store i8* %call22, i8** %ptr25, align 16
  %16 = load i8*, i8** %p, align 8
  %17 = load i64, i64* %sp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %add.ptr, i8** %ep, align 8
  store i32 1, i32* %ok, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %if.else
  %18 = load i32, i32* %j, align 4
  %cmp27 = icmp slt i32 %18, 4096
  br i1 %cmp27, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.cond26
  %19 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds [4096 x %struct.slot], [4096 x %struct.slot]* @s, i64 0, i64 %idxprom30
  %ptr32 = getelementptr inbounds %struct.slot, %struct.slot* %arrayidx31, i32 0, i32 0
  %20 = load i8*, i8** %ptr32, align 16
  store i8* %20, i8** %q, align 8
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %j, align 4
  %cmp33 = icmp ne i32 %21, %22
  br i1 %cmp33, label %land.lhs.true, label %if.end52

land.lhs.true:                                    ; preds = %for.body29
  %23 = load i8*, i8** %q, align 8
  %tobool35 = icmp ne i8* %23, null
  br i1 %tobool35, label %if.then36, label %if.end52

if.then36:                                        ; preds = %land.lhs.true
  %24 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %24 to i64
  %arrayidx38 = getelementptr inbounds [4096 x %struct.slot], [4096 x %struct.slot]* @s, i64 0, i64 %idxprom37
  %size39 = getelementptr inbounds %struct.slot, %struct.slot* %arrayidx38, i32 0, i32 1
  %25 = load i64, i64* %size39, align 8
  store i64 %25, i64* %sq, align 8
  %26 = load i8*, i8** %q, align 8
  %27 = load i64, i64* %sq, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %add.ptr40, i8** %eq, align 8
  %28 = load i8*, i8** %p, align 8
  %29 = load i8*, i8** %q, align 8
  %cmp41 = icmp ult i8* %28, %29
  br i1 %cmp41, label %land.lhs.true43, label %lor.lhs.false

land.lhs.true43:                                  ; preds = %if.then36
  %30 = load i8*, i8** %ep, align 8
  %31 = load i8*, i8** %q, align 8
  %cmp44 = icmp ugt i8* %30, %31
  br i1 %cmp44, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true43, %if.then36
  %32 = load i8*, i8** %p, align 8
  %33 = load i8*, i8** %q, align 8
  %cmp46 = icmp uge i8* %32, %33
  br i1 %cmp46, label %land.lhs.true48, label %if.end

land.lhs.true48:                                  ; preds = %lor.lhs.false
  %34 = load i8*, i8** %p, align 8
  %35 = load i8*, i8** %eq, align 8
  %cmp49 = icmp ult i8* %34, %35
  br i1 %cmp49, label %if.then51, label %if.end

if.then51:                                        ; preds = %land.lhs.true48, %land.lhs.true43
  store i32 0, i32* %ok, align 4
  store i32 1, i32* %err, align 4
  br label %for.end

if.end:                                           ; preds = %land.lhs.true48, %lor.lhs.false
  br label %if.end52

if.end52:                                         ; preds = %if.end, %land.lhs.true, %for.body29
  br label %for.inc

for.inc:                                          ; preds = %if.end52
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond26, !llvm.loop !4

for.end:                                          ; preds = %if.then51, %for.cond26
  %37 = load i64, i64* %sp, align 8
  %38 = load i8*, i8** %p, align 8
  %39 = load i32, i32* %ok, align 4
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %37, i8* %38, i32 %39)
  %40 = load i8*, i8** %p, align 8
  %tobool54 = icmp ne i8* %40, null
  br i1 %tobool54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %for.end
  %41 = load i8*, i8** %p, align 8
  %42 = load i64, i64* %sp, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %41, i8 -18, i64 %42, i1 false)
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %for.end
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then
  br label %for.inc58

for.inc58:                                        ; preds = %if.end57
  %43 = load i32, i32* %r, align 4
  %inc59 = add nsw i32 %43, 1
  store i32 %inc59, i32* %r, align 4
  br label %for.cond, !llvm.loop !6

for.end60:                                        ; preds = %for.cond
  %44 = load i32, i32* %err, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare dso_local i64 @lrand48() #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
