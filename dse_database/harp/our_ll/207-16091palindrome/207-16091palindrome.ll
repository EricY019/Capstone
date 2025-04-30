; ModuleID = 'code/207-16091palindrome.c'
source_filename = "code/207-16091palindrome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %largest = alloca i32, align 4
  %buffer = alloca [8 x i8], align 1
  %reversed = alloca i8*, align 8
  %length = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %largest, align 4
  store i32 999, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 999, i32* %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %y, align 4
  %cmp2 = icmp sgt i32 %1, 99
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %buffer, i64 0, i64 0
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %y, align 4
  %mul = mul nsw i32 %2, %3
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %mul) #4
  %arraydecay4 = getelementptr inbounds [8 x i8], [8 x i8]* %buffer, i64 0, i64 0
  %call5 = call i64 @strlen(i8* %arraydecay4) #5
  store i64 %call5, i64* %length, align 8
  %4 = load i64, i64* %length, align 8
  %add = add i64 %4, 1
  %mul6 = mul i64 %add, 1
  %call7 = call noalias align 16 i8* @malloc(i64 %mul6) #4
  store i8* %call7, i8** %reversed, align 8
  %5 = load i8*, i8** %reversed, align 8
  %arraydecay8 = getelementptr inbounds [8 x i8], [8 x i8]* %buffer, i64 0, i64 0
  %6 = load i64, i64* %length, align 8
  %call9 = call i8* @strncpy(i8* %5, i8* %arraydecay8, i64 %6) #4
  %7 = load i8*, i8** %reversed, align 8
  call void @reverse(i8* %7)
  %arraydecay10 = getelementptr inbounds [8 x i8], [8 x i8]* %buffer, i64 0, i64 0
  %8 = load i8*, i8** %reversed, align 8
  %call11 = call i32 @strcmp(i8* %arraydecay10, i8* %8) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %9 = load i32, i32* %largest, align 4
  %10 = load i32, i32* %x, align 4
  %11 = load i32, i32* %y, align 4
  %mul13 = mul nsw i32 %10, %11
  %cmp14 = icmp sgt i32 %9, %mul13
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load i32, i32* %largest, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load i32, i32* %x, align 4
  %14 = load i32, i32* %y, align 4
  %mul15 = mul nsw i32 %13, %14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ %mul15, %cond.false ]
  store i32 %cond, i32* %largest, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body3
  %15 = load i8*, i8** %reversed, align 8
  %16 = load i64, i64* %length, align 8
  %call16 = call i8* @strncpy(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %16) #4
  %17 = load i8*, i8** %reversed, align 8
  call void @free(i8* %17) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %y, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %y, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %19 = load i32, i32* %x, align 4
  %dec18 = add nsw i32 %19, -1
  store i32 %dec18, i32* %x, align 4
  br label %for.cond, !llvm.loop !6

for.end19:                                        ; preds = %for.cond
  %20 = load i32, i32* %largest, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %length = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  store i32 0, i32* %i, align 4
  %1 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %6 to i32
  store i32 %conv2, i32* %c, align 4
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %7, i64 %idxprom3
  %9 = load i8, i8* %arrayidx4, align 1
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i8, i8* %10, i64 %idxprom5
  store i8 %9, i8* %arrayidx6, align 1
  %12 = load i32, i32* %c, align 4
  %conv7 = trunc i32 %12 to i8
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i8, i8* %13, i64 %idxprom8
  store i8 %conv7, i8* %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load i32, i32* %j, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
