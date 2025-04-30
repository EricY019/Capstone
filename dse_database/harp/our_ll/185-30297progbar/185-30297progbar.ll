; ModuleID = 'code/185-30297progbar.c'
source_filename = "code/185-30297progbar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"] %g%%\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\0D%s\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca i32, align 4
  %pc = alloca double, align 8
  %items = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %str = alloca i8*, align 8
  %tmp = alloca [100 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %a, align 4
  store double 0.000000e+00, double* %pc, align 8
  store i32 100, i32* %items, align 4
  store i32 0, i32* %j, align 4
  %call = call noalias align 16 i8* @malloc(i64 256) #5
  store i8* %call, i8** %str, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %2) #6
  store i32 %call1, i32* %items, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %str, align 8
  %cmp2 = icmp eq i8* %3, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %items, align 4
  %cmp5 = icmp sle i32 %4, %5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %str, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 0, i64 256, i1 false)
  %7 = load i8*, i8** %str, align 8
  %call6 = call i8* @strcpy(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  %8 = load i32, i32* %i, align 4
  %conv = sitofp i32 %8 to double
  %9 = load i32, i32* %items, align 4
  %conv7 = sitofp i32 %9 to double
  %div = fdiv double %conv, %conv7
  %mul = fmul double %div, 1.000000e+02
  store double %mul, double* %pc, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %10 = load double, double* %pc, align 8
  %dec = fadd double %10, -1.000000e+00
  store double %dec, double* %pc, align 8
  %conv8 = fptosi double %10 to i32
  %tobool = icmp ne i32 %conv8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %str, align 8
  %call9 = call i8* @strcat(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %12 = load i8*, i8** %str, align 8
  %call10 = call i8* @strcat(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #5
  %13 = load i32, i32* %i, align 4
  %conv11 = sitofp i32 %13 to double
  %14 = load i32, i32* %items, align 4
  %conv12 = sitofp i32 %14 to double
  %div13 = fdiv double %conv11, %conv12
  %mul14 = fmul double %div13, 1.000000e+02
  %sub = fsub double 1.000000e+02, %mul14
  store double %sub, double* %pc, align 8
  br label %while.cond15

while.cond15:                                     ; preds = %while.body19, %while.end
  %15 = load double, double* %pc, align 8
  %dec16 = fadd double %15, -1.000000e+00
  store double %dec16, double* %pc, align 8
  %conv17 = fptosi double %15 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %while.body19, label %while.end21

while.body19:                                     ; preds = %while.cond15
  %16 = load i8*, i8** %str, align 8
  %call20 = call i8* @strcat(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %while.cond15, !llvm.loop !6

while.end21:                                      ; preds = %while.cond15
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %tmp, i64 0, i64 0
  %17 = load i32, i32* %i, align 4
  %conv22 = sitofp i32 %17 to double
  %18 = load i32, i32* %items, align 4
  %conv23 = sitofp i32 %18 to double
  %div24 = fdiv double %conv22, %conv23
  %mul25 = fmul double %div24, 1.000000e+02
  %call26 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), double %mul25) #5
  %19 = load i8*, i8** %str, align 8
  %arraydecay27 = getelementptr inbounds [100 x i8], [100 x i8]* %tmp, i64 0, i64 0
  %call28 = call i8* @strcat(i8* %19, i8* %arraydecay27) #5
  %20 = load i8*, i8** %str, align 8
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call30 = call i32 @fflush(%struct._IO_FILE* %21)
  br label %for.inc

for.inc:                                          ; preds = %while.end21
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %23 = load i8*, i8** %str, align 8
  call void @free(i8* %23) #5
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then3
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #4

declare dso_local i32 @fflush(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
