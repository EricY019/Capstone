; ModuleID = 'code/058-8305strchr.c'
source_filename = "code/058-8305strchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.str = private unnamed_addr constant [19 x i8] c"I love this world!\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Try not. Do, or do not. There is no try.\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Found '%c' starting at '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [19 x i8], align 16
  %p = alloca i8*, align 8
  %str2 = alloca i8*, align 8
  %target = alloca i8, align 1
  %result = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [19 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.main.str, i32 0, i32 0), i64 19, i1 false)
  %arraydecay = getelementptr inbounds [19 x i8], [19 x i8]* %str, i64 0, i64 0
  %call = call i8* @strchr(i8* %arraydecay, i32 73) #4
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %1)
  %2 = load i8*, i8** %p, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %conv)
  %4 = load i8*, i8** %p, align 8
  %arraydecay3 = getelementptr inbounds [19 x i8], [19 x i8]* %str, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint i8* %4 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv4 = trunc i64 %sub.ptr.sub to i32
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %conv4)
  %arraydecay6 = getelementptr inbounds [19 x i8], [19 x i8]* %str, i64 0, i64 0
  %call7 = call i8* @strchr(i8* %arraydecay6, i32 108) #4
  store i8* %call7, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %5)
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv9 = sext i8 %7 to i32
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %conv9)
  %8 = load i8*, i8** %p, align 8
  %arraydecay11 = getelementptr inbounds [19 x i8], [19 x i8]* %str, i64 0, i64 0
  %sub.ptr.lhs.cast12 = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast13 = ptrtoint i8* %arraydecay11 to i64
  %sub.ptr.sub14 = sub i64 %sub.ptr.lhs.cast12, %sub.ptr.rhs.cast13
  %conv15 = trunc i64 %sub.ptr.sub14 to i32
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %conv15)
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8** %str2, align 8
  store i8 84, i8* %target, align 1
  %9 = load i8*, i8** %str2, align 8
  store i8* %9, i8** %result, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %10 = load i8*, i8** %result, align 8
  %11 = load i8, i8* %target, align 1
  %conv17 = sext i8 %11 to i32
  %call18 = call i8* @strchr(i8* %10, i32 %conv17) #4
  store i8* %call18, i8** %result, align 8
  %cmp = icmp ne i8* %call18, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8, i8* %target, align 1
  %conv20 = sext i8 %12 to i32
  %13 = load i8*, i8** %result, align 8
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %conv20, i8* %13)
  %14 = load i8*, i8** %result, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %result, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
