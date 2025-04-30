; ModuleID = 'code/102-19803aalokran.c'
source_filename = "code/102-19803aalokran.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.Kid2 = private unnamed_addr constant [7 x i8] c"Maddie\00", align 1
@__const.main.Kid3 = private unnamed_addr constant [7 x i8] c"Andrew\00", align 1
@__const.main.Hero1 = private unnamed_addr constant [7 x i8] c"Batman\00", align 1
@__const.main.Hero2 = private unnamed_addr constant [34 x i8] c"Spiderman\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [20 x i8] c"The Incredible Hulk\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s's favorite hero is %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Kid1 = alloca [12 x i8], align 1
  %Kid2 = alloca [7 x i8], align 1
  %Kid3 = alloca [7 x i8], align 1
  %Hero1 = alloca [7 x i8], align 1
  %Hero2 = alloca [34 x i8], align 16
  %Hero3 = alloca [25 x i8], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [7 x i8]* %Kid2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.Kid2, i32 0, i32 0), i64 7, i1 false)
  %1 = bitcast [7 x i8]* %Kid3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.Kid3, i32 0, i32 0), i64 7, i1 false)
  %2 = bitcast [7 x i8]* %Hero1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.Hero1, i32 0, i32 0), i64 7, i1 false)
  %3 = bitcast [34 x i8]* %Hero2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 getelementptr inbounds ([34 x i8], [34 x i8]* @__const.main.Hero2, i32 0, i32 0), i64 34, i1 false)
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %Kid1, i64 0, i64 0
  store i8 75, i8* %arrayidx, align 1
  %arrayidx1 = getelementptr inbounds [12 x i8], [12 x i8]* %Kid1, i64 0, i64 1
  store i8 97, i8* %arrayidx1, align 1
  %arrayidx2 = getelementptr inbounds [12 x i8], [12 x i8]* %Kid1, i64 0, i64 2
  store i8 116, i8* %arrayidx2, align 1
  %arrayidx3 = getelementptr inbounds [12 x i8], [12 x i8]* %Kid1, i64 0, i64 3
  store i8 105, i8* %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [12 x i8], [12 x i8]* %Kid1, i64 0, i64 4
  store i8 101, i8* %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [12 x i8], [12 x i8]* %Kid1, i64 0, i64 5
  store i8 0, i8* %arrayidx5, align 1
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %Hero3, i64 0, i64 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0)) #4
  %arraydecay6 = getelementptr inbounds [12 x i8], [12 x i8]* %Kid1, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [7 x i8], [7 x i8]* %Hero1, i64 0, i64 0
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay6, i8* %arraydecay7)
  %arraydecay9 = getelementptr inbounds [7 x i8], [7 x i8]* %Kid2, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [34 x i8], [34 x i8]* %Hero2, i64 0, i64 0
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay9, i8* %arraydecay10)
  %arraydecay12 = getelementptr inbounds [7 x i8], [7 x i8]* %Kid3, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [25 x i8], [25 x i8]* %Hero3, i64 0, i64 0
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay12, i8* %arraydecay13)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
