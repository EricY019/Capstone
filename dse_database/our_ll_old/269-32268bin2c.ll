; ModuleID = './code/269-32268bin2c.c'
source_filename = "./code/269-32268bin2c.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"error: can't open input or output file\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"const int %s_size = %d;\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"const unsigned char %s_data[%d] =\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"{\0A\09\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"0x%02x, \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"usage: bin2c <input> <output> [prefix]\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"file\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @convert(ptr noundef %ifn, ptr noundef %ofn, ptr noundef %prefix) #0 {
entry:
  %ifn.addr = alloca ptr, align 8
  %ofn.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  %i = alloca ptr, align 8
  %o = alloca ptr, align 8
  %buffer = alloca [2048 x i8], align 1
  %red = alloca i32, align 4
  %left = alloca i32, align 4
  %lc = alloca i32, align 4
  %q = alloca i32, align 4
  %buf = alloca [1024 x i8], align 1
  store ptr %ifn, ptr %ifn.addr, align 8
  store ptr %ofn, ptr %ofn.addr, align 8
  store ptr %prefix, ptr %prefix.addr, align 8
  %0 = load ptr, ptr %ifn.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %0, ptr noundef @.str)
  store ptr %call, ptr %i, align 8
  %1 = load ptr, ptr %ofn.addr, align 8
  %call1 = call ptr @"\01_fopen"(ptr noundef %1, ptr noundef @.str.1)
  store ptr %call1, ptr %o, align 8
  %2 = load ptr, ptr %i, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %o, align 8
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %i, align 8
  %call4 = call i32 @fseek(ptr noundef %4, i64 noundef 0, i32 noundef 2)
  %5 = load ptr, ptr %i, align 8
  %call5 = call i64 @ftell(ptr noundef %5)
  %conv = trunc i64 %call5 to i32
  store i32 %conv, ptr %left, align 4
  %6 = load ptr, ptr %i, align 8
  %call6 = call i32 @fseek(ptr noundef %6, i64 noundef 0, i32 noundef 0)
  %7 = load ptr, ptr %o, align 8
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %buf, i64 0, i64 0
  call void @setbuf(ptr noundef %7, ptr noundef %arraydecay)
  %8 = load ptr, ptr %o, align 8
  %9 = load ptr, ptr %prefix.addr, align 8
  %10 = load i32, ptr %left, align 4
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.3, ptr noundef %9, i32 noundef %10) #3
  %11 = load ptr, ptr %o, align 8
  %12 = load ptr, ptr %prefix.addr, align 8
  %13 = load i32, ptr %left, align 4
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.4, ptr noundef %12, i32 noundef %13) #3
  %14 = load ptr, ptr %o, align 8
  %call9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.5) #3
  store i32 0, ptr %lc, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %15 = load i32, ptr %left, align 4
  %cmp = icmp sgt i32 %15, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay11 = getelementptr inbounds [2048 x i8], ptr %buffer, i64 0, i64 0
  %16 = load ptr, ptr %i, align 8
  %call12 = call i64 @fread(ptr noundef %arraydecay11, i64 noundef 1, i64 noundef 2048, ptr noundef %16)
  %conv13 = trunc i64 %call12 to i32
  store i32 %conv13, ptr %red, align 4
  %17 = load i32, ptr %red, align 4
  %18 = load i32, ptr %left, align 4
  %sub = sub nsw i32 %18, %17
  store i32 %sub, ptr %left, align 4
  store i32 0, ptr %q, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %19 = load i32, ptr %q, align 4
  %20 = load i32, ptr %red, align 4
  %cmp14 = icmp slt i32 %19, %20
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %o, align 8
  %22 = load i32, ptr %q, align 4
  %idxprom = sext i32 %22 to i64
  %arrayidx = getelementptr inbounds [2048 x i8], ptr %buffer, i64 0, i64 %idxprom
  %23 = load i8, ptr %arrayidx, align 1
  %conv16 = zext i8 %23 to i32
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.6, i32 noundef %conv16) #3
  %24 = load i32, ptr %lc, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %lc, align 4
  %cmp18 = icmp sge i32 %inc, 8
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.body
  store i32 0, ptr %lc, align 4
  %25 = load ptr, ptr %o, align 8
  %call21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str.7) #3
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %26 = load i32, ptr %q, align 4
  %inc23 = add nsw i32 %26, 1
  store i32 %inc23, ptr %q, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %27 = load ptr, ptr %o, align 8
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.8) #3
  %28 = load ptr, ptr %i, align 8
  %call25 = call i32 @fclose(ptr noundef %28)
  %29 = load ptr, ptr %o, align 8
  %call26 = call i32 @fclose(ptr noundef %29)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @ftell(ptr noundef) #1

declare void @setbuf(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %prefix = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, ptr %argc.addr, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp ne i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp ne i32 %2, 3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, ptr %argc.addr, align 4
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 3
  %5 = load ptr, ptr %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ @.str.10, %cond.false ]
  store ptr %cond, ptr %prefix, align 8
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx3, align 8
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %8, i64 2
  %9 = load ptr, ptr %arrayidx4, align 8
  %10 = load ptr, ptr %prefix, align 8
  call void @convert(ptr noundef %7, ptr noundef %9, ptr noundef %10)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

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
