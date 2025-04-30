; ModuleID = 'code/199-33056write.c'
source_filename = "code/199-33056write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Student = type { [30 x i8], [30 x i8], i32, float }

@.str = private unnamed_addr constant [5 x i8] c"Mary\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Jones\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%0.1f\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"C:\\dev\\temp\\students1.dat\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @writeStudent(%struct._IO_FILE* %fp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %student = alloca %struct.Student, align 4
  %temp = alloca [10 x i8], align 1
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %firstName = getelementptr inbounds %struct.Student, %struct.Student* %student, i32 0, i32 0
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %firstName, i64 0, i64 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #3
  %lastName = getelementptr inbounds %struct.Student, %struct.Student* %student, i32 0, i32 1
  %arraydecay1 = getelementptr inbounds [30 x i8], [30 x i8]* %lastName, i64 0, i64 0
  %call2 = call i8* @strcpy(i8* %arraydecay1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)) #3
  %age = getelementptr inbounds %struct.Student, %struct.Student* %student, i32 0, i32 2
  store i32 17, i32* %age, align 4
  %gpa = getelementptr inbounds %struct.Student, %struct.Student* %student, i32 0, i32 3
  store float 0x400F333340000000, float* %gpa, align 4
  %firstName3 = getelementptr inbounds %struct.Student, %struct.Student* %student, i32 0, i32 0
  %arraydecay4 = getelementptr inbounds [30 x i8], [30 x i8]* %firstName3, i64 0, i64 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call5 = call i32 @fputs(i8* %arraydecay4, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %1)
  %lastName7 = getelementptr inbounds %struct.Student, %struct.Student* %student, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [30 x i8], [30 x i8]* %lastName7, i64 0, i64 0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call9 = call i32 @fputs(i8* %arraydecay8, %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %3)
  %arraydecay11 = getelementptr inbounds [10 x i8], [10 x i8]* %temp, i64 0, i64 0
  %age12 = getelementptr inbounds %struct.Student, %struct.Student* %student, i32 0, i32 2
  %4 = load i32, i32* %age12, align 4
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %4) #3
  %arraydecay14 = getelementptr inbounds [10 x i8], [10 x i8]* %temp, i64 0, i64 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call15 = call i32 @fputs(i8* %arraydecay14, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call16 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), %struct._IO_FILE* %6)
  %arraydecay17 = getelementptr inbounds [10 x i8], [10 x i8]* %temp, i64 0, i64 0
  %gpa18 = getelementptr inbounds %struct.Student, %struct.Student* %student, i32 0, i32 3
  %7 = load float, float* %gpa18, align 4
  %conv = fpext float %7 to double
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), double %conv) #3
  %arraydecay20 = getelementptr inbounds [10 x i8], [10 x i8]* %temp, i64 0, i64 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call21 = call i32 @fputs(i8* %arraydecay20, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call22 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %9)
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp ne %struct._IO_FILE* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %1, 10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @writeStudent(%struct._IO_FILE* %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 @fclose(%struct._IO_FILE* %4)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret i32 0
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

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
