; ModuleID = './code/109-25865double.c'
source_filename = "./code/109-25865double.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__stderrp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: can't open '%s' (%s)\0A\00", align 1
@__stdinp = external global ptr, align 8
@linenum = global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%d: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %fp = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @"\01_fopen"(ptr noundef %4, ptr noundef @.str)
  store ptr %call, ptr %fp, align 8
  %5 = load ptr, ptr %fp, align 8
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr @__stderrp, align 8
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx2, align 8
  %9 = load ptr, ptr %argv.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 %idxprom3
  %11 = load ptr, ptr %arrayidx4, align 8
  %call5 = call ptr @__error()
  %12 = load i32, ptr %call5, align 4
  %call6 = call ptr @"\01_strerror"(i32 noundef %12)
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.1, ptr noundef %8, ptr noundef %11, ptr noundef %call6) #4
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %for.body
  %13 = load ptr, ptr %argv.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds ptr, ptr %13, i64 %idxprom8
  %15 = load ptr, ptr %arrayidx9, align 8
  %16 = load ptr, ptr %fp, align 8
  call void @doubleword(ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %fp, align 8
  %call10 = call i32 @fclose(ptr noundef %17)
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %19 = load i32, ptr %argc.addr, align 4
  %cmp11 = icmp eq i32 %19, 1
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  %20 = load ptr, ptr @__stdinp, align 8
  call void @doubleword(ptr noundef null, ptr noundef %20)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @"\01_strerror"(i32 noundef) #1

declare ptr @__error() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @doubleword(ptr noundef %name, ptr noundef %fp) #0 {
entry:
  %name.addr = alloca ptr, align 8
  %fp.addr = alloca ptr, align 8
  %prev = alloca [128 x i8], align 1
  %word = alloca [128 x i8], align 1
  store ptr %name, ptr %name.addr, align 8
  store ptr %fp, ptr %fp.addr, align 8
  store i32 1, ptr @linenum, align 4
  %arrayidx = getelementptr inbounds [128 x i8], ptr %prev, i64 0, i64 0
  store i8 0, ptr %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end13, %entry
  %0 = load ptr, ptr %fp.addr, align 8
  %arraydecay = getelementptr inbounds [128 x i8], ptr %word, i64 0, i64 0
  %call = call i32 @getword(ptr noundef %0, ptr noundef %arraydecay, i32 noundef 128)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx1 = getelementptr inbounds [128 x i8], ptr %word, i64 0, i64 0
  %1 = load i8, ptr %arrayidx1, align 1
  %conv = sext i8 %1 to i32
  %call2 = call i32 @isalpha(i32 noundef %conv) #5
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %while.body
  %arraydecay4 = getelementptr inbounds [128 x i8], ptr %prev, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [128 x i8], ptr %word, i64 0, i64 0
  %call6 = call i32 @strcmp(ptr noundef %arraydecay4, ptr noundef %arraydecay5) #4
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %name.addr, align 8
  %tobool8 = icmp ne ptr %2, null
  br i1 %tobool8, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then
  %3 = load ptr, ptr %name.addr, align 8
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then
  %4 = load i32, ptr @linenum, align 4
  %arraydecay11 = getelementptr inbounds [128 x i8], ptr %word, i64 0, i64 0
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %4, ptr noundef %arraydecay11)
  br label %if.end13

if.end13:                                         ; preds = %if.end, %land.lhs.true, %while.body
  %arraydecay14 = getelementptr inbounds [128 x i8], ptr %prev, i64 0, i64 0
  %arraydecay15 = getelementptr inbounds [128 x i8], ptr %word, i64 0, i64 0
  %call16 = call ptr @__strcpy_chk(ptr noundef %arraydecay14, ptr noundef %arraydecay15, i64 noundef 128) #4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @getword(ptr noundef %fp, ptr noundef %buf, i32 noundef %size) #0 {
entry:
  %fp.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %fp, ptr %fp.addr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %0 = load ptr, ptr %fp.addr, align 8
  %call = call i32 @getc(ptr noundef %0)
  store i32 %call, ptr %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %c, align 4
  %cmp = icmp ne i32 %1, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, ptr %c, align 4
  %call1 = call i32 @isspace(i32 noundef %2) #5
  %tobool = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load i32, ptr %c, align 4
  %cmp2 = icmp eq i32 %4, 10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr @linenum, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @linenum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load ptr, ptr %fp.addr, align 8
  %call3 = call i32 @getc(ptr noundef %6)
  store i32 %call3, ptr %c, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %land.end
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc16, %for.end
  %7 = load i32, ptr %c, align 4
  %cmp5 = icmp ne i32 %7, -1
  br i1 %cmp5, label %land.rhs6, label %land.end9

land.rhs6:                                        ; preds = %for.cond4
  %8 = load i32, ptr %c, align 4
  %call7 = call i32 @isspace(i32 noundef %8) #5
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br label %land.end9

land.end9:                                        ; preds = %land.rhs6, %for.cond4
  %9 = phi i1 [ false, %for.cond4 ], [ %lnot, %land.rhs6 ]
  br i1 %9, label %for.body10, label %for.end18

for.body10:                                       ; preds = %land.end9
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %size.addr, align 4
  %sub = sub nsw i32 %11, 1
  %cmp11 = icmp slt i32 %10, %sub
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %for.body10
  %12 = load i32, ptr %c, align 4
  %call13 = call i32 @tolower(i32 noundef %12) #5
  %conv = trunc i32 %call13 to i8
  %13 = load ptr, ptr %buf.addr, align 8
  %14 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, ptr %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i8, ptr %13, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %for.body10
  br label %for.inc16

for.inc16:                                        ; preds = %if.end15
  %15 = load ptr, ptr %fp.addr, align 8
  %call17 = call i32 @getc(ptr noundef %15)
  store i32 %call17, ptr %c, align 4
  br label %for.cond4, !llvm.loop !9

for.end18:                                        ; preds = %land.end9
  %16 = load i32, ptr %i, align 4
  %17 = load i32, ptr %size.addr, align 4
  %cmp19 = icmp slt i32 %16, %17
  br i1 %cmp19, label %if.then21, label %if.end24

if.then21:                                        ; preds = %for.end18
  %18 = load ptr, ptr %buf.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %18, i64 %idxprom22
  store i8 0, ptr %arrayidx23, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %for.end18
  %20 = load i32, ptr %c, align 4
  %cmp25 = icmp ne i32 %20, -1
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %21 = load i32, ptr %c, align 4
  %22 = load ptr, ptr %fp.addr, align 8
  %call28 = call i32 @ungetc(i32 noundef %21, ptr noundef %22)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  %23 = load ptr, ptr %buf.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, ptr %23, i64 0
  %24 = load i8, ptr %arrayidx30, align 1
  %conv31 = sext i8 %24 to i32
  %cmp32 = icmp ne i32 %conv31, 0
  %conv33 = zext i1 %cmp32 to i32
  ret i32 %conv33
}

declare i32 @getc(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #3

declare i32 @ungetc(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

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
