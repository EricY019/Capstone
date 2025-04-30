; ModuleID = 'code/244-12236urlify.c'
source_filename = "code/244-12236urlify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%s -> %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @urlify(i8* %str, i32 %len_true) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len_true.addr = alloca i32, align 4
  %write_pos = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len_true, i32* %len_true.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %write_pos, align 4
  %1 = load i32, i32* %len_true.addr, align 4
  %sub1 = sub nsw i32 %1, 1
  store i32 %sub1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv3 = sext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i32, i32* %write_pos, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %6, i64 %idxprom6
  store i8 48, i8* %arrayidx7, align 1
  %8 = load i8*, i8** %str.addr, align 8
  %9 = load i32, i32* %write_pos, align 4
  %sub8 = sub nsw i32 %9, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 %idxprom9
  store i8 50, i8* %arrayidx10, align 1
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i32, i32* %write_pos, align 4
  %sub11 = sub nsw i32 %11, 2
  %idxprom12 = sext i32 %sub11 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom12
  store i8 37, i8* %arrayidx13, align 1
  %12 = load i32, i32* %write_pos, align 4
  %sub14 = sub nsw i32 %12, 3
  store i32 %sub14, i32* %write_pos, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %idxprom15
  %15 = load i8, i8* %arrayidx16, align 1
  %16 = load i8*, i8** %str.addr, align 8
  %17 = load i32, i32* %write_pos, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %16, i64 %idxprom17
  store i8 %15, i8* %arrayidx18, align 1
  %18 = load i32, i32* %write_pos, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %write_pos, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %dec19 = add nsw i32 %19, -1
  store i32 %dec19, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %20 = load i8*, i8** %str.addr, align 8
  ret i8* %20
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %spaces = alloca i32, align 4
  %j = alloca i32, align 4
  %buffered_len = alloca i32, align 4
  %buffered_str = alloca i8*, align 8
  %k = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end42

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc39, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end41

for.body:                                         ; preds = %for.cond
  %3 = load i8**, i8*** %argv.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %5) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  store i32 0, i32* %spaces, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %len, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %8 = load i8**, i8*** %argv.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i8*, i8** %8, i64 %idxprom6
  %10 = load i8*, i8** %arrayidx7, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %10, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp eq i32 %conv10, 32
  br i1 %cmp11, label %if.then13, label %if.end

if.then13:                                        ; preds = %for.body5
  %13 = load i32, i32* %spaces, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %spaces, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %j, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, i32* %j, align 4
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %for.cond2
  %15 = load i32, i32* %len, align 4
  %16 = load i32, i32* %spaces, align 4
  %mul = mul nsw i32 2, %16
  %add = add nsw i32 %15, %mul
  %add15 = add nsw i32 %add, 1
  store i32 %add15, i32* %buffered_len, align 4
  %17 = load i32, i32* %buffered_len, align 4
  %conv16 = sext i32 %17 to i64
  %call17 = call noalias align 16 i8* @calloc(i64 %conv16, i64 1) #5
  store i8* %call17, i8** %buffered_str, align 8
  %18 = load i8*, i8** %buffered_str, align 8
  %19 = load i8**, i8*** %argv.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %20 to i64
  %arrayidx19 = getelementptr inbounds i8*, i8** %19, i64 %idxprom18
  %21 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i8* @strcpy(i8* %18, i8* %21) #5
  %22 = load i8*, i8** %buffered_str, align 8
  %23 = load i32, i32* %len, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %22, i64 %idxprom21
  %24 = load i8, i8* %arrayidx22, align 1
  %25 = load i8*, i8** %buffered_str, align 8
  %26 = load i32, i32* %buffered_len, align 4
  %sub = sub nsw i32 %26, 1
  %idxprom23 = sext i32 %sub to i64
  %arrayidx24 = getelementptr inbounds i8, i8* %25, i64 %idxprom23
  store i8 %24, i8* %arrayidx24, align 1
  %27 = load i32, i32* %len, align 4
  store i32 %27, i32* %k, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc32, %for.end
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* %buffered_len, align 4
  %sub26 = sub nsw i32 %29, 2
  %cmp27 = icmp sle i32 %28, %sub26
  br i1 %cmp27, label %for.body29, label %for.end34

for.body29:                                       ; preds = %for.cond25
  %30 = load i8*, i8** %buffered_str, align 8
  %31 = load i32, i32* %k, align 4
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %30, i64 %idxprom30
  store i8 32, i8* %arrayidx31, align 1
  br label %for.inc32

for.inc32:                                        ; preds = %for.body29
  %32 = load i32, i32* %k, align 4
  %inc33 = add nsw i32 %32, 1
  store i32 %inc33, i32* %k, align 4
  br label %for.cond25, !llvm.loop !7

for.end34:                                        ; preds = %for.cond25
  %33 = load i8*, i8** %buffered_str, align 8
  %34 = load i32, i32* %len, align 4
  %call35 = call i8* @urlify(i8* %33, i32 %34)
  %35 = load i8**, i8*** %argv.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %36 to i64
  %arrayidx37 = getelementptr inbounds i8*, i8** %35, i64 %idxprom36
  %37 = load i8*, i8** %arrayidx37, align 8
  %38 = load i8*, i8** %buffered_str, align 8
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38)
  %39 = load i8*, i8** %buffered_str, align 8
  call void @free(i8* %39) #5
  br label %for.inc39

for.inc39:                                        ; preds = %for.end34
  %40 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %40, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end41:                                        ; preds = %for.cond
  br label %if.end42

if.end42:                                         ; preds = %for.end41, %entry
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
