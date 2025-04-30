; ModuleID = 'code/183-25187allocstring.c'
source_filename = "code/183-25187allocstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@callback.i = internal global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"hoba\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @callback() #0 {
entry:
  %retval = alloca i8*, align 8
  %0 = load i32, i32* @callback.i, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @callback.i, align 4
  %1 = load i32, i32* @callback.i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i8*, i8** %retval, align 8
  ret i8* %2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @array_allocate(i8* ()* %cb_func) #0 {
entry:
  %cb_func.addr = alloca i8* ()*, align 8
  %string = alloca i8*, align 8
  %string_list = alloca i8**, align 8
  %counter = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* ()* %cb_func, i8* ()** %cb_func.addr, align 8
  store i8** null, i8*** %string_list, align 8
  store i32 0, i32* %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8* ()*, i8* ()** %cb_func.addr, align 8
  %call = call i8* %0()
  store i8* %call, i8** %string, align 8
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %counter, align 4
  %2 = load i8**, i8*** %string_list, align 8
  %3 = bitcast i8** %2 to i8*
  %4 = load i32, i32* %counter, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 8, %conv
  %call1 = call align 16 i8* @realloc(i8* %3, i64 %mul) #3
  %5 = bitcast i8* %call1 to i8**
  store i8** %5, i8*** %string_list, align 8
  %6 = load i8*, i8** %string, align 8
  %7 = load i8**, i8*** %string_list, align 8
  %8 = load i32, i32* %counter, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  store i8* %6, i8** %arrayidx, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %counter, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %counter, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8**, i8*** %string_list, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %13 to i64
  %arrayidx5 = getelementptr inbounds i8*, i8** %12, i64 %idxprom4
  %14 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 @puts(i8* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %15, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load i8**, i8*** %string_list, align 8
  ret i8** %16
}

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @puts(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i8** @array_allocate(i8* ()* @callback)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
