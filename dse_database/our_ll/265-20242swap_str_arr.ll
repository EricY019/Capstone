; ModuleID = 'code/265-20242swap_str_arr.c'
source_filename = "code/265-20242swap_str_arr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.s1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@__const.main.s2 = private unnamed_addr constant [12 x i8] c"bar bar bar\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"Before swap:\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"============\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"s1: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"s2: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\0AAfter swap:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s1 = alloca [4 x i8], align 1
  %s2 = alloca [12 x i8], align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast [4 x i8]* %s1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.main.s1, i32 0, i32 0), i64 4, i1 false)
  %1 = bitcast [12 x i8]* %s2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.main.s2, i32 0, i32 0), i64 12, i1 false)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %s1, i64 0, i64 0
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay)
  %arraydecay3 = getelementptr inbounds [12 x i8], [12 x i8]* %s2, i64 0, i64 0
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay3)
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %s1, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [12 x i8], [12 x i8]* %s2, i64 0, i64 0
  call void @swap_str_arr(i8* %arraydecay5, i8* %arraydecay6)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %arraydecay9 = getelementptr inbounds [4 x i8], [4 x i8]* %s1, i64 0, i64 0
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay9)
  %arraydecay11 = getelementptr inbounds [12 x i8], [12 x i8]* %s2, i64 0, i64 0
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay11)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap_str_arr(i8* %str_a, i8* %str_b) #0 {
entry:
  %str_a.addr = alloca i8*, align 8
  %str_b.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %temp = alloca i8, align 1
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %min_len = alloca i32, align 4
  %max_len = alloca i32, align 4
  store i8* %str_a, i8** %str_a.addr, align 8
  store i8* %str_b, i8** %str_b.addr, align 8
  %0 = load i8*, i8** %str_a.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len1, align 4
  %1 = load i8*, i8** %str_b.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #4
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %len2, align 4
  %2 = load i32, i32* %len1, align 4
  %3 = load i32, i32* %len2, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i32, i32* %len1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load i32, i32* %len2, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, i32* %min_len, align 4
  %6 = load i32, i32* %len1, align 4
  %7 = load i32, i32* %len2, align 4
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %cond.true6, label %cond.false7

cond.true6:                                       ; preds = %cond.end
  %8 = load i32, i32* %len1, align 4
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  %9 = load i32, i32* %len2, align 4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi i32 [ %8, %cond.true6 ], [ %9, %cond.false7 ]
  store i32 %cond9, i32* %max_len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end8
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %min_len, align 4
  %cmp10 = icmp slt i32 %10, %11
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %str_a.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  store i8 %14, i8* %temp, align 1
  %15 = load i8*, i8** %str_b.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 %idxprom12
  %17 = load i8, i8* %arrayidx13, align 1
  %18 = load i8*, i8** %str_a.addr, align 8
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds i8, i8* %18, i64 %idxprom14
  store i8 %17, i8* %arrayidx15, align 1
  %20 = load i8, i8* %temp, align 1
  %21 = load i8*, i8** %str_b.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %22 to i64
  %arrayidx17 = getelementptr inbounds i8, i8* %21, i64 %idxprom16
  store i8 %20, i8* %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %min_len, align 4
  %25 = load i32, i32* %len1, align 4
  %cmp18 = icmp eq i32 %24, %25
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %26 = load i32, i32* %min_len, align 4
  store i32 %26, i32* %i, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %if.then
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %max_len, align 4
  %cmp21 = icmp slt i32 %27, %28
  br i1 %cmp21, label %for.body23, label %for.end30

for.body23:                                       ; preds = %for.cond20
  %29 = load i8*, i8** %str_b.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %30 to i64
  %arrayidx25 = getelementptr inbounds i8, i8* %29, i64 %idxprom24
  %31 = load i8, i8* %arrayidx25, align 1
  %32 = load i8*, i8** %str_a.addr, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %33 to i64
  %arrayidx27 = getelementptr inbounds i8, i8* %32, i64 %idxprom26
  store i8 %31, i8* %arrayidx27, align 1
  br label %for.inc28

for.inc28:                                        ; preds = %for.body23
  %34 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %34, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond20, !llvm.loop !6

for.end30:                                        ; preds = %for.cond20
  %35 = load i8*, i8** %str_b.addr, align 8
  %36 = load i32, i32* %min_len, align 4
  %idxprom31 = sext i32 %36 to i64
  %arrayidx32 = getelementptr inbounds i8, i8* %35, i64 %idxprom31
  store i8 0, i8* %arrayidx32, align 1
  %37 = load i8*, i8** %str_a.addr, align 8
  %38 = load i32, i32* %max_len, align 4
  %idxprom33 = sext i32 %38 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %37, i64 %idxprom33
  store i8 0, i8* %arrayidx34, align 1
  br label %if.end

if.else:                                          ; preds = %for.end
  %39 = load i32, i32* %min_len, align 4
  store i32 %39, i32* %i, align 4
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc43, %if.else
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %max_len, align 4
  %cmp36 = icmp slt i32 %40, %41
  br i1 %cmp36, label %for.body38, label %for.end45

for.body38:                                       ; preds = %for.cond35
  %42 = load i8*, i8** %str_a.addr, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %43 to i64
  %arrayidx40 = getelementptr inbounds i8, i8* %42, i64 %idxprom39
  %44 = load i8, i8* %arrayidx40, align 1
  %45 = load i8*, i8** %str_b.addr, align 8
  %46 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %46 to i64
  %arrayidx42 = getelementptr inbounds i8, i8* %45, i64 %idxprom41
  store i8 %44, i8* %arrayidx42, align 1
  br label %for.inc43

for.inc43:                                        ; preds = %for.body38
  %47 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %47, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond35, !llvm.loop !7

for.end45:                                        ; preds = %for.cond35
  %48 = load i8*, i8** %str_a.addr, align 8
  %49 = load i32, i32* %min_len, align 4
  %idxprom46 = sext i32 %49 to i64
  %arrayidx47 = getelementptr inbounds i8, i8* %48, i64 %idxprom46
  store i8 0, i8* %arrayidx47, align 1
  %50 = load i8*, i8** %str_b.addr, align 8
  %51 = load i32, i32* %max_len, align 4
  %idxprom48 = sext i32 %51 to i64
  %arrayidx49 = getelementptr inbounds i8, i8* %50, i64 %idxprom48
  store i8 0, i8* %arrayidx49, align 1
  br label %if.end

if.end:                                           ; preds = %for.end45, %for.end30
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

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
