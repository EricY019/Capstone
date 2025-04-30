; ModuleID = './code/232-7354base_algo_interpolation_search.c'
source_filename = "./code/232-7354base_algo_interpolation_search.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [39 x i8] c"key %d s[l] %d s[r] %d l %d r %d m %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"isr no exist\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"isr <- %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"isr -> %d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"isr found %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"isi %d %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"isi no exist\0A\00", align 1
@__const.main.s = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"interpolation search recursive: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"interpolation search iterative: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @midpoint(ptr noundef %s, i32 noundef %key, i32 noundef %l, i32 noundef %r) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %key, ptr %key.addr, align 4
  store i32 %l, ptr %l.addr, align 4
  store i32 %r, ptr %r.addr, align 4
  %0 = load i32, ptr %l.addr, align 4
  %1 = load i32, ptr %r.addr, align 4
  %2 = load i32, ptr %l.addr, align 4
  %sub = sub nsw i32 %1, %2
  %3 = load i32, ptr %key.addr, align 4
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load i32, ptr %l.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %6 = load i32, ptr %arrayidx, align 4
  %sub1 = sub nsw i32 %3, %6
  %mul = mul nsw i32 %sub, %sub1
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load i32, ptr %r.addr, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %7, i64 %idxprom2
  %9 = load i32, ptr %arrayidx3, align 4
  %10 = load ptr, ptr %s.addr, align 8
  %11 = load i32, ptr %l.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 %idxprom4
  %12 = load i32, ptr %arrayidx5, align 4
  %sub6 = sub nsw i32 %9, %12
  %div = sdiv i32 %mul, %sub6
  %add = add nsw i32 %0, %div
  store i32 %add, ptr %m, align 4
  %13 = load i32, ptr %key.addr, align 4
  %14 = load ptr, ptr %s.addr, align 8
  %15 = load i32, ptr %l.addr, align 4
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %14, i64 %idxprom7
  %16 = load i32, ptr %arrayidx8, align 4
  %17 = load ptr, ptr %s.addr, align 8
  %18 = load i32, ptr %r.addr, align 4
  %idxprom9 = sext i32 %18 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %17, i64 %idxprom9
  %19 = load i32, ptr %arrayidx10, align 4
  %20 = load i32, ptr %l.addr, align 4
  %21 = load i32, ptr %r.addr, align 4
  %22 = load i32, ptr %m, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %13, i32 noundef %16, i32 noundef %19, i32 noundef %20, i32 noundef %21, i32 noundef %22)
  %23 = load i32, ptr %l.addr, align 4
  %24 = load i32, ptr %m, align 4
  %cmp = icmp slt i32 %23, %24
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %25 = load i32, ptr %m, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %26 = load i32, ptr %l.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ]
  store i32 %cond, ptr %m, align 4
  %27 = load i32, ptr %m, align 4
  %28 = load i32, ptr %r.addr, align 4
  %cmp11 = icmp slt i32 %27, %28
  br i1 %cmp11, label %cond.true12, label %cond.false13

cond.true12:                                      ; preds = %cond.end
  %29 = load i32, ptr %m, align 4
  br label %cond.end14

cond.false13:                                     ; preds = %cond.end
  %30 = load i32, ptr %r.addr, align 4
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false13, %cond.true12
  %cond15 = phi i32 [ %29, %cond.true12 ], [ %30, %cond.false13 ]
  store i32 %cond15, ptr %m, align 4
  %31 = load i32, ptr %m, align 4
  ret i32 %31
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @interpolation_search_recursive(ptr noundef %s, i32 noundef %key, i32 noundef %l, i32 noundef %r) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %key, ptr %key.addr, align 4
  store i32 %l, ptr %l.addr, align 4
  store i32 %r, ptr %r.addr, align 4
  %0 = load i32, ptr %r.addr, align 4
  %1 = load i32, ptr %l.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8
  %3 = load i32, ptr %key.addr, align 4
  %4 = load i32, ptr %l.addr, align 4
  %5 = load i32, ptr %r.addr, align 4
  %call1 = call i32 @midpoint(ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  store i32 %call1, ptr %m, align 4
  %6 = load i32, ptr %key.addr, align 4
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load i32, ptr %m, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4
  %cmp2 = icmp slt i32 %6, %9
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %10 = load i32, ptr %l.addr, align 4
  %11 = load i32, ptr %m, align 4
  %sub = sub nsw i32 %11, 1
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %10, i32 noundef %sub)
  %12 = load ptr, ptr %s.addr, align 8
  %13 = load i32, ptr %key.addr, align 4
  %14 = load i32, ptr %l.addr, align 4
  %15 = load i32, ptr %m, align 4
  %sub5 = sub nsw i32 %15, 1
  %call6 = call i32 @interpolation_search_recursive(ptr noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %sub5)
  store i32 %call6, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %16 = load ptr, ptr %s.addr, align 8
  %17 = load i32, ptr %m, align 4
  %idxprom7 = sext i32 %17 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %16, i64 %idxprom7
  %18 = load i32, ptr %arrayidx8, align 4
  %19 = load i32, ptr %key.addr, align 4
  %cmp9 = icmp slt i32 %18, %19
  br i1 %cmp9, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.else
  %20 = load i32, ptr %m, align 4
  %add = add nsw i32 %20, 1
  %21 = load i32, ptr %r.addr, align 4
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %add, i32 noundef %21)
  %22 = load ptr, ptr %s.addr, align 8
  %23 = load i32, ptr %key.addr, align 4
  %24 = load i32, ptr %m, align 4
  %add12 = add nsw i32 %24, 1
  %25 = load i32, ptr %r.addr, align 4
  %call13 = call i32 @interpolation_search_recursive(ptr noundef %22, i32 noundef %23, i32 noundef %add12, i32 noundef %25)
  store i32 %call13, ptr %retval, align 4
  br label %return

if.else14:                                        ; preds = %if.else
  %26 = load i32, ptr %m, align 4
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %26)
  %27 = load i32, ptr %m, align 4
  store i32 %27, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else14, %if.then10, %if.then3, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @interpolation_search_iterative(ptr noundef %s, i32 noundef %key, i32 noundef %l, i32 noundef %r) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %key, ptr %key.addr, align 4
  store i32 %l, ptr %l.addr, align 4
  store i32 %r, ptr %r.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %entry
  %0 = load i32, ptr %l.addr, align 4
  %1 = load i32, ptr %r.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %l.addr, align 4
  %3 = load i32, ptr %r.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %2, i32 noundef %3)
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load i32, ptr %key.addr, align 4
  %6 = load i32, ptr %l.addr, align 4
  %7 = load i32, ptr %r.addr, align 4
  %call1 = call i32 @midpoint(ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  store i32 %call1, ptr %m, align 4
  %8 = load i32, ptr %key.addr, align 4
  %9 = load ptr, ptr %s.addr, align 8
  %10 = load i32, ptr %m, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, ptr %9, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4
  %cmp2 = icmp slt i32 %8, %11
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %12 = load i32, ptr %m, align 4
  %sub = sub nsw i32 %12, 1
  store i32 %sub, ptr %r.addr, align 4
  br label %if.end8

if.else:                                          ; preds = %while.body
  %13 = load ptr, ptr %s.addr, align 8
  %14 = load i32, ptr %m, align 4
  %idxprom3 = sext i32 %14 to i64
  %arrayidx4 = getelementptr inbounds i32, ptr %13, i64 %idxprom3
  %15 = load i32, ptr %arrayidx4, align 4
  %16 = load i32, ptr %key.addr, align 4
  %cmp5 = icmp slt i32 %15, %16
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else
  %17 = load i32, ptr %m, align 4
  %add = add nsw i32 %17, 1
  store i32 %add, ptr %l.addr, align 4
  br label %if.end

if.else7:                                         ; preds = %if.else
  %18 = load i32, ptr %m, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  store i32 -1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.else7
  %19 = load i32, ptr %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %s = alloca [10 x i32], align 4
  %key = alloca i32, align 4
  %idx = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %s, ptr align 4 @__const.main.s, i64 40, i1 false)
  store i32 8, ptr %key, align 4
  %0 = load i32, ptr %key, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %0)
  %arraydecay = getelementptr inbounds [10 x i32], ptr %s, i64 0, i64 0
  %1 = load i32, ptr %key, align 4
  %call1 = call i32 @interpolation_search_recursive(ptr noundef %arraydecay, i32 noundef %1, i32 noundef 0, i32 noundef 9)
  store i32 %call1, ptr %idx, align 4
  store i32 11, ptr %key, align 4
  %2 = load i32, ptr %key, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %2)
  %arraydecay3 = getelementptr inbounds [10 x i32], ptr %s, i64 0, i64 0
  %3 = load i32, ptr %key, align 4
  %call4 = call i32 @interpolation_search_recursive(ptr noundef %arraydecay3, i32 noundef %3, i32 noundef 0, i32 noundef 9)
  store i32 %call4, ptr %idx, align 4
  store i32 8, ptr %key, align 4
  %4 = load i32, ptr %key, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %4)
  %arraydecay6 = getelementptr inbounds [10 x i32], ptr %s, i64 0, i64 0
  %5 = load i32, ptr %key, align 4
  %call7 = call i32 @interpolation_search_iterative(ptr noundef %arraydecay6, i32 noundef %5, i32 noundef 0, i32 noundef 9)
  store i32 %call7, ptr %idx, align 4
  store i32 11, ptr %key, align 4
  %6 = load i32, ptr %key, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %6)
  %arraydecay9 = getelementptr inbounds [10 x i32], ptr %s, i64 0, i64 0
  %7 = load i32, ptr %key, align 4
  %call10 = call i32 @interpolation_search_iterative(ptr noundef %arraydecay9, i32 noundef %7, i32 noundef 0, i32 noundef 9)
  store i32 %call10, ptr %idx, align 4
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
