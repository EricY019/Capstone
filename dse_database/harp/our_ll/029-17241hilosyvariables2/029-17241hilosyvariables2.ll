; ModuleID = 'code/029-17241hilosyvariables2.c'
source_filename = "code/029-17241hilosyvariables2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@variable_global = dso_local global i32 0, align 4
@tid = dso_local global [2 x i64] zeroinitializer, align 16
@.str = private unnamed_addr constant [30 x i8] c"\0AError al crear el hilo :[%d]\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\0A Hilo creado!\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"\0A El valor de variable global para el primer hilo es: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"\0A El valor de variable global para el segundo hilo es: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* @tid, i64 0, i64 %idxprom
  %call = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @trabajo, i8* null) #4
  store i32 %call, i32* %err, align 4
  %2 = load i32, i32* %err, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load i32, i32* %err, align 4
  %call2 = call i8* @strerror(i32 %3) #4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %call2)
  br label %if.end

if.else:                                          ; preds = %while.body
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %call5 = call i32 @sleep(i32 10)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @trabajo(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %j = alloca i32, align 4
  %id = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %j, align 4
  %call = call i64 @pthread_self() #5
  store i64 %call, i64* %id, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @variable_global, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @variable_global, align 4
  %2 = load i64, i64* %id, align 8
  %3 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @tid, i64 0, i64 0), align 16
  %call1 = call i32 @pthread_equal(i64 %2, i64 %3) #5
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* @variable_global, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %4)
  br label %if.end

if.else:                                          ; preds = %for.body
  %5 = load i32, i32* @variable_global, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = call i32 @sleep(i32 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %j, align 4
  %inc5 = add nsw i32 %6, 1
  store i32 %inc5, i32* %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i8* null
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @sleep(i32) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i64 @pthread_self() #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @pthread_equal(i64, i64) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
