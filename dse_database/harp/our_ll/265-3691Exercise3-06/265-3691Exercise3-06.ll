; ModuleID = 'code/265-3691Exercise3-06.c'
source_filename = "code/265-3691Exercise3-06.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [100 x i8], align 16
  %space = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 12, i32* %space, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 2147483647)
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %s, i64 0, i64 0
  %0 = load i32, i32* %space, align 4
  call void @itoa(i32 2147483647, i8* %arraydecay, i32 %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 -2147483648)
  %arraydecay2 = getelementptr inbounds [100 x i8], [100 x i8]* %s, i64 0, i64 0
  %1 = load i32, i32* %space, align 4
  call void @itoa(i32 -2147483648, i8* %arraydecay2, i32 %1)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @itoa(i32 %n, i8* %s, i32 %b) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %b.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sign = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  store i32 %0, i32* %sign, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp ne i32 %1, -2147483648
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 0, %2
  store i32 %sub, i32* %n.addr, align 4
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp eq i32 %3, -2147483648
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %4 = load i32, i32* %n.addr, align 4
  %sub4 = sub nsw i32 0, %4
  %sub5 = sub nsw i32 %sub4, 1
  store i32 %sub5, i32* %n.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  store i32 0, i32* %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end6
  %5 = load i32, i32* %n.addr, align 4
  %rem = srem i32 %5, 10
  %add = add nsw i32 %rem, 48
  %conv = trunc i32 %add to i8
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = load i32, i32* %n.addr, align 4
  %div = sdiv i32 %8, 10
  store i32 %div, i32* %n.addr, align 4
  %cmp7 = icmp sgt i32 %div, 0
  br i1 %cmp7, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  %9 = load i32, i32* %sign, align 4
  %cmp9 = icmp eq i32 %9, -2147483648
  br i1 %cmp9, label %if.then11, label %if.end17

if.then11:                                        ; preds = %do.end
  %10 = load i8*, i8** %s.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %11 to i32
  %add14 = add nsw i32 %conv13, 1
  %conv15 = trunc i32 %add14 to i8
  %12 = load i8*, i8** %s.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %conv15, i8* %arrayidx16, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %do.end
  %13 = load i32, i32* %sign, align 4
  %cmp18 = icmp slt i32 %13, 0
  br i1 %cmp18, label %if.then20, label %if.else28

if.then20:                                        ; preds = %if.end17
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 %idxprom21
  store i8 45, i8* %arrayidx22, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then20
  %16 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %16, 1
  store i32 %inc23, i32* %i, align 4
  %17 = load i32, i32* %b.addr, align 4
  %cmp24 = icmp slt i32 %16, %17
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i8*, i8** %s.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %18, i64 %idxprom26
  store i8 32, i8* %arrayidx27, align 1
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end37

if.else28:                                        ; preds = %if.end17
  br label %while.cond29

while.cond29:                                     ; preds = %while.body32, %if.else28
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %b.addr, align 4
  %cmp30 = icmp slt i32 %20, %21
  br i1 %cmp30, label %while.body32, label %while.end36

while.body32:                                     ; preds = %while.cond29
  %22 = load i8*, i8** %s.addr, align 8
  %23 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %23, 1
  store i32 %inc33, i32* %i, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds i8, i8* %22, i64 %idxprom34
  store i8 32, i8* %arrayidx35, align 1
  br label %while.cond29, !llvm.loop !7

while.end36:                                      ; preds = %while.cond29
  br label %if.end37

if.end37:                                         ; preds = %while.end36, %while.end
  %24 = load i8*, i8** %s.addr, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %25 to i64
  %arrayidx39 = getelementptr inbounds i8, i8* %24, i64 %idxprom38
  store i8 0, i8* %arrayidx39, align 1
  %26 = load i8*, i8** %s.addr, align 8
  call void @reverse(i8* %26)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end37
  %27 = load i32, i32* %i, align 4
  %conv40 = sext i32 %27 to i64
  %28 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %28) #3
  %cmp41 = icmp ult i64 %conv40, %call
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i8*, i8** %s.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds i8, i8* %29, i64 %idxprom43
  %31 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %31 to i32
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %conv45)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %32, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %33 = load i8*, i8** %s.addr, align 8
  %call48 = call i64 @strlen(i8* %33) #3
  %conv49 = trunc i64 %call48 to i32
  store i32 %conv49, i32* %i, align 4
  %tobool = icmp ne i32 %conv49, 0
  br i1 %tobool, label %if.then50, label %if.end52

if.then50:                                        ; preds = %for.end
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %i, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #3
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  store i32 %conv2, i32* %c, align 4
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3
  %8 = load i8, i8* %arrayidx4, align 1
  %9 = load i8*, i8** %s.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %idxprom5
  store i8 %8, i8* %arrayidx6, align 1
  %11 = load i32, i32* %c, align 4
  %conv7 = trunc i32 %11 to i8
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  %15 = load i32, i32* %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

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
