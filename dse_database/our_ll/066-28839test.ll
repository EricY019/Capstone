; ModuleID = 'code/066-28839test.c'
source_filename = "code/066-28839test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.finfo = type { i32 (i32, i32)*, [16 x i8] }
%struct.timespec = type { i64, i64 }

@farr = dso_local global [5 x %struct.finfo] [%struct.finfo { i32 (i32, i32)* @f1, [16 x i8] c"f1\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.finfo { i32 (i32, i32)* @f2, [16 x i8] c"f2\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.finfo { i32 (i32, i32)* @f3, [16 x i8] c"f3\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.finfo { i32 (i32, i32)* @compare1, [16 x i8] c"compare1\00\00\00\00\00\00\00\00" }, %struct.finfo { i32 (i32, i32)* @compare2, [16 x i8] c"compare2\00\00\00\00\00\00\00\00" }], align 16
@.str = private unnamed_addr constant [42 x i8] c"%s: diff:%ld, start:%ld, end:%ld, ret:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f1(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  %conv = zext i1 %cmp to i32
  %2 = load i32, i32* %b.addr, align 4
  %3 = load i32, i32* %a.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  %conv2 = zext i1 %cmp1 to i32
  %sub = sub nsw i32 0, %conv2
  %or = or i32 %conv, %sub
  ret i32 %or
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  %conv = zext i1 %cmp to i32
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %b.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  %conv2 = zext i1 %cmp1 to i32
  %sub = sub nsw i32 %conv, %conv2
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f3(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %2 = call i32 asm sideeffect "sub $1, $0 \0A\09jno 1f \0A\09cmc \0A\09rcr $0 \0A\091: ", "=r,r,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 %1, i32 %0) #4, !srcloc !4
  store i32 %2, i32* %a.addr, align 4
  %3 = load i32, i32* %a.addr, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare1(i32 %a, i32 %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %b.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare2(i32 %a, i32 %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  %3 = load i32, i32* %b.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %r = alloca i32, align 4
  %ret = alloca i32, align 4
  %fsize = alloca i32, align 4
  %start = alloca %struct.timespec, align 8
  %end = alloca %struct.timespec, align 8
  %random_int = alloca [2000 x i32], align 16
  %compare = alloca i32 (i32, i32)*, align 8
  store i32 0, i32* %retval, align 4
  store i32 5, i32* %fsize, align 4
  %0 = bitcast %struct.timespec* %start to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 16, i1 false)
  %1 = bitcast %struct.timespec* %end to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %call = call i64 @time(i64* null) #4
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand() #4
  store i32 %call2, i32* %r, align 4
  %3 = load i32, i32* %r, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [2000 x i32], [2000 x i32]* %random_int, i64 0, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc36, %for.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %fsize, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body6, label %for.end38

for.body6:                                        ; preds = %for.cond3
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [5 x %struct.finfo], [5 x %struct.finfo]* @farr, i64 0, i64 %idxprom7
  %func = getelementptr inbounds %struct.finfo, %struct.finfo* %arrayidx8, i32 0, i32 0
  %9 = load i32 (i32, i32)*, i32 (i32, i32)** %func, align 8
  store i32 (i32, i32)* %9, i32 (i32, i32)** %compare, align 8
  %call9 = call i32 @clock_gettime(i32 3, %struct.timespec* %start) #4
  store i32 0, i32* %a, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc26, %for.body6
  %10 = load i32, i32* %a, align 4
  %cmp11 = icmp slt i32 %10, 2000
  br i1 %cmp11, label %for.body13, label %for.end28

for.body13:                                       ; preds = %for.cond10
  store i32 0, i32* %b, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %for.body13
  %11 = load i32, i32* %b, align 4
  %cmp15 = icmp slt i32 %11, 2000
  br i1 %cmp15, label %for.body17, label %for.end25

for.body17:                                       ; preds = %for.cond14
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %compare, align 8
  %13 = load i32, i32* %a, align 4
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [2000 x i32], [2000 x i32]* %random_int, i64 0, i64 %idxprom18
  %14 = load i32, i32* %arrayidx19, align 4
  %15 = load i32, i32* %b, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [2000 x i32], [2000 x i32]* %random_int, i64 0, i64 %idxprom20
  %16 = load i32, i32* %arrayidx21, align 4
  %call22 = call i32 %12(i32 %14, i32 %16)
  %17 = load i32, i32* %ret, align 4
  %add = add nsw i32 %17, %call22
  store i32 %add, i32* %ret, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body17
  %18 = load i32, i32* %b, align 4
  %inc24 = add nsw i32 %18, 1
  store i32 %inc24, i32* %b, align 4
  br label %for.cond14, !llvm.loop !7

for.end25:                                        ; preds = %for.cond14
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %19 = load i32, i32* %a, align 4
  %inc27 = add nsw i32 %19, 1
  store i32 %inc27, i32* %a, align 4
  br label %for.cond10, !llvm.loop !8

for.end28:                                        ; preds = %for.cond10
  %call29 = call i32 @clock_gettime(i32 3, %struct.timespec* %end) #4
  %20 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %20 to i64
  %arrayidx31 = getelementptr inbounds [5 x %struct.finfo], [5 x %struct.finfo]* @farr, i64 0, i64 %idxprom30
  %name = getelementptr inbounds %struct.finfo, %struct.finfo* %arrayidx31, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %end, i32 0, i32 1
  %21 = load i64, i64* %tv_nsec, align 8
  %tv_nsec32 = getelementptr inbounds %struct.timespec, %struct.timespec* %start, i32 0, i32 1
  %22 = load i64, i64* %tv_nsec32, align 8
  %sub = sub nsw i64 %21, %22
  %tv_nsec33 = getelementptr inbounds %struct.timespec, %struct.timespec* %start, i32 0, i32 1
  %23 = load i64, i64* %tv_nsec33, align 8
  %tv_nsec34 = getelementptr inbounds %struct.timespec, %struct.timespec* %end, i32 0, i32 1
  %24 = load i64, i64* %tv_nsec34, align 8
  %25 = load i32, i32* %ret, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %arraydecay, i64 %sub, i64 %23, i64 %24, i32 %25)
  br label %for.inc36

for.inc36:                                        ; preds = %for.end28
  %26 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %26, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond3, !llvm.loop !9

for.end38:                                        ; preds = %for.cond3
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: nounwind
declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 312, i64 326, i64 348, i64 367, i64 389}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
