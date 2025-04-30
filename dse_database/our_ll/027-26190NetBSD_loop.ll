; ModuleID = 'code/027-26190NetBSD_loop.c'
source_filename = "code/027-26190NetBSD_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0 <= glob2_p_off\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"code/027-26190NetBSD_loop.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"glob2_p_off < MAXPATHLEN + 1\00", align 1
@__BLAST_NONDET = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %MAXPATHLEN = alloca i32, align 4
  %pathbuf_off = alloca i32, align 4
  %bound_off = alloca i32, align 4
  %glob2_p_off = alloca i32, align 4
  %glob2_pathbuf_off = alloca i32, align 4
  %glob2_pathlim_off = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i32, i32* %MAXPATHLEN, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  br label %END

if.end:                                           ; preds = %if.then
  store i32 0, i32* %pathbuf_off, align 4
  %1 = load i32, i32* %pathbuf_off, align 4
  %2 = load i32, i32* %MAXPATHLEN, align 4
  %add = add nsw i32 %2, 1
  %add1 = add nsw i32 %1, %add
  %sub = sub nsw i32 %add1, 1
  store i32 %sub, i32* %bound_off, align 4
  %3 = load i32, i32* %pathbuf_off, align 4
  store i32 %3, i32* %glob2_pathbuf_off, align 4
  %4 = load i32, i32* %bound_off, align 4
  store i32 %4, i32* %glob2_pathlim_off, align 4
  %5 = load i32, i32* %glob2_pathbuf_off, align 4
  store i32 %5, i32* %glob2_p_off, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %glob2_p_off, align 4
  %7 = load i32, i32* %glob2_pathlim_off, align 4
  %cmp2 = icmp sle i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %glob2_p_off, align 4
  %cmp3 = icmp sle i32 0, %8
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

9:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %10 = load i32, i32* %glob2_p_off, align 4
  %11 = load i32, i32* %MAXPATHLEN, align 4
  %add4 = add nsw i32 %11, 1
  %cmp5 = icmp slt i32 %10, %add4
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

12:                                               ; No predecessors!
  br label %cond.end8

cond.end8:                                        ; preds = %12, %cond.true6
  br label %for.inc

for.inc:                                          ; preds = %cond.end8
  %13 = load i32, i32* %glob2_p_off, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %glob2_p_off, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %END

END:                                              ; preds = %for.end, %if.else
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
