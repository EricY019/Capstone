; ModuleID = './code/156-3160bug-regex27.c'
source_filename = "./code/156-3160bug-regex27.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.tests = type { ptr, ptr, i32, i32 }
%struct.regex_t = type { i32, i64, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"a.b\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"a\0Ab\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"a[^x]b\00", align 1
@tests = global [4 x %struct.tests] [%struct.tests { ptr @.str, ptr @.str.1, i32 9, i32 1 }, %struct.tests { ptr @.str, ptr @.str.1, i32 1, i32 0 }, %struct.tests { ptr @.str.2, ptr @.str.1, i32 9, i32 1 }, %struct.tests { ptr @.str.2, ptr @.str.1, i32 1, i32 0 }], align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"regcomp %zd failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"regexec %zd unexpected value %d != %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca %struct.regex_t, align 8
  %i = alloca i64, align 8
  %ret = alloca i32, align 4
  %rv = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %ret, align 4
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.memset.p0.i64(ptr align 8 %r, i8 0, i64 32, i1 false)
  %1 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [4 x %struct.tests], ptr @tests, i64 0, i64 %1
  %regex = getelementptr inbounds %struct.tests, ptr %arrayidx, i32 0, i32 0
  %2 = load ptr, ptr %regex, align 8
  %3 = load i64, ptr %i, align 8
  %arrayidx1 = getelementptr inbounds [4 x %struct.tests], ptr @tests, i64 0, i64 %3
  %cflags = getelementptr inbounds %struct.tests, ptr %arrayidx1, i32 0, i32 2
  %4 = load i32, ptr %cflags, align 8
  %call = call i32 @"\01_regcomp"(ptr noundef %r, ptr noundef %2, i32 noundef %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i64, ptr %i, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %5)
  store i32 1, ptr %ret, align 4
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds [4 x %struct.tests], ptr @tests, i64 0, i64 %6
  %string = getelementptr inbounds %struct.tests, ptr %arrayidx3, i32 0, i32 1
  %7 = load ptr, ptr %string, align 8
  %call4 = call i32 @regexec(ptr noundef %r, ptr noundef %7, i64 noundef 0, ptr noundef null, i32 noundef 0)
  store i32 %call4, ptr %rv, align 4
  %8 = load i32, ptr %rv, align 4
  %9 = load i64, ptr %i, align 8
  %arrayidx5 = getelementptr inbounds [4 x %struct.tests], ptr @tests, i64 0, i64 %9
  %retval6 = getelementptr inbounds %struct.tests, ptr %arrayidx5, i32 0, i32 3
  %10 = load i32, ptr %retval6, align 4
  %cmp7 = icmp ne i32 %8, %10
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end
  %11 = load i64, ptr %i, align 8
  %12 = load i32, ptr %rv, align 4
  %13 = load i64, ptr %i, align 8
  %arrayidx9 = getelementptr inbounds [4 x %struct.tests], ptr @tests, i64 0, i64 %13
  %retval10 = getelementptr inbounds %struct.tests, ptr %arrayidx9, i32 0, i32 3
  %14 = load i32, ptr %retval10, align 4
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %11, i32 noundef %12, i32 noundef %14)
  store i32 1, ptr %ret, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end
  call void @regfree(ptr noundef %r)
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %if.then
  %15 = load i64, ptr %i, align 8
  %inc = add i64 %15, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %ret, align 4
  ret i32 %16
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @"\01_regcomp"(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @printf(ptr noundef, ...) #2

declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare void @regfree(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
