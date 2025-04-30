; ModuleID = 'code/264-15031pe024.c'
source_filename = "code/264-15031pe024.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%010llu\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %string = alloca [11 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i64 2000000000, i64* %start, align 8
  %0 = load i64, i64* %start, align 8
  %add = add i64 %0, 700000000
  store i64 %add, i64* %start, align 8
  %1 = load i64, i64* %start, align 8
  %add1 = add i64 %1, 80000000
  store i64 %add1, i64* %start, align 8
  store i64 9876543210, i64* %end, align 8
  store i64 997920, i64* %count, align 8
  %2 = load i64, i64* %start, align 8
  store i64 %2, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load i64, i64* %end, align 8
  %cmp = icmp ule i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %string, i64 0, i64 0
  %5 = load i64, i64* %i, align 8
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %5) #4
  %arraydecay2 = getelementptr inbounds [11 x i8], [11 x i8]* %string, i64 0, i64 0
  %call3 = call i8* @strchr(i8* %arraydecay2, i32 48) #5
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arraydecay5 = getelementptr inbounds [11 x i8], [11 x i8]* %string, i64 0, i64 0
  %call6 = call i8* @strchr(i8* %arraydecay5, i32 49) #5
  %cmp7 = icmp eq i8* %call6, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end
  br label %for.inc

if.end9:                                          ; preds = %if.end
  %arraydecay10 = getelementptr inbounds [11 x i8], [11 x i8]* %string, i64 0, i64 0
  %call11 = call i8* @strchr(i8* %arraydecay10, i32 50) #5
  %cmp12 = icmp eq i8* %call11, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  br label %for.inc

if.end14:                                         ; preds = %if.end9
  %arraydecay15 = getelementptr inbounds [11 x i8], [11 x i8]* %string, i64 0, i64 0
  %call16 = call i8* @strchr(i8* %arraydecay15, i32 51) #5
  %cmp17 = icmp eq i8* %call16, null
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  br label %for.inc

if.end19:                                         ; preds = %if.end14
  %arraydecay20 = getelementptr inbounds [11 x i8], [11 x i8]* %string, i64 0, i64 0
  %call21 = call i8* @strchr(i8* %arraydecay20, i32 52) #5
  %cmp22 = icmp eq i8* %call21, null
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  br label %for.inc

if.end24:                                         ; preds = %if.end19
  %arraydecay25 = getelementptr inbounds [11 x i8], [11 x i8]* %string, i64 0, i64 0
  %call26 = call i8* @strchr(i8* %arraydecay25, i32 53) #5
  %cmp27 = icmp eq i8* %call26, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end24
  br label %for.inc

if.end29:                                         ; preds = %if.end24
  %arraydecay30 = getelementptr inbounds [11 x i8], [11 x i8]* %string, i64 0, i64 0
  %call31 = call i8* @strchr(i8* %arraydecay30, i32 54) #5
  %cmp32 = icmp eq i8* %call31, null
  br i1 %cmp32, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end29
  br label %for.inc

if.end34:                                         ; preds = %if.end29
  %arraydecay35 = getelementptr inbounds [11 x i8], [11 x i8]* %string, i64 0, i64 0
  %call36 = call i8* @strchr(i8* %arraydecay35, i32 55) #5
  %cmp37 = icmp eq i8* %call36, null
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end34
  br label %for.inc

if.end39:                                         ; preds = %if.end34
  %arraydecay40 = getelementptr inbounds [11 x i8], [11 x i8]* %string, i64 0, i64 0
  %call41 = call i8* @strchr(i8* %arraydecay40, i32 56) #5
  %cmp42 = icmp eq i8* %call41, null
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end39
  br label %for.inc

if.end44:                                         ; preds = %if.end39
  %arraydecay45 = getelementptr inbounds [11 x i8], [11 x i8]* %string, i64 0, i64 0
  %call46 = call i8* @strchr(i8* %arraydecay45, i32 57) #5
  %cmp47 = icmp eq i8* %call46, null
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %if.end44
  br label %for.inc

if.end49:                                         ; preds = %if.end44
  %6 = load i64, i64* %count, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %count, align 8
  %7 = load i64, i64* %count, align 8
  %cmp50 = icmp eq i64 %7, 1000000
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end49
  br label %for.end

if.end52:                                         ; preds = %if.end49
  br label %for.inc

for.inc:                                          ; preds = %if.end52, %if.then48, %if.then43, %if.then38, %if.then33, %if.then28, %if.then23, %if.then18, %if.then13, %if.then8, %if.then
  %8 = load i64, i64* %i, align 8
  %inc53 = add i64 %8, 1
  store i64 %inc53, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then51, %for.cond
  %9 = load i64, i64* %i, align 8
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %9)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #2

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
