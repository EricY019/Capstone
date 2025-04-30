; ModuleID = 'code/092-33234largest_number.c'
source_filename = "code/092-33234largest_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { [16 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %nums = alloca i32*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %count, align 4
  %1 = load i32, i32* %count, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias align 16 i8* @malloc(i64 %mul) #5
  %2 = bitcast i8* %call to i32*
  store i32* %2, i32** %nums, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i8**, i8*** %argv.addr, align 8
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call2 = call i32 @atoi(i8* %7) #6
  %8 = load i32*, i32** %nums, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %8, i64 %idxprom3
  store i32 %call2, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %11 = load i32*, i32** %nums, align 8
  %12 = load i32, i32* %count, align 4
  %call5 = call i8* @largestNumber(i32* %11, i32 %12)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %call5)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @largestNumber(i32* %nums, i32 %numsSize) #0 {
entry:
  %retval = alloca i8*, align 8
  %nums.addr = alloca i32*, align 8
  %numsSize.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %objs = alloca %struct.object*, align 8
  %result = alloca i8*, align 8
  store i32* %nums, i32** %nums.addr, align 8
  store i32 %numsSize, i32* %numsSize.addr, align 4
  %0 = load i32, i32* %numsSize.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 16
  %call = call noalias align 16 i8* @malloc(i64 %mul) #5
  %1 = bitcast i8* %call to %struct.object*
  store %struct.object* %1, %struct.object** %objs, align 8
  %2 = load %struct.object*, %struct.object** %objs, align 8
  %3 = bitcast %struct.object* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %3, i8 0, i64 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %numsSize.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.object*, %struct.object** %objs, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.object, %struct.object* %6, i64 %idxprom
  %buf = getelementptr inbounds %struct.object, %struct.object* %arrayidx, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  %8 = load i32*, i32** %nums.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %8, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %10) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load %struct.object*, %struct.object** %objs, align 8
  %13 = bitcast %struct.object* %12 to i8*
  %14 = load i32, i32* %numsSize.addr, align 4
  %conv5 = sext i32 %14 to i64
  call void @qsort(i8* %13, i64 %conv5, i64 16, i32 (i8*, i8*)* @compare)
  %15 = load %struct.object*, %struct.object** %objs, align 8
  %16 = load i32, i32* %numsSize.addr, align 4
  %sub = sub nsw i32 %16, 1
  %idxprom6 = sext i32 %sub to i64
  %arrayidx7 = getelementptr inbounds %struct.object, %struct.object* %15, i64 %idxprom6
  %buf8 = getelementptr inbounds %struct.object, %struct.object* %arrayidx7, i32 0, i32 0
  %arrayidx9 = getelementptr inbounds [16 x i8], [16 x i8]* %buf8, i64 0, i64 0
  %17 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %17 to i32
  %cmp11 = icmp eq i32 %conv10, 48
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %for.end
  %18 = load i32, i32* %numsSize.addr, align 4
  %mul13 = mul nsw i32 %18, 16
  %conv14 = sext i32 %mul13 to i64
  %call15 = call noalias align 16 i8* @malloc(i64 %conv14) #5
  store i8* %call15, i8** %result, align 8
  %19 = load i8*, i8** %result, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 0, i8* %arrayidx16, align 1
  %20 = load i32, i32* %numsSize.addr, align 4
  %sub17 = sub nsw i32 %20, 1
  store i32 %sub17, i32* %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc27, %if.end
  %21 = load i32, i32* %i, align 4
  %cmp19 = icmp sge i32 %21, 0
  br i1 %cmp19, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond18
  %22 = load i8*, i8** %result, align 8
  %23 = load %struct.object*, %struct.object** %objs, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %24 to i64
  %arrayidx23 = getelementptr inbounds %struct.object, %struct.object* %23, i64 %idxprom22
  %buf24 = getelementptr inbounds %struct.object, %struct.object* %arrayidx23, i32 0, i32 0
  %arraydecay25 = getelementptr inbounds [16 x i8], [16 x i8]* %buf24, i64 0, i64 0
  %call26 = call i8* @strcat(i8* %22, i8* %arraydecay25) #5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body21
  %25 = load i32, i32* %i, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond18, !llvm.loop !7

for.end28:                                        ; preds = %for.cond18
  %26 = load i8*, i8** %result, align 8
  store i8* %26, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end28, %if.then
  %27 = load i8*, i8** %retval, align 8
  ret i8* %27
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare(i8* %o1, i8* %o2) #0 {
entry:
  %o1.addr = alloca i8*, align 8
  %o2.addr = alloca i8*, align 8
  %p1 = alloca [32 x i8], align 16
  %p2 = alloca [32 x i8], align 16
  store i8* %o1, i8** %o1.addr, align 8
  store i8* %o2, i8** %o2.addr, align 8
  %0 = bitcast [32 x i8]* %p1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 32, i1 false)
  %1 = bitcast [32 x i8]* %p2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %p1, i64 0, i64 0
  %2 = load i8*, i8** %o1.addr, align 8
  %3 = bitcast i8* %2 to %struct.object*
  %buf = getelementptr inbounds %struct.object, %struct.object* %3, i32 0, i32 0
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %buf, i64 0, i64 0
  %call = call i8* @strcat(i8* %arraydecay, i8* %arraydecay1) #5
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %p1, i64 0, i64 0
  %4 = load i8*, i8** %o2.addr, align 8
  %5 = bitcast i8* %4 to %struct.object*
  %buf3 = getelementptr inbounds %struct.object, %struct.object* %5, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [16 x i8], [16 x i8]* %buf3, i64 0, i64 0
  %call5 = call i8* @strcat(i8* %arraydecay2, i8* %arraydecay4) #5
  %arraydecay6 = getelementptr inbounds [32 x i8], [32 x i8]* %p2, i64 0, i64 0
  %6 = load i8*, i8** %o2.addr, align 8
  %7 = bitcast i8* %6 to %struct.object*
  %buf7 = getelementptr inbounds %struct.object, %struct.object* %7, i32 0, i32 0
  %arraydecay8 = getelementptr inbounds [16 x i8], [16 x i8]* %buf7, i64 0, i64 0
  %call9 = call i8* @strcat(i8* %arraydecay6, i8* %arraydecay8) #5
  %arraydecay10 = getelementptr inbounds [32 x i8], [32 x i8]* %p2, i64 0, i64 0
  %8 = load i8*, i8** %o1.addr, align 8
  %9 = bitcast i8* %8 to %struct.object*
  %buf11 = getelementptr inbounds %struct.object, %struct.object* %9, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [16 x i8], [16 x i8]* %buf11, i64 0, i64 0
  %call13 = call i8* @strcat(i8* %arraydecay10, i8* %arraydecay12) #5
  %arraydecay14 = getelementptr inbounds [32 x i8], [32 x i8]* %p1, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [32 x i8], [32 x i8]* %p2, i64 0, i64 0
  %call16 = call i32 @strcmp(i8* %arraydecay14, i8* %arraydecay15) #6
  ret i32 %call16
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!7 = distinct !{!7, !5}
