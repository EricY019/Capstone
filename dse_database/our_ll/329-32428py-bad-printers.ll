; ModuleID = 'code/329-32428py-bad-printers.c'
source_filename = "code/329-32428py-bad-printers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.container = type { i8*, i32, i32* }

@array = dso_local global [100 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_container(%struct.container* noalias sret(%struct.container) align 8 %agg.result, i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %name1 = getelementptr inbounds %struct.container, %struct.container* %agg.result, i32 0, i32 0
  store i8* %0, i8** %name1, align 8
  %len = getelementptr inbounds %struct.container, %struct.container* %agg.result, i32 0, i32 1
  store i32 0, i32* %len, align 8
  %elements = getelementptr inbounds %struct.container, %struct.container* %agg.result, i32 0, i32 2
  store i32* null, i32** %elements, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_item(%struct.container* %c, i32 %val) #0 {
entry:
  %c.addr = alloca %struct.container*, align 8
  %val.addr = alloca i32, align 4
  store %struct.container* %c, %struct.container** %c.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load %struct.container*, %struct.container** %c.addr, align 8
  %len = getelementptr inbounds %struct.container, %struct.container* %0, i32 0, i32 1
  %1 = load i32, i32* %len, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.container*, %struct.container** %c.addr, align 8
  %elements = getelementptr inbounds %struct.container, %struct.container* %2, i32 0, i32 2
  store i32* getelementptr inbounds ([100 x i32], [100 x i32]* @array, i64 0, i64 0), i32** %elements, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %val.addr, align 4
  %4 = load %struct.container*, %struct.container** %c.addr, align 8
  %elements1 = getelementptr inbounds %struct.container, %struct.container* %4, i32 0, i32 2
  %5 = load i32*, i32** %elements1, align 8
  %6 = load %struct.container*, %struct.container** %c.addr, align 8
  %len2 = getelementptr inbounds %struct.container, %struct.container* %6, i32 0, i32 1
  %7 = load i32, i32* %len2, align 8
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  %8 = load %struct.container*, %struct.container** %c.addr, align 8
  %len3 = getelementptr inbounds %struct.container, %struct.container* %8, i32 0, i32 1
  %9 = load i32, i32* %len3, align 8
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %len3, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca %struct.container, align 8
  store i32 0, i32* %retval, align 4
  call void @make_container(%struct.container* sret(%struct.container) align 8 %c, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  call void @add_item(%struct.container* %c, i32 23)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
