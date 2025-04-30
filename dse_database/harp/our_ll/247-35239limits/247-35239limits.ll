; ModuleID = 'code/247-35239limits.c'
source_filename = "code/247-35239limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"CHAR_BIT\09is %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SCHAR_MIN\09is %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SCHAR_MAX\09is %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"SHRT_MIN\09is %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"SHRT_MAX\09is %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"USHRT_MAX\09is %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"INT_MIN\09is %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"INT_MAX\09is %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"UINT_MAX\09is %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"LONG_MIN\09is %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"LONG_MAX\09is %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"ULONG_MAX\09is %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 8)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 -128)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 127)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 -32768)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 32767)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 65535)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 -2147483648)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 2147483647)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 -1)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i64 -9223372036854775808)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i64 9223372036854775807)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i64 -1)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
