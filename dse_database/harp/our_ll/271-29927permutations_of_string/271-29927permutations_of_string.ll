; ModuleID = 'code/271-29927permutations_of_string.c'
source_filename = "code/271-29927permutations_of_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pos = internal global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"pos <= 3628800\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"code/271-29927permutations_of_string.c\00", align 1
@__PRETTY_FUNCTION__.permute = private unnamed_addr constant [31 x i8] c"void permute(char *, int, int)\00", align 1
@AllCombos = internal global [3628800 x [10 x i8]] zeroinitializer, align 16
@__const.main.str = private unnamed_addr constant [11 x i8] c"ABCDEFGHIJ\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%.10s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %temp = alloca i8, align 1
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %temp, align 1
  %2 = load i8*, i8** %y.addr, align 8
  %3 = load i8, i8* %2, align 1
  %4 = load i8*, i8** %x.addr, align 8
  store i8 %3, i8* %4, align 1
  %5 = load i8, i8* %temp, align 1
  %6 = load i8*, i8** %y.addr, align 8
  store i8 %5, i8* %6, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @permute(i8* %a, i32 %l, i32 %r) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 %r, i32* %r.addr, align 4
  %0 = load i32, i32* %l.addr, align 4
  %1 = load i32, i32* %r.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i64, i64* @pos, align 8
  %cmp1 = icmp ule i64 %2, 3628800
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.permute, i64 0, i64 0)) #5
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i64, i64* @pos, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* @pos, align 8
  %arrayidx = getelementptr inbounds [3628800 x [10 x i8]], [3628800 x [10 x i8]]* @AllCombos, i64 0, i64 %4
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %arrayidx, i64 0, i64 0
  %5 = load i8*, i8** %a.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %arraydecay, i8* align 1 %5, i64 10, i1 false)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %l.addr, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %r.addr, align 4
  %cmp2 = icmp sle i32 %7, %8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %a.addr, align 8
  %10 = load i32, i32* %l.addr, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %11 = load i8*, i8** %a.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idx.ext3 = sext i32 %12 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %11, i64 %idx.ext3
  call void @swap(i8* %add.ptr, i8* %add.ptr4)
  %13 = load i8*, i8** %a.addr, align 8
  %14 = load i32, i32* %l.addr, align 4
  %add = add nsw i32 %14, 1
  %15 = load i32, i32* %r.addr, align 4
  call void @permute(i8* %13, i32 %add, i32 %15)
  %16 = load i8*, i8** %a.addr, align 8
  %17 = load i32, i32* %l.addr, align 4
  %idx.ext5 = sext i32 %17 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %16, i64 %idx.ext5
  %18 = load i8*, i8** %a.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idx.ext7 = sext i32 %19 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %18, i64 %idx.ext7
  call void @swap(i8* %add.ptr6, i8* %add.ptr8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %20, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %cond.end
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %str = alloca [11 x i8], align 1
  %n = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %i, align 8
  %0 = bitcast [11 x i8]* %str to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.main.str, i32 0, i32 0), i64 11, i1 false)
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %str, i64 0, i64 0
  %call = call i64 @strlen(i8* %arraydecay) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n, align 4
  %arraydecay1 = getelementptr inbounds [11 x i8], [11 x i8]* %str, i64 0, i64 0
  %1 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %1, 1
  call void @permute(i8* %arraydecay1, i32 0, i32 %sub)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %2, 3628800
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [3628800 x [10 x i8]], [3628800 x [10 x i8]]* @AllCombos, i64 0, i64 %3
  %arraydecay3 = getelementptr inbounds [10 x i8], [10 x i8]* %arrayidx, i64 0, i64 0
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i64, i64* %i, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
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
