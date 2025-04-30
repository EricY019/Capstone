; ModuleID = 'code/325-26168ch27_drill.c'
source_filename = "code/325-26168ch27_drill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"p is\22%s\22 and x is %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Hello World!\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"World!\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"May\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Chris\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_out(i8* %p, i32 %x) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %x.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i32, i32* %x.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %0, i32 %1)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %first = alloca i8*, align 8
  %last = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %first, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %last, align 8
  %0 = load i8*, i8** %first, align 8
  %1 = load i8*, i8** %last, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %0, i8* %1)
  call void @print_out(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 6)
  call void @print_out(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 39)
  call void @print_out(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i32 89)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
