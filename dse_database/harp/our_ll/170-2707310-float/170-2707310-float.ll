; ModuleID = 'code/170-2707310-float.c'
source_filename = "code/170-2707310-float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blub = type { float }

@.str = private unnamed_addr constant [11 x i8] c"top == top\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"code/170-2707310-float.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"s.f == s.f\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fs[1] == fs[1]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isNan(float %arg) #0 {
entry:
  %arg.addr = alloca float, align 4
  %x = alloca float, align 4
  store float %arg, float* %arg.addr, align 4
  %0 = load float, float* %arg.addr, align 4
  %1 = load float, float* %arg.addr, align 4
  %cmp = fcmp une float %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.blub, align 4
  %fs = alloca [3 x float], align 4
  %top = alloca float, align 4
  %r = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load float, float* %top, align 4
  %1 = load float, float* %top, align 4
  %cmp = fcmp oeq float %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %f = getelementptr inbounds %struct.blub, %struct.blub* %s, i32 0, i32 0
  %3 = load float, float* %f, align 4
  %f1 = getelementptr inbounds %struct.blub, %struct.blub* %s, i32 0, i32 0
  %4 = load float, float* %f1, align 4
  %cmp2 = fcmp oeq float %3, %4
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

5:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %5, %cond.true3
  %arrayidx = getelementptr inbounds [3 x float], [3 x float]* %fs, i64 0, i64 1
  %6 = load float, float* %arrayidx, align 4
  %arrayidx6 = getelementptr inbounds [3 x float], [3 x float]* %fs, i64 0, i64 1
  %7 = load float, float* %arrayidx6, align 4
  %cmp7 = fcmp oeq float %6, %7
  br i1 %cmp7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end5
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

8:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %8, %cond.true8
  %9 = load float, float* %top, align 4
  %call = call i32 @isNan(float %9)
  store i32 %call, i32* %r, align 4
  %10 = load i32, i32* %r, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end10
  br label %if.end

if.else:                                          ; preds = %cond.end10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
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
