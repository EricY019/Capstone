; ModuleID = 'code/312-25158BuildTower.c'
source_filename = "code/312-25158BuildTower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @towerBuilder(i32 %nFloors) #0 {
entry:
  %nFloors.addr = alloca i32, align 4
  %res = alloca i8**, align 8
  %i = alloca i32, align 4
  %temp = alloca i8*, align 8
  store i32 %nFloors, i32* %nFloors.addr, align 4
  %0 = load i32, i32* %nFloors.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call noalias align 16 i8* @malloc(i64 %mul) #4
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %res, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %nFloors.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %nFloors.addr, align 4
  %mul2 = mul nsw i32 2, %4
  %conv3 = sext i32 %mul2 to i64
  %mul4 = mul i64 1, %conv3
  %call5 = call noalias align 16 i8* @malloc(i64 %mul4) #4
  %5 = load i8**, i8*** %res, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  store i8* %call5, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %nFloors.addr, align 4
  %mul6 = mul nsw i32 2, %8
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 1, %conv7
  %call9 = call noalias align 16 i8* @malloc(i64 %mul8) #4
  store i8* %call9, i8** %temp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc33, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %nFloors.addr, align 4
  %cmp11 = icmp slt i32 %9, %10
  br i1 %cmp11, label %for.body13, label %for.end35

for.body13:                                       ; preds = %for.cond10
  %11 = load i8*, i8** %temp, align 8
  %12 = load i32, i32* %nFloors.addr, align 4
  %13 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %12, %13
  %sub14 = sub nsw i32 %sub, 1
  %conv15 = sext i32 %sub14 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 32, i64 %conv15, i1 false)
  %14 = load i8**, i8*** %res, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds i8*, i8** %14, i64 %idxprom16
  %16 = load i8*, i8** %arrayidx17, align 8
  %17 = load i8*, i8** %temp, align 8
  %call18 = call i8* @strcat(i8* %16, i8* %17) #4
  %18 = load i8*, i8** %temp, align 8
  %call19 = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #4
  %19 = load i8*, i8** %temp, align 8
  %20 = load i32, i32* %i, align 4
  %mul20 = mul nsw i32 %20, 2
  %add = add nsw i32 %mul20, 1
  %conv21 = sext i32 %add to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %19, i8 42, i64 %conv21, i1 false)
  %21 = load i8**, i8*** %res, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds i8*, i8** %21, i64 %idxprom22
  %23 = load i8*, i8** %arrayidx23, align 8
  %24 = load i8*, i8** %temp, align 8
  %call24 = call i8* @strcat(i8* %23, i8* %24) #4
  %25 = load i8*, i8** %temp, align 8
  %call25 = call i8* @strcpy(i8* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #4
  %26 = load i8*, i8** %temp, align 8
  %27 = load i32, i32* %nFloors.addr, align 4
  %28 = load i32, i32* %i, align 4
  %sub26 = sub nsw i32 %27, %28
  %sub27 = sub nsw i32 %sub26, 1
  %conv28 = sext i32 %sub27 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %26, i8 32, i64 %conv28, i1 false)
  %29 = load i8**, i8*** %res, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds i8*, i8** %29, i64 %idxprom29
  %31 = load i8*, i8** %arrayidx30, align 8
  %32 = load i8*, i8** %temp, align 8
  %call31 = call i8* @strcat(i8* %31, i8* %32) #4
  %33 = load i8*, i8** %temp, align 8
  %call32 = call i8* @strcpy(i8* %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #4
  br label %for.inc33

for.inc33:                                        ; preds = %for.body13
  %34 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %34, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond10, !llvm.loop !6

for.end35:                                        ; preds = %for.cond10
  %35 = load i8*, i8** %temp, align 8
  call void @free(i8* %35) #4
  %36 = load i8**, i8*** %res, align 8
  ret i8** %36
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tests() #0 {
entry:
  %floors = alloca i32, align 4
  %actual = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 2, i32* %floors, align 4
  %0 = load i32, i32* %floors, align 4
  %call = call i8** @towerBuilder(i32 %0)
  store i8** %call, i8*** %actual, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %floors, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %actual, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 3, i32* %floors, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* %floors, align 4
  %call3 = call i8** @towerBuilder(i32 %7)
  store i8** %call3, i8*** %actual, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %floors, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body6, label %for.end12

for.body6:                                        ; preds = %for.cond4
  %10 = load i8**, i8*** %actual, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds i8*, i8** %10, i64 %idxprom7
  %12 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %13 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond4, !llvm.loop !8

for.end12:                                        ; preds = %for.cond4
  store i32 0, i32* %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc18, %for.end12
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %floors, align 4
  %cmp14 = icmp slt i32 %14, %15
  br i1 %cmp14, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond13
  %16 = load i8**, i8*** %actual, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds i8*, i8** %16, i64 %idxprom16
  %18 = load i8*, i8** %arrayidx17, align 8
  call void @free(i8* %18) #4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %19 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond13, !llvm.loop !9

for.end20:                                        ; preds = %for.cond13
  %20 = load i8**, i8*** %actual, align 8
  %21 = bitcast i8** %20 to i8*
  call void @free(i8* %21) #4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @tests()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
