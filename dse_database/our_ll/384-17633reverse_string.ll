; ModuleID = 'code/384-17633reverse_string.c'
source_filename = "code/384-17633reverse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"str = NULL\0A\00", align 1
@__const.main.str = private unnamed_addr constant [13 x i8] c"Hello ABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @reverseString(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %right = alloca i8*, align 8
  %left = alloca i8*, align 8
  %temp = alloca i8, align 1
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %2) #4
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %call
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %right, align 8
  %3 = load i8*, i8** %s.addr, align 8
  store i8* %3, i8** %left, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8*, i8** %right, align 8
  %cmp = icmp ne i8* %4, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %right, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %temp, align 1
  %8 = load i8*, i8** %left, align 8
  %9 = load i8, i8* %8, align 1
  %10 = load i8*, i8** %right, align 8
  store i8 %9, i8* %10, align 1
  %11 = load i8, i8* %temp, align 1
  %12 = load i8*, i8** %left, align 8
  store i8 %11, i8* %12, align 1
  %13 = load i8*, i8** %left, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr, i8** %left, align 8
  %14 = load i8*, i8** %right, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %14, i32 -1
  store i8* %incdec.ptr3, i8** %right, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %15 = load i8*, i8** %s.addr, align 8
  ret i8* %15
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %str = alloca [13 x i8], align 1
  %newstr = alloca i8*, align 8
  %0 = bitcast [13 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.main.str, i32 0, i32 0), i64 13, i1 false)
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %str, i64 0, i64 0
  %call = call i8* @reverseString(i8* %arraydecay)
  store i8* %call, i8** %newstr, align 8
  %1 = load i8*, i8** %newstr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
