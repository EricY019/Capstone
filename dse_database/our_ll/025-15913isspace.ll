; ModuleID = 'code/025-15913isspace.c'
source_filename = "code/025-15913isspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [69 x i8] c"((*__ctype_b_loc ())[(int) ((' '))] & (unsigned short int) _ISspace)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"code/025-15913isspace.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"((*__ctype_b_loc ())[(int) (('\\t'))] & (unsigned short int) _ISspace)\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"((*__ctype_b_loc ())[(int) (('\\n'))] & (unsigned short int) _ISspace)\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"((*__ctype_b_loc ())[(int) (('\\f'))] & (unsigned short int) _ISspace)\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"((*__ctype_b_loc ())[(int) (('\\r'))] & (unsigned short int) _ISspace)\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"((*__ctype_b_loc ())[(int) (('\\v'))] & (unsigned short int) _ISspace)\00", align 1
@.str.7 = private unnamed_addr constant [71 x i8] c"!((*__ctype_b_loc ())[(int) (('\\\\'))] & (unsigned short int) _ISspace)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i16** @__ctype_b_loc() #3
  %0 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 32
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %call1 = call i16** @__ctype_b_loc() #3
  %3 = load i16*, i16** %call1, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %3, i64 9
  %4 = load i16, i16* %arrayidx2, align 2
  %conv3 = zext i16 %4 to i32
  %and4 = and i32 %conv3, 8192
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

5:                                                ; No predecessors!
  br label %cond.end8

cond.end8:                                        ; preds = %5, %cond.true6
  %call9 = call i16** @__ctype_b_loc() #3
  %6 = load i16*, i16** %call9, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 10
  %7 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %7 to i32
  %and12 = and i32 %conv11, 8192
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.end8
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end8
  call void @__assert_fail(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

8:                                                ; No predecessors!
  br label %cond.end16

cond.end16:                                       ; preds = %8, %cond.true14
  %call17 = call i16** @__ctype_b_loc() #3
  %9 = load i16*, i16** %call17, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %9, i64 12
  %10 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %10 to i32
  %and20 = and i32 %conv19, 8192
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %cond.true22, label %cond.false23

cond.true22:                                      ; preds = %cond.end16
  br label %cond.end24

cond.false23:                                     ; preds = %cond.end16
  call void @__assert_fail(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

11:                                               ; No predecessors!
  br label %cond.end24

cond.end24:                                       ; preds = %11, %cond.true22
  %call25 = call i16** @__ctype_b_loc() #3
  %12 = load i16*, i16** %call25, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %12, i64 13
  %13 = load i16, i16* %arrayidx26, align 2
  %conv27 = zext i16 %13 to i32
  %and28 = and i32 %conv27, 8192
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %cond.true30, label %cond.false31

cond.true30:                                      ; preds = %cond.end24
  br label %cond.end32

cond.false31:                                     ; preds = %cond.end24
  call void @__assert_fail(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

14:                                               ; No predecessors!
  br label %cond.end32

cond.end32:                                       ; preds = %14, %cond.true30
  %call33 = call i16** @__ctype_b_loc() #3
  %15 = load i16*, i16** %call33, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %15, i64 11
  %16 = load i16, i16* %arrayidx34, align 2
  %conv35 = zext i16 %16 to i32
  %and36 = and i32 %conv35, 8192
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %cond.end32
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end32
  call void @__assert_fail(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

17:                                               ; No predecessors!
  br label %cond.end40

cond.end40:                                       ; preds = %17, %cond.true38
  %call41 = call i16** @__ctype_b_loc() #3
  %18 = load i16*, i16** %call41, align 8
  %arrayidx42 = getelementptr inbounds i16, i16* %18, i64 92
  %19 = load i16, i16* %arrayidx42, align 2
  %conv43 = zext i16 %19 to i32
  %and44 = and i32 %conv43, 8192
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %cond.false47, label %cond.true46

cond.true46:                                      ; preds = %cond.end40
  br label %cond.end48

cond.false47:                                     ; preds = %cond.end40
  call void @__assert_fail(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

20:                                               ; No predecessors!
  br label %cond.end48

cond.end48:                                       ; preds = %20, %cond.true46
  ret i32 0
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
