; ModuleID = 'code/146-4377sym.c'
source_filename = "code/146-4377sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Dl_info = type { i8*, i8*, i8*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %lib = alloca i8*, align 8
  %i = alloca i32, align 4
  %show = alloca i32, align 4
  %ret = alloca i32, align 4
  %info = alloca %struct.Dl_info, align 8
  %so_ptr = alloca i8*, align 8
  %error = alloca i8*, align 8
  %func = alloca i8*, align 8
  %func_ptr = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  store i8* %1, i8** %lib, align 8
  store i32 1, i32* %show, align 4
  %2 = load i8*, i8** %lib, align 8
  %call = call i8* @dlopen(i8* %2, i32 2) #3
  store i8* %call, i8** %so_ptr, align 8
  %call1 = call i8* @dlerror() #3
  store i8* %call1, i8** %error, align 8
  %3 = load i8*, i8** %error, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** %error, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %5)
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8**, i8*** %argv.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %10 = load i8*, i8** %arrayidx3, align 8
  store i8* %10, i8** %func, align 8
  %11 = load i8*, i8** %so_ptr, align 8
  %12 = load i8*, i8** %func, align 8
  %call4 = call i8* @dlsym(i8* %11, i8* %12) #3
  store i8* %call4, i8** %func_ptr, align 8
  %13 = load i32, i32* %show, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %for.body
  store i32 0, i32* %show, align 4
  %14 = load i8*, i8** %func_ptr, align 8
  %add.ptr = getelementptr i8, i8* %14, i64 1
  %call7 = call i32 @dladdr(i8* %add.ptr, %struct.Dl_info* %info) #3
  store i32 %call7, i32* %ret, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = load i8*, i8** %func, align 8
  %17 = load i8*, i8** %func_ptr, align 8
  %dli_fbase = getelementptr inbounds %struct.Dl_info, %struct.Dl_info* %info, i32 0, i32 1
  %18 = load i8*, i8** %dli_fbase, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %18 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = inttoptr i64 %sub.ptr.sub to i8*
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %16, i8* %19)
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval, align 4
  ret i32 %21
}

; Function Attrs: nounwind
declare dso_local i8* @dlopen(i8*, i32) #1

; Function Attrs: nounwind
declare dso_local i8* @dlerror() #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @dlsym(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @dladdr(i8*, %struct.Dl_info*) #1

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
