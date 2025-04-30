; ModuleID = 'code/187-4745testbed.c'
source_filename = "code/187-4745testbed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32, %union.anon }
%union.anon = type { i64 }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [11 x i8] c"Thread %d\0A\00", align 1
@__const.threadFunction.TestVariable = private unnamed_addr constant { i32, [4 x i8], { i8, [7 x i8] } } { i32 2, [4 x i8] undef, { i8, [7 x i8] } { i8 3, [7 x i8] undef } }, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"String: %s\0AInteger: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%d arguments were passed to this program.\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Argument %d: %s\0A\00", align 1
@__const.main.TestVariable = private unnamed_addr constant { i32, [4 x i8], { i8, [7 x i8] } } { i32 12, [4 x i8] undef, { i8, [7 x i8] } { i8 97, [7 x i8] undef } }, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"Index: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Hello world\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"4! = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"5! = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @threadFunction(i8* %Vargp) #0 {
entry:
  %Vargp.addr = alloca i8*, align 8
  %Id = alloca i32, align 4
  %TestVariable = alloca %struct.test, align 8
  store i8* %Vargp, i8** %Vargp.addr, align 8
  %0 = load i8*, i8** %Vargp.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %Id, align 4
  %3 = load i32, i32* %Id, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %3)
  %4 = bitcast %struct.test* %TestVariable to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast ({ i32, [4 x i8], { i8, [7 x i8] } }* @__const.threadFunction.TestVariable to i8*), i64 16, i1 false)
  %Number = getelementptr inbounds %struct.test, %struct.test* %TestVariable, i32 0, i32 0
  store i32 10, i32* %Number, align 8
  %call1 = call i32 @sleep(i32 2)
  ret i8* null
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sleep(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @functionToCall(i8* %Arg1, i32 %Arg2) #0 {
entry:
  %Arg1.addr = alloca i8*, align 8
  %Arg2.addr = alloca i32, align 4
  store i8* %Arg1, i8** %Arg1.addr, align 8
  store i32 %Arg2, i32* %Arg2.addr, align 4
  %0 = load i8*, i8** %Arg1.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %Arg1.addr, align 8
  %2 = load i32, i32* %Arg2.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %1, i32 %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @factorial(i32 %N) #0 {
entry:
  %retval = alloca i32, align 4
  %N.addr = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %N.addr, align 4
  %2 = load i32, i32* %N.addr, align 4
  %sub = sub nsw i32 %2, 1
  %call = call i32 @factorial(i32 %sub)
  %mul = mul nsw i32 %1, %call
  store i32 %mul, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %ArgCount, i8** %ArgVal) #0 {
entry:
  %retval = alloca i32, align 4
  %ArgCount.addr = alloca i32, align 4
  %ArgVal.addr = alloca i8**, align 8
  %I = alloca i32, align 4
  %ThreadId = alloca i64, align 8
  %.compoundliteral = alloca i32, align 4
  %.compoundliteral5 = alloca i32, align 4
  %SingleLetter = alloca i8, align 1
  %TestVariable = alloca %struct.test, align 8
  %Pointer = alloca %struct.test*, align 8
  %TestIndex = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %ArgCount, i32* %ArgCount.addr, align 4
  store i8** %ArgVal, i8*** %ArgVal.addr, align 8
  %0 = load i32, i32* %ArgCount.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %ArgCount.addr, align 4
  %sub = sub nsw i32 %1, 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %sub)
  store i32 1, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %I, align 4
  %3 = load i32, i32* %ArgCount.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %I, align 4
  %5 = load i8**, i8*** %ArgVal.addr, align 8
  %6 = load i32, i32* %I, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %4, i8* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %I, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %I, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i32 0, i32* %.compoundliteral, align 4
  %9 = bitcast i32* %.compoundliteral to i8*
  %call3 = call i32 @pthread_create(i64* %ThreadId, %union.pthread_attr_t* null, i8* (i8*)* @threadFunction, i8* %9) #4
  %10 = load i64, i64* %ThreadId, align 8
  %call4 = call i32 @pthread_join(i64 %10, i8** null)
  store i32 1, i32* %.compoundliteral5, align 4
  %11 = bitcast i32* %.compoundliteral5 to i8*
  %call6 = call i32 @pthread_create(i64* %ThreadId, %union.pthread_attr_t* null, i8* (i8*)* @threadFunction, i8* %11) #4
  %12 = load i64, i64* %ThreadId, align 8
  %call7 = call i32 @pthread_join(i64 %12, i8** null)
  store i8 97, i8* %SingleLetter, align 1
  store i8 122, i8* %SingleLetter, align 1
  %13 = bitcast %struct.test* %TestVariable to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast ({ i32, [4 x i8], { i8, [7 x i8] } }* @__const.main.TestVariable to i8*), i64 16, i1 false)
  %Number = getelementptr inbounds %struct.test, %struct.test* %TestVariable, i32 0, i32 0
  store i32 3, i32* %Number, align 8
  %14 = getelementptr inbounds %struct.test, %struct.test* %TestVariable, i32 0, i32 1
  %AnotherNumber = bitcast %union.anon* %14 to i64*
  store i64 1891898, i64* %AnotherNumber, align 8
  store %struct.test* null, %struct.test** %Pointer, align 8
  store %struct.test* %TestVariable, %struct.test** %Pointer, align 8
  store i32 0, i32* %TestIndex, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc12, %if.end
  %15 = load i32, i32* %TestIndex, align 4
  %cmp9 = icmp slt i32 %15, 10
  br i1 %cmp9, label %for.body10, label %for.end14

for.body10:                                       ; preds = %for.cond8
  %16 = load i32, i32* %TestIndex, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %16)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body10
  %17 = load i32, i32* %TestIndex, align 4
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, i32* %TestIndex, align 4
  br label %for.cond8, !llvm.loop !6

for.end14:                                        ; preds = %for.cond8
  call void @functionToCall(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %call15 = call i32 @factorial(i32 4)
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %call15)
  %call17 = call i32 @factorial(i32 5)
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %call17)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

declare dso_local i32 @pthread_join(i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
