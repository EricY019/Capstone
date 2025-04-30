; ModuleID = 'code/044-245260X0073.c'
source_filename = "code/044-245260X0073.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.s1 = private unnamed_addr constant [29 x i8] c"djfaks32132fjdksa1321fei,sjd\00", align 16
@.str = private unnamed_addr constant [26 x i8] c"%s\E9\87\8D\E5\A4\8D\E8\BE\93\E5\87\BA5\E6\AC\A1\E4\B9\8B\E5\90\8E:\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s\E5\80\92\E5\BA\8F\E8\BE\93\E5\87\BA:\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s\E5\8F\8D\E8\BD\AC\E4\B9\8B\E5\90\8E:\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s\E5\88\A0\E9\99\A4\E6\95\B0\E5\AD\97\E4\B9\8B\E5\90\8E:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s1 = alloca [29 x i8], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [29 x i8]* %s1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([29 x i8], [29 x i8]* @__const.main.s1, i32 0, i32 0), i64 29, i1 false)
  %arraydecay = getelementptr inbounds [29 x i8], [29 x i8]* %s1, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [29 x i8], [29 x i8]* %s1, i64 0, i64 0
  call void @put_stringn(i8* %arraydecay1, i32 5)
  %call2 = call i32 @putchar(i32 10)
  %arraydecay3 = getelementptr inbounds [29 x i8], [29 x i8]* %s1, i64 0, i64 0
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay3)
  %arraydecay5 = getelementptr inbounds [29 x i8], [29 x i8]* %s1, i64 0, i64 0
  call void @put_stringr(i8* %arraydecay5)
  %call6 = call i32 @putchar(i32 10)
  %arraydecay7 = getelementptr inbounds [29 x i8], [29 x i8]* %s1, i64 0, i64 0
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay7)
  %arraydecay9 = getelementptr inbounds [29 x i8], [29 x i8]* %s1, i64 0, i64 0
  call void @rev_string(i8* %arraydecay9)
  %arraydecay10 = getelementptr inbounds [29 x i8], [29 x i8]* %s1, i64 0, i64 0
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay10)
  %call12 = call i32 @putchar(i32 10)
  %arraydecay13 = getelementptr inbounds [29 x i8], [29 x i8]* %s1, i64 0, i64 0
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay13)
  %arraydecay15 = getelementptr inbounds [29 x i8], [29 x i8]* %s1, i64 0, i64 0
  call void @del_digit(i8* %arraydecay15)
  %arraydecay16 = getelementptr inbounds [29 x i8], [29 x i8]* %s1, i64 0, i64 0
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay16)
  %call18 = call i32 @putchar(i32 10)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_stringn(i8* %s, i32 %n) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %5, i64 %idxprom1
  %7 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %7 to i32
  %call = call i32 @putchar(i32 %conv)
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %8 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %8, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @putchar(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_stringr(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @str_length(i8* %0)
  store i32 %call, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %call1 = call i32 @putchar(i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rev_string(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i32 @str_length(i8* %0)
  store i32 %call, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %len, align 4
  %div = sdiv i32 %2, 2
  %cmp = icmp slt i32 %1, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %s.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  store i32 %conv, i32* %t, align 4
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i32, i32* %len, align 4
  %8 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, %8
  %sub1 = sub nsw i32 %sub, 1
  %idxprom2 = sext i32 %sub1 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %6, i64 %idxprom2
  %9 = load i8, i8* %arrayidx3, align 1
  %10 = load i8*, i8** %s.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %10, i64 %idxprom4
  store i8 %9, i8* %arrayidx5, align 1
  %12 = load i32, i32* %t, align 4
  %conv6 = trunc i32 %12 to i8
  %13 = load i8*, i8** %s.addr, align 8
  %14 = load i32, i32* %len, align 4
  %15 = load i32, i32* %i, align 4
  %sub7 = sub nsw i32 %14, %15
  %sub8 = sub nsw i32 %sub7, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  store i8 %conv6, i8* %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @del_digit(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #4
  %3 = load i16*, i16** %call, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %6 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %6 to i32
  %idxprom3 = sext i32 %conv to i64
  %arrayidx4 = getelementptr inbounds i16, i16* %3, i64 %idxprom3
  %7 = load i16, i16* %arrayidx4, align 2
  %conv5 = zext i16 %7 to i32
  %and = and i32 %conv5, 2048
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %8 = load i8*, i8** %s.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 %idxprom7
  %10 = load i8, i8* %arrayidx8, align 1
  %11 = load i8*, i8** %s.addr, align 8
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %idxprom9
  store i8 %10, i8* %arrayidx10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %13 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, i32* %i, align 4
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %14 = load i8*, i8** %s.addr, align 8
  %15 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %14, i64 %idxprom12
  store i8 0, i8* %arrayidx13, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @str_length(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i32, i32* %len, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %len, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %len, align 4
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %len, align 4
  ret i32 %4
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }

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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
