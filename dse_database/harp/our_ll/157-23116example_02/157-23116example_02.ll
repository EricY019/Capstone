; ModuleID = 'code/157-23116example_02.c'
source_filename = "code/157-23116example_02.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Please input your choices (1-5):\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Menu\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"1. Input the student's names and scores\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"2. Search scores of some students\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"3. Modify scores of some students\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"4. List all students' scores\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"3. Quit the system\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_menu_item(i8* %menu_text, i32 %align, i32 %new_line) #0 {
entry:
  %menu_text.addr = alloca i8*, align 8
  %align.addr = alloca i32, align 4
  %new_line.addr = alloca i32, align 4
  %text_len = alloca i32, align 4
  %prefix_num = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %menu_text, i8** %menu_text.addr, align 8
  store i32 %align, i32* %align.addr, align 4
  store i32 %new_line, i32* %new_line.addr, align 4
  %0 = load i8*, i8** %menu_text.addr, align 8
  %call = call i64 @strlen(i8* %0) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %text_len, align 4
  %1 = load i32, i32* %text_len, align 4
  %sub = sub nsw i32 40, %1
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %prefix_num, align 4
  %2 = load i32, i32* %align.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %prefix_num, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call i32 @putchar(i32 32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %6 = load i8*, i8** %menu_text.addr, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %6)
  store i32 0, i32* %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc11, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %prefix_num, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond6
  %call10 = call i32 @putchar(i32 32)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body9
  %9 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond6, !llvm.loop !6

for.end13:                                        ; preds = %for.cond6
  %10 = load i32, i32* %new_line.addr, align 4
  %cmp14 = icmp eq i32 %10, 1
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.end13
  %call17 = call i32 @putchar(i32 10)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end13
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @putchar(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_seperator_line() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @putchar(i32 61)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_menu_choice() #0 {
entry:
  call void @print_menu_item(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_menu() #0 {
entry:
  call void @print_menu_item(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 1)
  call void @print_seperator_line()
  call void @print_menu_item(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 1)
  call void @print_menu_item(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 1)
  call void @print_menu_item(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 1)
  call void @print_menu_item(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 1)
  call void @print_menu_item(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 1)
  call void @print_seperator_line()
  call void @print_menu_choice()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @print_menu()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

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
