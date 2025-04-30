; ModuleID = 'code/312-3522show-bytes.c'
source_filename = "code/312-3522show-bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c" %.2x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_bytes(i8* %start, i32 %len) #0 {
entry:
  %start.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %start, i8** %start.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %start.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_int(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = bitcast i32* %x.addr to i8*
  call void @show_bytes(i8* %0, i32 4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_float(float %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, float* %x.addr, align 4
  %0 = bitcast float* %x.addr to i8*
  call void @show_bytes(i8* %0, i32 4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_pointer(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = bitcast i8** %x.addr to i8*
  call void @show_bytes(i8* %0, i32 8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_show_bytes(i32 %val) #0 {
entry:
  %val.addr = alloca i32, align 4
  %ival = alloca i32, align 4
  %fval = alloca float, align 4
  %pval = alloca i32*, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load i32, i32* %val.addr, align 4
  store i32 %0, i32* %ival, align 4
  %1 = load i32, i32* %ival, align 4
  %conv = sitofp i32 %1 to float
  store float %conv, float* %fval, align 4
  store i32* %val.addr, i32** %pval, align 8
  %2 = load i32, i32* %ival, align 4
  call void @show_int(i32 %2)
  %3 = load float, float* %fval, align 4
  call void @show_float(float %3)
  %4 = load i32*, i32** %pval, align 8
  %5 = bitcast i32* %4 to i8*
  call void @show_pointer(i8* %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  call void @test_show_bytes(i32 12345)
  call void @show_bytes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 6)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %s, align 8
  %0 = load i8*, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %call = call i64 @strlen(i8* %1) #3
  %conv = trunc i64 %call to i32
  call void @show_bytes(i8* %0, i32 %conv)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
