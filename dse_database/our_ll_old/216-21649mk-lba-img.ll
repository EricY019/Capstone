; ModuleID = './code/216-21649mk-lba-img.c'
source_filename = "./code/216-21649mk-lba-img.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@DEF_FN = constant [2 x i8] c"-\00", align 1
@.str = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@__stdoutp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@__stderrp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"%s: %s: unable to open for writing: %s\0A\00", align 1
@__stdinp = external global ptr, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rv = alloca i32, align 4
  %one = alloca i32, align 4
  %lba = alloca i32, align 4
  %b = alloca [128 x i32], align 4
  %len = alloca i32, align 4
  %f = alloca ptr, align 8
  %tt = alloca i8, align 1
  %fn = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %rv, align 4
  store i32 0, ptr %one, align 4
  store i8 0, ptr %tt, align 1
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sge i32 %0, 2
  br i1 %cmp, label %if.then, label %if.else10

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sge i32 %1, 3
  br i1 %cmp1, label %if.then2, label %if.else7

if.then2:                                         ; preds = %if.then
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @strcasecmp(ptr noundef @.str, ptr noundef %3)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx5, align 8
  store ptr %5, ptr %fn, align 8
  store i32 1, ptr %one, align 4
  br label %if.end

if.else:                                          ; preds = %if.then2
  %6 = load ptr, ptr %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx6, align 8
  store ptr %7, ptr %fn, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  br label %if.end9

if.else7:                                         ; preds = %if.then
  %8 = load ptr, ptr %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx8, align 8
  store ptr %9, ptr %fn, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.end
  br label %if.end11

if.else10:                                        ; preds = %entry
  store ptr @DEF_FN, ptr %fn, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.end9
  %10 = load ptr, ptr %fn, align 8
  %call12 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.1) #5
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.end11
  %11 = load ptr, ptr @__stdoutp, align 8
  store ptr %11, ptr %f, align 8
  br label %if.end16

if.else14:                                        ; preds = %if.end11
  %12 = load ptr, ptr %fn, align 8
  %call15 = call ptr @"\01_fopen"(ptr noundef %12, ptr noundef @.str.2)
  store ptr %call15, ptr %f, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.then13
  %13 = load ptr, ptr %f, align 8
  %tobool17 = icmp ne ptr %13, null
  br i1 %tobool17, label %if.end23, label %if.then18

if.then18:                                        ; preds = %if.end16
  %14 = load ptr, ptr @__stderrp, align 8
  %15 = load ptr, ptr %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %15, i64 0
  %16 = load ptr, ptr %arrayidx19, align 8
  %17 = load ptr, ptr %fn, align 8
  %call20 = call ptr @__error()
  %18 = load i32, ptr %call20, align 4
  %call21 = call ptr @"\01_strerror"(i32 noundef %18)
  %call22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef @.str.3, ptr noundef %16, ptr noundef %17, ptr noundef %call21) #5
  store i32 1, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end16
  store i32 0, ptr %lba, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %if.end23
  %arraydecay = getelementptr inbounds [128 x i32], ptr %b, i64 0, i64 0
  %19 = load ptr, ptr @__stdinp, align 8
  %call24 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 512, ptr noundef %19)
  %conv = trunc i64 %call24 to i32
  store i32 %conv, ptr %len, align 4
  %tobool25 = icmp ne i32 %conv, 0
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i32, ptr %len, align 4
  %cmp26 = icmp slt i32 %20, 512
  br i1 %cmp26, label %if.then28, label %if.end35

if.then28:                                        ; preds = %while.body
  %arraydecay29 = getelementptr inbounds [128 x i32], ptr %b, i64 0, i64 0
  %21 = load i32, ptr %len, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay29, i64 %idx.ext
  %22 = load i32, ptr %len, align 4
  %sub = sub nsw i32 512, %22
  %conv30 = sext i32 %sub to i64
  %arraydecay31 = getelementptr inbounds [128 x i32], ptr %b, i64 0, i64 0
  %23 = load i32, ptr %len, align 4
  %idx.ext32 = sext i32 %23 to i64
  %add.ptr33 = getelementptr inbounds i8, ptr %arraydecay31, i64 %idx.ext32
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr33, i1 false, i1 true, i1 false)
  %call34 = call ptr @__memset_chk(ptr noundef %add.ptr, i32 noundef 0, i64 noundef %conv30, i64 noundef %24) #5
  br label %if.end35

if.end35:                                         ; preds = %if.then28, %while.body
  %arraydecay36 = getelementptr inbounds [128 x i32], ptr %b, i64 0, i64 0
  %25 = load ptr, ptr %f, align 8
  %call37 = call i64 @"\01_fwrite"(ptr noundef %arraydecay36, i64 noundef 1, i64 noundef 512, ptr noundef %25)
  %26 = load i32, ptr %lba, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %lba, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %arraydecay38 = getelementptr inbounds [128 x i32], ptr %b, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay38, i8 0, i64 512, i1 false)
  br label %while.cond39

while.cond39:                                     ; preds = %if.end52, %while.end
  %27 = load i32, ptr %lba, align 4
  %cmp40 = icmp ult i32 %27, 16129
  br i1 %cmp40, label %while.body42, label %while.end56

while.body42:                                     ; preds = %while.cond39
  %28 = load i32, ptr %one, align 4
  %tobool43 = icmp ne i32 %28, 0
  br i1 %tobool43, label %if.then44, label %if.else46

if.then44:                                        ; preds = %while.body42
  %29 = load i32, ptr %lba, align 4
  %arrayidx45 = getelementptr inbounds [128 x i32], ptr %b, i64 0, i64 0
  store i32 %29, ptr %arrayidx45, align 4
  br label %if.end52

if.else46:                                        ; preds = %while.body42
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else46
  %30 = load i32, ptr %i, align 4
  %conv47 = sext i32 %30 to i64
  %cmp48 = icmp ult i64 %conv47, 128
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, ptr %lba, align 4
  %32 = load i32, ptr %i, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx50 = getelementptr inbounds [128 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 %31, ptr %arrayidx50, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, ptr %i, align 4
  %inc51 = add nsw i32 %33, 1
  store i32 %inc51, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  br label %if.end52

if.end52:                                         ; preds = %for.end, %if.then44
  %arraydecay53 = getelementptr inbounds [128 x i32], ptr %b, i64 0, i64 0
  %34 = load ptr, ptr %f, align 8
  %call54 = call i64 @"\01_fwrite"(ptr noundef %arraydecay53, i64 noundef 1, i64 noundef 512, ptr noundef %34)
  %35 = load i32, ptr %lba, align 4
  %inc55 = add i32 %35, 1
  store i32 %inc55, ptr %lba, align 4
  br label %while.cond39, !llvm.loop !8

while.end56:                                      ; preds = %while.cond39
  %36 = load ptr, ptr %f, align 8
  %37 = load ptr, ptr @__stdoutp, align 8
  %cmp57 = icmp ne ptr %36, %37
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %while.end56
  %38 = load ptr, ptr %f, align 8
  %call60 = call i32 @fclose(ptr noundef %38)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %while.end56
  %39 = load i32, ptr %rv, align 4
  store i32 %39, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end61, %if.then18
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

declare i32 @strcasecmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare ptr @"\01_strerror"(i32 noundef) #1

declare ptr @__error() #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @fclose(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
