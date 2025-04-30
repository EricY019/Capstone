; ModuleID = 'code/183-25695string.c'
source_filename = "code/183-25695string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@__const._memchr.search = private unnamed_addr constant [12 x i8] c"sear\FF\FE\7F~\00\1Ch\00", align 1
@.str = private unnamed_addr constant [16 x i8] c"%s: Testing %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"memchr()\00", align 1
@__const._strerror.errors = private unnamed_addr constant [33 x i32] [i32 0, i32 7, i32 13, i32 11, i32 9, i32 16, i32 10, i32 33, i32 17, i32 14, i32 4, i32 22, i32 5, i32 21, i32 19, i32 2, i32 8, i32 12, i32 28, i32 38, i32 20, i32 95, i32 25, i32 6, i32 95, i32 1, i32 32, i32 34, i32 30, i32 29, i32 3, i32 110, i32 18], align 16
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
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ret = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @_memchr(i8* %2)
  %3 = load i32, i32* %ret, align 4
  %or = or i32 %3, %call
  store i32 %or, i32* %ret, align 4
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i32 @_strerror(i8* %5)
  %6 = load i32, i32* %ret, align 4
  %or3 = or i32 %6, %call2
  store i32 %or3, i32* %ret, align 4
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 @_strstr(i8* %8)
  %9 = load i32, i32* %ret, align 4
  %or6 = or i32 %9, %call5
  store i32 %or6, i32* %ret, align 4
  %10 = load i32, i32* %ret, align 4
  %cmp = icmp eq i32 %10, 0
  %11 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i32 0, i32 2
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_memchr(i8* %progname) #0 {
entry:
  %progname.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %search = alloca [12 x i8], align 1
  %i = alloca i64, align 8
  %p = alloca i8*, align 8
  store i8* %progname, i8** %progname.addr, align 8
  store i32 0, i32* %ret, align 4
  %0 = bitcast [12 x i8]* %search to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const._memchr.search, i32 0, i32 0), i64 12, i1 false)
  %1 = load i8*, i8** %progname.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %2, 12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [12 x i8], [12 x i8]* %search, i64 0, i64 0
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [12 x i8], [12 x i8]* %search, i64 0, i64 %3
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %call1 = call i8* @memchr(i8* %arraydecay, i32 %conv, i64 12) #5
  store i8* %call1, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load i8*, i8** %p, align 8
  %7 = load i64, i64* %i, align 8
  %arrayidx4 = getelementptr inbounds [12 x i8], [12 x i8]* %search, i64 0, i64 %7
  %call5 = call i32 @strcmp(i8* %6, i8* %arrayidx4) #5
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %8 = load i32, i32* %ret, align 4
  %add = add nsw i32 %8, 1
  store i32 %add, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, i64* %i, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [12 x i8], [12 x i8]* %search, i64 0, i64 0
  %call9 = call i8* @memchr(i8* %arraydecay8, i32 122, i64 12) #5
  %cmp10 = icmp eq i8* %call9, null
  %10 = zext i1 %cmp10 to i64
  %cond = select i1 %cmp10, i32 0, i32 1
  %11 = load i32, i32* %ret, align 4
  %add12 = add nsw i32 %11, %cond
  store i32 %add12, i32* %ret, align 4
  %12 = load i32, i32* %ret, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_strerror(i8* %progname) #0 {
entry:
  %progname.addr = alloca i8*, align 8
  %errors = alloca [33 x i32], align 16
  %i = alloca i64, align 8
  store i8* %progname, i8** %progname.addr, align 8
  %0 = bitcast [33 x i32]* %errors to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([33 x i32]* @__const._strerror.errors to i8*), i64 132, i1 false)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %cmp = icmp ult i64 %1, 33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %progname.addr, align 8
  %3 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [33 x i32], [33 x i32]* %errors, i64 0, i64 %3
  %4 = load i32, i32* %arrayidx, align 4
  %call = call i8* @strerror(i32 %4) #6
  %5 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds [33 x i32], [33 x i32]* %errors, i64 0, i64 %5
  %6 = load i32, i32* %arrayidx1, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %call, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, i64* %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_strstr(i8* %progname) #0 {
entry:
  %retval = alloca i32, align 4
  %progname.addr = alloca i8*, align 8
  store i8* %progname, i8** %progname.addr, align 8
  %0 = load i8*, i8** %progname.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %call1 = call i32 @_strstr_test(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* null)
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call2 = call i32 @_strstr_test(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %cmp3 = icmp ne i32 %call2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %call5 = call i32 @_strstr_test(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %call8 = call i32 @_strstr_test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %cmp9 = icmp ne i32 %call8, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  %call11 = call i32 @_strstr_test(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %call14 = call i32 @_strstr_test(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %call17 = call i32 @_strstr_test(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false16, %lor.lhs.false13, %lor.lhs.false10, %lor.lhs.false7, %lor.lhs.false4, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false16
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @memchr(i8*, i32, i64) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_strstr_test(i8* %str1, i8* %str2, i8* %expected) #0 {
entry:
  %str1.addr = alloca i8*, align 8
  %str2.addr = alloca i8*, align 8
  %expected.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %res = alloca i8*, align 8
  store i8* %str1, i8** %str1.addr, align 8
  store i8* %str2, i8** %str2.addr, align 8
  store i8* %expected, i8** %expected.addr, align 8
  %0 = load i8*, i8** %str1.addr, align 8
  %1 = load i8*, i8** %str2.addr, align 8
  %call = call i8* @strstr(i8* %0, i8* %1) #5
  store i8* %call, i8** %res, align 8
  %2 = load i8*, i8** %expected.addr, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %res, align 8
  %cmp1 = icmp eq i8* %3, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i8*, i8** %res, align 8
  %5 = load i8*, i8** %expected.addr, align 8
  %cmp2 = icmp eq i8* %4, %5
  %6 = zext i1 %cmp2 to i64
  %cond = select i1 %cmp2, i32 0, i32 -1
  store i32 %cond, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %7 = load i8*, i8** %res, align 8
  %8 = load i8*, i8** %expected.addr, align 8
  %call3 = call i32 @strcmp(i8* %7, i8* %8) #5
  %cmp4 = icmp eq i32 %call3, 0
  %9 = zext i1 %cmp4 to i64
  %cond5 = select i1 %cmp4, i32 0, i32 -1
  store i32 %cond5, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i8*, i8** %str1.addr, align 8
  %11 = load i8*, i8** %str2.addr, align 8
  %12 = load i8*, i8** %res, align 8
  %cmp6 = icmp ne i8* %12, null
  %13 = zext i1 %cmp6 to i64
  %cond7 = select i1 %cmp6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %14 = load i8*, i8** %res, align 8
  %cmp8 = icmp ne i8* %14, null
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %15 = load i8*, i8** %res, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi i8* [ %15, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), %cond.false ]
  %16 = load i8*, i8** %res, align 8
  %cmp10 = icmp ne i8* %16, null
  %17 = zext i1 %cmp10 to i64
  %cond11 = select i1 %cmp10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %10, i8* %11, i8* %cond7, i8* %cond9, i8* %cond11)
  %18 = load i32, i32* %ret, align 4
  %cmp13 = icmp ne i32 %18, 0
  br i1 %cmp13, label %if.then14, label %if.end25

if.then14:                                        ; preds = %cond.end
  %19 = load i8*, i8** %expected.addr, align 8
  %cmp15 = icmp ne i8* %19, null
  %20 = zext i1 %cmp15 to i64
  %cond16 = select i1 %cmp15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %21 = load i8*, i8** %expected.addr, align 8
  %cmp17 = icmp ne i8* %21, null
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %if.then14
  %22 = load i8*, i8** %expected.addr, align 8
  br label %cond.end20

cond.false19:                                     ; preds = %if.then14
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %cond.true18
  %cond21 = phi i8* [ %22, %cond.true18 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), %cond.false19 ]
  %23 = load i8*, i8** %expected.addr, align 8
  %cmp22 = icmp ne i8* %23, null
  %24 = zext i1 %cmp22 to i64
  %cond23 = select i1 %cmp22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* %cond16, i8* %cond21, i8* %cond23)
  br label %if.end25

if.end25:                                         ; preds = %cond.end20, %cond.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call26 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %25)
  %26 = load i32, i32* %ret, align 4
  ret i32 %26
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strstr(i8*, i8*) #3

declare dso_local i32 @_IO_putc(i32, %struct._IO_FILE*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
