; ModuleID = 'code/366-21230eg0601.c'
source_filename = "code/366-21230eg0601.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"%s, %d, %d, %s, %s, %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca %struct.passwd*, align 8
  %uid = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8**, i8*** %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %1, i32 1
  store i8** %incdec.ptr, i8*** %argv.addr, align 8
  %2 = load i8*, i8** %incdec.ptr, align 8
  %call = call i32 @atoi(i8* %2) #3
  store i32 %call, i32* %uid, align 4
  %3 = load i32, i32* %uid, align 4
  %call1 = call %struct.passwd* @getpwuid(i32 %3)
  store %struct.passwd* %call1, %struct.passwd** %p, align 8
  %4 = load %struct.passwd*, %struct.passwd** %p, align 8
  %pw_name = getelementptr inbounds %struct.passwd, %struct.passwd* %4, i32 0, i32 0
  %5 = load i8*, i8** %pw_name, align 8
  %6 = load %struct.passwd*, %struct.passwd** %p, align 8
  %pw_uid = getelementptr inbounds %struct.passwd, %struct.passwd* %6, i32 0, i32 2
  %7 = load i32, i32* %pw_uid, align 8
  %8 = load %struct.passwd*, %struct.passwd** %p, align 8
  %pw_gid = getelementptr inbounds %struct.passwd, %struct.passwd* %8, i32 0, i32 3
  %9 = load i32, i32* %pw_gid, align 4
  %10 = load %struct.passwd*, %struct.passwd** %p, align 8
  %pw_gecos = getelementptr inbounds %struct.passwd, %struct.passwd* %10, i32 0, i32 4
  %11 = load i8*, i8** %pw_gecos, align 8
  %12 = load %struct.passwd*, %struct.passwd** %p, align 8
  %pw_dir = getelementptr inbounds %struct.passwd, %struct.passwd* %12, i32 0, i32 5
  %13 = load i8*, i8** %pw_dir, align 8
  %14 = load %struct.passwd*, %struct.passwd** %p, align 8
  %pw_shell = getelementptr inbounds %struct.passwd, %struct.passwd* %14, i32 0, i32 6
  %15 = load i8*, i8** %pw_shell, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %5, i32 %7, i32 %9, i8* %11, i8* %13, i8* %15)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
