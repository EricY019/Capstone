; ModuleID = './code/327-11474fortuneindex.c'
source_filename = "./code/327-11474fortuneindex.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__stdinp = external global ptr, align 8
@__stdoutp = external global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @indexfile(ptr noundef %in, ptr noundef %out) #0 {
entry:
  %in.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %ch = alloca i32, align 4
  %ch0 = alloca i32, align 4
  %ch1 = alloca i32, align 4
  %pos = alloca i64, align 8
  store ptr %in, ptr %in.addr, align 8
  store ptr %out, ptr %out.addr, align 8
  store i64 0, ptr %pos, align 8
  store i32 0, ptr %ch0, align 4
  store i32 0, ptr %ch1, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %in.addr, align 8
  %call = call i32 @fgetc(ptr noundef %0)
  store i32 %call, ptr %ch, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %ch1, align 4
  %cmp1 = icmp eq i32 %1, 10
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %2 = load i32, ptr %ch1, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %while.body
  %3 = load i32, ptr %ch0, align 4
  %cmp3 = icmp eq i32 %3, 37
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %ch, align 4
  %cmp5 = icmp eq i32 %4, 10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %5 = load ptr, ptr %out.addr, align 8
  %call6 = call i64 @"\01_fwrite"(ptr noundef %pos, i64 noundef 1, i64 noundef 8, ptr noundef %5)
  %6 = load ptr, ptr %in.addr, align 8
  %call7 = call i64 @ftell(ptr noundef %6)
  store i64 %call7, ptr %pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true, %lor.lhs.false
  %7 = load i32, ptr %ch0, align 4
  store i32 %7, ptr %ch1, align 4
  %8 = load i32, ptr %ch, align 4
  store i32 %8, ptr %ch0, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %out.addr, align 8
  %call8 = call i64 @"\01_fwrite"(ptr noundef %pos, i64 noundef 1, i64 noundef 8, ptr noundef %9)
  ret void
}

declare i32 @fgetc(ptr noundef) #1

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i64 @ftell(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %in = alloca ptr, align 8
  %out = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stdinp, align 8
  %2 = load ptr, ptr @__stdoutp, align 8
  call void @indexfile(ptr noundef %1, ptr noundef %2)
  br label %if.end16

if.else:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %if.then11, %if.then5, %if.then2, %if.else
  %3 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %argv.addr, align 8
  %4 = load ptr, ptr %incdec.ptr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %argv.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %call = call i32 @strcmp(ptr noundef %6, ptr noundef @.str) #4
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  %7 = load ptr, ptr @__stdinp, align 8
  %8 = load ptr, ptr @__stdoutp, align 8
  call void @indexfile(ptr noundef %7, ptr noundef %8)
  br label %while.cond, !llvm.loop !7

if.end:                                           ; preds = %while.body
  %9 = load ptr, ptr %argv.addr, align 8
  %10 = load ptr, ptr %9, align 8
  %call3 = call ptr @"\01_fopen"(ptr noundef %10, ptr noundef @.str.1)
  store ptr %call3, ptr %in, align 8
  %11 = load ptr, ptr %in, align 8
  %cmp4 = icmp eq ptr %11, null
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr6 = getelementptr inbounds ptr, ptr %12, i32 1
  store ptr %incdec.ptr6, ptr %argv.addr, align 8
  %13 = load ptr, ptr %12, align 8
  call void @perror(ptr noundef %13) #5
  br label %while.cond, !llvm.loop !7

if.end7:                                          ; preds = %if.end
  %14 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr8 = getelementptr inbounds ptr, ptr %14, i32 1
  store ptr %incdec.ptr8, ptr %argv.addr, align 8
  %15 = load ptr, ptr %incdec.ptr8, align 8
  %call9 = call ptr @"\01_fopen"(ptr noundef %15, ptr noundef @.str.2)
  store ptr %call9, ptr %out, align 8
  %16 = load ptr, ptr %out, align 8
  %cmp10 = icmp eq ptr %16, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  %17 = load ptr, ptr %argv.addr, align 8
  %18 = load ptr, ptr %17, align 8
  call void @perror(ptr noundef %18) #5
  %19 = load ptr, ptr %in, align 8
  %call12 = call i32 @fclose(ptr noundef %19)
  br label %while.cond, !llvm.loop !7

if.end13:                                         ; preds = %if.end7
  %20 = load ptr, ptr %in, align 8
  %21 = load ptr, ptr %out, align 8
  call void @indexfile(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %in, align 8
  %call14 = call i32 @fclose(ptr noundef %22)
  %23 = load ptr, ptr %out, align 8
  %call15 = call i32 @fclose(ptr noundef %23)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  br label %if.end16

if.end16:                                         ; preds = %while.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: cold
declare void @perror(ptr noundef) #3

declare i32 @fclose(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }
attributes #5 = { cold }

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
