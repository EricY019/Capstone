; ModuleID = 'code/005-21754itoan.c'
source_filename = "code/005-21754itoan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"i:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @itoan(i32 %n, i8* %buf, i64 %buflen, i32 %base) #0 {
entry:
  %retval = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buflen.addr = alloca i64, align 8
  %base.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %maxlen = alloca i64, align 8
  %l = alloca i32, align 4
  %c = alloca i8, align 1
  store i32 %n, i32* %n.addr, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %buflen, i64* %buflen.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  %0 = load i8*, i8** %buf.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %buflen.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %base.addr, align 4
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, i32* %base.addr, align 4
  %cmp5 = icmp ugt i32 %3, 36
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false4
  %4 = load i64, i64* %buflen.addr, align 8
  %sub = sub i64 %4, 1
  store i64 %sub, i64* %maxlen, align 8
  %5 = load i32, i32* %base.addr, align 4
  %cmp6 = icmp eq i32 %5, 10
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  %6 = load i8*, i8** %buf.addr, align 8
  %7 = load i64, i64* %buflen.addr, align 8
  %8 = load i32, i32* %n.addr, align 4
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %6, i64 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8) #4
  %9 = load i8*, i8** %buf.addr, align 8
  store i8* %9, i8** %retval, align 8
  br label %return

if.end8:                                          ; preds = %if.end
  %10 = load i32, i32* %n.addr, align 4
  store i32 %10, i32* %l, align 4
  store i64 0, i64* %i, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end8
  %11 = load i64, i64* %i, align 8
  %12 = load i64, i64* %maxlen, align 8
  %cmp9 = icmp uge i64 %11, %12
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %do.body
  %13 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  store i8 0, i8* %arrayidx, align 1
  store i8* null, i8** %retval, align 8
  br label %return

if.end11:                                         ; preds = %do.body
  %14 = load i32, i32* %l, align 4
  %15 = load i32, i32* %base.addr, align 4
  %rem = urem i32 %14, %15
  %conv = trunc i32 %rem to i8
  store i8 %conv, i8* %c, align 1
  %16 = load i8, i8* %c, align 1
  %conv12 = sext i8 %16 to i32
  %cmp13 = icmp slt i32 %conv12, 10
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  %17 = load i8, i8* %c, align 1
  %conv16 = sext i8 %17 to i32
  %add = add nsw i32 48, %conv16
  %conv17 = trunc i32 %add to i8
  store i8 %conv17, i8* %c, align 1
  br label %if.end22

if.else:                                          ; preds = %if.end11
  %18 = load i8, i8* %c, align 1
  %conv18 = sext i8 %18 to i32
  %sub19 = sub nsw i32 %conv18, 10
  %add20 = add nsw i32 65, %sub19
  %conv21 = trunc i32 %add20 to i8
  store i8 %conv21, i8* %c, align 1
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  %19 = load i8, i8* %c, align 1
  %20 = load i8*, i8** %buf.addr, align 8
  %21 = load i64, i64* %i, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %i, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %arrayidx23, align 1
  %22 = load i32, i32* %l, align 4
  %23 = load i32, i32* %base.addr, align 4
  %div = udiv i32 %22, %23
  store i32 %div, i32* %l, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end22
  %24 = load i32, i32* %l, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !4

do.end:                                           ; preds = %do.cond
  %25 = load i8*, i8** %buf.addr, align 8
  %26 = load i64, i64* %i, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %25, i64 %26
  store i8 0, i8* %arrayidx24, align 1
  store i64 0, i64* %i, align 8
  %27 = load i8*, i8** %buf.addr, align 8
  %28 = load i64, i64* %buflen.addr, align 8
  %call25 = call i64 @strnlen(i8* %27, i64 %28) #5
  %sub26 = sub i64 %call25, 1
  store i64 %sub26, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %29 = load i64, i64* %i, align 8
  %30 = load i64, i64* %j, align 8
  %cmp27 = icmp ult i64 %29, %30
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i8*, i8** %buf.addr, align 8
  %32 = load i64, i64* %i, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %31, i64 %32
  %33 = load i8, i8* %arrayidx29, align 1
  store i8 %33, i8* %c, align 1
  %34 = load i8*, i8** %buf.addr, align 8
  %35 = load i64, i64* %j, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %34, i64 %35
  %36 = load i8, i8* %arrayidx30, align 1
  %37 = load i8*, i8** %buf.addr, align 8
  %38 = load i64, i64* %i, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 %36, i8* %arrayidx31, align 1
  %39 = load i8, i8* %c, align 1
  %40 = load i8*, i8** %buf.addr, align 8
  %41 = load i64, i64* %j, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 %39, i8* %arrayidx32, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i64, i64* %i, align 8
  %inc33 = add i64 %42, 1
  store i64 %inc33, i64* %i, align 8
  %43 = load i64, i64* %j, align 8
  %dec = add i64 %43, -1
  store i64 %dec, i64* %j, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %44 = load i8*, i8** %buf.addr, align 8
  store i8* %44, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then10, %if.then7, %if.then
  %45 = load i8*, i8** %retval, align 8
  ret i8* %45
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strnlen(i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %buf = alloca [255 x i8], align 16
  %i = alloca i32, align 4
  %base = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %cond.true2, label %cond.false5

cond.true2:                                       ; preds = %cond.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %5) #5
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true2
  %cond7 = phi i32 [ %call4, %cond.true2 ], [ 10, %cond.false5 ]
  store i32 %cond7, i32* %base, align 4
  %6 = load i32, i32* %i, align 4
  %arraydecay = getelementptr inbounds [255 x i8], [255 x i8]* %buf, i64 0, i64 0
  %7 = load i32, i32* %base, align 4
  %call8 = call i8* @itoan(i32 %6, i8* %arraydecay, i64 255, i32 %7)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %call8)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

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
