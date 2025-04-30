; ModuleID = 'code/372-28707swab.c'
source_filename = "code/372-28707swab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"abcdefgh\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"'%s' => '%s' (%u)\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"123456789\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %src = alloca [32 x i8], align 16
  %dst = alloca [32 x i8], align 16
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 8, i32* %n, align 4
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %src, i64 0, i64 0
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #5
  %arraydecay1 = getelementptr inbounds [32 x i8], [32 x i8]* %src, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %dst, i64 0, i64 0
  %0 = load i32, i32* %n, align 4
  %call3 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @swab to i32 (i8*, i8*, i32, ...)*)(i8* %arraydecay1, i8* %arraydecay2, i32 %0)
  %arraydecay4 = getelementptr inbounds [32 x i8], [32 x i8]* %src, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [32 x i8], [32 x i8]* %dst, i64 0, i64 0
  %1 = load i32, i32* %n, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay4, i8* %arraydecay5, i32 %1)
  store i32 2, i32* %n, align 4
  %arraydecay7 = getelementptr inbounds [32 x i8], [32 x i8]* %dst, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [32 x i8], [32 x i8]* %dst, i64 0, i64 0
  %call9 = call i64 @strlen(i8* %arraydecay8) #6
  call void @llvm.memset.p0i8.i64(i8* align 16 %arraydecay7, i8 0, i64 %call9, i1 false)
  %arraydecay10 = getelementptr inbounds [32 x i8], [32 x i8]* %src, i64 0, i64 0
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)) #5
  %arraydecay12 = getelementptr inbounds [32 x i8], [32 x i8]* %src, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [32 x i8], [32 x i8]* %dst, i64 0, i64 0
  %2 = load i32, i32* %n, align 4
  %call14 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (...)* @swab to i32 (i8*, i8*, i32, ...)*)(i8* %arraydecay12, i8* %arraydecay13, i32 %2)
  %arraydecay15 = getelementptr inbounds [32 x i8], [32 x i8]* %src, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [32 x i8], [32 x i8]* %dst, i64 0, i64 0
  %3 = load i32, i32* %n, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay15, i8* %arraydecay16, i32 %3)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @swab(...) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
