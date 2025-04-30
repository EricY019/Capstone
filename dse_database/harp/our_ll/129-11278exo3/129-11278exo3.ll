; ModuleID = 'code/129-11278exo3.c'
source_filename = "code/129-11278exo3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.permAlphaChar.alphabet = private unnamed_addr constant [26 x i8] c"abcdefghijklmnopqrstuvwxyz", align 16
@__const.main.rev_msg = private unnamed_addr constant [17 x i8] c"Bonjour le monde\00", align 16
@__const.main.perm_msg = private unnamed_addr constant [25 x i8] c"Bonjour a tous et toutes\00", align 16
@.str = private unnamed_addr constant [80 x i8] c"La chaine de caracteres a inverser est \22%s\22 et a pour longueur %d caractere(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"La chaine inversee de caracteres est \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"La chaine de caracteres a permuter est \22%s\22 et a pour longueur %d caractere(s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"La chaine permutee de caracteres est \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8* %v1, i8* %v2) #0 {
entry:
  %v1.addr = alloca i8*, align 8
  %v2.addr = alloca i8*, align 8
  %tmp = alloca i8, align 1
  store i8* %v1, i8** %v1.addr, align 8
  store i8* %v2, i8** %v2.addr, align 8
  %0 = load i8*, i8** %v1.addr, align 8
  %1 = load i8*, i8** %v2.addr, align 8
  %cmp = icmp ne i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %v1.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %tmp, align 1
  %4 = load i8*, i8** %v2.addr, align 8
  %5 = load i8, i8* %4, align 1
  %6 = load i8*, i8** %v1.addr, align 8
  store i8 %5, i8* %6, align 1
  %7 = load i8, i8* %tmp, align 1
  %8 = load i8*, i8** %v2.addr, align 8
  store i8 %7, i8* %8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stringLength(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %length = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 0, i32* %length, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load i32, i32* %length, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %length, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %length, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %length, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverseString(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i32 @stringLength(i8* %0)
  store i32 %call, i32* %length, align 4
  %1 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %length, align 4
  %div = sdiv i32 %3, 2
  %cmp = icmp sge i32 %2, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8*, i8** %str.addr, align 8
  %7 = load i32, i32* %length, align 4
  %sub1 = sub nsw i32 %7, 1
  %8 = load i32, i32* %i, align 4
  %sub2 = sub nsw i32 %sub1, %8
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3
  call void @swap(i8* %arrayidx, i8* %arrayidx4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @permAlphaChar(i8* %str, i32 %key) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %key.addr = alloca i32, align 4
  %alphabet = alloca [26 x i8], align 16
  %str_length = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %key, i32* %key.addr, align 4
  %0 = bitcast [26 x i8]* %alphabet to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([26 x i8], [26 x i8]* @__const.permAlphaChar.alphabet, i32 0, i32 0), i64 26, i1 false)
  %1 = load i8*, i8** %str.addr, align 8
  %call = call i32 @stringLength(i8* %1)
  store i32 %call, i32* %str_length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %str_length, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end35

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %4, 26
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %7 to i32
  %8 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [26 x i8], [26 x i8]* %alphabet, i64 0, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %10 = load i32, i32* %j, align 4
  %11 = load i32, i32* %key.addr, align 4
  %add = add nsw i32 %10, %11
  %rem = srem i32 %add, 26
  %idxprom9 = sext i32 %rem to i64
  %arrayidx10 = getelementptr inbounds [26 x i8], [26 x i8]* %alphabet, i64 0, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 %idxprom11
  store i8 %12, i8* %arrayidx12, align 1
  br label %for.end

if.else:                                          ; preds = %for.body3
  %15 = load i8*, i8** %str.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds i8, i8* %15, i64 %idxprom13
  %17 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %17 to i32
  %18 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [26 x i8], [26 x i8]* %alphabet, i64 0, i64 %idxprom16
  %19 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %19 to i32
  %call19 = call i32 @toupper(i32 %conv18) #4
  %cmp20 = icmp eq i32 %conv15, %call19
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.else
  %20 = load i32, i32* %j, align 4
  %21 = load i32, i32* %key.addr, align 4
  %add23 = add nsw i32 %20, %21
  %rem24 = srem i32 %add23, 26
  %idxprom25 = sext i32 %rem24 to i64
  %arrayidx26 = getelementptr inbounds [26 x i8], [26 x i8]* %alphabet, i64 0, i64 %idxprom25
  %22 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %22 to i32
  %call28 = call i32 @toupper(i32 %conv27) #4
  %conv29 = trunc i32 %call28 to i8
  %23 = load i8*, i8** %str.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %24 to i64
  %arrayidx31 = getelementptr inbounds i8, i8* %23, i64 %idxprom30
  store i8 %conv29, i8* %arrayidx31, align 1
  br label %for.end

if.end:                                           ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %if.then22, %if.then, %for.cond1
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %26, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end35:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %rev_msg = alloca [17 x i8], align 16
  %rev_length = alloca i32, align 4
  %perm_msg = alloca [25 x i8], align 16
  %perm_length = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [17 x i8]* %rev_msg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([17 x i8], [17 x i8]* @__const.main.rev_msg, i32 0, i32 0), i64 17, i1 false)
  %arraydecay = getelementptr inbounds [17 x i8], [17 x i8]* %rev_msg, i64 0, i64 0
  %call = call i32 @stringLength(i8* %arraydecay)
  store i32 %call, i32* %rev_length, align 4
  %1 = bitcast [25 x i8]* %perm_msg to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 getelementptr inbounds ([25 x i8], [25 x i8]* @__const.main.perm_msg, i32 0, i32 0), i64 25, i1 false)
  %arraydecay1 = getelementptr inbounds [25 x i8], [25 x i8]* %perm_msg, i64 0, i64 0
  %call2 = call i32 @stringLength(i8* %arraydecay1)
  store i32 %call2, i32* %perm_length, align 4
  %arraydecay3 = getelementptr inbounds [17 x i8], [17 x i8]* %rev_msg, i64 0, i64 0
  %2 = load i32, i32* %rev_length, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i8* %arraydecay3, i32 %2)
  %arraydecay5 = getelementptr inbounds [17 x i8], [17 x i8]* %rev_msg, i64 0, i64 0
  call void @reverseString(i8* %arraydecay5)
  %arraydecay6 = getelementptr inbounds [17 x i8], [17 x i8]* %rev_msg, i64 0, i64 0
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay6)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %arraydecay9 = getelementptr inbounds [25 x i8], [25 x i8]* %perm_msg, i64 0, i64 0
  %3 = load i32, i32* %perm_length, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.3, i64 0, i64 0), i8* %arraydecay9, i32 %3)
  %arraydecay11 = getelementptr inbounds [25 x i8], [25 x i8]* %perm_msg, i64 0, i64 0
  call void @permAlphaChar(i8* %arraydecay11, i32 13)
  %arraydecay12 = getelementptr inbounds [25 x i8], [25 x i8]* %perm_msg, i64 0, i64 0
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i8* %arraydecay12)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !5}
