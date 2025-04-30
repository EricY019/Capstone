; ModuleID = 'code/230-28646reverse_string.c'
source_filename = "code/230-28646reverse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.str = private unnamed_addr constant [11 x i8] c"Atul Patil\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"%s ==> %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [11 x i8], align 1
  %rstr = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [11 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.main.str, i32 0, i32 0), i64 11, i1 false)
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %str, i64 0, i64 0
  %call = call i8* @rstrdup(i8* %arraydecay)
  store i8* %call, i8** %rstr, align 8
  %arraydecay1 = getelementptr inbounds [11 x i8], [11 x i8]* %str, i64 0, i64 0
  call void @reverse_string(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [11 x i8], [11 x i8]* %str, i64 0, i64 0
  %1 = load i8*, i8** %rstr, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %arraydecay2, i8* %1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rstrdup(i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %rstr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %call = call noalias align 16 i8* @strdup(i8* %1) #5
  store i8* %call, i8** %rstr, align 8
  %2 = load i8*, i8** %rstr, align 8
  call void @reverse_string(i8* %2)
  %3 = load i8*, i8** %rstr, align 8
  store i8* %3, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i8*, i8** %retval, align 8
  ret i8* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse_string(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %start = alloca i8*, align 8
  %end = alloca i8*, align 8
  %tmp = alloca i8, align 1
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %1) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %2 = load i8*, i8** %str.addr, align 8
  store i8* %2, i8** %start, align 8
  %3 = load i8*, i8** %str.addr, align 8
  %4 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load i8*, i8** %start, align 8
  %6 = load i8*, i8** %end, align 8
  %cmp = icmp ult i8* %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %start, align 8
  %8 = load i8, i8* %7, align 1
  store i8 %8, i8* %tmp, align 1
  %9 = load i8*, i8** %end, align 8
  %10 = load i8, i8* %9, align 1
  %11 = load i8*, i8** %start, align 8
  store i8 %10, i8* %11, align 1
  %12 = load i8, i8* %tmp, align 1
  %13 = load i8*, i8** %end, align 8
  store i8 %12, i8* %13, align 1
  %14 = load i8*, i8** %start, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr, i8** %start, align 8
  %15 = load i8*, i8** %end, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %15, i32 -1
  store i8* %incdec.ptr3, i8** %end, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @strdup(i8*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
