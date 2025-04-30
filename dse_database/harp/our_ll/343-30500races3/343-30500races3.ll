; ModuleID = 'code/343-30500races3.c'
source_filename = "code/343-30500races3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor = type { i32, i32, i32, i32* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"i %3d tab %3d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"t%d: sorting %p, offset %u size %u!\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"m: sorting %p, size %u!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bubble_sort(i32* %list, i32 %n) #0 {
entry:
  %list.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %t = alloca i32, align 4
  store i32* %list, i32** %list.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, i32* %c, align 4
  %1 = load i32, i32* %n.addr, align 4
  %sub = sub i32 %1, 1
  %cmp = icmp ult i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %d, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, i32* %d, align 4
  %3 = load i32, i32* %n.addr, align 4
  %4 = load i32, i32* %c, align 4
  %sub2 = sub i32 %3, %4
  %sub3 = sub i32 %sub2, 1
  %cmp4 = icmp ult i32 %2, %sub3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond1
  %5 = load i32*, i32** %list.addr, align 8
  %6 = load i32, i32* %d, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32*, i32** %list.addr, align 8
  %9 = load i32, i32* %d, align 4
  %add = add nsw i32 %9, 1
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %8, i64 %idxprom6
  %10 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp sgt i32 %7, %10
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %11 = load i32*, i32** %list.addr, align 8
  %12 = load i32, i32* %d, align 4
  %idxprom9 = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds i32, i32* %11, i64 %idxprom9
  %13 = load i32, i32* %arrayidx10, align 4
  store i32 %13, i32* %t, align 4
  %14 = load i32*, i32** %list.addr, align 8
  %15 = load i32, i32* %d, align 4
  %add11 = add nsw i32 %15, 1
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds i32, i32* %14, i64 %idxprom12
  %16 = load i32, i32* %arrayidx13, align 4
  %17 = load i32*, i32** %list.addr, align 8
  %18 = load i32, i32* %d, align 4
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %17, i64 %idxprom14
  store i32 %16, i32* %arrayidx15, align 4
  %19 = load i32, i32* %t, align 4
  %20 = load i32*, i32** %list.addr, align 8
  %21 = load i32, i32* %d, align 4
  %add16 = add nsw i32 %21, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i32, i32* %20, i64 %idxprom17
  store i32 %19, i32* %arrayidx18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %d, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %d, align 4
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %23 = load i32, i32* %c, align 4
  %inc20 = add nsw i32 %23, 1
  store i32 %inc20, i32* %c, align 4
  br label %for.cond, !llvm.loop !6

for.end21:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(i32* %tab, i32 %n) #0 {
entry:
  %tab.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %tab, i32** %tab.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %div = udiv i32 %3, 2
  %cmp1 = icmp eq i32 %2, %div
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32*, i32** %tab.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %4, i32 %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thread(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %d = alloca %struct.descriptor*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to %struct.descriptor*
  store %struct.descriptor* %1, %struct.descriptor** %d, align 8
  %2 = load %struct.descriptor*, %struct.descriptor** %d, align 8
  %tid = getelementptr inbounds %struct.descriptor, %struct.descriptor* %2, i32 0, i32 0
  %3 = load i32, i32* %tid, align 8
  %4 = load %struct.descriptor*, %struct.descriptor** %d, align 8
  %tab = getelementptr inbounds %struct.descriptor, %struct.descriptor* %4, i32 0, i32 3
  %5 = load i32*, i32** %tab, align 8
  %6 = load %struct.descriptor*, %struct.descriptor** %d, align 8
  %offset = getelementptr inbounds %struct.descriptor, %struct.descriptor* %6, i32 0, i32 1
  %7 = load i32, i32* %offset, align 4
  %8 = load %struct.descriptor*, %struct.descriptor** %d, align 8
  %size = getelementptr inbounds %struct.descriptor, %struct.descriptor* %8, i32 0, i32 2
  %9 = load i32, i32* %size, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %3, i32* %5, i32 %7, i32 %9)
  %10 = load %struct.descriptor*, %struct.descriptor** %d, align 8
  %tab1 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %10, i32 0, i32 3
  %11 = load i32*, i32** %tab1, align 8
  %12 = load %struct.descriptor*, %struct.descriptor** %d, align 8
  %offset2 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %12, i32 0, i32 1
  %13 = load i32, i32* %offset2, align 4
  %idx.ext = zext i32 %13 to i64
  %add.ptr = getelementptr inbounds i32, i32* %11, i64 %idx.ext
  %14 = load %struct.descriptor*, %struct.descriptor** %d, align 8
  %size3 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %14, i32 0, i32 2
  %15 = load i32, i32* %size3, align 8
  call void @bubble_sort(i32* %add.ptr, i32 %15)
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %d = alloca [2 x %struct.descriptor], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 20, i32* %n, align 4
  %0 = load i32, i32* %n, align 4
  %1 = zext i32 %0 to i64
  %2 = call i8* @llvm.stacksave()
  store i8* %2, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 16
  store i64 %1, i64* %__vla_expr0, align 8
  call void @srand(i32 123) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @rand() #5
  %rem = srem i32 %call, 500
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %rem, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [2 x %struct.descriptor], [2 x %struct.descriptor]* %d, i64 0, i64 0
  %tid = getelementptr inbounds %struct.descriptor, %struct.descriptor* %arrayidx1, i32 0, i32 0
  store i32 0, i32* %tid, align 16
  %arrayidx2 = getelementptr inbounds [2 x %struct.descriptor], [2 x %struct.descriptor]* %d, i64 0, i64 0
  %offset = getelementptr inbounds %struct.descriptor, %struct.descriptor* %arrayidx2, i32 0, i32 1
  store i32 0, i32* %offset, align 4
  %7 = load i32, i32* %n, align 4
  %div = udiv i32 %7, 2
  %arrayidx3 = getelementptr inbounds [2 x %struct.descriptor], [2 x %struct.descriptor]* %d, i64 0, i64 0
  %size = getelementptr inbounds %struct.descriptor, %struct.descriptor* %arrayidx3, i32 0, i32 2
  store i32 %div, i32* %size, align 8
  %arrayidx4 = getelementptr inbounds [2 x %struct.descriptor], [2 x %struct.descriptor]* %d, i64 0, i64 0
  %tab = getelementptr inbounds %struct.descriptor, %struct.descriptor* %arrayidx4, i32 0, i32 3
  store i32* %vla, i32** %tab, align 16
  %arrayidx5 = getelementptr inbounds [2 x %struct.descriptor], [2 x %struct.descriptor]* %d, i64 0, i64 1
  %tid6 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %arrayidx5, i32 0, i32 0
  store i32 1, i32* %tid6, align 8
  %arrayidx7 = getelementptr inbounds [2 x %struct.descriptor], [2 x %struct.descriptor]* %d, i64 0, i64 0
  %offset8 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %arrayidx7, i32 0, i32 1
  %8 = load i32, i32* %offset8, align 4
  %arrayidx9 = getelementptr inbounds [2 x %struct.descriptor], [2 x %struct.descriptor]* %d, i64 0, i64 0
  %size10 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %arrayidx9, i32 0, i32 2
  %9 = load i32, i32* %size10, align 8
  %add = add i32 %8, %9
  %sub = sub i32 %add, 0
  %arrayidx11 = getelementptr inbounds [2 x %struct.descriptor], [2 x %struct.descriptor]* %d, i64 0, i64 1
  %offset12 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %arrayidx11, i32 0, i32 1
  store i32 %sub, i32* %offset12, align 4
  %10 = load i32, i32* %n, align 4
  %div13 = udiv i32 %10, 2
  %arrayidx14 = getelementptr inbounds [2 x %struct.descriptor], [2 x %struct.descriptor]* %d, i64 0, i64 1
  %size15 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %arrayidx14, i32 0, i32 2
  store i32 %div13, i32* %size15, align 8
  %arrayidx16 = getelementptr inbounds [2 x %struct.descriptor], [2 x %struct.descriptor]* %d, i64 0, i64 1
  %tab17 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %arrayidx16, i32 0, i32 3
  store i32* %vla, i32** %tab17, align 8
  %11 = load i32, i32* %n, align 4
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32* %vla, i32 %11)
  %arraydecay = getelementptr inbounds [2 x %struct.descriptor], [2 x %struct.descriptor]* %d, i64 0, i64 0
  %add.ptr = getelementptr inbounds %struct.descriptor, %struct.descriptor* %arraydecay, i64 0
  %12 = bitcast %struct.descriptor* %add.ptr to i8*
  %call19 = call i32 @pthread_create(i64* %a, %union.pthread_attr_t* null, i8* (i8*)* @thread, i8* %12) #5
  %arraydecay20 = getelementptr inbounds [2 x %struct.descriptor], [2 x %struct.descriptor]* %d, i64 0, i64 0
  %add.ptr21 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %arraydecay20, i64 1
  %13 = bitcast %struct.descriptor* %add.ptr21 to i8*
  %call22 = call i32 @pthread_create(i64* %b, %union.pthread_attr_t* null, i8* (i8*)* @thread, i8* %13) #5
  %14 = load i64, i64* %a, align 8
  %call23 = call i32 @pthread_join(i64 %14, i8** null)
  %15 = load i64, i64* %b, align 8
  %call24 = call i32 @pthread_join(i64 %15, i8** null)
  %16 = load i32, i32* %n, align 4
  call void @print(i32* %vla, i32 %16)
  call void @pthread_exit(i8* null) #6
  unreachable
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #3

declare dso_local i32 @pthread_join(i64, i8**) #1

; Function Attrs: noreturn
declare dso_local void @pthread_exit(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
