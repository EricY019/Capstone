; ModuleID = './code/103-18766main.c'
source_filename = "./code/103-18766main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.vector_t = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Size of copied vector: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Pop: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %myVector = alloca %struct.vector_t, align 8
  %secondVector = alloca %struct.vector_t, align 8
  store i32 0, ptr %retval, align 4
  call void @vector_init(ptr noundef %myVector)
  call void @vector_push_back(ptr noundef %myVector, i32 noundef 3)
  call void @vector_push_back(ptr noundef %myVector, i32 noundef 1)
  call void @vector_push_back(ptr noundef %myVector, i32 noundef 4)
  call void @vector_push_back(ptr noundef %myVector, i32 noundef 1)
  call void @vector_push_back(ptr noundef %myVector, i32 noundef 5)
  call void @vector_push_back(ptr noundef %myVector, i32 noundef 9)
  call void @vector_push_back(ptr noundef %myVector, i32 noundef 2)
  call void @vector_push_back(ptr noundef %myVector, i32 noundef 6)
  call void @vector_copy(ptr noundef %myVector, ptr noundef %secondVector)
  %0 = load [2 x i64], ptr %secondVector, align 8
  %call = call i32 @vector_get_size([2 x i64] %0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  %1 = load [2 x i64], ptr %myVector, align 8
  %call2 = call i32 @vector_get_size([2 x i64] %1)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call2)
  %call4 = call i32 @vector_pop_back(ptr noundef %myVector)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call4)
  %call6 = call i32 @vector_pop_back(ptr noundef %myVector)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call6)
  %call8 = call i32 @vector_pop_back(ptr noundef %myVector)
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call8)
  %call10 = call i32 @vector_pop_back(ptr noundef %myVector)
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call10)
  %call12 = call i32 @vector_pop_back(ptr noundef %myVector)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call12)
  %2 = load [2 x i64], ptr %myVector, align 8
  %call14 = call i32 @vector_get_size([2 x i64] %2)
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call14)
  %call16 = call i32 @vector_pop_back(ptr noundef %myVector)
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call16)
  %call18 = call i32 @vector_pop_back(ptr noundef %myVector)
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call18)
  %call20 = call i32 @vector_pop_back(ptr noundef %myVector)
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %call20)
  %3 = load [2 x i64], ptr %myVector, align 8
  %call22 = call i32 @vector_get_size([2 x i64] %3)
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call22)
  call void @vector_destroy(ptr noundef %myVector)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @vector_init(ptr noundef %v) #0 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %size = getelementptr inbounds %struct.vector_t, ptr %0, i32 0, i32 2
  store i32 5, ptr %size, align 4
  %1 = load ptr, ptr %v.addr, align 8
  %index = getelementptr inbounds %struct.vector_t, ptr %1, i32 0, i32 1
  store i32 0, ptr %index, align 8
  %2 = load ptr, ptr %v.addr, align 8
  %size1 = getelementptr inbounds %struct.vector_t, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %size1, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 4
  %call = call ptr @malloc(i64 noundef %mul) #4
  %4 = load ptr, ptr %v.addr, align 8
  %data = getelementptr inbounds %struct.vector_t, ptr %4, i32 0, i32 0
  store ptr %call, ptr %data, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @vector_push_back(ptr noundef %v, i32 noundef %value) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %value.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  store i32 %value, ptr %value.addr, align 4
  %0 = load ptr, ptr %v.addr, align 8
  %index = getelementptr inbounds %struct.vector_t, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %index, align 8
  %2 = load ptr, ptr %v.addr, align 8
  %size = getelementptr inbounds %struct.vector_t, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %size, align 4
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %v.addr, align 8
  %call = call i32 @vector_resize(ptr noundef %4, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %value.addr, align 4
  %6 = load ptr, ptr %v.addr, align 8
  %data = getelementptr inbounds %struct.vector_t, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %data, align 8
  %8 = load ptr, ptr %v.addr, align 8
  %index1 = getelementptr inbounds %struct.vector_t, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %index1, align 8
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %index1, align 8
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i32, ptr %7, i64 %idxprom
  store i32 %5, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @vector_copy(ptr noundef %from, ptr noundef %to) #0 {
entry:
  %from.addr = alloca ptr, align 8
  %to.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  store ptr %to, ptr %to.addr, align 8
  %0 = load ptr, ptr %to.addr, align 8
  call void @vector_init(ptr noundef %0)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %from.addr, align 8
  %3 = load [2 x i64], ptr %2, align 8
  %call = call i32 @vector_get_size([2 x i64] %3)
  %cmp = icmp slt i32 %1, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %to.addr, align 8
  %5 = load ptr, ptr %from.addr, align 8
  %6 = load i32, ptr %i, align 4
  %7 = load [2 x i64], ptr %5, align 8
  %call1 = call i32 @vector_at([2 x i64] %7, i32 noundef %6)
  call void @vector_push_back(ptr noundef %4, i32 noundef %call1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @vector_get_size([2 x i64] %v.coerce) #0 {
entry:
  %v = alloca %struct.vector_t, align 8
  store [2 x i64] %v.coerce, ptr %v, align 8
  %index = getelementptr inbounds %struct.vector_t, ptr %v, i32 0, i32 1
  %0 = load i32, ptr %index, align 8
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @vector_pop_back(ptr noundef %v) #0 {
entry:
  %retval = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %index = getelementptr inbounds %struct.vector_t, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %index, align 8
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 2147483647, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %v.addr, align 8
  %index1 = getelementptr inbounds %struct.vector_t, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %index1, align 8
  %4 = load ptr, ptr %v.addr, align 8
  %size = getelementptr inbounds %struct.vector_t, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %size, align 4
  %div = sdiv i32 %5, 2
  %cmp2 = icmp sle i32 %3, %div
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %v.addr, align 8
  %call = call i32 @vector_resize(ptr noundef %6, i32 noundef 1)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %7 = load ptr, ptr %v.addr, align 8
  %data = getelementptr inbounds %struct.vector_t, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %data, align 8
  %9 = load ptr, ptr %v.addr, align 8
  %index5 = getelementptr inbounds %struct.vector_t, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %index5, align 8
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %index5, align 8
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @vector_destroy(ptr noundef %v) #0 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  %0 = load ptr, ptr %v.addr, align 8
  %data = getelementptr inbounds %struct.vector_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %data, align 8
  call void @free(ptr noundef %1)
  %2 = load ptr, ptr %v.addr, align 8
  %size = getelementptr inbounds %struct.vector_t, ptr %2, i32 0, i32 2
  store i32 0, ptr %size, align 4
  %3 = load ptr, ptr %v.addr, align 8
  %index = getelementptr inbounds %struct.vector_t, ptr %3, i32 0, i32 1
  store i32 0, ptr %index, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @vector_resize(ptr noundef %v, i32 noundef %makeLower) #0 {
entry:
  %v.addr = alloca ptr, align 8
  %makeLower.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  store i32 %makeLower, ptr %makeLower.addr, align 4
  %0 = load ptr, ptr %v.addr, align 8
  %size = getelementptr inbounds %struct.vector_t, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %size, align 4
  %2 = zext i32 %1 to i64
  %3 = call ptr @llvm.stacksave.p0()
  store ptr %3, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %2, align 4
  store i64 %2, ptr %__vla_expr0, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %v.addr, align 8
  %index = getelementptr inbounds %struct.vector_t, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %index, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %v.addr, align 8
  %8 = load i32, ptr %i, align 4
  %9 = load [2 x i64], ptr %7, align 8
  %call = call i32 @vector_at([2 x i64] %9, i32 noundef %8)
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %call, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %makeLower.addr, align 4
  %cmp1 = icmp eq i32 %12, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %13 = load ptr, ptr %v.addr, align 8
  %size2 = getelementptr inbounds %struct.vector_t, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %size2, align 4
  %mul = mul nsw i32 %14, 2
  store i32 %mul, ptr %size2, align 4
  br label %if.end

if.else:                                          ; preds = %for.end
  %15 = load ptr, ptr %v.addr, align 8
  %size3 = getelementptr inbounds %struct.vector_t, ptr %15, i32 0, i32 2
  %16 = load i32, ptr %size3, align 4
  %div = sdiv i32 %16, 2
  store i32 %div, ptr %size3, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load ptr, ptr %v.addr, align 8
  %data = getelementptr inbounds %struct.vector_t, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %data, align 8
  call void @free(ptr noundef %18)
  %19 = load ptr, ptr %v.addr, align 8
  %size4 = getelementptr inbounds %struct.vector_t, ptr %19, i32 0, i32 2
  %20 = load i32, ptr %size4, align 4
  %conv = sext i32 %20 to i64
  %mul5 = mul i64 %conv, 4
  %call6 = call ptr @malloc(i64 noundef %mul5) #4
  %21 = load ptr, ptr %v.addr, align 8
  %data7 = getelementptr inbounds %struct.vector_t, ptr %21, i32 0, i32 0
  store ptr %call6, ptr %data7, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc18, %if.end
  %22 = load i32, ptr %i, align 4
  %23 = load ptr, ptr %v.addr, align 8
  %index9 = getelementptr inbounds %struct.vector_t, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %index9, align 8
  %cmp10 = icmp slt i32 %22, %24
  br i1 %cmp10, label %for.body12, label %for.end20

for.body12:                                       ; preds = %for.cond8
  %25 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %25 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %vla, i64 %idxprom13
  %26 = load i32, ptr %arrayidx14, align 4
  %27 = load ptr, ptr %v.addr, align 8
  %data15 = getelementptr inbounds %struct.vector_t, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %data15, align 8
  %29 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %29 to i64
  %arrayidx17 = getelementptr inbounds i32, ptr %28, i64 %idxprom16
  store i32 %26, ptr %arrayidx17, align 4
  br label %for.inc18

for.inc18:                                        ; preds = %for.body12
  %30 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %30, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond8, !llvm.loop !8

for.end20:                                        ; preds = %for.cond8
  %31 = load ptr, ptr %v.addr, align 8
  %size21 = getelementptr inbounds %struct.vector_t, ptr %31, i32 0, i32 2
  %32 = load i32, ptr %size21, align 4
  %33 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %33)
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @vector_at([2 x i64] %v.coerce, i32 noundef %index) #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca %struct.vector_t, align 8
  %index.addr = alloca i32, align 4
  store [2 x i64] %v.coerce, ptr %v, align 8
  store i32 %index, ptr %index.addr, align 4
  %0 = load i32, ptr %index.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %index.addr, align 4
  %index1 = getelementptr inbounds %struct.vector_t, ptr %v, i32 0, i32 1
  %2 = load i32, ptr %index1, align 8
  %cmp2 = icmp sge i32 %1, %2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 2147483647, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.vector_t, ptr %v, i32 0, i32 0
  %3 = load ptr, ptr %data, align 8
  %4 = load i32, ptr %index.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { allocsize(0) }

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
