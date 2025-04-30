; ModuleID = 'code/200-268744b.c'
source_filename = "code/200-268744b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Campos verdes\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @duplica_string(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %add = add i64 %call, 1
  %call1 = call noalias align 16 i8* @malloc(i64 %add) #5
  store i8* %call1, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %p, align 8
  %3 = load i8*, i8** %s.addr, align 8
  %call2 = call i8* @strcpy(i8* %2, i8* %3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %p, align 8
  ret i8* %4
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @voltea_string(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %length = alloca i32, align 4
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  store i32 0, i32* %i, align 4
  %1 = load i32, i32* %length, align 4
  %conv1 = sext i32 %1 to i64
  %call2 = call noalias align 16 i8* @malloc(i64 %conv1) #5
  store i8* %call2, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %length, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i32, i32* %length, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %add.ptr4 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  %5 = load i8, i8* %add.ptr4, align 1
  %6 = load i8*, i8** %p, align 8
  %7 = load i32, i32* %i, align 4
  %idx.ext5 = sext i32 %7 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %6, i64 %idx.ext5
  store i8 %5, i8* %add.ptr6, align 1
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  %9 = load i32, i32* %length, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %length, align 4
  %10 = load i8*, i8** %p, align 8
  %11 = load i32, i32* %i, align 4
  %idx.ext7 = sext i32 %11 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %10, i64 %idx.ext7
  store i8 0, i8* %add.ptr8, align 1
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %12 = load i8*, i8** %p, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca i8*, align 8
  %s_duplicado = alloca i8*, align 8
  %s_volteado = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %s, align 8
  %0 = load i8*, i8** %s, align 8
  %call = call i64 @strlen(i8* %0) #4
  %call1 = call noalias align 16 i8* @malloc(i64 %call) #5
  store i8* %call1, i8** %s_duplicado, align 8
  %1 = load i8*, i8** %s, align 8
  %call2 = call i64 @strlen(i8* %1) #4
  %call3 = call noalias align 16 i8* @malloc(i64 %call2) #5
  store i8* %call3, i8** %s_volteado, align 8
  %2 = load i8*, i8** %s, align 8
  %call4 = call i8* @duplica_string(i8* %2)
  store i8* %call4, i8** %s_duplicado, align 8
  %3 = load i8*, i8** %s_duplicado, align 8
  %call5 = call i8* @voltea_string(i8* %3)
  store i8* %call5, i8** %s_volteado, align 8
  %4 = load i8*, i8** %s_volteado, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  %5 = load i8*, i8** %s_volteado, align 8
  call void @free(i8* %5) #5
  %6 = load i8*, i8** %s_duplicado, align 8
  call void @free(i8* %6) #5
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
