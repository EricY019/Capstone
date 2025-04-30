; ModuleID = 'code/060-30487condense.c'
source_filename = "code/060-30487condense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.s1 = private unnamed_addr constant [5 x i8] c"aaaa\00", align 1
@__const.main.s2 = private unnamed_addr constant [7 x i8] c"aabbaa\00", align 1
@__const.main.s3 = private unnamed_addr constant [11 x i8] c"aaaabbbccd\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"aaaa\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"!strcmp(s1,\22aaaa\22)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"code/060-30487condense.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"!strcmp(s1,\22\22)\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"!strcmp(s2,\22bb\22)\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"!strcmp(s2,\22\22)\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"aaaabbbcc\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"!strcmp(s3,\22aaaabbbcc\22)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"bbbcc\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"!strcmp(s3,\22bbbcc\22)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %s1 = alloca [5 x i8], align 1
  %s2 = alloca [7 x i8], align 1
  %s3 = alloca [11 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [5 x i8]* %s1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.main.s1, i32 0, i32 0), i64 5, i1 false)
  %1 = bitcast [7 x i8]* %s2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.main.s2, i32 0, i32 0), i64 7, i1 false)
  %2 = bitcast [11 x i8]* %s3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.main.s3, i32 0, i32 0), i64 11, i1 false)
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %s1, i64 0, i64 0
  call void @condense_by_removing(i8* %arraydecay, i8 signext 122)
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %s1, i64 0, i64 0
  %call = call i32 @strcmp(i8* %arraydecay1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %arraydecay2 = getelementptr inbounds [5 x i8], [5 x i8]* %s1, i64 0, i64 0
  call void @condense_by_removing(i8* %arraydecay2, i8 signext 97)
  %arraydecay3 = getelementptr inbounds [5 x i8], [5 x i8]* %s1, i64 0, i64 0
  %call4 = call i32 @strcmp(i8* %arraydecay3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)) #5
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %cond.false7, label %cond.true6

cond.true6:                                       ; preds = %cond.end
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

4:                                                ; No predecessors!
  br label %cond.end8

cond.end8:                                        ; preds = %4, %cond.true6
  %arraydecay9 = getelementptr inbounds [7 x i8], [7 x i8]* %s2, i64 0, i64 0
  call void @condense_by_removing(i8* %arraydecay9, i8 signext 97)
  %arraydecay10 = getelementptr inbounds [7 x i8], [7 x i8]* %s2, i64 0, i64 0
  %call11 = call i32 @strcmp(i8* %arraydecay10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %cond.false14, label %cond.true13

cond.true13:                                      ; preds = %cond.end8
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end8
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

5:                                                ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %5, %cond.true13
  %arraydecay16 = getelementptr inbounds [7 x i8], [7 x i8]* %s2, i64 0, i64 0
  call void @condense_by_removing(i8* %arraydecay16, i8 signext 98)
  %arraydecay17 = getelementptr inbounds [7 x i8], [7 x i8]* %s2, i64 0, i64 0
  %call18 = call i32 @strcmp(i8* %arraydecay17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)) #5
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %cond.false21, label %cond.true20

cond.true20:                                      ; preds = %cond.end15
  br label %cond.end22

cond.false21:                                     ; preds = %cond.end15
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

6:                                                ; No predecessors!
  br label %cond.end22

cond.end22:                                       ; preds = %6, %cond.true20
  %arraydecay23 = getelementptr inbounds [11 x i8], [11 x i8]* %s3, i64 0, i64 0
  call void @condense_by_removing(i8* %arraydecay23, i8 signext 100)
  %arraydecay24 = getelementptr inbounds [11 x i8], [11 x i8]* %s3, i64 0, i64 0
  %call25 = call i32 @strcmp(i8* %arraydecay24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #5
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %cond.false28, label %cond.true27

cond.true27:                                      ; preds = %cond.end22
  br label %cond.end29

cond.false28:                                     ; preds = %cond.end22
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

7:                                                ; No predecessors!
  br label %cond.end29

cond.end29:                                       ; preds = %7, %cond.true27
  %arraydecay30 = getelementptr inbounds [11 x i8], [11 x i8]* %s3, i64 0, i64 0
  call void @condense_by_removing(i8* %arraydecay30, i8 signext 97)
  %arraydecay31 = getelementptr inbounds [11 x i8], [11 x i8]* %s3, i64 0, i64 0
  %call32 = call i32 @strcmp(i8* %arraydecay31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #5
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %cond.false35, label %cond.true34

cond.true34:                                      ; preds = %cond.end29
  br label %cond.end36

cond.false35:                                     ; preds = %cond.end29
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

8:                                                ; No predecessors!
  br label %cond.end36

cond.end36:                                       ; preds = %8, %cond.true34
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @condense_by_removing(i8* %z_term, i8 signext %remove) #0 {
entry:
  %z_term.addr = alloca i8*, align 8
  %remove.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ch = alloca i8, align 1
  store i8* %z_term, i8** %z_term.addr, align 8
  store i8 %remove, i8* %remove.addr, align 1
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %z_term.addr, align 8
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  store i8 %2, i8* %ch, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8, i8* %ch, align 1
  %conv = sext i8 %3 to i32
  %4 = load i8, i8* %remove.addr, align 1
  %conv1 = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i8, i8* %ch, align 1
  %6 = load i8*, i8** %z_term.addr, align 8
  %7 = load i32, i32* %j, align 4
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, i32* %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %6, i64 %idxprom4
  store i8 %5, i8* %arrayidx5, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %8 = load i8*, i8** %z_term.addr, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %8, i64 %idxprom6
  store i8 0, i8* %arrayidx7, align 1
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
