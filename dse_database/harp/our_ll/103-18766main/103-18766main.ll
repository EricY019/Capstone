; ModuleID = 'code/103-18766main.c'
source_filename = "code/103-18766main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector_t = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Size of copied vector: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Pop: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %myVector = alloca %struct.vector_t, align 8
  %secondVector = alloca %struct.vector_t, align 8
  store i32 0, i32* %retval, align 4
  call void @vector_init(%struct.vector_t* %myVector)
  call void @vector_push_back(%struct.vector_t* %myVector, i32 3)
  call void @vector_push_back(%struct.vector_t* %myVector, i32 1)
  call void @vector_push_back(%struct.vector_t* %myVector, i32 4)
  call void @vector_push_back(%struct.vector_t* %myVector, i32 1)
  call void @vector_push_back(%struct.vector_t* %myVector, i32 5)
  call void @vector_push_back(%struct.vector_t* %myVector, i32 9)
  call void @vector_push_back(%struct.vector_t* %myVector, i32 2)
  call void @vector_push_back(%struct.vector_t* %myVector, i32 6)
  call void @vector_copy(%struct.vector_t* %myVector, %struct.vector_t* %secondVector)
  %0 = bitcast %struct.vector_t* %secondVector to { i32*, i64 }*
  %1 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %0, i32 0, i32 0
  %2 = load i32*, i32** %1, align 8
  %3 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %0, i32 0, i32 1
  %4 = load i64, i64* %3, align 8
  %call = call i32 @vector_get_size(i32* %2, i64 %4)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %call)
  %5 = bitcast %struct.vector_t* %myVector to { i32*, i64 }*
  %6 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %5, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %call2 = call i32 @vector_get_size(i32* %7, i64 %9)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %call2)
  %call4 = call i32 @vector_pop_back(%struct.vector_t* %myVector)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %call4)
  %call6 = call i32 @vector_pop_back(%struct.vector_t* %myVector)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %call6)
  %call8 = call i32 @vector_pop_back(%struct.vector_t* %myVector)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %call8)
  %call10 = call i32 @vector_pop_back(%struct.vector_t* %myVector)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %call10)
  %call12 = call i32 @vector_pop_back(%struct.vector_t* %myVector)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %call12)
  %10 = bitcast %struct.vector_t* %myVector to { i32*, i64 }*
  %11 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %10, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %call14 = call i32 @vector_get_size(i32* %12, i64 %14)
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %call14)
  %call16 = call i32 @vector_pop_back(%struct.vector_t* %myVector)
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %call16)
  %call18 = call i32 @vector_pop_back(%struct.vector_t* %myVector)
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %call18)
  %call20 = call i32 @vector_pop_back(%struct.vector_t* %myVector)
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %call20)
  %15 = bitcast %struct.vector_t* %myVector to { i32*, i64 }*
  %16 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %15, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %call22 = call i32 @vector_get_size(i32* %17, i64 %19)
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %call22)
  call void @vector_destroy(%struct.vector_t* %myVector)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_init(%struct.vector_t* %v) #0 {
entry:
  %v.addr = alloca %struct.vector_t*, align 8
  store %struct.vector_t* %v, %struct.vector_t** %v.addr, align 8
  %0 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %size = getelementptr inbounds %struct.vector_t, %struct.vector_t* %0, i32 0, i32 2
  store i32 5, i32* %size, align 4
  %1 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %index = getelementptr inbounds %struct.vector_t, %struct.vector_t* %1, i32 0, i32 1
  store i32 0, i32* %index, align 8
  %2 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %size1 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %2, i32 0, i32 2
  %3 = load i32, i32* %size1, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 4
  %call = call noalias align 16 i8* @malloc(i64 %mul) #4
  %4 = bitcast i8* %call to i32*
  %5 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %data = getelementptr inbounds %struct.vector_t, %struct.vector_t* %5, i32 0, i32 0
  store i32* %4, i32** %data, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_push_back(%struct.vector_t* %v, i32 %value) #0 {
entry:
  %v.addr = alloca %struct.vector_t*, align 8
  %value.addr = alloca i32, align 4
  store %struct.vector_t* %v, %struct.vector_t** %v.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %index = getelementptr inbounds %struct.vector_t, %struct.vector_t* %0, i32 0, i32 1
  %1 = load i32, i32* %index, align 8
  %2 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %size = getelementptr inbounds %struct.vector_t, %struct.vector_t* %2, i32 0, i32 2
  %3 = load i32, i32* %size, align 4
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %call = call i32 @vector_resize(%struct.vector_t* %4, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %value.addr, align 4
  %6 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %data = getelementptr inbounds %struct.vector_t, %struct.vector_t* %6, i32 0, i32 0
  %7 = load i32*, i32** %data, align 8
  %8 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %index1 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %8, i32 0, i32 1
  %9 = load i32, i32* %index1, align 8
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %index1, align 8
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  store i32 %5, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_copy(%struct.vector_t* %from, %struct.vector_t* %to) #0 {
entry:
  %from.addr = alloca %struct.vector_t*, align 8
  %to.addr = alloca %struct.vector_t*, align 8
  %i = alloca i32, align 4
  store %struct.vector_t* %from, %struct.vector_t** %from.addr, align 8
  store %struct.vector_t* %to, %struct.vector_t** %to.addr, align 8
  %0 = load %struct.vector_t*, %struct.vector_t** %to.addr, align 8
  call void @vector_init(%struct.vector_t* %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.vector_t*, %struct.vector_t** %from.addr, align 8
  %3 = bitcast %struct.vector_t* %2 to { i32*, i64 }*
  %4 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %3, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %call = call i32 @vector_get_size(i32* %5, i64 %7)
  %cmp = icmp slt i32 %1, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.vector_t*, %struct.vector_t** %to.addr, align 8
  %9 = load %struct.vector_t*, %struct.vector_t** %from.addr, align 8
  %10 = load i32, i32* %i, align 4
  %11 = bitcast %struct.vector_t* %9 to { i32*, i64 }*
  %12 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %11, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %call1 = call i32 @vector_at(i32* %13, i64 %15, i32 %10)
  call void @vector_push_back(%struct.vector_t* %8, i32 %call1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vector_get_size(i32* %v.coerce0, i64 %v.coerce1) #0 {
entry:
  %v = alloca %struct.vector_t, align 8
  %0 = bitcast %struct.vector_t* %v to { i32*, i64 }*
  %1 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %0, i32 0, i32 0
  store i32* %v.coerce0, i32** %1, align 8
  %2 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %0, i32 0, i32 1
  store i64 %v.coerce1, i64* %2, align 8
  %index = getelementptr inbounds %struct.vector_t, %struct.vector_t* %v, i32 0, i32 1
  %3 = load i32, i32* %index, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vector_pop_back(%struct.vector_t* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca %struct.vector_t*, align 8
  store %struct.vector_t* %v, %struct.vector_t** %v.addr, align 8
  %0 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %index = getelementptr inbounds %struct.vector_t, %struct.vector_t* %0, i32 0, i32 1
  %1 = load i32, i32* %index, align 8
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2147483647, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %index1 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %2, i32 0, i32 1
  %3 = load i32, i32* %index1, align 8
  %4 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %size = getelementptr inbounds %struct.vector_t, %struct.vector_t* %4, i32 0, i32 2
  %5 = load i32, i32* %size, align 4
  %div = sdiv i32 %5, 2
  %cmp2 = icmp sle i32 %3, %div
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %call = call i32 @vector_resize(%struct.vector_t* %6, i32 1)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %7 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %data = getelementptr inbounds %struct.vector_t, %struct.vector_t* %7, i32 0, i32 0
  %8 = load i32*, i32** %data, align 8
  %9 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %index5 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %9, i32 0, i32 1
  %10 = load i32, i32* %index5, align 8
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %index5, align 8
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds i32, i32* %8, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  store i32 %11, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vector_destroy(%struct.vector_t* %v) #0 {
entry:
  %v.addr = alloca %struct.vector_t*, align 8
  store %struct.vector_t* %v, %struct.vector_t** %v.addr, align 8
  %0 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %data = getelementptr inbounds %struct.vector_t, %struct.vector_t* %0, i32 0, i32 0
  %1 = load i32*, i32** %data, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2) #4
  %3 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %size = getelementptr inbounds %struct.vector_t, %struct.vector_t* %3, i32 0, i32 2
  store i32 0, i32* %size, align 4
  %4 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %index = getelementptr inbounds %struct.vector_t, %struct.vector_t* %4, i32 0, i32 1
  store i32 0, i32* %index, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vector_resize(%struct.vector_t* %v, i32 %makeLower) #0 {
entry:
  %v.addr = alloca %struct.vector_t*, align 8
  %makeLower.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  store %struct.vector_t* %v, %struct.vector_t** %v.addr, align 8
  store i32 %makeLower, i32* %makeLower.addr, align 4
  %0 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %size = getelementptr inbounds %struct.vector_t, %struct.vector_t* %0, i32 0, i32 2
  %1 = load i32, i32* %size, align 4
  %2 = zext i32 %1 to i64
  %3 = call i8* @llvm.stacksave()
  store i8* %3, i8** %saved_stack, align 8
  %vla = alloca i32, i64 %2, align 16
  store i64 %2, i64* %__vla_expr0, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %index = getelementptr inbounds %struct.vector_t, %struct.vector_t* %5, i32 0, i32 1
  %6 = load i32, i32* %index, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %8 = load i32, i32* %i, align 4
  %9 = bitcast %struct.vector_t* %7 to { i32*, i64 }*
  %10 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %call = call i32 @vector_at(i32* %11, i64 %13, i32 %8)
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %makeLower.addr, align 4
  %cmp1 = icmp eq i32 %16, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %17 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %size2 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %17, i32 0, i32 2
  %18 = load i32, i32* %size2, align 4
  %mul = mul nsw i32 %18, 2
  store i32 %mul, i32* %size2, align 4
  br label %if.end

if.else:                                          ; preds = %for.end
  %19 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %size3 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %19, i32 0, i32 2
  %20 = load i32, i32* %size3, align 4
  %div = sdiv i32 %20, 2
  store i32 %div, i32* %size3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %21 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %data = getelementptr inbounds %struct.vector_t, %struct.vector_t* %21, i32 0, i32 0
  %22 = load i32*, i32** %data, align 8
  %23 = bitcast i32* %22 to i8*
  call void @free(i8* %23) #4
  %24 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %size4 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %24, i32 0, i32 2
  %25 = load i32, i32* %size4, align 4
  %conv = sext i32 %25 to i64
  %mul5 = mul i64 %conv, 4
  %call6 = call noalias align 16 i8* @malloc(i64 %mul5) #4
  %26 = bitcast i8* %call6 to i32*
  %27 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %data7 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %27, i32 0, i32 0
  store i32* %26, i32** %data7, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc18, %if.end
  %28 = load i32, i32* %i, align 4
  %29 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %index9 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %29, i32 0, i32 1
  %30 = load i32, i32* %index9, align 8
  %cmp10 = icmp slt i32 %28, %30
  br i1 %cmp10, label %for.body12, label %for.end20

for.body12:                                       ; preds = %for.cond8
  %31 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %31 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %vla, i64 %idxprom13
  %32 = load i32, i32* %arrayidx14, align 4
  %33 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %data15 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %33, i32 0, i32 0
  %34 = load i32*, i32** %data15, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %35 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %34, i64 %idxprom16
  store i32 %32, i32* %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body12
  %36 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %36, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond8, !llvm.loop !7

for.end20:                                        ; preds = %for.cond8
  %37 = load %struct.vector_t*, %struct.vector_t** %v.addr, align 8
  %size21 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %37, i32 0, i32 2
  %38 = load i32, i32* %size21, align 4
  %39 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %39)
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vector_at(i32* %v.coerce0, i64 %v.coerce1, i32 %index) #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca %struct.vector_t, align 8
  %index.addr = alloca i32, align 4
  %0 = bitcast %struct.vector_t* %v to { i32*, i64 }*
  %1 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %0, i32 0, i32 0
  store i32* %v.coerce0, i32** %1, align 8
  %2 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %0, i32 0, i32 1
  store i64 %v.coerce1, i64* %2, align 8
  store i32 %index, i32* %index.addr, align 4
  %3 = load i32, i32* %index.addr, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %index.addr, align 4
  %index1 = getelementptr inbounds %struct.vector_t, %struct.vector_t* %v, i32 0, i32 1
  %5 = load i32, i32* %index1, align 8
  %cmp2 = icmp sge i32 %4, %5
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2147483647, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.vector_t, %struct.vector_t* %v, i32 0, i32 0
  %6 = load i32*, i32** %data, align 8
  %7 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %8 = load i32, i32* %arrayidx, align 4
  store i32 %8, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

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
