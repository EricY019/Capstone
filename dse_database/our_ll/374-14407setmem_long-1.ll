; ModuleID = 'code/374-14407setmem_long-1.c'
source_filename = "code/374-14407setmem_long-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = dso_local global [502 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test(i8* %p, i8 signext %c, i32 %len) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %c.addr = alloca i8, align 1
  %len.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %1 to i32
  %2 = trunc i32 %conv to i8
  %3 = load i32, i32* %len.addr, align 4
  %conv1 = sext i32 %3 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 %2, i64 %conv1, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test2(i8* %p, i32 %c, i32 %len) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %p.addr, align 8
  %1 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %1 to i8
  %conv1 = sext i8 %conv to i32
  %2 = trunc i32 %conv1 to i8
  %3 = load i32, i32* %len.addr, align 4
  %conv2 = sext i32 %3 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 %2, i64 %conv2, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_buf() #0 {
entry:
  %i = alloca i32, align 4
  store i8 0, i8* getelementptr inbounds ([502 x i8], [502 x i8]* @buf, i64 0, i64 0), align 16
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %and = and i32 %1, 63
  %add = add nsw i32 16, %and
  %conv = trunc i32 %add to i8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [502 x i8], [502 x i8]* @buf, i64 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i8 127, i8* getelementptr inbounds ([502 x i8], [502 x i8]* @buf, i64 0, i64 501), align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_buf(i8 signext %val) #0 {
entry:
  %val.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store i8 %val, i8* %val.addr, align 1
  %0 = load i8, i8* getelementptr inbounds ([502 x i8], [502 x i8]* @buf, i64 0, i64 0), align 16
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %cmp2 = icmp sle i32 %1, 500
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [502 x i8], [502 x i8]* @buf, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %3 to i32
  %4 = load i8, i8* %val.addr, align 1
  %conv5 = sext i8 %4 to i32
  %cmp6 = icmp ne i32 %conv4, %conv5
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  call void @abort() #3
  unreachable

if.end9:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %6 = load i8, i8* getelementptr inbounds ([502 x i8], [502 x i8]* @buf, i64 0, i64 501), align 1
  %conv10 = sext i8 %6 to i32
  %cmp11 = icmp ne i32 %conv10, 127
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  call void @abort() #3
  unreachable

if.end14:                                         ; preds = %for.end
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  call void @init_buf()
  call void @test(i8* getelementptr inbounds ([502 x i8], [502 x i8]* @buf, i64 0, i64 1), i8 signext 55, i32 500)
  call void @validate_buf(i8 signext 55)
  call void @init_buf()
  call void @test(i8* getelementptr inbounds ([502 x i8], [502 x i8]* @buf, i64 0, i64 1), i8 signext 66, i32 500)
  call void @validate_buf(i8 signext 66)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
