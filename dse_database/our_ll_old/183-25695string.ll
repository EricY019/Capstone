; ModuleID = './code/183-25695string.c'
source_filename = "./code/183-25695string.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const._memchr.search = private unnamed_addr constant [12 x i8] c"sear\FF\FE\7F~\00\1Ch\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"%s: Testing %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"memchr()\00", align 1
@__const._strerror.errors = private unnamed_addr constant [33 x i32] [i32 0, i32 7, i32 13, i32 35, i32 9, i32 16, i32 10, i32 33, i32 17, i32 14, i32 4, i32 22, i32 5, i32 21, i32 19, i32 2, i32 8, i32 12, i32 28, i32 78, i32 20, i32 45, i32 25, i32 6, i32 102, i32 1, i32 32, i32 34, i32 30, i32 29, i32 3, i32 60, i32 18], align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: Testing %s: \22%s\22 (%u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"strerror()\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"strstr()\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"haystack\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"needle\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"needle \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"needle again\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"haystack with a needle\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"haystack with a needle \00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"haystack with a needle again\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"\22%s\22, \22%s\22 => %s%s%s\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c" (expected: %s%s%s)\00", align 1
@__stdoutp = external global ptr, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %ret, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @_memchr(ptr noundef %2)
  %3 = load i32, ptr %ret, align 4
  %or = or i32 %3, %call
  store i32 %or, ptr %ret, align 4
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i32 @_strerror(ptr noundef %5)
  %6 = load i32, ptr %ret, align 4
  %or3 = or i32 %6, %call2
  store i32 %or3, ptr %ret, align 4
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @_strstr(ptr noundef %8)
  %9 = load i32, ptr %ret, align 4
  %or6 = or i32 %9, %call5
  store i32 %or6, ptr %ret, align 4
  %10 = load i32, ptr %ret, align 4
  %cmp = icmp eq i32 %10, 0
  %11 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 2
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @_memchr(ptr noundef %progname) #0 {
entry:
  %progname.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %search = alloca [12 x i8], align 1
  %i = alloca i64, align 8
  %p = alloca ptr, align 8
  store ptr %progname, ptr %progname.addr, align 8
  store i32 0, ptr %ret, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %search, ptr align 1 @__const._memchr.search, i64 12, i1 false)
  %0 = load ptr, ptr %progname.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0, ptr noundef @.str.1)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %1, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [12 x i8], ptr %search, i64 0, i64 0
  %2 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [12 x i8], ptr %search, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %call1 = call ptr @memchr(ptr noundef %arraydecay, i32 noundef %conv, i64 noundef 12) #4
  store ptr %call1, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load ptr, ptr %p, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx4 = getelementptr inbounds [12 x i8], ptr %search, i64 0, i64 %6
  %call5 = call i32 @strcmp(ptr noundef %5, ptr noundef %arrayidx4) #4
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %7 = load i32, ptr %ret, align 4
  %add = add nsw i32 %7, 1
  store i32 %add, ptr %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i64, ptr %i, align 8
  %inc = add i64 %8, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %ret, align 4
  %add8 = add nsw i32 %9, 0
  store i32 %add8, ptr %ret, align 4
  %10 = load i32, ptr %ret, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @_strerror(ptr noundef %progname) #0 {
entry:
  %progname.addr = alloca ptr, align 8
  %errors = alloca [33 x i32], align 4
  %i = alloca i64, align 8
  store ptr %progname, ptr %progname.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %errors, ptr align 4 @__const._strerror.errors, i64 132, i1 false)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8
  %cmp = icmp ult i64 %0, 33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %progname.addr, align 8
  %2 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds [33 x i32], ptr %errors, i64 0, i64 %2
  %3 = load i32, ptr %arrayidx, align 4
  %call = call ptr @"\01_strerror"(i32 noundef %3)
  %4 = load i64, ptr %i, align 8
  %arrayidx1 = getelementptr inbounds [33 x i32], ptr %errors, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx1, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %1, ptr noundef @.str.3, ptr noundef %call, i32 noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, ptr %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @_strstr(ptr noundef %progname) #0 {
entry:
  %retval = alloca i32, align 4
  %progname.addr = alloca ptr, align 8
  store ptr %progname, ptr %progname.addr, align 8
  %0 = load ptr, ptr %progname.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0, ptr noundef @.str.4)
  %call1 = call i32 @_strstr_test(ptr noundef @.str.5, ptr noundef @.str.6, ptr noundef null)
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @_strstr_test(ptr noundef @.str.6, ptr noundef @.str.6, ptr noundef @.str.6)
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = call i32 @_strstr_test(ptr noundef @.str.7, ptr noundef @.str.6, ptr noundef @.str.7)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = call i32 @_strstr_test(ptr noundef @.str.8, ptr noundef @.str.6, ptr noundef @.str.8)
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = call i32 @_strstr_test(ptr noundef @.str.9, ptr noundef @.str.6, ptr noundef @.str.6)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call14 = call i32 @_strstr_test(ptr noundef @.str.10, ptr noundef @.str.6, ptr noundef @.str.7)
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = call i32 @_strstr_test(ptr noundef @.str.11, ptr noundef @.str.6, ptr noundef @.str.8)
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false10, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false16
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #3

declare ptr @"\01_strerror"(i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @_strstr_test(ptr noundef %str1, ptr noundef %str2, ptr noundef %expected) #0 {
entry:
  %str1.addr = alloca ptr, align 8
  %str2.addr = alloca ptr, align 8
  %expected.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %res = alloca ptr, align 8
  store ptr %str1, ptr %str1.addr, align 8
  store ptr %str2, ptr %str2.addr, align 8
  store ptr %expected, ptr %expected.addr, align 8
  %0 = load ptr, ptr %str1.addr, align 8
  %1 = load ptr, ptr %str2.addr, align 8
  %call = call ptr @strstr(ptr noundef %0, ptr noundef %1) #4
  store ptr %call, ptr %res, align 8
  %2 = load ptr, ptr %expected.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %res, align 8
  %cmp1 = icmp eq ptr %3, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %res, align 8
  %5 = load ptr, ptr %expected.addr, align 8
  %cmp2 = icmp eq ptr %4, %5
  %6 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 0, i32 -1
  store i32 %cond, ptr %ret, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %7 = load ptr, ptr %res, align 8
  %8 = load ptr, ptr %expected.addr, align 8
  %call3 = call i32 @strcmp(ptr noundef %7, ptr noundef %8) #4
  %cmp4 = icmp eq i32 %call3, 0
  %9 = zext i1 %cmp4 to i64
  %cond5 = select i1 %cmp4, i32 0, i32 -1
  store i32 %cond5, ptr %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load ptr, ptr %str1.addr, align 8
  %11 = load ptr, ptr %str2.addr, align 8
  %12 = load ptr, ptr %res, align 8
  %cmp6 = icmp ne ptr %12, null
  %13 = zext i1 %cmp6 to i64
  %cond7 = select i1 %cmp6, ptr @.str.13, ptr @.str.14
  %14 = load ptr, ptr %res, align 8
  %cmp8 = icmp ne ptr %14, null
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load ptr, ptr %res, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi ptr [ %15, %cond.true ], [ @.str.15, %cond.false ]
  %16 = load ptr, ptr %res, align 8
  %cmp10 = icmp ne ptr %16, null
  %17 = zext i1 %cmp10 to i64
  %cond11 = select i1 %cmp10, ptr @.str.13, ptr @.str.14
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, ptr noundef %10, ptr noundef %11, ptr noundef %cond7, ptr noundef %cond9, ptr noundef %cond11)
  %18 = load i32, ptr %ret, align 4
  %cmp13 = icmp ne i32 %18, 0
  br i1 %cmp13, label %if.then14, label %if.end25

if.then14:                                        ; preds = %cond.end
  %19 = load ptr, ptr %expected.addr, align 8
  %cmp15 = icmp ne ptr %19, null
  %20 = zext i1 %cmp15 to i64
  %cond16 = select i1 %cmp15, ptr @.str.13, ptr @.str.14
  %21 = load ptr, ptr %expected.addr, align 8
  %cmp17 = icmp ne ptr %21, null
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %if.then14
  %22 = load ptr, ptr %expected.addr, align 8
  br label %cond.end20

cond.false19:                                     ; preds = %if.then14
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi ptr [ %22, %cond.true18 ], [ @.str.15, %cond.false19 ]
  %23 = load ptr, ptr %expected.addr, align 8
  %cmp22 = icmp ne ptr %23, null
  %24 = zext i1 %cmp22 to i64
  %cond23 = select i1 %cmp22, ptr @.str.13, ptr @.str.14
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, ptr noundef %cond16, ptr noundef %cond21, ptr noundef %cond23)
  br label %if.end25

if.end25:                                         ; preds = %cond.end20, %cond.end
  %25 = load ptr, ptr @__stdoutp, align 8
  %call26 = call i32 @putc(i32 noundef 10, ptr noundef %25)
  %26 = load i32, ptr %ret, align 4
  ret i32 %26
}

; Function Attrs: nounwind
declare ptr @strstr(ptr noundef, ptr noundef) #3

declare i32 @putc(i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
