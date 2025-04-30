; ModuleID = 'code/168-9630tst-random2.c'
source_filename = "code/168-9630tst-random2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"setstate (ostate) != state\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%ld != %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pass = alloca i32, align 4
  %ret = alloca i32, align 4
  %r = alloca [2 x i64], align 16
  %j = alloca i32, align 4
  %state = alloca [128 x i8], align 16
  %ostate = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %ret, align 4
  store i32 0, i32* %pass, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, i32* %pass, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  call void @srandom(i32 305414945) #3
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %call = call i64 @random() #3
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %2 = load i32, i32* %j, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %3 = load i32, i32* %pass, align 4
  %cmp4 = icmp eq i32 %3, 1
  br i1 %cmp4, label %if.then, label %if.end11

if.then:                                          ; preds = %for.end
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %state, i64 0, i64 0
  %call5 = call i8* @initstate(i32 878059777, i8* %arraydecay, i64 128) #3
  store i8* %call5, i8** %ostate, align 8
  %4 = load i8*, i8** %ostate, align 8
  %call6 = call i8* @setstate(i8* %4) #3
  %arraydecay7 = getelementptr inbounds [128 x i8], [128 x i8]* %state, i64 0, i64 0
  %cmp8 = icmp ne i8* %call6, %arraydecay7
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %call10 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end11

if.end11:                                         ; preds = %if.end, %for.end
  %call12 = call i64 @random() #3
  %call13 = call i64 @random() #3
  %5 = load i32, i32* %pass, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %r, i64 0, i64 %idxprom
  store i64 %call13, i64* %arrayidx, align 8
  br label %for.inc14

for.inc14:                                        ; preds = %if.end11
  %6 = load i32, i32* %pass, align 4
  %inc15 = add nsw i32 %6, 1
  store i32 %inc15, i32* %pass, align 4
  br label %for.cond, !llvm.loop !6

for.end16:                                        ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds [2 x i64], [2 x i64]* %r, i64 0, i64 0
  %7 = load i64, i64* %arrayidx17, align 16
  %arrayidx18 = getelementptr inbounds [2 x i64], [2 x i64]* %r, i64 0, i64 1
  %8 = load i64, i64* %arrayidx18, align 8
  %cmp19 = icmp ne i64 %7, %8
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %for.end16
  %arrayidx21 = getelementptr inbounds [2 x i64], [2 x i64]* %r, i64 0, i64 0
  %9 = load i64, i64* %arrayidx21, align 16
  %arrayidx22 = getelementptr inbounds [2 x i64], [2 x i64]* %r, i64 0, i64 1
  %10 = load i64, i64* %arrayidx22, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 %9, i64 %10)
  store i32 1, i32* %ret, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %for.end16
  %11 = load i32, i32* %ret, align 4
  ret i32 %11
}

; Function Attrs: nounwind
declare dso_local void @srandom(i32) #1

; Function Attrs: nounwind
declare dso_local i64 @random() #1

; Function Attrs: nounwind
declare dso_local i8* @initstate(i32, i8*, i64) #1

; Function Attrs: nounwind
declare dso_local i8* @setstate(i8*) #1

declare dso_local i32 @puts(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
