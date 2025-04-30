; ModuleID = 'code/000-7470thread.c'
source_filename = "code/000-7470thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [16 x i8] c"job1: print %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"job1: pthread_self: %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"job2: print %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"job2: pthread_self: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"job3: print %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"job3: pthread_self: %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"job4: print %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"job4: pthread_self: %lu\0A\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"pthread_create(&tid1[i], ((void*)0), job1, (void*)i) == 0\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"code/000-7470thread.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"pthread_create(&tid2[i], ((void*)0), job2, (void*)i) == 0\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"pthread_create(&tid3[i], ((void*)0), job3, (void*)i) == 0\00", align 1
@.str.12 = private unnamed_addr constant [58 x i8] c"pthread_create(&tid4[i], ((void*)0), job4, (void*)i) == 0\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"pthread_join(tid1[i], &res) == 0\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"res == (void*)i\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"pthread_join(tid2[i], &res) == 0\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"res == ((void*)0)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @job1(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %pid = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i64 @pthread_self() #6
  store i64 %call, i64* %pid, align 8
  %call1 = call i32 @sleep(i32 1)
  %0 = load i8*, i8** %arg.addr, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %0)
  %1 = load i64, i64* %pid, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %1)
  %call4 = call i32 @sleep(i32 1)
  %2 = load i8*, i8** %arg.addr, align 8
  ret i8* %2
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i64 @pthread_self() #1

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @job2(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %pid = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i64 @pthread_self() #6
  store i64 %call, i64* %pid, align 8
  %call1 = call i32 @sleep(i32 1)
  %0 = load i8*, i8** %arg.addr, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %0)
  %1 = load i64, i64* %pid, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %1)
  %call4 = call i32 @sleep(i32 1)
  call void @pthread_exit(i8* null) #7
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @job3(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %pid = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i64 @pthread_self() #6
  store i64 %call, i64* %pid, align 8
  %0 = load i64, i64* %pid, align 8
  %call1 = call i32 @pthread_detach(i64 %0) #8
  %call2 = call i32 @sleep(i32 1)
  %1 = load i8*, i8** %arg.addr, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %1)
  %2 = load i64, i64* %pid, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %2)
  %call5 = call i32 @sleep(i32 1)
  %3 = load i8*, i8** %arg.addr, align 8
  ret i8* %3
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_detach(i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @job4(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %pid = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call i64 @pthread_self() #6
  store i64 %call, i64* %pid, align 8
  %0 = load i64, i64* %pid, align 8
  %call1 = call i32 @pthread_detach(i64 %0) #8
  %call2 = call i32 @sleep(i32 1)
  %1 = load i8*, i8** %arg.addr, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %1)
  %2 = load i64, i64* %pid, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 %2)
  %call5 = call i32 @sleep(i32 1)
  %3 = load i8*, i8** %arg.addr, align 8
  ret i8* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tid1 = alloca [8 x i64], align 16
  %tid2 = alloca [8 x i64], align 16
  %tid3 = alloca [8 x i64], align 16
  %tid4 = alloca [8 x i64], align 16
  %i = alloca i32, align 4
  %res = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i64], [8 x i64]* %tid1, i64 0, i64 %idxprom
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %3 = inttoptr i64 %conv to i8*
  %call = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @job1, i8* %3) #8
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__assert_fail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [8 x i64], [8 x i64]* %tid2, i64 0, i64 %idxprom3
  %6 = load i32, i32* %i, align 4
  %conv5 = sext i32 %6 to i64
  %7 = inttoptr i64 %conv5 to i8*
  %call6 = call i32 @pthread_create(i64* %arrayidx4, %union.pthread_attr_t* null, i8* (i8*)* @job2, i8* %7) #8
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

8:                                                ; No predecessors!
  br label %cond.end11

cond.end11:                                       ; preds = %8, %cond.true9
  %9 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [8 x i64], [8 x i64]* %tid3, i64 0, i64 %idxprom12
  %10 = load i32, i32* %i, align 4
  %conv14 = sext i32 %10 to i64
  %11 = inttoptr i64 %conv14 to i8*
  %call15 = call i32 @pthread_create(i64* %arrayidx13, %union.pthread_attr_t* null, i8* (i8*)* @job3, i8* %11) #8
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end11
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end11
  call void @__assert_fail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

12:                                               ; No predecessors!
  br label %cond.end20

cond.end20:                                       ; preds = %12, %cond.true18
  %13 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [8 x i64], [8 x i64]* %tid4, i64 0, i64 %idxprom21
  %14 = load i32, i32* %i, align 4
  %conv23 = sext i32 %14 to i64
  %15 = inttoptr i64 %conv23 to i8*
  %call24 = call i32 @pthread_create(i64* %arrayidx22, %union.pthread_attr_t* null, i8* (i8*)* @job4, i8* %15) #8
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %cond.end20
  br label %cond.end29

cond.false28:                                     ; preds = %cond.end20
  call void @__assert_fail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

16:                                               ; No predecessors!
  br label %cond.end29

cond.end29:                                       ; preds = %16, %cond.true27
  br label %for.inc

for.inc:                                          ; preds = %cond.end29
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc61, %for.end
  %18 = load i32, i32* %i, align 4
  %cmp31 = icmp slt i32 %18, 8
  br i1 %cmp31, label %for.body33, label %for.end63

for.body33:                                       ; preds = %for.cond30
  %19 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %19 to i64
  %arrayidx35 = getelementptr inbounds [8 x i64], [8 x i64]* %tid1, i64 0, i64 %idxprom34
  %20 = load i64, i64* %arrayidx35, align 8
  %call36 = call i32 @pthread_join(i64 %20, i8** %res)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %for.body33
  br label %cond.end41

cond.false40:                                     ; preds = %for.body33
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

21:                                               ; No predecessors!
  br label %cond.end41

cond.end41:                                       ; preds = %21, %cond.true39
  %22 = load i8*, i8** %res, align 8
  %23 = load i32, i32* %i, align 4
  %conv42 = sext i32 %23 to i64
  %24 = inttoptr i64 %conv42 to i8*
  %cmp43 = icmp eq i8* %22, %24
  br i1 %cmp43, label %cond.true45, label %cond.false46

cond.true45:                                      ; preds = %cond.end41
  br label %cond.end47

cond.false46:                                     ; preds = %cond.end41
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

25:                                               ; No predecessors!
  br label %cond.end47

cond.end47:                                       ; preds = %25, %cond.true45
  %26 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %26 to i64
  %arrayidx49 = getelementptr inbounds [8 x i64], [8 x i64]* %tid2, i64 0, i64 %idxprom48
  %27 = load i64, i64* %arrayidx49, align 8
  %call50 = call i32 @pthread_join(i64 %27, i8** %res)
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %cond.end47
  br label %cond.end55

cond.false54:                                     ; preds = %cond.end47
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

28:                                               ; No predecessors!
  br label %cond.end55

cond.end55:                                       ; preds = %28, %cond.true53
  %29 = load i8*, i8** %res, align 8
  %cmp56 = icmp eq i8* %29, null
  br i1 %cmp56, label %cond.true58, label %cond.false59

cond.true58:                                      ; preds = %cond.end55
  br label %cond.end60

cond.false59:                                     ; preds = %cond.end55
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9
  unreachable

30:                                               ; No predecessors!
  br label %cond.end60

cond.end60:                                       ; preds = %30, %cond.true58
  br label %for.inc61

for.inc61:                                        ; preds = %cond.end60
  %31 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %31, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond30, !llvm.loop !6

for.end63:                                        ; preds = %for.cond30
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

declare dso_local i32 @pthread_join(i64, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
