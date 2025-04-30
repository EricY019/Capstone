; ModuleID = 'code/352-18031ex14-1.c'
source_filename = "code/352-18031ex14-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%c == %d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_arguments(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %q = alloca i32, align 4
  %ch = alloca i8, align 1
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %q, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i8**, i8*** %argv.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = load i32, i32* %q, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %idxprom2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %6 to i32
  %cmp4 = icmp ne i32 %conv, 0
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond1
  %7 = load i8**, i8*** %argv.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds i8*, i8** %7, i64 %idxprom7
  %9 = load i8*, i8** %arrayidx8, align 8
  %10 = load i32, i32* %q, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 %idxprom9
  %11 = load i8, i8* %arrayidx10, align 1
  store i8 %11, i8* %ch, align 1
  %call = call i16** @__ctype_b_loc() #3
  %12 = load i16*, i16** %call, align 8
  %13 = load i8, i8* %ch, align 1
  %conv11 = sext i8 %13 to i32
  %idxprom12 = sext i32 %conv11 to i64
  %arrayidx13 = getelementptr inbounds i16, i16* %12, i64 %idxprom12
  %14 = load i16, i16* %arrayidx13, align 2
  %conv14 = zext i16 %14 to i32
  %and = and i32 %conv14, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body6
  %call15 = call i16** @__ctype_b_loc() #3
  %15 = load i16*, i16** %call15, align 8
  %16 = load i8, i8* %ch, align 1
  %conv16 = sext i8 %16 to i32
  %idxprom17 = sext i32 %conv16 to i64
  %arrayidx18 = getelementptr inbounds i16, i16* %15, i64 %idxprom17
  %17 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %17 to i32
  %and20 = and i32 %conv19, 1
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body6
  %18 = load i8, i8* %ch, align 1
  %conv22 = sext i8 %18 to i32
  %19 = load i8, i8* %ch, align 1
  %conv23 = sext i8 %19 to i32
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %conv22, i32 %conv23)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %q, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %q, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %for.inc26

for.inc26:                                        ; preds = %for.end
  %21 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %21, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end28:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  call void @print_arguments(i32 %0, i8** %1)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
