; ModuleID = './code/000-6282tester-5.c'
source_filename = "./code/000-6282tester-5.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [28 x i8] c"Memory failed to allocate!\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"Memory failed to contain correct data after many allocations (beginning of segment)!\0A\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"Memory failed to contain correct data after many allocations (end of segment)!\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Memory was allocated and freed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %realloc_ptr = alloca ptr, align 8
  %dictionary = alloca ptr, align 8
  %dictionary_elem_size = alloca ptr, align 8
  %dictionary_ct = alloca i32, align 4
  %data_written = alloca i32, align 4
  %size = alloca i32, align 4
  %ptr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 1) #4
  store ptr null, ptr %realloc_ptr, align 8
  %call1 = call ptr @malloc(i64 noundef 3200000) #4
  store ptr %call1, ptr %dictionary, align 8
  %call2 = call ptr @malloc(i64 noundef 1600000) #4
  store ptr %call2, ptr %dictionary_elem_size, align 8
  store i32 0, ptr %dictionary_ct, align 4
  store i32 0, ptr %data_written, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 400000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 @rand()
  %rem = srem i32 %call3, 102377
  %add = add nsw i32 %rem, 24
  store i32 %add, ptr %size, align 4
  %1 = load ptr, ptr %realloc_ptr, align 8
  %cmp4 = icmp eq ptr %1, null
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %size, align 4
  %conv = sext i32 %2 to i64
  %call5 = call ptr @malloc(i64 noundef %conv) #4
  store ptr %call5, ptr %ptr, align 8
  store i32 0, ptr %data_written, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %3 = load ptr, ptr %realloc_ptr, align 8
  %4 = load i32, ptr %size, align 4
  %conv6 = sext i32 %4 to i64
  %call7 = call ptr @realloc(ptr noundef %3, i64 noundef %conv6) #5
  store ptr %call7, ptr %ptr, align 8
  store ptr null, ptr %realloc_ptr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %ptr, align 8
  %cmp8 = icmp eq ptr %5, null
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end
  %call13 = call i32 @rand()
  %rem14 = srem i32 %call13, 100
  %cmp15 = icmp slt i32 %rem14, 95
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.end12
  %6 = load ptr, ptr %ptr, align 8
  call void @free(ptr noundef %6)
  br label %if.end35

if.else18:                                        ; preds = %if.end12
  %7 = load i32, ptr %data_written, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.else18
  %8 = load ptr, ptr %dictionary, align 8
  %9 = load i32, ptr %dictionary_ct, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %ptr, align 8
  store ptr %arrayidx, ptr %10, align 8
  store i32 1, ptr %data_written, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.else18
  %call21 = call i32 @rand()
  %rem22 = srem i32 %call21, 100
  %cmp23 = icmp slt i32 %rem22, 50
  br i1 %cmp23, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end20
  %11 = load ptr, ptr %ptr, align 8
  store ptr %11, ptr %realloc_ptr, align 8
  br label %if.end34

if.else26:                                        ; preds = %if.end20
  %12 = load ptr, ptr %dictionary, align 8
  %13 = load i32, ptr %dictionary_ct, align 4
  %idxprom27 = sext i32 %13 to i64
  %arrayidx28 = getelementptr inbounds ptr, ptr %12, i64 %idxprom27
  %14 = load ptr, ptr %ptr, align 8
  %15 = load i32, ptr %size, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, ptr %14, i64 %idx.ext
  %add.ptr29 = getelementptr inbounds i8, ptr %add.ptr, i64 -8
  store ptr %arrayidx28, ptr %add.ptr29, align 8
  %16 = load ptr, ptr %ptr, align 8
  %17 = load ptr, ptr %dictionary, align 8
  %18 = load i32, ptr %dictionary_ct, align 4
  %idxprom30 = sext i32 %18 to i64
  %arrayidx31 = getelementptr inbounds ptr, ptr %17, i64 %idxprom30
  store ptr %16, ptr %arrayidx31, align 8
  %19 = load i32, ptr %size, align 4
  %20 = load ptr, ptr %dictionary_elem_size, align 8
  %21 = load i32, ptr %dictionary_ct, align 4
  %idxprom32 = sext i32 %21 to i64
  %arrayidx33 = getelementptr inbounds i32, ptr %20, i64 %idxprom32
  store i32 %19, ptr %arrayidx33, align 4
  %22 = load i32, ptr %dictionary_ct, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %dictionary_ct, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else26, %if.then25
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then17
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %23 = load i32, ptr %i, align 4
  %inc36 = add nsw i32 %23, 1
  store i32 %inc36, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %24 = load i32, ptr %dictionary_ct, align 4
  %sub = sub nsw i32 %24, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc66, %for.end
  %25 = load i32, ptr %i, align 4
  %cmp38 = icmp sge i32 %25, 0
  br i1 %cmp38, label %for.body40, label %for.end67

for.body40:                                       ; preds = %for.cond37
  %26 = load ptr, ptr %dictionary, align 8
  %27 = load i32, ptr %i, align 4
  %idxprom41 = sext i32 %27 to i64
  %arrayidx42 = getelementptr inbounds ptr, ptr %26, i64 %idxprom41
  %28 = load ptr, ptr %arrayidx42, align 8
  %29 = load ptr, ptr %28, align 8
  %30 = load ptr, ptr %dictionary, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %31 to i64
  %arrayidx44 = getelementptr inbounds ptr, ptr %30, i64 %idxprom43
  %cmp45 = icmp ne ptr %29, %arrayidx44
  br i1 %cmp45, label %if.then47, label %if.end49

if.then47:                                        ; preds = %for.body40
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 100, ptr %retval, align 4
  br label %return

if.end49:                                         ; preds = %for.body40
  %32 = load ptr, ptr %dictionary, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom50 = sext i32 %33 to i64
  %arrayidx51 = getelementptr inbounds ptr, ptr %32, i64 %idxprom50
  %34 = load ptr, ptr %arrayidx51, align 8
  %35 = load ptr, ptr %dictionary_elem_size, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom52 = sext i32 %36 to i64
  %arrayidx53 = getelementptr inbounds i32, ptr %35, i64 %idxprom52
  %37 = load i32, ptr %arrayidx53, align 4
  %idx.ext54 = sext i32 %37 to i64
  %add.ptr55 = getelementptr inbounds i8, ptr %34, i64 %idx.ext54
  %add.ptr56 = getelementptr inbounds i8, ptr %add.ptr55, i64 -8
  %38 = load ptr, ptr %add.ptr56, align 8
  %39 = load ptr, ptr %dictionary, align 8
  %40 = load i32, ptr %i, align 4
  %idxprom57 = sext i32 %40 to i64
  %arrayidx58 = getelementptr inbounds ptr, ptr %39, i64 %idxprom57
  %cmp59 = icmp ne ptr %38, %arrayidx58
  br i1 %cmp59, label %if.then61, label %if.end63

if.then61:                                        ; preds = %if.end49
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 101, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.end49
  %41 = load ptr, ptr %dictionary, align 8
  %42 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %42 to i64
  %arrayidx65 = getelementptr inbounds ptr, ptr %41, i64 %idxprom64
  %43 = load ptr, ptr %arrayidx65, align 8
  call void @free(ptr noundef %43)
  br label %for.inc66

for.inc66:                                        ; preds = %if.end63
  %44 = load i32, ptr %i, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond37, !llvm.loop !7

for.end67:                                        ; preds = %for.cond37
  %call68 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end67, %if.then61, %if.then47, %if.then10
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @rand() #2

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #3

declare i32 @printf(ptr noundef, ...) #2

declare void @free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) }
attributes #5 = { allocsize(1) }

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
