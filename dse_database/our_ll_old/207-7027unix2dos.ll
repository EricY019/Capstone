; ModuleID = './code/207-7027unix2dos.c'
source_filename = "./code/207-7027unix2dos.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [22 x i8] c"realloc fatal error!\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"open file %s error!\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"malloc error!\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"malloc dest buf error!\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"load file error! ret:%zu\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"fwrite dest error!ret:%zu\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"unix2dos ok, len:%d!\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @realloc_more(ptr noundef %pbuf, i32 noundef %new_size) #0 {
entry:
  %retval = alloca ptr, align 8
  %pbuf.addr = alloca ptr, align 8
  %new_size.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  store ptr %pbuf, ptr %pbuf.addr, align 8
  store i32 %new_size, ptr %new_size.addr, align 4
  %0 = load ptr, ptr %pbuf.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = load i32, ptr %new_size.addr, align 4
  %conv = sext i32 %2 to i64
  %call = call ptr @realloc(ptr noundef %1, i64 noundef %conv) #4
  store ptr %call, ptr %temp, align 8
  %3 = load ptr, ptr %temp, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store ptr null, ptr %retval, align 8
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %temp, align 8
  %5 = load ptr, ptr %pbuf.addr, align 8
  store ptr %4, ptr %5, align 8
  %6 = load ptr, ptr %temp, align 8
  store ptr %6, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @unix2dos(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %fp = alloca ptr, align 8
  %src = alloca ptr, align 8
  %dest = alloca ptr, align 8
  %src_len = alloca i64, align 8
  %dest_len = alloca i64, align 8
  %ret = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca ptr, align 8
  %temp49 = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %j, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  store ptr %2, ptr %file, align 8
  %3 = load ptr, ptr %file, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %3, ptr noundef @.str.1)
  store ptr %call, ptr %fp, align 8
  %4 = load ptr, ptr %fp, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.end3, label %if.then1

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr %file, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %5)
  br label %error_exit

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %fp, align 8
  %call4 = call i32 @fseek(ptr noundef %6, i64 noundef 0, i32 noundef 2)
  %7 = load ptr, ptr %fp, align 8
  %call5 = call i64 @ftell(ptr noundef %7)
  store i64 %call5, ptr %src_len, align 8
  %8 = load i64, ptr %src_len, align 8
  %call6 = call ptr @malloc(i64 noundef %8) #5
  store ptr %call6, ptr %src, align 8
  %9 = load ptr, ptr %src, align 8
  %tobool7 = icmp ne ptr %9, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end3
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %error_alloc_src

if.end10:                                         ; preds = %if.end3
  %10 = load i64, ptr %src_len, align 8
  %call11 = call ptr @malloc(i64 noundef %10) #5
  store ptr %call11, ptr %dest, align 8
  %11 = load ptr, ptr %dest, align 8
  %tobool12 = icmp ne ptr %11, null
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end10
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %error_alloc_dest

if.end15:                                         ; preds = %if.end10
  %12 = load i64, ptr %src_len, align 8
  store i64 %12, ptr %dest_len, align 8
  %13 = load ptr, ptr %fp, align 8
  %call16 = call i32 @fseek(ptr noundef %13, i64 noundef 0, i32 noundef 0)
  %14 = load ptr, ptr %src, align 8
  %15 = load i64, ptr %src_len, align 8
  %16 = load ptr, ptr %fp, align 8
  %call17 = call i64 @fread(ptr noundef %14, i64 noundef 1, i64 noundef %15, ptr noundef %16)
  store i64 %call17, ptr %ret, align 8
  %17 = load i64, ptr %ret, align 8
  %18 = load i64, ptr %src_len, align 8
  %cmp18 = icmp ne i64 %17, %18
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  %19 = load i64, ptr %ret, align 8
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i64 noundef %19)
  br label %error_load_file

if.end21:                                         ; preds = %if.end15
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end21
  %20 = load i32, ptr %i, align 4
  %conv = sext i32 %20 to i64
  %21 = load i64, ptr %src_len, align 8
  %cmp22 = icmp slt i64 %conv, %21
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %src, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %22, i64 %idxprom
  %24 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %24 to i32
  %cmp26 = icmp ne i32 %conv25, 10
  br i1 %cmp26, label %if.then28, label %if.else44

if.then28:                                        ; preds = %for.body
  %25 = load i32, ptr %j, align 4
  %conv29 = sext i32 %25 to i64
  %26 = load i64, ptr %dest_len, align 8
  %cmp30 = icmp eq i64 %conv29, %26
  br i1 %cmp30, label %if.then32, label %if.end39

if.then32:                                        ; preds = %if.then28
  %27 = load i64, ptr %dest_len, align 8
  %mul = mul nsw i64 %27, 2
  %conv33 = trunc i64 %mul to i32
  %call34 = call ptr @realloc_more(ptr noundef %dest, i32 noundef %conv33)
  store ptr %call34, ptr %temp, align 8
  %28 = load ptr, ptr %temp, align 8
  %tobool35 = icmp ne ptr %28, null
  br i1 %tobool35, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.then32
  br label %error_load_file

if.else:                                          ; preds = %if.then32
  %29 = load ptr, ptr %temp, align 8
  store ptr %29, ptr %dest, align 8
  %30 = load i64, ptr %dest_len, align 8
  %mul37 = mul nsw i64 %30, 2
  store i64 %mul37, ptr %dest_len, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then28
  %31 = load ptr, ptr %src, align 8
  %32 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %arrayidx41 = getelementptr inbounds i8, ptr %31, i64 %idxprom40
  %33 = load i8, ptr %arrayidx41, align 1
  %34 = load ptr, ptr %dest, align 8
  %35 = load i32, ptr %j, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %j, align 4
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds i8, ptr %34, i64 %idxprom42
  store i8 %33, ptr %arrayidx43, align 1
  br label %if.end65

if.else44:                                        ; preds = %for.body
  %36 = load i32, ptr %j, align 4
  %conv45 = sext i32 %36 to i64
  %37 = load i64, ptr %dest_len, align 8
  %cmp46 = icmp eq i64 %conv45, %37
  br i1 %cmp46, label %if.then48, label %if.end58

if.then48:                                        ; preds = %if.else44
  %38 = load i64, ptr %dest_len, align 8
  %mul50 = mul nsw i64 %38, 2
  %conv51 = trunc i64 %mul50 to i32
  %call52 = call ptr @realloc_more(ptr noundef %dest, i32 noundef %conv51)
  store ptr %call52, ptr %temp49, align 8
  %39 = load ptr, ptr %temp49, align 8
  %tobool53 = icmp ne ptr %39, null
  br i1 %tobool53, label %if.else55, label %if.then54

if.then54:                                        ; preds = %if.then48
  br label %error_load_file

if.else55:                                        ; preds = %if.then48
  %40 = load ptr, ptr %temp49, align 8
  store ptr %40, ptr %dest, align 8
  %41 = load i64, ptr %dest_len, align 8
  %mul56 = mul nsw i64 %41, 2
  store i64 %mul56, ptr %dest_len, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.else55
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.else44
  %42 = load ptr, ptr %dest, align 8
  %43 = load i32, ptr %j, align 4
  %inc59 = add nsw i32 %43, 1
  store i32 %inc59, ptr %j, align 4
  %idxprom60 = sext i32 %43 to i64
  %arrayidx61 = getelementptr inbounds i8, ptr %42, i64 %idxprom60
  store i8 13, ptr %arrayidx61, align 1
  %44 = load ptr, ptr %dest, align 8
  %45 = load i32, ptr %j, align 4
  %inc62 = add nsw i32 %45, 1
  store i32 %inc62, ptr %j, align 4
  %idxprom63 = sext i32 %45 to i64
  %arrayidx64 = getelementptr inbounds i8, ptr %44, i64 %idxprom63
  store i8 10, ptr %arrayidx64, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.end58, %if.end39
  br label %for.inc

for.inc:                                          ; preds = %if.end65
  %46 = load i32, ptr %i, align 4
  %inc66 = add nsw i32 %46, 1
  store i32 %inc66, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %47 = load ptr, ptr %fp, align 8
  %call67 = call i32 @fseek(ptr noundef %47, i64 noundef 0, i32 noundef 0)
  %48 = load ptr, ptr %dest, align 8
  %49 = load i32, ptr %j, align 4
  %conv68 = sext i32 %49 to i64
  %50 = load ptr, ptr %fp, align 8
  %call69 = call i64 @"\01_fwrite"(ptr noundef %48, i64 noundef 1, i64 noundef %conv68, ptr noundef %50)
  store i64 %call69, ptr %ret, align 8
  %51 = load i64, ptr %ret, align 8
  %52 = load i32, ptr %j, align 4
  %conv70 = sext i32 %52 to i64
  %cmp71 = icmp ne i64 %51, %conv70
  br i1 %cmp71, label %if.then73, label %if.end75

if.then73:                                        ; preds = %for.end
  %53 = load i64, ptr %ret, align 8
  %call74 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i64 noundef %53)
  br label %error_load_file

if.end75:                                         ; preds = %for.end
  %54 = load i32, ptr %j, align 4
  %call76 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %54)
  br label %error_load_file

error_load_file:                                  ; preds = %if.end75, %if.then73, %if.then54, %if.then36, %if.then19
  %55 = load ptr, ptr %dest, align 8
  call void @free(ptr noundef %55)
  br label %error_alloc_dest

error_alloc_dest:                                 ; preds = %error_load_file, %if.then13
  %56 = load ptr, ptr %src, align 8
  call void @free(ptr noundef %56)
  br label %error_alloc_src

error_alloc_src:                                  ; preds = %error_alloc_dest, %if.then8
  %57 = load ptr, ptr %fp, align 8
  %call77 = call i32 @fclose(ptr noundef %57)
  br label %error_exit

error_exit:                                       ; preds = %error_alloc_src, %if.then1
  br label %return

return:                                           ; preds = %error_exit, %if.then
  ret void
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @ftell(ptr noundef) #2

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare void @free(ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  call void @unix2dos(i32 noundef %0, ptr noundef %1)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(1) }
attributes #5 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
