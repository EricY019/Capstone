; ModuleID = './code/162-10368lab05.c'
source_filename = "./code/162-10368lab05.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"worked\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@__const.main.a = private unnamed_addr constant [4 x i32] [i32 2, i32 3, i32 4, i32 5], align 4
@__const.main.b = private unnamed_addr constant [1 x i32] [i32 1], align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"min max tests\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%d - %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"num digits tests\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"is reversible tests\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @min_max(ptr noundef %a, i64 noundef %n, ptr noundef %pmin, ptr noundef %pmax) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %pmin.addr = alloca ptr, align 8
  %pmax.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  store ptr %pmin, ptr %pmin.addr, align 8
  store ptr %pmax, ptr %pmax.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %cmp = icmp uge i64 %0, 1
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 0
  %2 = load i32, ptr %arrayidx, align 4
  %3 = load ptr, ptr %pmin.addr, align 8
  store i32 %2, ptr %3, align 4
  %4 = load ptr, ptr %a.addr, align 8
  %arrayidx1 = getelementptr inbounds i32, ptr %4, i64 0
  %5 = load i32, ptr %arrayidx1, align 4
  %6 = load ptr, ptr %pmax.addr, align 8
  store i32 %5, ptr %6, align 4
  store i64 1, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i64, ptr %i, align 8
  %8 = load i64, ptr %n.addr, align 8
  %cmp2 = icmp ult i64 %7, %8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %a.addr, align 8
  %10 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %9, i64 %10
  %11 = load i32, ptr %arrayidx3, align 4
  %12 = load ptr, ptr %pmin.addr, align 8
  %13 = load i32, ptr %12, align 4
  %cmp4 = icmp slt i32 %11, %13
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %for.body
  %14 = load ptr, ptr %a.addr, align 8
  %15 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds i32, ptr %14, i64 %15
  %16 = load i32, ptr %arrayidx6, align 4
  %17 = load ptr, ptr %pmin.addr, align 8
  store i32 %16, ptr %17, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %for.body
  %18 = load ptr, ptr %a.addr, align 8
  %19 = load i64, ptr %i, align 8
  %arrayidx7 = getelementptr inbounds i32, ptr %18, i64 %19
  %20 = load i32, ptr %arrayidx7, align 4
  %21 = load ptr, ptr %pmax.addr, align 8
  %22 = load i32, ptr %21, align 4
  %cmp8 = icmp sgt i32 %20, %22
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %23 = load ptr, ptr %a.addr, align 8
  %24 = load i64, ptr %i, align 8
  %arrayidx10 = getelementptr inbounds i32, ptr %23, i64 %24
  %25 = load i32, ptr %arrayidx10, align 4
  %26 = load ptr, ptr %pmax.addr, align 8
  store i32 %25, ptr %26, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %27 = load i64, ptr %i, align 8
  %inc = add i64 %27, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end12

if.end12:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @num_digits(i64 noundef %n) #0 {
entry:
  %retval = alloca i64, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 1)
  store i64 1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i64, ptr %n.addr, align 8
  %cmp1 = icmp ne i64 %1, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %n.addr, align 8
  %div = udiv i64 %2, 10
  store i64 %div, ptr %n.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i64, ptr %i, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %4 = load i64, ptr %i, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %4)
  %5 = load i64, ptr %i, align 8
  store i64 %5, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i64, ptr %retval, align 8
  ret i64 %6
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @is_reversible(i64 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %reverse = alloca i32, align 4
  %rem = alloca i32, align 4
  %i = alloca i64, align 8
  %actual = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  %0 = load i64, ptr %n.addr, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, ptr %actual, align 4
  %1 = load i64, ptr %n.addr, align 8
  store i64 %1, ptr %i, align 8
  store i32 0, ptr %reverse, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i64, ptr %i, align 8
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, ptr %i, align 8
  %rem2 = urem i64 %3, 10
  %conv3 = trunc i64 %rem2 to i32
  store i32 %conv3, ptr %rem, align 4
  %4 = load i32, ptr %rem, align 4
  %5 = load i32, ptr %reverse, align 4
  %mul = mul nsw i32 %5, 10
  %add = add nsw i32 %4, %mul
  store i32 %add, ptr %reverse, align 4
  %6 = load i64, ptr %i, align 8
  %div = udiv i64 %6, 10
  store i64 %div, ptr %i, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %reverse, align 4
  %8 = load i32, ptr %actual, align 4
  %cmp4 = icmp eq i32 %7, %8
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %while.end
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load i32, ptr %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [4 x i32], align 4
  %n = alloca i64, align 8
  %b = alloca [1 x i32], align 4
  %k = alloca i64, align 8
  %pmin = alloca i32, align 4
  %pmax = alloca i32, align 4
  %p = alloca i64, align 8
  %q = alloca i64, align 8
  %r = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %a, ptr align 4 @__const.main.a, i64 16, i1 false)
  store i64 4, ptr %n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %b, ptr align 4 @__const.main.b, i64 4, i1 false)
  store i64 1, ptr %k, align 8
  store i32 0, ptr %pmin, align 4
  store i32 0, ptr %pmax, align 4
  store i64 12321, ptr %p, align 8
  store i64 123, ptr %q, align 8
  store i64 0, ptr %r, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %arraydecay = getelementptr inbounds [4 x i32], ptr %a, i64 0, i64 0
  %0 = load i64, ptr %n, align 8
  call void @min_max(ptr noundef %arraydecay, i64 noundef %0, ptr noundef %pmin, ptr noundef %pmax)
  %1 = load i32, ptr %pmin, align 4
  %2 = load i32, ptr %pmax, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %1, i32 noundef %2)
  %arraydecay2 = getelementptr inbounds [1 x i32], ptr %b, i64 0, i64 0
  %3 = load i64, ptr %k, align 8
  call void @min_max(ptr noundef %arraydecay2, i64 noundef %3, ptr noundef %pmin, ptr noundef %pmax)
  %4 = load i32, ptr %pmin, align 4
  %5 = load i32, ptr %pmax, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %4, i32 noundef %5)
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %6 = load i64, ptr %p, align 8
  %call5 = call i64 @num_digits(i64 noundef %6)
  %7 = load i64, ptr %q, align 8
  %call6 = call i64 @num_digits(i64 noundef %7)
  %8 = load i64, ptr %r, align 8
  %call7 = call i64 @num_digits(i64 noundef %8)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  %9 = load i64, ptr %p, align 8
  %call9 = call i32 @is_reversible(i64 noundef %9)
  %10 = load i64, ptr %q, align 8
  %call10 = call i32 @is_reversible(i64 noundef %10)
  %11 = load i64, ptr %r, align 8
  %call11 = call i32 @is_reversible(i64 noundef %11)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!8 = distinct !{!8, !6}
