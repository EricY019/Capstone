; ModuleID = './code/249-34196test-fwrite.c'
source_filename = "./code/249-34196test-fwrite.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@_stksize = global i64 262144, align 8
@.str = private unnamed_addr constant [8 x i8] c"tmpfile\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"line\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fputs\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fwrite\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"getline\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Lines differ.  Test FAILED!\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"fread\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Buffers differ.  Test FAILED!\00", align 1
@.str.8 = private unnamed_addr constant [214 x i8] c"GDB is free software and you are welcome to distribute copies of it\0A under certain conditions; type \22show copying\22 to see the conditions.\0AThere is absolutely no warranty for GDB; type \22show warranty\22 for details.\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Test succeeded.\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %f = alloca ptr, align 8
  %obuf = alloca [99999 x i8], align 1
  %ibuf = alloca [99999 x i8], align 1
  %line = alloca ptr, align 8
  %linesz = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call ptr @tmpfile()
  store ptr %call, ptr %f, align 8
  %0 = load ptr, ptr %f, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @perror(ptr noundef @.str) #5
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %f, align 8
  %call1 = call i32 @"\01_fputs"(ptr noundef @.str.1, ptr noundef %1)
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @perror(ptr noundef @.str.2) #5
  store i32 1, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %arraydecay = getelementptr inbounds [99999 x i8], ptr %obuf, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 122, i64 99999, i1 false)
  %arraydecay4 = getelementptr inbounds [99999 x i8], ptr %ibuf, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay4, i8 121, i64 99999, i1 false)
  %arraydecay5 = getelementptr inbounds [99999 x i8], ptr %obuf, i64 0, i64 0
  %2 = load ptr, ptr %f, align 8
  %call6 = call i64 @"\01_fwrite"(ptr noundef %arraydecay5, i64 noundef 99999, i64 noundef 1, ptr noundef %2)
  %cmp7 = icmp ne i64 %call6, 1
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  call void @perror(ptr noundef @.str.3) #5
  store i32 1, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.end3
  %3 = load ptr, ptr %f, align 8
  call void @rewind(ptr noundef %3)
  store ptr null, ptr %line, align 8
  store i64 0, ptr %linesz, align 8
  %4 = load ptr, ptr %f, align 8
  %call10 = call i64 @getline(ptr noundef %line, ptr noundef %linesz, ptr noundef %4)
  %cmp11 = icmp ne i64 %call10, 5
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  call void @perror(ptr noundef @.str.4) #5
  store i32 1, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end9
  %5 = load ptr, ptr %line, align 8
  %call14 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.1) #6
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 @puts(ptr noundef @.str.5)
  store i32 1, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end13
  %arraydecay19 = getelementptr inbounds [99999 x i8], ptr %ibuf, i64 0, i64 0
  %6 = load ptr, ptr %f, align 8
  %call20 = call i64 @fread(ptr noundef %arraydecay19, i64 noundef 99999, i64 noundef 1, ptr noundef %6)
  %cmp21 = icmp ne i64 %call20, 1
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @perror(ptr noundef @.str.6) #5
  store i32 1, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end18
  %arraydecay24 = getelementptr inbounds [99999 x i8], ptr %ibuf, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [99999 x i8], ptr %obuf, i64 0, i64 0
  %call26 = call i32 @memcmp(ptr noundef %arraydecay24, ptr noundef %arraydecay25, i64 noundef 99999)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.end23
  %call29 = call i32 @puts(ptr noundef @.str.7)
  store i32 1, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end23
  %call31 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef %line, ptr noundef @.str.8)
  %call32 = call i32 @puts(ptr noundef @.str.9)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %if.then28, %if.then22, %if.then16, %if.then12, %if.then8, %if.then2, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare ptr @tmpfile() #1

; Function Attrs: cold
declare void @perror(ptr noundef) #2

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare void @rewind(ptr noundef) #1

declare i64 @getline(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #4

declare i32 @puts(ptr noundef) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @asprintf(ptr noundef, ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { cold }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
