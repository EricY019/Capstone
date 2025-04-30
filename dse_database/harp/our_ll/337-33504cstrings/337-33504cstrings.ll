; ModuleID = 'code/337-33504cstrings.c'
source_filename = "code/337-33504cstrings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [20 x i8] c"hello \00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@__const.main.b = private unnamed_addr constant [7 x i8] c"world!\00", align 1
@.str = private unnamed_addr constant [21 x i8] c"The string c is: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"The length of c is: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"The string c is now: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"cat comes before dog (lexiographically)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" to the\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"The cd string is: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Token:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [20 x i8], align 16
  %b = alloca [7 x i8], align 1
  %c = alloca i8*, align 8
  %p = alloca i8*, align 8
  %d = alloca i8*, align 8
  %cd = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [20 x i8]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.main.a, i32 0, i32 0), i64 20, i1 false)
  %1 = bitcast [7 x i8]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.b, i32 0, i32 0), i64 7, i1 false)
  %arrayidx = getelementptr inbounds [20 x i8], [20 x i8]* %a, i64 0, i64 0
  store i8 72, i8* %arrayidx, align 16
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [7 x i8], [7 x i8]* %b, i64 0, i64 0
  %call = call i8* @strcat(i8* %arraydecay, i8* %arraydecay1) #5
  store i8* %call, i8** %c, align 8
  %2 = load i8*, i8** %c, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %2)
  %3 = load i8*, i8** %c, align 8
  %call3 = call i64 @strlen(i8* %3) #6
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %call3)
  %4 = load i8*, i8** %c, align 8
  %call5 = call i8* @strchr(i8* %4, i32 119) #6
  store i8* %call5, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  store i8 87, i8* %5, align 1
  %6 = load i8*, i8** %c, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %6)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %d, align 8
  %7 = load i8*, i8** %c, align 8
  %call8 = call i64 @strlen(i8* %7) #6
  %8 = load i8*, i8** %d, align 8
  %call9 = call i64 @strlen(i8* %8) #6
  %add = add i64 %call8, %call9
  %call10 = call noalias align 16 i8* @malloc(i64 %add) #5
  store i8* %call10, i8** %cd, align 8
  %9 = load i8*, i8** %cd, align 8
  %10 = load i8*, i8** %c, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 5, i1 false)
  %11 = load i8*, i8** %cd, align 8
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 5
  %12 = load i8*, i8** %d, align 8
  %13 = load i8*, i8** %d, align 8
  %call11 = call i64 @strlen(i8* %13) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %12, i64 %call11, i1 false)
  %14 = load i8*, i8** %cd, align 8
  %add.ptr12 = getelementptr inbounds i8, i8* %14, i64 5
  %15 = load i8*, i8** %d, align 8
  %call13 = call i64 @strlen(i8* %15) #6
  %add.ptr14 = getelementptr inbounds i8, i8* %add.ptr12, i64 %call13
  %16 = load i8*, i8** %c, align 8
  %add.ptr15 = getelementptr inbounds i8, i8* %16, i64 5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr14, i8* align 1 %add.ptr15, i64 6, i1 false)
  %17 = load i8*, i8** %cd, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %17)
  %18 = load i8*, i8** %cd, align 8
  %call17 = call i8* @strtok(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #5
  store i8* %call17, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %19 = load i8*, i8** %p, align 8
  %cmp = icmp ne i8* %19, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i8*, i8** %p, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %20)
  %call19 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #5
  store i8* %call19, i8** %p, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
