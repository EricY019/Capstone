; ModuleID = 'code/294-21030problem_four.c'
source_filename = "code/294-21030problem_four.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Answer = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %max = alloca i32, align 4
  %a = alloca [7 x i8], align 1
  %b = alloca [7 x i8], align 1
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %max, align 4
  store i32 999, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, i32* %x, align 4
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 999, i32* %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %y, align 4
  %cmp2 = icmp sgt i32 %1, 99
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %y, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %z, align 4
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %a, i64 0, i64 0
  %4 = load i32, i32* %z, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %4) #4
  %arraydecay4 = getelementptr inbounds [7 x i8], [7 x i8]* %b, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [7 x i8], [7 x i8]* %a, i64 0, i64 0
  %call6 = call i8* @strcpy(i8* %arraydecay4, i8* %arraydecay5) #4
  %arraydecay7 = getelementptr inbounds [7 x i8], [7 x i8]* %b, i64 0, i64 0
  %call8 = call i8* @strrev(i8* %arraydecay7)
  %arraydecay9 = getelementptr inbounds [7 x i8], [7 x i8]* %a, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [7 x i8], [7 x i8]* %b, i64 0, i64 0
  %call11 = call i32 @strcmp(i8* %arraydecay9, i8* %arraydecay10) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.end15

if.then:                                          ; preds = %for.body3
  %5 = load i32, i32* %z, align 4
  %6 = load i32, i32* %max, align 4
  %cmp13 = icmp sgt i32 %5, %6
  br i1 %cmp13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then
  %7 = load i32, i32* %z, align 4
  store i32 %7, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then
  br label %if.end15

if.end15:                                         ; preds = %if.end, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %8 = load i32, i32* %y, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %y, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %9 = load i32, i32* %x, align 4
  %dec17 = add nsw i32 %9, -1
  store i32 %dec17, i32* %x, align 4
  br label %for.cond, !llvm.loop !6

for.end18:                                        ; preds = %for.cond
  %10 = load i32, i32* %max, align 4
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strrev(i8* %str) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load i8*, i8** %str.addr, align 8
  store i8* %3, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8*, i8** %str.addr, align 8
  store i8* %4, i8** %p1, align 8
  %5 = load i8*, i8** %str.addr, align 8
  %6 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %6) #5
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %call
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr2, i8** %p2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i8*, i8** %p2, align 8
  %8 = load i8*, i8** %p1, align 8
  %cmp = icmp ugt i8* %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i8*, i8** %p2, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %11 = load i8*, i8** %p1, align 8
  %12 = load i8, i8* %11, align 1
  %conv3 = sext i8 %12 to i32
  %xor = xor i32 %conv3, %conv
  %conv4 = trunc i32 %xor to i8
  store i8 %conv4, i8* %11, align 1
  %13 = load i8*, i8** %p1, align 8
  %14 = load i8, i8* %13, align 1
  %conv5 = sext i8 %14 to i32
  %15 = load i8*, i8** %p2, align 8
  %16 = load i8, i8* %15, align 1
  %conv6 = sext i8 %16 to i32
  %xor7 = xor i32 %conv6, %conv5
  %conv8 = trunc i32 %xor7 to i8
  store i8 %conv8, i8* %15, align 1
  %17 = load i8*, i8** %p2, align 8
  %18 = load i8, i8* %17, align 1
  %conv9 = sext i8 %18 to i32
  %19 = load i8*, i8** %p1, align 8
  %20 = load i8, i8* %19, align 1
  %conv10 = sext i8 %20 to i32
  %xor11 = xor i32 %conv10, %conv9
  %conv12 = trunc i32 %xor11 to i8
  store i8 %conv12, i8* %19, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i8*, i8** %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr, i8** %p1, align 8
  %22 = load i8*, i8** %p2, align 8
  %incdec.ptr13 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %incdec.ptr13, i8** %p2, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %23 = load i8*, i8** %str.addr, align 8
  store i8* %23, i8** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %24 = load i8*, i8** %retval, align 8
  ret i8* %24
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
