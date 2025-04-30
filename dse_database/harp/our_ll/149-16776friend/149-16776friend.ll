; ModuleID = 'code/149-16776friend.c'
source_filename = "code/149-16776friend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.guy = type { %struct.names, [20 x i8], [20 x i8], float }
%struct.names = type { [20 x i8], [20 x i8] }

@.str = private unnamed_addr constant [42 x i8] c"    Thank you for the wonderful evening, \00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"You certainly prove that a \00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"is a special kind of guy. We must get together\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"over a delicious \00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c" and have a few laughs\00", align 1
@msgs = dso_local global [5 x i8*] [i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)], align 16
@__const.main.fellow = private unnamed_addr constant %struct.guy { %struct.names { [20 x i8] c"Ewen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [20 x i8] c"Villard\00\00\00\00\00\00\00\00\00\00\00\00\00" }, [20 x i8] c"grilled salmon\00\00\00\00\00\00", [20 x i8] c"personality coach\00\00\00", float 6.811200e+04 }, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"Dear %s, \0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s%s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"!!\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"\0A%40s%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"See you soon,\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"%40s%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"Shalala\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %fellow = alloca %struct.guy, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.guy* %fellow to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 getelementptr inbounds (%struct.guy, %struct.guy* @__const.main.fellow, i32 0, i32 0, i32 0, i32 0), i64 84, i1 false)
  %handle = getelementptr inbounds %struct.guy, %struct.guy* %fellow, i32 0, i32 0
  %first = getelementptr inbounds %struct.names, %struct.names* %handle, i32 0, i32 0
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %first, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %arraydecay)
  %1 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @msgs, i64 0, i64 0), align 16
  %handle1 = getelementptr inbounds %struct.guy, %struct.guy* %fellow, i32 0, i32 0
  %first2 = getelementptr inbounds %struct.names, %struct.names* %handle1, i32 0, i32 0
  %arraydecay3 = getelementptr inbounds [20 x i8], [20 x i8]* %first2, i64 0, i64 0
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %1, i8* %arraydecay3)
  %2 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @msgs, i64 0, i64 1), align 8
  %job = getelementptr inbounds %struct.guy, %struct.guy* %fellow, i32 0, i32 2
  %arraydecay5 = getelementptr inbounds [20 x i8], [20 x i8]* %job, i64 0, i64 0
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %2, i8* %arraydecay5)
  %3 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @msgs, i64 0, i64 2), align 16
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %3)
  %4 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @msgs, i64 0, i64 3), align 8
  %favfood = getelementptr inbounds %struct.guy, %struct.guy* %fellow, i32 0, i32 1
  %arraydecay8 = getelementptr inbounds [20 x i8], [20 x i8]* %favfood, i64 0, i64 0
  %5 = load i8*, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @msgs, i64 0, i64 4), align 16
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %4, i8* %arraydecay8, i8* %5)
  %income = getelementptr inbounds %struct.guy, %struct.guy* %fellow, i32 0, i32 3
  %6 = load float, float* %income, align 4
  %conv = fpext float %6 to double
  %cmp = fcmp ogt double %conv, 1.500000e+05
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call11 = call i32 @puts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end20

if.else:                                          ; preds = %entry
  %income12 = getelementptr inbounds %struct.guy, %struct.guy* %fellow, i32 0, i32 3
  %7 = load float, float* %income12, align 4
  %conv13 = fpext float %7 to double
  %cmp14 = fcmp ogt double %conv13, 7.500000e+04
  br i1 %cmp14, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else
  %call17 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %if.end

if.else18:                                        ; preds = %if.else
  %call19 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then16
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @puts(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
