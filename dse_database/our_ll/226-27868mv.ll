; ModuleID = 'code/226-27868mv.c'
source_filename = "code/226-27868mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Falta un argumento\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ab+\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %pFOrigen = alloca %struct._IO_FILE*, align 8
  %pFDestino = alloca %struct._IO_FILE*, align 8
  %byte = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp ne i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFOrigen, align 8
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx4, align 8
  %call5 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %call5, %struct._IO_FILE** %pFDestino, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFOrigen, align 8
  %call6 = call i32 @feof(%struct._IO_FILE* %6) #3
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFOrigen, align 8
  %call7 = call i32 @fgetc(%struct._IO_FILE* %7)
  %conv = trunc i32 %call7 to i8
  store i8 %conv, i8* %byte, align 1
  %8 = load i8, i8* %byte, align 1
  %conv8 = zext i8 %8 to i32
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFDestino, align 8
  %call9 = call i32 @fputc(i32 %conv8, %struct._IO_FILE* %9)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFOrigen, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFDestino, align 8
  %call11 = call i32 @fclose(%struct._IO_FILE* %11)
  %12 = load i8**, i8*** %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %12, i64 1
  %13 = load i8*, i8** %arrayidx12, align 8
  %call13 = call i32 @remove(i8* %13) #3
  br label %if.end

if.end:                                           ; preds = %while.end, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end14, %if.then
  %14 = load i32, i32* %retval, align 4
  ret i32 %14
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #2

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @remove(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
