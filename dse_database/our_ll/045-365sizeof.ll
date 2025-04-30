; ModuleID = 'code/045-365sizeof.c'
source_filename = "code/045-365sizeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [16 x i8], i8, [16 x i8] }
%struct.anon.0 = type { [16 x i8], i16, [16 x i8] }
%struct.anon.1 = type { [16 x i8], i32, [16 x i8] }
%struct.anon.2 = type { [16 x i8], i64, [16 x i8] }
%struct.anon.3 = type { [16 x i8], i64, [16 x i8] }
%struct.anon.4 = type { [16 x i8], float, [16 x i8] }
%struct.anon.5 = type { [16 x i8], double, [16 x i8] }
%struct.anon.6 = type { [16 x i8], x86_fp80, [16 x i8] }

@padding_char = dso_local global %struct.anon zeroinitializer, align 1
@padding_short = dso_local global %struct.anon.0 zeroinitializer, align 2
@padding_int = dso_local global %struct.anon.1 zeroinitializer, align 4
@padding_long = dso_local global %struct.anon.2 zeroinitializer, align 8
@padding_long_long = dso_local global %struct.anon.3 zeroinitializer, align 8
@padding_float = dso_local global %struct.anon.4 zeroinitializer, align 4
@padding_double = dso_local global %struct.anon.5 zeroinitializer, align 8
@padding_long_double = dso_local global %struct.anon.6 zeroinitializer, align 16
@.str = private unnamed_addr constant [21 x i8] c"sizeof (char) == %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"sizeof (short) == %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sizeof (int) == %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"sizeof (long) == %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"sizeof (long long) == %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"sizeof (void *) == %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"sizeof (void (*)(void)) == %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"sizeof (float) == %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"sizeof (double) == %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"sizeof (long double) == %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"valueof ('\\377') == %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"valueof ((int) (char) -1) == %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"valueof ((int) (signed char) -1) == %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"valueof ((int) (unsigned char) -1) == %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"The quick brown dingo jumped over the layzy dog.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_structs() #0 {
entry:
  call void @fill(i8* getelementptr inbounds (%struct.anon, %struct.anon* @padding_char, i32 0, i32 0, i32 0), i64 16)
  call void @fill(i8* getelementptr inbounds (%struct.anon, %struct.anon* @padding_char, i32 0, i32 1), i64 1)
  call void @fill(i8* getelementptr inbounds (%struct.anon, %struct.anon* @padding_char, i32 0, i32 2, i32 0), i64 16)
  call void @fill(i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @padding_short, i32 0, i32 0, i32 0), i64 16)
  call void @fill(i8* bitcast (i16* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @padding_short, i32 0, i32 1) to i8*), i64 2)
  call void @fill(i8* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @padding_short, i32 0, i32 2, i32 0), i64 16)
  call void @fill(i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @padding_int, i32 0, i32 0, i32 0), i64 16)
  call void @fill(i8* bitcast (i32* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @padding_int, i32 0, i32 1) to i8*), i64 4)
  call void @fill(i8* getelementptr inbounds (%struct.anon.1, %struct.anon.1* @padding_int, i32 0, i32 2, i32 0), i64 16)
  call void @fill(i8* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @padding_long, i32 0, i32 0, i32 0), i64 16)
  call void @fill(i8* bitcast (i64* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @padding_long, i32 0, i32 1) to i8*), i64 8)
  call void @fill(i8* getelementptr inbounds (%struct.anon.2, %struct.anon.2* @padding_long, i32 0, i32 2, i32 0), i64 16)
  call void @fill(i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @padding_long_long, i32 0, i32 0, i32 0), i64 16)
  call void @fill(i8* bitcast (i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @padding_long_long, i32 0, i32 1) to i8*), i64 8)
  call void @fill(i8* getelementptr inbounds (%struct.anon.3, %struct.anon.3* @padding_long_long, i32 0, i32 2, i32 0), i64 16)
  call void @fill(i8* getelementptr inbounds (%struct.anon.4, %struct.anon.4* @padding_float, i32 0, i32 0, i32 0), i64 16)
  call void @fill(i8* bitcast (float* getelementptr inbounds (%struct.anon.4, %struct.anon.4* @padding_float, i32 0, i32 1) to i8*), i64 4)
  call void @fill(i8* getelementptr inbounds (%struct.anon.4, %struct.anon.4* @padding_float, i32 0, i32 2, i32 0), i64 16)
  call void @fill(i8* getelementptr inbounds (%struct.anon.5, %struct.anon.5* @padding_double, i32 0, i32 0, i32 0), i64 16)
  call void @fill(i8* bitcast (double* getelementptr inbounds (%struct.anon.5, %struct.anon.5* @padding_double, i32 0, i32 1) to i8*), i64 8)
  call void @fill(i8* getelementptr inbounds (%struct.anon.5, %struct.anon.5* @padding_double, i32 0, i32 2, i32 0), i64 16)
  call void @fill(i8* getelementptr inbounds (%struct.anon.6, %struct.anon.6* @padding_long_double, i32 0, i32 0, i32 0), i64 16)
  call void @fill(i8* bitcast (x86_fp80* getelementptr inbounds (%struct.anon.6, %struct.anon.6* @padding_long_double, i32 0, i32 1) to i8*), i64 16)
  call void @fill(i8* getelementptr inbounds (%struct.anon.6, %struct.anon.6* @padding_long_double, i32 0, i32 2, i32 0), i64 16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill(i8* %buf, i64 %sizeof_buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %sizeof_buf.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %sizeof_buf, i64* %sizeof_buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  store i8* %0, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load i64, i64* %sizeof_buf.addr, align 8
  %cmp = icmp slt i64 %conv, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [49 x i8], [49 x i8]* @.str.14, i64 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %5 = load i8*, i8** %p, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 %idxprom2
  store i8 %4, i8* %arrayidx3, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @fill_structs()
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 1)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 8)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 16)
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 -1)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 -1)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 -1)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 255)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
