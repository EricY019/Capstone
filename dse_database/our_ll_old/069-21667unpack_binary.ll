; ModuleID = './code/069-21667unpack_binary.c'
source_filename = "./code/069-21667unpack_binary.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [47 x i8] c"\0AUsage:\0A   %s <input file> <output directory>\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s[%04d]\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@__func__.unpackBinaryFile = private unnamed_addr constant [17 x i8] c"unpackBinaryFile\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"069-21667unpack_binary.c\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"(out_file = fopen(out_fname, \22wb\22)) != NULL\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"[%d] - O:0x%04x, S:0x%04x\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"(file_buffer = malloc(entry_size)) != NULL\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Offset list ends at: 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Number of entries: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@__func__.runProgram = private unnamed_addr constant [11 x i8] c"runProgram\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"(in_file = fopen(in_fname, \22rb\22)) != NULL\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"outs\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printUsage(ptr noundef %fname) #0 {
entry:
  %fname.addr = alloca ptr, align 8
  store ptr %fname, ptr %fname.addr, align 8
  %0 = load ptr, ptr %fname.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @unpackBinaryFile(ptr noundef %in_file, ptr noundef %out_dirname, i32 noundef %cur_entry) #0 {
entry:
  %in_file.addr = alloca ptr, align 8
  %out_dirname.addr = alloca ptr, align 8
  %cur_entry.addr = alloca i32, align 4
  %out_file = alloca ptr, align 8
  %out_fname = alloca [256 x i8], align 1
  %file_buffer = alloca ptr, align 8
  %entry_offset = alloca i32, align 4
  %entry_size = alloca i32, align 4
  store ptr %in_file, ptr %in_file.addr, align 8
  store ptr %out_dirname, ptr %out_dirname.addr, align 8
  store i32 %cur_entry, ptr %cur_entry.addr, align 4
  %arraydecay = getelementptr inbounds [256 x i8], ptr %out_fname, i64 0, i64 0
  %0 = load ptr, ptr %out_dirname.addr, align 8
  %1 = load i32, ptr %cur_entry.addr, align 4
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 256, ptr noundef @.str.1, ptr noundef %0, i32 noundef %1)
  %arraydecay1 = getelementptr inbounds [256 x i8], ptr %out_fname, i64 0, i64 0
  %call2 = call ptr @"\01_fopen"(ptr noundef %arraydecay1, ptr noundef @.str.2)
  store ptr %call2, ptr %out_file, align 8
  %cmp = icmp ne ptr %call2, null
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.unpackBinaryFile, ptr noundef @.str.3, i32 noundef 62, ptr noundef @.str.4) #5
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load ptr, ptr %in_file.addr, align 8
  %4 = load i32, ptr %cur_entry.addr, align 4
  %mul = mul nsw i32 8, %4
  %conv3 = sext i32 %mul to i64
  %call4 = call i32 @fseek(ptr noundef %3, i64 noundef %conv3, i32 noundef 0)
  %5 = load ptr, ptr %in_file.addr, align 8
  %call5 = call i64 @fread(ptr noundef %entry_offset, i64 noundef 4, i64 noundef 1, ptr noundef %5)
  %6 = load ptr, ptr %in_file.addr, align 8
  %call6 = call i64 @fread(ptr noundef %entry_size, i64 noundef 4, i64 noundef 1, ptr noundef %6)
  %7 = load i32, ptr %cur_entry.addr, align 4
  %8 = load i32, ptr %entry_offset, align 4
  %9 = load i32, ptr %entry_size, align 4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %7, i32 noundef %8, i32 noundef %9)
  %10 = load i32, ptr %entry_size, align 4
  %conv8 = sext i32 %10 to i64
  %call9 = call ptr @malloc(i64 noundef %conv8) #6
  store ptr %call9, ptr %file_buffer, align 8
  %cmp10 = icmp ne ptr %call9, null
  %lnot12 = xor i1 %cmp10, true
  %lnot.ext13 = zext i1 %lnot12 to i32
  %conv14 = sext i32 %lnot.ext13 to i64
  %tobool15 = icmp ne i64 %conv14, 0
  br i1 %tobool15, label %cond.true16, label %cond.false17

cond.true16:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.unpackBinaryFile, ptr noundef @.str.3, i32 noundef 71, ptr noundef @.str.6) #5
  unreachable

11:                                               ; No predecessors!
  br label %cond.end18

cond.false17:                                     ; preds = %cond.end
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false17, %11
  %12 = load ptr, ptr %in_file.addr, align 8
  %13 = load i32, ptr %entry_offset, align 4
  %conv19 = sext i32 %13 to i64
  %call20 = call i32 @fseek(ptr noundef %12, i64 noundef %conv19, i32 noundef 0)
  %14 = load ptr, ptr %file_buffer, align 8
  %15 = load i32, ptr %entry_size, align 4
  %conv21 = sext i32 %15 to i64
  %16 = load ptr, ptr %in_file.addr, align 8
  %call22 = call i64 @fread(ptr noundef %14, i64 noundef %conv21, i64 noundef 1, ptr noundef %16)
  %17 = load ptr, ptr %file_buffer, align 8
  %18 = load i32, ptr %entry_size, align 4
  %conv23 = sext i32 %18 to i64
  %19 = load ptr, ptr %out_file, align 8
  %call24 = call i64 @"\01_fwrite"(ptr noundef %17, i64 noundef %conv23, i64 noundef 1, ptr noundef %19)
  %20 = load ptr, ptr %out_file, align 8
  %call25 = call i32 @fclose(ptr noundef %20)
  ret void
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @getNumEntries(ptr noundef %in_file) #0 {
entry:
  %in_file.addr = alloca ptr, align 8
  %bin_cache = alloca [4 x i8], align 1
  %offset_cache = alloca ptr, align 8
  %num_entries = alloca i32, align 4
  store ptr %in_file, ptr %in_file.addr, align 8
  %0 = load ptr, ptr %in_file.addr, align 8
  %call = call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0)
  %arraydecay = getelementptr inbounds [4 x i8], ptr %bin_cache, i64 0, i64 0
  %1 = load ptr, ptr %in_file.addr, align 8
  %call1 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 4, ptr noundef %1)
  store ptr %bin_cache, ptr %offset_cache, align 8
  %2 = load ptr, ptr %offset_cache, align 8
  %3 = load i32, ptr %2, align 4
  %div = sdiv i32 %3, 8
  store i32 %div, ptr %num_entries, align 4
  %4 = load ptr, ptr %offset_cache, align 8
  %5 = load i32, ptr %4, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %5)
  %6 = load i32, ptr %num_entries, align 4
  %sub = sub nsw i32 %6, 1
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %sub)
  %7 = load i32, ptr %num_entries, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @runProgram(ptr noundef %in_fname, ptr noundef %out_dir) #0 {
entry:
  %in_fname.addr = alloca ptr, align 8
  %out_dir.addr = alloca ptr, align 8
  %in_file = alloca ptr, align 8
  %out_dirname = alloca [256 x i8], align 1
  %cur_entry = alloca i32, align 4
  %end_entry = alloca i32, align 4
  store ptr %in_fname, ptr %in_fname.addr, align 8
  store ptr %out_dir, ptr %out_dir.addr, align 8
  %0 = load ptr, ptr %out_dir.addr, align 8
  %1 = load ptr, ptr %out_dir.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #7
  %sub = sub i64 %call, 1
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %sub
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %arraydecay = getelementptr inbounds [256 x i8], ptr %out_dirname, i64 0, i64 0
  %3 = load ptr, ptr %out_dir.addr, align 8
  %4 = load ptr, ptr %in_fname.addr, align 8
  %call2 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 256, ptr noundef @.str.9, ptr noundef %3, ptr noundef %4)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %arraydecay3 = getelementptr inbounds [256 x i8], ptr %out_dirname, i64 0, i64 0
  %5 = load ptr, ptr %out_dir.addr, align 8
  %6 = load ptr, ptr %in_fname.addr, align 8
  %call4 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay3, i32 noundef 0, i64 noundef 256, ptr noundef @.str.10, ptr noundef %5, i32 noundef 47, ptr noundef %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call2, %cond.true ], [ %call4, %cond.false ]
  %7 = load ptr, ptr %in_fname.addr, align 8
  %call5 = call ptr @"\01_fopen"(ptr noundef %7, ptr noundef @.str.11)
  store ptr %call5, ptr %in_file, align 8
  %cmp6 = icmp ne ptr %call5, null
  %lnot = xor i1 %cmp6, true
  %lnot.ext = zext i1 %lnot to i32
  %conv8 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv8, 0
  br i1 %tobool, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.runProgram, ptr noundef @.str.3, i32 noundef 139, ptr noundef @.str.12) #5
  unreachable

8:                                                ; No predecessors!
  br label %cond.end11

cond.false10:                                     ; preds = %cond.end
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false10, %8
  %9 = load ptr, ptr %in_file, align 8
  %call12 = call i32 @getNumEntries(ptr noundef %9)
  store i32 %call12, ptr %end_entry, align 4
  %10 = load ptr, ptr %in_file, align 8
  %call13 = call i32 @fseek(ptr noundef %10, i64 noundef 4, i32 noundef 1)
  store i32 1, ptr %cur_entry, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end11
  %11 = load i32, ptr %cur_entry, align 4
  %12 = load i32, ptr %end_entry, align 4
  %cmp14 = icmp slt i32 %11, %12
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %in_file, align 8
  %arraydecay16 = getelementptr inbounds [256 x i8], ptr %out_dirname, i64 0, i64 0
  %14 = load i32, ptr %cur_entry, align 4
  call void @unpackBinaryFile(ptr noundef %13, ptr noundef %arraydecay16, i32 noundef %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %cur_entry, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %cur_entry, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %in_file, align 8
  %call17 = call i32 @fclose(ptr noundef %16)
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #4

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
  switch i32 %0, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb2
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 2
  %4 = load ptr, ptr %arrayidx1, align 8
  call void @runProgram(ptr noundef %2, ptr noundef %4)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 1
  %6 = load ptr, ptr %arrayidx3, align 8
  call void @runProgram(ptr noundef %6, ptr noundef @.str.13)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb4
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx5, align 8
  call void @printUsage(ptr noundef %8)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { cold noreturn }
attributes #6 = { allocsize(0) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
