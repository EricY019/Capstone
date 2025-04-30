; ModuleID = 'code/071-22095permut.c'
source_filename = "code/071-22095permut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__const.main.name = private unnamed_addr constant [11 x i8] c"9788029400\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap(i8* %a, i8* %c) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %c.addr = alloca i8*, align 8
  %temp = alloca i8, align 1
  store i8* %a, i8** %a.addr, align 8
  store i8* %c, i8** %c.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %temp, align 1
  %2 = load i8*, i8** %c.addr, align 8
  %3 = load i8, i8* %2, align 1
  %4 = load i8*, i8** %a.addr, align 8
  store i8 %3, i8* %4, align 1
  %5 = load i8, i8* %temp, align 1
  %6 = load i8*, i8** %c.addr, align 8
  store i8 %5, i8* %6, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @permutation(i8* %a, i32 %l, i32 %r) #0 {
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
  %2 = load i8*, i8** %a.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %l.addr, align 4
  store i32 %3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %r.addr, align 4
  %cmp1 = icmp sle i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i8*, i8** %a.addr, align 8
  %7 = load i32, i32* %l.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  %8 = load i8*, i8** %a.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 %idx.ext2
  call void @swap(i8* %add.ptr, i8* %add.ptr3)
  %10 = load i8*, i8** %a.addr, align 8
  %11 = load i32, i32* %l.addr, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32, i32* %r.addr, align 4
  call void @permutation(i8* %10, i32 %add, i32 %12)
  %13 = load i8*, i8** %a.addr, align 8
  %14 = load i32, i32* %l.addr, align 4
  %idx.ext4 = sext i32 %14 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %13, i64 %idx.ext4
  %15 = load i8*, i8** %a.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idx.ext6 = sext i32 %16 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %15, i64 %idx.ext6
  call void @swap(i8* %add.ptr5, i8* %add.ptr7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %name = alloca [11 x i8], align 1
  %len = alloca i32, align 4
  %0 = bitcast [11 x i8]* %name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([11 x i8], [11 x i8]* @__const.main.name, i32 0, i32 0), i64 11, i1 false)
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %name, i64 0, i64 0
  %call = call i64 @strlen(i8* %arraydecay) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %arraydecay1 = getelementptr inbounds [11 x i8], [11 x i8]* %name, i64 0, i64 0
  %1 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %1, 1
  call void @permutation(i8* %arraydecay1, i32 0, i32 %sub)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
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
