; ModuleID = 'code/179-22451program_10_13.c'
source_filename = "code/179-22451program_10_13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.string1 = private unnamed_addr constant [23 x i8] c"A string to be copied.\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"So is this.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copyString(i8* %to, i8* %from) #0 {
entry:
  %to.addr = alloca i8*, align 8
  %from.addr = alloca i8*, align 8
  store i8* %to, i8** %to.addr, align 8
  store i8* %from, i8** %from.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %from.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %from.addr, align 8
  %3 = load i8, i8* %2, align 1
  %4 = load i8*, i8** %to.addr, align 8
  store i8 %3, i8* %4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i8*, i8** %from.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %from.addr, align 8
  %6 = load i8*, i8** %to.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr2, i8** %to.addr, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** %to.addr, align 8
  store i8 0, i8* %7, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %string1 = alloca [23 x i8], align 16
  %string2 = alloca [50 x i8], align 16
  store i32 0, i32* %retval, align 4
  %0 = bitcast [23 x i8]* %string1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.main.string1, i32 0, i32 0), i64 23, i1 false)
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %string2, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [23 x i8], [23 x i8]* %string1, i64 0, i64 0
  call void @copyString(i8* %arraydecay, i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [50 x i8], [50 x i8]* %string2, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [50 x i8], [50 x i8]* %string2, i64 0, i64 0
  call void @copyString(i8* %arraydecay3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %arraydecay4 = getelementptr inbounds [50 x i8], [50 x i8]* %string2, i64 0, i64 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %arraydecay4)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
