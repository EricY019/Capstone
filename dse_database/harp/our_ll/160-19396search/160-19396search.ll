; ModuleID = 'code/160-19396search.c'
source_filename = "code/160-19396search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.str = private unnamed_addr constant [20 x i8] c"Hello World\00\00\00\00\00\00\00\00\00", align 16
@.str = private unnamed_addr constant [15 x i8] c"find o at :%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"find o backward forward at :%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"find Wo at :%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Wo\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"find longest string that have Hel at :%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Hel\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"Wd\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Hello World&Class\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" &\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"item #%d is %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %str = alloca [20 x i8], align 16
  %array = alloca [20 x i8*], align 16
  %loop = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [20 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.main.str, i32 0, i32 0), i64 20, i1 false)
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %call = call i8* @strchr(i8* %arraydecay, i32 111) #5
  %arraydecay1 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint i8* %call to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %arraydecay1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %sub.ptr.sub)
  %arraydecay3 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %call4 = call i8* @strrchr(i8* %arraydecay3, i32 111) #5
  %arraydecay5 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %sub.ptr.lhs.cast6 = ptrtoint i8* %call4 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %arraydecay5 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %sub.ptr.sub8)
  %arraydecay10 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %call12 = call i64 @strlen(i8* %arraydecay11) #5
  %call13 = call i8* @memchr(i8* %arraydecay10, i32 111, i64 %call12) #5
  %arraydecay14 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %sub.ptr.lhs.cast15 = ptrtoint i8* %call13 to i64
  %sub.ptr.rhs.cast16 = ptrtoint i8* %arraydecay14 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %sub.ptr.sub17)
  %arraydecay19 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %call20 = call i8* @strstr(i8* %arraydecay19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #5
  %arraydecay21 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %sub.ptr.lhs.cast22 = ptrtoint i8* %call20 to i64
  %sub.ptr.rhs.cast23 = ptrtoint i8* %arraydecay21 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %sub.ptr.sub24)
  %arraydecay26 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %call27 = call i64 @strspn(i8* %arraydecay26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #5
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %call27)
  %call29 = call i64 @strcspn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #5
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %call29)
  %arraydecay31 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %call32 = call i8* @strcpy(i8* %arraydecay31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0)) #6
  %arraydecay33 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0
  %call34 = call i8* @strtok(i8* %arraydecay33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #6
  %arrayidx = getelementptr inbounds [20 x i8*], [20 x i8*]* %array, i64 0, i64 0
  store i8* %call34, i8** %arrayidx, align 16
  store i32 1, i32* %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %loop, align 4
  %cmp = icmp slt i32 %1, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call35 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #6
  %2 = load i32, i32* %loop, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx36 = getelementptr inbounds [20 x i8*], [20 x i8*]* %array, i64 0, i64 %idxprom
  store i8* %call35, i8** %arrayidx36, align 8
  %cmp37 = icmp eq i8* %call35, null
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i32, i32* %loop, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %loop, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond
  store i32 0, i32* %loop, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc49, %for.end
  %4 = load i32, i32* %loop, align 4
  %cmp39 = icmp slt i32 %4, 10
  br i1 %cmp39, label %for.body40, label %for.end51

for.body40:                                       ; preds = %for.cond38
  %5 = load i32, i32* %loop, align 4
  %idxprom41 = sext i32 %5 to i64
  %arrayidx42 = getelementptr inbounds [20 x i8*], [20 x i8*]* %array, i64 0, i64 %idxprom41
  %6 = load i8*, i8** %arrayidx42, align 8
  %cmp43 = icmp eq i8* %6, null
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %for.body40
  br label %for.end51

if.end45:                                         ; preds = %for.body40
  %7 = load i32, i32* %loop, align 4
  %8 = load i32, i32* %loop, align 4
  %idxprom46 = sext i32 %8 to i64
  %arrayidx47 = getelementptr inbounds [20 x i8*], [20 x i8*]* %array, i64 0, i64 %idxprom46
  %9 = load i8*, i8** %arrayidx47, align 8
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 %7, i8* %9)
  br label %for.inc49

for.inc49:                                        ; preds = %if.end45
  %10 = load i32, i32* %loop, align 4
  %inc50 = add nsw i32 %10, 1
  store i32 %inc50, i32* %loop, align 4
  br label %for.cond38, !llvm.loop !6

for.end51:                                        ; preds = %if.then44, %for.cond38
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @memchr(i8*, i32, i64) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strspn(i8*, i8*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strcspn(i8*, i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
