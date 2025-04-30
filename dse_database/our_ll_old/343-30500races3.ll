; ModuleID = './code/343-30500races3.c'
source_filename = "./code/343-30500races3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.descriptor = type { i32, i32, i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"i %3d tab %3d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"t%d: sorting %p, offset %u size %u!\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"m: sorting %p, size %u!\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bubble_sort(ptr noundef %list, i32 noundef %n) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %t = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, ptr %c, align 4
  %1 = load i32, ptr %n.addr, align 4
  %sub = sub i32 %1, 1
  %cmp = icmp ult i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %d, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %d, align 4
  %3 = load i32, ptr %n.addr, align 4
  %4 = load i32, ptr %c, align 4
  %sub2 = sub i32 %3, %4
  %sub3 = sub i32 %sub2, 1
  %cmp4 = icmp ult i32 %2, %sub3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %list.addr, align 8
  %6 = load i32, ptr %d, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %8 = load ptr, ptr %list.addr, align 8
  %9 = load i32, ptr %d, align 4
  %add = add nsw i32 %9, 1
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %8, i64 %idxprom6
  %10 = load i32, ptr %arrayidx7, align 4
  %cmp8 = icmp sgt i32 %7, %10
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %11 = load ptr, ptr %list.addr, align 8
  %12 = load i32, ptr %d, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i32, ptr %11, i64 %idxprom9
  %13 = load i32, ptr %arrayidx10, align 4
  store i32 %13, ptr %t, align 4
  %14 = load ptr, ptr %list.addr, align 8
  %15 = load i32, ptr %d, align 4
  %add11 = add nsw i32 %15, 1
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds i32, ptr %14, i64 %idxprom12
  %16 = load i32, ptr %arrayidx13, align 4
  %17 = load ptr, ptr %list.addr, align 8
  %18 = load i32, ptr %d, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %17, i64 %idxprom14
  store i32 %16, ptr %arrayidx15, align 4
  %19 = load i32, ptr %t, align 4
  %20 = load ptr, ptr %list.addr, align 8
  %21 = load i32, ptr %d, align 4
  %add16 = add nsw i32 %21, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i32, ptr %20, i64 %idxprom17
  store i32 %19, ptr %arrayidx18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, ptr %d, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %d, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %23 = load i32, ptr %c, align 4
  %inc20 = add nsw i32 %23, 1
  store i32 %inc20, ptr %c, align 4
  br label %for.cond, !llvm.loop !7

for.end21:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print(ptr noundef %tab, i32 noundef %n) #0 {
entry:
  %tab.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %tab, ptr %tab.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %n.addr, align 4
  %div = udiv i32 %3, 2
  %cmp1 = icmp eq i32 %2, %div
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %tab.addr, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %7 = load i32, ptr %arrayidx, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4, i32 noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @thread(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %d = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %0 = load ptr, ptr %arg.addr, align 8
  store ptr %0, ptr %d, align 8
  %1 = load ptr, ptr %d, align 8
  %tid = getelementptr inbounds %struct.descriptor, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %tid, align 8
  %3 = load ptr, ptr %d, align 8
  %tab = getelementptr inbounds %struct.descriptor, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %tab, align 8
  %5 = load ptr, ptr %d, align 8
  %offset = getelementptr inbounds %struct.descriptor, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %offset, align 4
  %7 = load ptr, ptr %d, align 8
  %size = getelementptr inbounds %struct.descriptor, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %size, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %2, ptr noundef %4, i32 noundef %6, i32 noundef %8)
  %9 = load ptr, ptr %d, align 8
  %tab1 = getelementptr inbounds %struct.descriptor, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %tab1, align 8
  %11 = load ptr, ptr %d, align 8
  %offset2 = getelementptr inbounds %struct.descriptor, ptr %11, i32 0, i32 1
  %12 = load i32, ptr %offset2, align 4
  %idx.ext = zext i32 %12 to i64
  %add.ptr = getelementptr inbounds i32, ptr %10, i64 %idx.ext
  %13 = load ptr, ptr %d, align 8
  %size3 = getelementptr inbounds %struct.descriptor, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %size3, align 8
  call void @bubble_sort(ptr noundef %add.ptr, i32 noundef %14)
  ret ptr null
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %d = alloca [2 x %struct.descriptor], align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 20, ptr %n, align 4
  %0 = load i32, ptr %n, align 4
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 4
  store i64 %1, ptr %__vla_expr0, align 8
  call void @srand(i32 noundef 123)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand()
  %rem = srem i32 %call, 500
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %rem, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [2 x %struct.descriptor], ptr %d, i64 0, i64 0
  %tid = getelementptr inbounds %struct.descriptor, ptr %arrayidx1, i32 0, i32 0
  store i32 0, ptr %tid, align 8
  %arrayidx2 = getelementptr inbounds [2 x %struct.descriptor], ptr %d, i64 0, i64 0
  %offset = getelementptr inbounds %struct.descriptor, ptr %arrayidx2, i32 0, i32 1
  store i32 0, ptr %offset, align 4
  %7 = load i32, ptr %n, align 4
  %div = udiv i32 %7, 2
  %arrayidx3 = getelementptr inbounds [2 x %struct.descriptor], ptr %d, i64 0, i64 0
  %size = getelementptr inbounds %struct.descriptor, ptr %arrayidx3, i32 0, i32 2
  store i32 %div, ptr %size, align 8
  %arrayidx4 = getelementptr inbounds [2 x %struct.descriptor], ptr %d, i64 0, i64 0
  %tab = getelementptr inbounds %struct.descriptor, ptr %arrayidx4, i32 0, i32 3
  store ptr %vla, ptr %tab, align 8
  %arrayidx5 = getelementptr inbounds [2 x %struct.descriptor], ptr %d, i64 0, i64 1
  %tid6 = getelementptr inbounds %struct.descriptor, ptr %arrayidx5, i32 0, i32 0
  store i32 1, ptr %tid6, align 8
  %arrayidx7 = getelementptr inbounds [2 x %struct.descriptor], ptr %d, i64 0, i64 0
  %offset8 = getelementptr inbounds %struct.descriptor, ptr %arrayidx7, i32 0, i32 1
  %8 = load i32, ptr %offset8, align 4
  %arrayidx9 = getelementptr inbounds [2 x %struct.descriptor], ptr %d, i64 0, i64 0
  %size10 = getelementptr inbounds %struct.descriptor, ptr %arrayidx9, i32 0, i32 2
  %9 = load i32, ptr %size10, align 8
  %add = add i32 %8, %9
  %sub = sub i32 %add, 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.descriptor], ptr %d, i64 0, i64 1
  %offset12 = getelementptr inbounds %struct.descriptor, ptr %arrayidx11, i32 0, i32 1
  store i32 %sub, ptr %offset12, align 4
  %10 = load i32, ptr %n, align 4
  %div13 = udiv i32 %10, 2
  %arrayidx14 = getelementptr inbounds [2 x %struct.descriptor], ptr %d, i64 0, i64 1
  %size15 = getelementptr inbounds %struct.descriptor, ptr %arrayidx14, i32 0, i32 2
  store i32 %div13, ptr %size15, align 8
  %arrayidx16 = getelementptr inbounds [2 x %struct.descriptor], ptr %d, i64 0, i64 1
  %tab17 = getelementptr inbounds %struct.descriptor, ptr %arrayidx16, i32 0, i32 3
  store ptr %vla, ptr %tab17, align 8
  %11 = load i32, ptr %n, align 4
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %vla, i32 noundef %11)
  %arraydecay = getelementptr inbounds [2 x %struct.descriptor], ptr %d, i64 0, i64 0
  %add.ptr = getelementptr inbounds %struct.descriptor, ptr %arraydecay, i64 0
  %call19 = call i32 @pthread_create(ptr noundef %a, ptr noundef null, ptr noundef @thread, ptr noundef %add.ptr)
  %arraydecay20 = getelementptr inbounds [2 x %struct.descriptor], ptr %d, i64 0, i64 0
  %add.ptr21 = getelementptr inbounds %struct.descriptor, ptr %arraydecay20, i64 1
  %call22 = call i32 @pthread_create(ptr noundef %b, ptr noundef null, ptr noundef @thread, ptr noundef %add.ptr21)
  %12 = load ptr, ptr %a, align 8
  %call23 = call i32 @"\01_pthread_join"(ptr noundef %12, ptr noundef null)
  %13 = load ptr, ptr %b, align 8
  %call24 = call i32 @"\01_pthread_join"(ptr noundef %13, ptr noundef null)
  %14 = load i32, ptr %n, align 4
  call void @print(ptr noundef %vla, i32 noundef %14)
  call void @pthread_exit(ptr noundef null) #4
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

declare void @srand(i32 noundef) #1

declare i32 @rand() #1

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { noreturn }

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
!9 = distinct !{!9, !6}
