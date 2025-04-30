; ModuleID = 'code/389-18604gcore.c'
source_filename = "code/389-18604gcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@extern_array = dso_local global [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16
@heap_string = internal global i8* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"I'm a little teapot, short and stout...\00", align 1
@un_initialized_array = internal global [4 x i32] zeroinitializer, align 16
@static_array = internal global [4 x i32] [i32 5, i32 6, i32 7, i32 8], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @terminal_func() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @array_func() #0 {
entry:
  %local_array = alloca [4 x i32], align 16
  %i = alloca i32, align 4
  %call = call noalias align 16 i8* @malloc(i64 80) #2
  store i8* %call, i8** @heap_string, align 8
  %0 = load i8*, i8** @heap_string, align 8
  %call1 = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0)) #2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* @extern_array, i64 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %add = add nsw i32 %3, 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* @un_initialized_array, i64 0, i64 %idxprom2
  store i32 %add, i32* %arrayidx3, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* @extern_array, i64 0, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  %add6 = add nsw i32 %6, 12
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [4 x i32], [4 x i32]* %local_array, i64 0, i64 %idxprom7
  store i32 %add6, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @static_array, i64 0, i64 0), align 16
  call void @terminal_func()
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @factorial_func(i32 %value) #0 {
entry:
  %value.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %value.addr, align 4
  %sub = sub nsw i32 %1, 1
  %call = call i32 @factorial_func(i32 %sub)
  %2 = load i32, i32* %value.addr, align 4
  %mul = mul nsw i32 %2, %call
  store i32 %mul, i32* %value.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @array_func()
  %3 = load i32, i32* %value.addr, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @factorial_func(i32 6)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
