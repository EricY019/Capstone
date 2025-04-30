; ModuleID = 'code/152-27420telefone.c'
source_filename = "code/152-27420telefone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ch = alloca i8, align 1
  %dig = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %0)
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* %ch, align 1
  %conv1 = sext i8 %conv to i32
  %cmp = icmp ne i32 %conv1, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call3 = call i16** @__ctype_b_loc() #3
  %1 = load i16*, i16** %call3, align 8
  %2 = load i8, i8* %ch, align 1
  %conv4 = sext i8 %2 to i32
  %idxprom = sext i32 %conv4 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv5 = zext i16 %3 to i32
  %and = and i32 %conv5, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load i8, i8* %ch, align 1
  %conv6 = sext i8 %4 to i32
  %cmp7 = icmp sge i32 %conv6, 81
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %5 = load i8, i8* %ch, align 1
  %dec = add i8 %5, -1
  store i8 %dec, i8* %ch, align 1
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %6 = load i8, i8* %ch, align 1
  %conv10 = sext i8 %6 to i32
  %sub = sub nsw i32 %conv10, 65
  %div = sdiv i32 %sub, 3
  store i32 %div, i32* %dig, align 4
  %7 = load i32, i32* %dig, align 4
  %add = add nsw i32 50, %7
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @_IO_putc(i32 %add, %struct._IO_FILE* %8)
  br label %if.end14

if.else:                                          ; preds = %while.body
  %9 = load i8, i8* %ch, align 1
  %conv12 = sext i8 %9 to i32
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @_IO_putc(i32 %conv12, %struct._IO_FILE* %10)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare dso_local i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

declare dso_local i32 @_IO_putc(i32, %struct._IO_FILE*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
