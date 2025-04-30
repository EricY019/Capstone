; ModuleID = 'code/205-4705issort.c'
source_filename = "code/205-4705issort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @issort(i8* %data, i32 %size, i32 %esize, i32 (i8*, i8*)* %compare) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %esize.addr = alloca i32, align 4
  %compare.addr = alloca i32 (i8*, i8*)*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ele = alloca i8*, align 8
  %temp = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %esize, i32* %esize.addr, align 4
  store i32 (i8*, i8*)* %compare, i32 (i8*, i8*)** %compare.addr, align 8
  store i32 -1, i32* %ret, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  %0 = load i8*, i8** %data.addr, align 8
  store i8* %0, i8** %ele, align 8
  store i8* null, i8** %temp, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %cmp = icmp eq i8* null, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %size.addr, align 4
  %cmp1 = icmp eq i32 0, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, i32* %esize.addr, align 4
  %cmp3 = icmp eq i32 0, %3
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %4 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare.addr, align 8
  %cmp5 = icmp eq i32 (i8*, i8*)* null, %4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %ret, align 4
  br label %LBL_RET

if.end:                                           ; preds = %lor.lhs.false4
  %5 = load i32, i32* %esize.addr, align 4
  %conv = sext i32 %5 to i64
  %call = call noalias align 16 i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %temp, align 8
  %6 = load i8*, i8** %temp, align 8
  %cmp6 = icmp eq i8* null, %6
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  store i32 -2, i32* %ret, align 4
  br label %LBL_RET

if.end9:                                          ; preds = %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %size.addr, align 4
  %cmp10 = icmp slt i32 %7, %8
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %temp, align 8
  %10 = load i8*, i8** %ele, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %12 = load i32, i32* %esize.addr, align 4
  %conv12 = sext i32 %12 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %arrayidx, i64 %conv12, i1 false)
  %13 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %13, 1
  store i32 %sub, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %14 = load i32, i32* %j, align 4
  %cmp13 = icmp sge i32 %14, 0
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %compare.addr, align 8
  %16 = load i8*, i8** %temp, align 8
  %17 = load i8*, i8** %ele, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %17, i64 %idxprom15
  %call17 = call i32 %15(i8* %16, i8* %arrayidx16)
  %cmp18 = icmp slt i32 0, %call17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load i8*, i8** %ele, align 8
  %21 = load i32, i32* %j, align 4
  %add = add nsw i32 %21, 1
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds i8, i8* %20, i64 %idxprom20
  %22 = load i8*, i8** %ele, align 8
  %23 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %22, i64 %idxprom22
  %24 = load i32, i32* %esize.addr, align 4
  %conv24 = sext i32 %24 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx21, i8* align 1 %arrayidx23, i64 %conv24, i1 false)
  %25 = load i32, i32* %j, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  %27 = load i8*, i8** %ele, align 8
  %28 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %28 to i64
  %arrayidx26 = getelementptr inbounds i8, i8* %27, i64 %idxprom25
  %29 = load i8*, i8** %temp, align 8
  %30 = load i32, i32* %esize.addr, align 4
  %conv27 = sext i32 %30 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %arrayidx26, i8* align 1 %29, i64 %conv27, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %31 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %31, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %32 = load i8*, i8** %temp, align 8
  call void @free(i8* %32) #5
  store i32 0, i32* %ret, align 4
  br label %LBL_RET

LBL_RET:                                          ; preds = %for.end, %if.then8, %if.then
  %33 = load i32, i32* %ret, align 4
  ret i32 %33
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare_char(i8* %key1, i8* %key2) #0 {
entry:
  %retval = alloca i32, align 4
  %key1.addr = alloca i8*, align 8
  %key2.addr = alloca i8*, align 8
  store i8* %key1, i8** %key1.addr, align 8
  store i8* %key2, i8** %key2.addr, align 8
  %0 = load i8*, i8** %key1.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %key2.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %key1.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load i8*, i8** %key2.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp slt i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.else
  store i32 -1, i32* %retval, align 4
  br label %return

if.else8:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else8, %if.then7, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8**, i8*** %argv.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %4)
  %5 = load i8**, i8*** %argv.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 %idxprom1
  %7 = load i8*, i8** %arrayidx2, align 8
  %8 = load i8**, i8*** %argv.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds i8*, i8** %8, i64 %idxprom3
  %10 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i64 @strlen(i8* %10) #6
  %conv = trunc i64 %call5 to i32
  %call6 = call i32 @issort(i8* %7, i32 %conv, i32 1, i32 (i8*, i8*)* @compare_char)
  %11 = load i8**, i8*** %argv.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i8*, i8** %11, i64 %idxprom7
  %13 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %13)
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

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
!7 = distinct !{!7, !5}
