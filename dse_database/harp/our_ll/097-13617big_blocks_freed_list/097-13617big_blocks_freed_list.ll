; ModuleID = 'code/097-13617big_blocks_freed_list.c'
source_filename = "code/097-13617big_blocks_freed_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %semi_big = alloca i8*, align 8
  %big = alloca i8*, align 8
  %small = alloca i8*, align 8
  %other_small = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i8* null, i8** %semi_big, align 8
  store i8* null, i8** %big, align 8
  store i8* null, i8** %small, align 8
  store i8* null, i8** %other_small, align 8
  %call = call noalias align 16 i8* @malloc(i64 900000) #2
  store i8* %call, i8** %semi_big, align 8
  %call1 = call noalias align 16 i8* @malloc(i64 1000001) #2
  store i8* %call1, i8** %big, align 8
  %0 = load i8*, i8** %semi_big, align 8
  call void @free(i8* %0) #2
  %1 = load i8*, i8** %big, align 8
  call void @free(i8* %1) #2
  %2 = load i8*, i8** %big, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 1000
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @jumped()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %semi_big, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 1000
  %5 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp sgt i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @jumped()
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %call9 = call noalias align 16 i8* @malloc(i64 10000) #2
  store i8* %call9, i8** %small, align 8
  %6 = load i8*, i8** %small, align 8
  call void @free(i8* %6) #2
  %7 = load i8*, i8** %big, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %7, i64 2000
  %8 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp sgt i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end8
  call void @jumped()
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end8
  %9 = load i8*, i8** %semi_big, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %9, i64 2000
  %10 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %10 to i32
  %cmp18 = icmp sgt i32 %conv17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @jumped()
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end15
  store i8* null, i8** %big, align 8
  %call22 = call noalias align 16 i8* @malloc(i64 1000001) #2
  store i8* %call22, i8** %big, align 8
  %11 = load i8*, i8** %big, align 8
  call void @free(i8* %11) #2
  %12 = load i8*, i8** %small, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %12, i64 10
  %13 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %13 to i32
  %cmp25 = icmp sgt i32 %conv24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end21
  call void @jumped()
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end21
  %14 = load i8*, i8** %big, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %14, i64 10
  %15 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %15 to i32
  %cmp31 = icmp sgt i32 %conv30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  call void @jumped()
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end28
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc43, %if.end34
  %16 = load i32, i32* %i, align 4
  %cmp35 = icmp slt i32 %16, 100
  br i1 %cmp35, label %for.body, label %for.end45

for.body:                                         ; preds = %for.cond
  %call37 = call noalias align 16 i8* @malloc(i64 10000) #2
  store i8* %call37, i8** %other_small, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc, %for.body
  %17 = load i32, i32* %j, align 4
  %cmp39 = icmp slt i32 %17, 10000
  br i1 %cmp39, label %for.body41, label %for.end

for.body41:                                       ; preds = %for.cond38
  %18 = load i8*, i8** %other_small, align 8
  %19 = load i32, i32* %j, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx42 = getelementptr inbounds i8, i8* %18, i64 %idxprom
  store i8 1, i8* %arrayidx42, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body41
  %20 = load i32, i32* %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond38, !llvm.loop !4

for.end:                                          ; preds = %for.cond38
  br label %for.inc43

for.inc43:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %21, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end45:                                        ; preds = %for.cond
  %22 = load i8*, i8** %small, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %22, i64 10
  %23 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %23 to i32
  %cmp48 = icmp sgt i32 %conv47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %for.end45
  call void @jumped()
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %for.end45
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jumped() #0 {
entry:
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
