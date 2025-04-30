; ModuleID = 'code/200-25657str_lower_case.c'
source_filename = "code/200-25657str_lower_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"HellO, WoRlD\00", align 1
@__const.main.src2 = private unnamed_addr constant [6 x i8] c"hElLo\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"dest1 != ((void*)0)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"code/200-25657str_lower_case.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"dest2 != ((void*)0)\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"dest3 != ((void*)0)\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Before lowercase\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"================\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"src1: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"src2: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"src3: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0AAfter lowercase\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"dest1: %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"dest2: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"dest3: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @str_lower_case(i8* %dest, i8* %src) #0 {
entry:
  %dest.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  store i64 0, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %src.addr, align 8
  %1 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %1
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %src.addr, align 8
  %4 = load i64, i64* %i, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 %4
  %5 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %5 to i32
  %call = call i32 @tolower(i32 %conv3) #6
  %conv4 = trunc i32 %call to i8
  %6 = load i8*, i8** %dest.addr, align 8
  %7 = load i64, i64* %i, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 %7
  store i8 %conv4, i8* %arrayidx5, align 1
  %8 = load i64, i64* %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* %i, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %9 = load i8*, i8** %dest.addr, align 8
  %10 = load i64, i64* %i, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 %10
  store i8 0, i8* %arrayidx6, align 1
  %11 = load i8*, i8** %dest.addr, align 8
  ret i8* %11
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %src1 = alloca i8*, align 8
  %src2 = alloca [6 x i8], align 1
  %src3 = alloca i8*, align 8
  %dest1 = alloca i8*, align 8
  %dest2 = alloca i8*, align 8
  %dest3 = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %src1, align 8
  %0 = bitcast [6 x i8]* %src2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.src2, i32 0, i32 0), i64 6, i1 false)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %src3, align 8
  %1 = load i8*, i8** %src1, align 8
  %call = call i64 @strlen(i8* %1) #6
  %mul = mul i64 %call, 1
  %add = add i64 %mul, 1
  %call1 = call noalias align 16 i8* @malloc(i64 %add) #7
  store i8* %call1, i8** %dest1, align 8
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %src2, i64 0, i64 0
  %call2 = call i64 @strlen(i8* %arraydecay) #6
  %mul3 = mul i64 %call2, 1
  %add4 = add i64 %mul3, 1
  %call5 = call noalias align 16 i8* @malloc(i64 %add4) #7
  store i8* %call5, i8** %dest2, align 8
  %2 = load i8*, i8** %src3, align 8
  %call6 = call i64 @strlen(i8* %2) #6
  %mul7 = mul i64 %call6, 1
  %add8 = add i64 %mul7, 1
  %call9 = call noalias align 16 i8* @malloc(i64 %add8) #7
  store i8* %call9, i8** %dest3, align 8
  %3 = load i8*, i8** %dest1, align 8
  %cmp = icmp ne i8* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %4, %cond.true
  %5 = load i8*, i8** %dest2, align 8
  %cmp10 = icmp ne i8* %5, null
  br i1 %cmp10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

6:                                                ; No predecessors!
  br label %cond.end13

cond.end13:                                       ; preds = %6, %cond.true11
  %7 = load i8*, i8** %dest3, align 8
  %cmp14 = icmp ne i8* %7, null
  br i1 %cmp14, label %cond.true15, label %cond.false16

cond.true15:                                      ; preds = %cond.end13
  br label %cond.end17

cond.false16:                                     ; preds = %cond.end13
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

8:                                                ; No predecessors!
  br label %cond.end17

cond.end17:                                       ; preds = %8, %cond.true15
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %9 = load i8*, i8** %src1, align 8
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %9)
  %arraydecay21 = getelementptr inbounds [6 x i8], [6 x i8]* %src2, i64 0, i64 0
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* %arraydecay21)
  %10 = load i8*, i8** %src3, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %10)
  %11 = load i8*, i8** %dest1, align 8
  %12 = load i8*, i8** %src1, align 8
  %call24 = call i8* @str_lower_case(i8* %11, i8* %12)
  %13 = load i8*, i8** %dest2, align 8
  %arraydecay25 = getelementptr inbounds [6 x i8], [6 x i8]* %src2, i64 0, i64 0
  %call26 = call i8* @str_lower_case(i8* %13, i8* %arraydecay25)
  %14 = load i8*, i8** %dest3, align 8
  %15 = load i8*, i8** %src3, align 8
  %call27 = call i8* @str_lower_case(i8* %14, i8* %15)
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %16 = load i8*, i8** %dest1, align 8
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* %16)
  %17 = load i8*, i8** %dest2, align 8
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %17)
  %18 = load i8*, i8** %dest3, align 8
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* %18)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
