; ModuleID = 'code/358-21915program2.c'
source_filename = "code/358-21915program2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.demo_strtok.str = private unnamed_addr constant [17 x i8] c"This is a string\00", align 16
@.str = private unnamed_addr constant [10 x i8] c"str = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"word1 = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"word2 = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"word3 = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"word4 = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"word5 = %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@__const.demo_substr.date = private unnamed_addr constant [15 x i8] c"March 23, 2016\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"date = %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"copy = %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"str1 = %s \0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"str2 = %s \0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"len1 = %d \0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"len2 = %d \0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\0A\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo_strtok() #0 {
entry:
  %str = alloca [17 x i8], align 16
  %copy = alloca [50 x i8], align 16
  %word1 = alloca i8*, align 8
  %word2 = alloca i8*, align 8
  %word3 = alloca i8*, align 8
  %word4 = alloca i8*, align 8
  %word5 = alloca i8*, align 8
  %0 = bitcast [17 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.demo_strtok.str, i32 0, i32 0), i64 17, i1 false)
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %copy, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 0
  %call = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay1) #5
  %arraydecay2 = getelementptr inbounds [17 x i8], [17 x i8]* %str, i64 0, i64 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %arraydecay2)
  %arraydecay4 = getelementptr inbounds [50 x i8], [50 x i8]* %copy, i64 0, i64 0
  %call5 = call i8* @strtok(i8* %arraydecay4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  store i8* %call5, i8** %word1, align 8
  %call6 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  store i8* %call6, i8** %word2, align 8
  %call7 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  store i8* %call7, i8** %word3, align 8
  %call8 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  store i8* %call8, i8** %word4, align 8
  %call9 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  store i8* %call9, i8** %word5, align 8
  %1 = load i8*, i8** %word1, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %1)
  %2 = load i8*, i8** %word2, align 8
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %2)
  %3 = load i8*, i8** %word3, align 8
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %3)
  %4 = load i8*, i8** %word4, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %4)
  %5 = load i8*, i8** %word5, align 8
  %cmp = icmp ne i8* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %6 = load i8*, i8** %word5, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %6, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %cond.false ]
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %cond)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo_substr() #0 {
entry:
  %date = alloca [15 x i8], align 1
  %copy = alloca [10 x i8], align 1
  %0 = bitcast [15 x i8]* %date to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.demo_substr.date, i32 0, i32 0), i64 15, i1 false)
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %copy, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [15 x i8], [15 x i8]* %date, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay1, i64 6
  %call = call i8* @strncpy(i8* %arraydecay, i8* %add.ptr, i64 2) #5
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %copy, i64 0, i64 2
  store i8 0, i8* %arrayidx, align 1
  %arraydecay2 = getelementptr inbounds [15 x i8], [15 x i8]* %date, i64 0, i64 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %arraydecay2)
  %arraydecay4 = getelementptr inbounds [10 x i8], [10 x i8]* %copy, i64 0, i64 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %arraydecay4)
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str2 = alloca [10 x i8], align 1
  %str1 = alloca [10 x i8], align 1
  %i = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %str1, i64 0, i64 %idxprom
  store i8 97, i8* %arrayidx, align 1
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [10 x i8], [10 x i8]* %str2, i64 0, i64 %idxprom1
  store i8 122, i8* %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds [10 x i8], [10 x i8]* %str2, i64 0, i64 9
  store i8 0, i8* %arrayidx3, align 1
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %str1, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %arraydecay)
  %arraydecay4 = getelementptr inbounds [10 x i8], [10 x i8]* %str2, i64 0, i64 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %arraydecay4)
  %arraydecay6 = getelementptr inbounds [10 x i8], [10 x i8]* %str1, i64 0, i64 0
  %call7 = call i64 @strlen(i8* %arraydecay6) #6
  %conv = trunc i64 %call7 to i32
  store i32 %conv, i32* %len1, align 4
  %arraydecay8 = getelementptr inbounds [10 x i8], [10 x i8]* %str2, i64 0, i64 0
  %call9 = call i64 @strlen(i8* %arraydecay8) #6
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, i32* %len2, align 4
  %4 = load i32, i32* %len1, align 4
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %4)
  %5 = load i32, i32* %len2, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %5)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  call void @demo_substr()
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  call void @demo_strtok()
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
