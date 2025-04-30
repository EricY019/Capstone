; ModuleID = 'code/381-1411reverse-bitwise.c'
source_filename = "code/381-1411reverse-bitwise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.input = private unnamed_addr constant [16 x i8] c"the sky is blue\00", align 16
@.str = private unnamed_addr constant [21 x i8] c"[before] input : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"[after]  input : %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse_string_bitwise(i8* %input) #0 {
entry:
  %input.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %input, i8** %input.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load i8*, i8** %input.addr, align 8
  %call = call i64 @strlen(i8* %1) #4
  %div = udiv i64 %call, 2
  %cmp = icmp ult i64 %conv, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %input.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.ext
  %4 = load i8, i8* %add.ptr, align 1
  %conv2 = sext i8 %4 to i32
  %5 = load i8*, i8** %input.addr, align 8
  %6 = load i8*, i8** %input.addr, align 8
  %call3 = call i64 @strlen(i8* %6) #4
  %add.ptr4 = getelementptr inbounds i8, i8* %5, i64 %call3
  %7 = load i32, i32* %i, align 4
  %idx.ext5 = sext i32 %7 to i64
  %idx.neg = sub i64 0, %idx.ext5
  %add.ptr6 = getelementptr inbounds i8, i8* %add.ptr4, i64 %idx.neg
  %add.ptr7 = getelementptr inbounds i8, i8* %add.ptr6, i64 -1
  %8 = load i8, i8* %add.ptr7, align 1
  %conv8 = sext i8 %8 to i32
  %xor = xor i32 %conv2, %conv8
  %conv9 = trunc i32 %xor to i8
  %9 = load i8*, i8** %input.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idx.ext10 = sext i32 %10 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %9, i64 %idx.ext10
  store i8 %conv9, i8* %add.ptr11, align 1
  %11 = load i8*, i8** %input.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idx.ext12 = sext i32 %12 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %11, i64 %idx.ext12
  %13 = load i8, i8* %add.ptr13, align 1
  %conv14 = sext i8 %13 to i32
  %14 = load i8*, i8** %input.addr, align 8
  %15 = load i8*, i8** %input.addr, align 8
  %call15 = call i64 @strlen(i8* %15) #4
  %add.ptr16 = getelementptr inbounds i8, i8* %14, i64 %call15
  %16 = load i32, i32* %i, align 4
  %idx.ext17 = sext i32 %16 to i64
  %idx.neg18 = sub i64 0, %idx.ext17
  %add.ptr19 = getelementptr inbounds i8, i8* %add.ptr16, i64 %idx.neg18
  %add.ptr20 = getelementptr inbounds i8, i8* %add.ptr19, i64 -1
  %17 = load i8, i8* %add.ptr20, align 1
  %conv21 = sext i8 %17 to i32
  %xor22 = xor i32 %conv14, %conv21
  %conv23 = trunc i32 %xor22 to i8
  %18 = load i8*, i8** %input.addr, align 8
  %19 = load i8*, i8** %input.addr, align 8
  %call24 = call i64 @strlen(i8* %19) #4
  %add.ptr25 = getelementptr inbounds i8, i8* %18, i64 %call24
  %20 = load i32, i32* %i, align 4
  %idx.ext26 = sext i32 %20 to i64
  %idx.neg27 = sub i64 0, %idx.ext26
  %add.ptr28 = getelementptr inbounds i8, i8* %add.ptr25, i64 %idx.neg27
  %add.ptr29 = getelementptr inbounds i8, i8* %add.ptr28, i64 -1
  store i8 %conv23, i8* %add.ptr29, align 1
  %21 = load i8*, i8** %input.addr, align 8
  %22 = load i32, i32* %i, align 4
  %idx.ext30 = sext i32 %22 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %21, i64 %idx.ext30
  %23 = load i8, i8* %add.ptr31, align 1
  %conv32 = sext i8 %23 to i32
  %24 = load i8*, i8** %input.addr, align 8
  %25 = load i8*, i8** %input.addr, align 8
  %call33 = call i64 @strlen(i8* %25) #4
  %add.ptr34 = getelementptr inbounds i8, i8* %24, i64 %call33
  %26 = load i32, i32* %i, align 4
  %idx.ext35 = sext i32 %26 to i64
  %idx.neg36 = sub i64 0, %idx.ext35
  %add.ptr37 = getelementptr inbounds i8, i8* %add.ptr34, i64 %idx.neg36
  %add.ptr38 = getelementptr inbounds i8, i8* %add.ptr37, i64 -1
  %27 = load i8, i8* %add.ptr38, align 1
  %conv39 = sext i8 %27 to i32
  %xor40 = xor i32 %conv32, %conv39
  %conv41 = trunc i32 %xor40 to i8
  %28 = load i8*, i8** %input.addr, align 8
  %29 = load i32, i32* %i, align 4
  %idx.ext42 = sext i32 %29 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %28, i64 %idx.ext42
  store i8 %conv41, i8* %add.ptr43, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %input = alloca [16 x i8], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [16 x i8]* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.main.input, i32 0, i32 0), i64 16, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %input, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %arraydecay)
  %arraydecay1 = getelementptr inbounds [16 x i8], [16 x i8]* %input, i64 0, i64 0
  call void @reverse_string_bitwise(i8* %arraydecay1)
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %input, i64 0, i64 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay2)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
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
