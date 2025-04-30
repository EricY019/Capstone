; ModuleID = 'code/367-30759pr80153.c'
source_filename = "code/367-30759pr80153.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = internal global i8* null, align 8
@i = internal global i32 0, align 4
@l = internal global i32 0, align 4
@string = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [7 x i8] c"oops!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check(i32 %c, i32 %c2, i32 %val) #0 {
entry:
  %c.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %val.addr = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %c2, i32* %c2.addr, align 4
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* %val.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_fputs(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  store i8* %0, i8** @buf, align 8
  store i32 0, i32* @i, align 4
  %1 = load i8*, i8** @buf, align 8
  %call = call i64 @strlen(i8* %1) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* @l, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @_fgetc() #0 {
entry:
  %retval = alloca i8, align 1
  %val = alloca i8, align 1
  %0 = load i8*, i8** @buf, align 8
  %1 = load i32, i32* @i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  store i8 %2, i8* %val, align 1
  %3 = load i32, i32* @i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @i, align 4
  %4 = load i32, i32* @i, align 4
  %5 = load i32, i32* @l, align 4
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 -1, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %6 = load i8, i8* %val, align 1
  store i8 %6, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i8, i8* %retval, align 1
  ret i8 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i8*, i8** @string, align 8
  call void @_fputs(i8* %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load i8*, i8** @string, align 8
  %call = call i64 @strlen(i8* %2) #4
  %cmp = icmp ult i64 %conv, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call signext i8 @_fgetc()
  %conv3 = sext i8 %call2 to i32
  store i32 %conv3, i32* %c, align 4
  %3 = load i32, i32* %c, align 4
  %4 = load i8*, i8** @string, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %6 to i32
  %7 = load i32, i32* %c, align 4
  %8 = load i8*, i8** @string, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %8, i64 %idxprom5
  %10 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp eq i32 %7, %conv7
  %conv9 = zext i1 %cmp8 to i32
  call void @check(i32 %3, i32 %conv4, i32 %conv9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
