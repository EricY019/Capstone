; ModuleID = 'code/141-33352rrmdir.c'
source_filename = "code/141-33352rrmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"remove %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convertPath(i8* %pathToConvert) #0 {
entry:
  %pathToConvert.addr = alloca i8*, align 8
  store i8* %pathToConvert, i8** %pathToConvert.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %pathToConvert.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i8*, i8** %pathToConvert.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 92
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load i8*, i8** %pathToConvert.addr, align 8
  store i8 47, i8* %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load i8*, i8** %pathToConvert.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %pathToConvert.addr, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getDirectory(i8* %filename, i8* %directorySpec) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %directorySpec.addr = alloca i8*, align 8
  %lengthOfDirectory = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %directorySpec, i8** %directorySpec.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #5
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %call1 = call i8* @strrchr(i8* %1, i32 47) #5
  %2 = load i8*, i8** %filename.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %call1 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, i32* %lengthOfDirectory, align 4
  %3 = load i8*, i8** %directorySpec.addr, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load i32, i32* %lengthOfDirectory, align 4
  %conv2 = sext i32 %5 to i64
  %call3 = call i8* @strncpy(i8* %3, i8* %4, i64 %conv2) #6
  %6 = load i8*, i8** %directorySpec.addr, align 8
  %7 = load i32, i32* %lengthOfDirectory, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load i8*, i8** %directorySpec.addr, align 8
  %call4 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8*, i32) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @getFilename(i8* %filename, i8* %fileSpec) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %fileSpec.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %fileSpec, i8** %fileSpec.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #5
  %cmp = icmp ne i8* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %fileSpec.addr, align 8
  %2 = load i8*, i8** %filename.addr, align 8
  %call1 = call i8* @strrchr(i8* %2, i32 47) #5
  %add.ptr = getelementptr inbounds i8, i8* %call1, i64 1
  %call2 = call i8* @strcpy(i8* %1, i8* %add.ptr) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %fileSpec.addr, align 8
  %4 = load i8*, i8** %filename.addr, align 8
  %call3 = call i8* @strcpy(i8* %3, i8* %4) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %justPrint = alloca i32, align 4
  %idx = alloca i32, align 4
  %returnCode = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %justPrint, align 4
  store i32 1, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idx, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8**, i8*** %argv.addr, align 8
  %3 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  call void @convertPath(i8* %4)
  %5 = load i32, i32* %justPrint, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load i8**, i8*** %argv.addr, align 8
  %7 = load i32, i32* %idx, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 %idxprom1
  %8 = load i8*, i8** %arrayidx2, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  br label %if.end10

if.else:                                          ; preds = %for.body
  %9 = load i8**, i8*** %argv.addr, align 8
  %10 = load i32, i32* %idx, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds i8*, i8** %9, i64 %idxprom3
  %11 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 @rmdir(i8* %11) #6
  store i32 %call5, i32* %returnCode, align 4
  %12 = load i32, i32* %returnCode, align 4
  %cmp6 = icmp ne i32 %12, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %call7 = call i32* @__errno_location() #7
  %13 = load i32, i32* %call7, align 4
  %cmp8 = icmp ne i32 %13, 2
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %14 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @rmdir(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i32* @__errno_location() #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
