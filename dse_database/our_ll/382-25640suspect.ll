; ModuleID = 'code/382-25640suspect.c'
source_filename = "code/382-25640suspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"no arg\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"*%d , %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%d .%s, %c, %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%d, %d, %c, %s, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"suspect Starting\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"b\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Good Morning\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Good Night\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Life is like a box of chocolates\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ottawa() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quebec(i32 %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rimouski(i32 %a, float %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca float, align 4
  store i32 %a, i32* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %0, double %conv)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getAnswer(i32 %a, i8 signext %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i8, align 1
  store i32 %a, i32* %a.addr, align 4
  store i8 %b, i8* %b.addr, align 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret i32 42
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @awesome(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beauce(i32 %a, i8* %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i8*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i8* %b, i8** %b.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @montreal(i32 %a, i8* %b, i8 signext %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i8*, align 8
  %c.addr = alloca i8, align 1
  store i32 %a, i32* %a.addr, align 4
  store i8* %b, i8** %b.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sherbrook(i32 %a, i8* %b, i8 signext %c, i8* %d) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i8*, align 8
  %c.addr = alloca i8, align 1
  %d.addr = alloca i8*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i8* %b, i8** %b.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i8* %d, i8** %d.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i8*, i8** %b.addr, align 8
  %2 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %2 to i32
  %3 = load i8*, i8** %d.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %0, i8* %1, i32 %conv, i8* %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(i32 %a, i16 signext %b, i8 signext %c, i8* %d, i32* %e) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i16, align 2
  %c.addr = alloca i8, align 1
  %d.addr = alloca i8*, align 8
  %e.addr = alloca i32*, align 8
  store i32 %a, i32* %a.addr, align 4
  store i16 %b, i16* %b.addr, align 2
  store i8 %c, i8* %c.addr, align 1
  store i8* %d, i8** %d.addr, align 8
  store i32* %e, i32** %e.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i16, i16* %b.addr, align 2
  %conv = sext i16 %1 to i32
  %2 = load i8, i8* %c.addr, align 1
  %conv1 = sext i8 %2 to i32
  %3 = load i8*, i8** %d.addr, align 8
  %4 = load i32*, i32** %e.addr, align 8
  %5 = load i32, i32* %4, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %0, i32 %conv, i32 %conv1, i8* %3, i32 %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %var1 = alloca i32, align 4
  %var2 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca float, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 18, i32* %var1, align 4
  store i32 19, i32* %var2, align 4
  store volatile i32 53, i32* %a, align 4
  store float 0.000000e+00, float* %b, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %call1 = call i32 @sleep(i32 2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @ottawa()
  %1 = load volatile i32, i32* %a, align 4
  call void @print(i32 %1, i16 signext 86, i8 signext 99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %var1)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %2 = load volatile i32, i32* %a, align 4
  call void @quebec(i32 %2)
  %3 = load i32, i32* %i, align 4
  %add = add nsw i32 18, %3
  %call3 = call i32 @getAnswer(i32 %add, i8 signext 97)
  call void @awesome(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  call void @beauce(i32 24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  call void @montreal(i32 24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8 signext 112)
  %4 = bitcast i32* %var1 to i8*
  call void @sherbrook(i32 24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8 signext 112, i8* %4)
  %5 = load float, float* %b, align 4
  call void @rimouski(i32 18, float %5)
  %call4 = call i32 @sleep(i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
