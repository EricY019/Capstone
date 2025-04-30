; ModuleID = 'code/251-27460main_dummy.c'
source_filename = "code/251-27460main_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"bzero: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"memset: %s\0A\00", align 1
@b = dso_local global [100 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [12 x i8] c"memcpy: %s\0A\00", align 1
@c = dso_local global [100 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [13 x i8] c"memmove: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"toupper: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"strcmp: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"strlen: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  %sz = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 0), i8 0, i64 100, i1 false)
  store i8 0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 10), align 2
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 0))
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 0), i8 50, i64 100, i1 false)
  store i8 0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 10), align 2
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 0))
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([100 x i8], [100 x i8]* @b, i64 0, i64 0), i8* align 16 getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 0), i64 100, i1 false)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @b, i64 0, i64 0))
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([100 x i8], [100 x i8]* @c, i64 0, i64 0), i8* align 16 getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 0), i64 100, i1 false)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @c, i64 0, i64 0))
  store i8 97, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 0), align 16
  store i8 98, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @b, i64 0, i64 0), align 16
  store i8 99, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @c, i64 0, i64 0), align 16
  %0 = load i8, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 0), align 16
  %conv = sext i8 %0 to i32
  %call4 = call i32 @toupper(i32 %conv) #5
  %conv5 = trunc i32 %call4 to i8
  store i8 %conv5, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 0), align 16
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 0))
  store i8 0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 10), align 2
  store i8 0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @b, i64 0, i64 10), align 2
  store i8 0, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @c, i64 0, i64 10), align 2
  %call7 = call i32 @strcmp(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @b, i64 0, i64 0)) #5
  store i32 %call7, i32* %r, align 4
  %1 = load i32, i32* %r, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %1)
  %call9 = call i64 @strlen(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @a, i64 0, i64 0)) #5
  store i64 %call9, i64* %sz, align 8
  %2 = load i64, i64* %sz, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %2)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
