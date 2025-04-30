; ModuleID = 'code/112-50691-4.c'
source_filename = "code/112-50691-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.str1 = private unnamed_addr constant [22 x i8] c"This is a test string\00", align 16
@__const.main.str2 = private unnamed_addr constant [22 x i8] c"string test a is This\00", align 16
@__const.main.str3 = private unnamed_addr constant [15 x i8] c"Not an anagram\00", align 1
@.str = private unnamed_addr constant [27 x i8] c"isAnagram(str1, str2) == 1\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"code/112-50691-4.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"isAnagram(str1, str3) == 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @markSeen(i8* %str, i32* %hasSeen) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %hasSeen.addr = alloca i32*, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32* %hasSeen, i32** %hasSeen.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %hasSeen.addr, align 8
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %idxprom2 = sext i8 %6 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %3, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %add = add nsw i32 %7, 1
  store i32 %add, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isAnagram(i8* %str1, i8* %str2) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %hasSeen1 = alloca [256 x i32], align 16
  %hasSeen2 = alloca [256 x i32], align 16
  %i = alloca i32, align 4
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %1 = load i8*, i8** %str2.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #5
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %len2, align 4
  %2 = load i32, i32* %len1, align 4
  %3 = load i32, i32* %len2, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = bitcast [256 x i32]* %hasSeen1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 1024, i1 false)
  %5 = bitcast [256 x i32]* %hasSeen2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 1024, i1 false)
  %6 = load i8*, i8** %str1.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i32], [256 x i32]* %hasSeen1, i64 0, i64 0
  call void @markSeen(i8* %6, i32* %arraydecay)
  %7 = load i8*, i8** %str2.addr, align 8
  %arraydecay4 = getelementptr inbounds [256 x i32], [256 x i32]* %hasSeen2, i64 0, i64 0
  call void @markSeen(i8* %7, i32* %arraydecay4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %len1, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* %hasSeen1, i64 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [256 x i32], [256 x i32]* %hasSeen2, i64 0, i64 %idxprom7
  %13 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp ne i32 %11, %13
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then11, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str1 = alloca [22 x i8], align 16
  %str2 = alloca [22 x i8], align 16
  %str3 = alloca [15 x i8], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [22 x i8]* %str1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([22 x i8], [22 x i8]* @__const.main.str1, i32 0, i32 0), i64 22, i1 false)
  %1 = bitcast [22 x i8]* %str2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 getelementptr inbounds ([22 x i8], [22 x i8]* @__const.main.str2, i32 0, i32 0), i64 22, i1 false)
  %2 = bitcast [15 x i8]* %str3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.main.str3, i32 0, i32 0), i64 15, i1 false)
  %arraydecay = getelementptr inbounds [22 x i8], [22 x i8]* %str1, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [22 x i8], [22 x i8]* %str2, i64 0, i64 0
  %call = call i32 @isAnagram(i8* %arraydecay, i8* %arraydecay1)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %arraydecay2 = getelementptr inbounds [22 x i8], [22 x i8]* %str1, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [15 x i8], [15 x i8]* %str3, i64 0, i64 0
  %call4 = call i32 @isAnagram(i8* %arraydecay2, i8* %arraydecay3)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

4:                                                ; No predecessors!
  br label %cond.end8

cond.end8:                                        ; preds = %4, %cond.true6
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
