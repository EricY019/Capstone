; ModuleID = './code/066-28839test.c'
source_filename = "./code/066-28839test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.finfo = type { ptr, [16 x i8] }
%struct.timespec = type { i64, i64 }

@farr = global [5 x %struct.finfo] [%struct.finfo { ptr @f1, [16 x i8] c"f1\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.finfo { ptr @f2, [16 x i8] c"f2\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.finfo { ptr @f3, [16 x i8] c"f3\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.finfo { ptr @compare1, [16 x i8] c"compare1\00\00\00\00\00\00\00\00" }, %struct.finfo { ptr @compare2, [16 x i8] c"compare2\00\00\00\00\00\00\00\00" }], align 8
@.str = private unnamed_addr constant [42 x i8] c"%s: diff:%ld, start:%ld, end:%ld, ret:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @f1(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i32, ptr %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  %conv = zext i1 %cmp to i32
  %2 = load i32, ptr %b.addr, align 4
  %3 = load i32, ptr %a.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  %conv2 = zext i1 %cmp1 to i32
  %sub = sub nsw i32 0, %conv2
  %or = or i32 %conv, %sub
  ret i32 %or
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @f2(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i32, ptr %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  %conv = zext i1 %cmp to i32
  %2 = load i32, ptr %a.addr, align 4
  %3 = load i32, ptr %b.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  %conv2 = zext i1 %cmp1 to i32
  %sub = sub nsw i32 %conv, %conv2
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @f3(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i32, ptr %b.addr, align 4
  %2 = call i32 asm sideeffect "sub $1, $0 \0A\09jno 1f \0A\09cmc \0A\09rcr $0 \0A\091: ", "=r,r,0,~{cc}"(i32 %1, i32 %0) #3, !srcloc !5
  store i32 %2, ptr %a.addr, align 4
  %3 = load i32, ptr %a.addr, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @compare1(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i32, ptr %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4
  %3 = load i32, ptr %b.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @compare2(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i32, ptr %b.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4
  %3 = load i32, ptr %b.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
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
  %random_int = alloca [2000 x i32], align 4
  %compare = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 5, ptr %fsize, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %start, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr align 8 %end, i8 0, i64 16, i1 false)
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  store i32 %call2, ptr %r, align 4
  %1 = load i32, ptr %r, align 4
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2000 x i32], ptr %random_int, i64 0, i64 %idxprom
  store i32 %1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc36, %for.end
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %fsize, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body6, label %for.end38

for.body6:                                        ; preds = %for.cond3
  %6 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [5 x %struct.finfo], ptr @farr, i64 0, i64 %idxprom7
  %func = getelementptr inbounds %struct.finfo, ptr %arrayidx8, i32 0, i32 0
  %7 = load ptr, ptr %func, align 8
  store ptr %7, ptr %compare, align 8
  %call9 = call i32 @clock_gettime(i32 noundef 16, ptr noundef %start)
  store i32 0, ptr %a, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc26, %for.body6
  %8 = load i32, ptr %a, align 4
  %cmp11 = icmp slt i32 %8, 2000
  br i1 %cmp11, label %for.body13, label %for.end28

for.body13:                                       ; preds = %for.cond10
  store i32 0, ptr %b, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %for.body13
  %9 = load i32, ptr %b, align 4
  %cmp15 = icmp slt i32 %9, 2000
  br i1 %cmp15, label %for.body17, label %for.end25

for.body17:                                       ; preds = %for.cond14
  %10 = load ptr, ptr %compare, align 8
  %11 = load i32, ptr %a, align 4
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [2000 x i32], ptr %random_int, i64 0, i64 %idxprom18
  %12 = load i32, ptr %arrayidx19, align 4
  %13 = load i32, ptr %b, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [2000 x i32], ptr %random_int, i64 0, i64 %idxprom20
  %14 = load i32, ptr %arrayidx21, align 4
  %call22 = call i32 %10(i32 noundef %12, i32 noundef %14)
  %15 = load i32, ptr %ret, align 4
  %add = add nsw i32 %15, %call22
  store i32 %add, ptr %ret, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body17
  %16 = load i32, ptr %b, align 4
  %inc24 = add nsw i32 %16, 1
  store i32 %inc24, ptr %b, align 4
  br label %for.cond14, !llvm.loop !8

for.end25:                                        ; preds = %for.cond14
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %17 = load i32, ptr %a, align 4
  %inc27 = add nsw i32 %17, 1
  store i32 %inc27, ptr %a, align 4
  br label %for.cond10, !llvm.loop !9

for.end28:                                        ; preds = %for.cond10
  %call29 = call i32 @clock_gettime(i32 noundef 16, ptr noundef %end)
  %18 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds [5 x %struct.finfo], ptr @farr, i64 0, i64 %idxprom30
  %name = getelementptr inbounds %struct.finfo, ptr %arrayidx31, i32 0, i32 1
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0
  %tv_nsec = getelementptr inbounds %struct.timespec, ptr %end, i32 0, i32 1
  %19 = load i64, ptr %tv_nsec, align 8
  %tv_nsec32 = getelementptr inbounds %struct.timespec, ptr %start, i32 0, i32 1
  %20 = load i64, ptr %tv_nsec32, align 8
  %sub = sub nsw i64 %19, %20
  %tv_nsec33 = getelementptr inbounds %struct.timespec, ptr %start, i32 0, i32 1
  %21 = load i64, ptr %tv_nsec33, align 8
  %tv_nsec34 = getelementptr inbounds %struct.timespec, ptr %end, i32 0, i32 1
  %22 = load i64, ptr %tv_nsec34, align 8
  %23 = load i32, ptr %ret, align 4
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay, i64 noundef %sub, i64 noundef %21, i64 noundef %22, i32 noundef %23)
  br label %for.inc36

for.inc36:                                        ; preds = %for.end28
  %24 = load i32, ptr %i, align 4
  %inc37 = add nsw i32 %24, 1
  store i32 %inc37, ptr %i, align 4
  br label %for.cond3, !llvm.loop !10

for.end38:                                        ; preds = %for.cond3
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @srand(i32 noundef) #2

declare i64 @time(ptr noundef) #2

declare i32 @rand() #2

declare i32 @clock_gettime(i32 noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{i64 312, i64 326, i64 348, i64 367, i64 389}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
