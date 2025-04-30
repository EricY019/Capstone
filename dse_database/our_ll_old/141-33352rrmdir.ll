; ModuleID = './code/141-33352rrmdir.c'
source_filename = "./code/141-33352rrmdir.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"remove %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @convertPath(ptr noundef %pathToConvert) #0 {
entry:
  %pathToConvert.addr = alloca ptr, align 8
  store ptr %pathToConvert, ptr %pathToConvert.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %pathToConvert.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pathToConvert.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 92
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %pathToConvert.addr, align 8
  store i8 47, ptr %4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %5 = load ptr, ptr %pathToConvert.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %pathToConvert.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @getDirectory(ptr noundef %filename, ptr noundef %directorySpec) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %directorySpec.addr = alloca ptr, align 8
  %lengthOfDirectory = alloca i32, align 4
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %directorySpec, ptr %directorySpec.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @strrchr(ptr noundef %0, i32 noundef 47) #4
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %filename.addr, align 8
  %call1 = call ptr @strrchr(ptr noundef %1, i32 noundef 47) #4
  %2 = load ptr, ptr %filename.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %call1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  store i32 %conv, ptr %lengthOfDirectory, align 4
  %3 = load ptr, ptr %directorySpec.addr, align 8
  %4 = load ptr, ptr %filename.addr, align 8
  %5 = load i32, ptr %lengthOfDirectory, align 4
  %conv2 = sext i32 %5 to i64
  %6 = load ptr, ptr %directorySpec.addr, align 8
  %7 = call i64 @llvm.objectsize.i64.p0(ptr %6, i1 false, i1 true, i1 false)
  %call3 = call ptr @__strncpy_chk(ptr noundef %3, ptr noundef %4, i64 noundef %conv2, i64 noundef %7) #4
  %8 = load ptr, ptr %directorySpec.addr, align 8
  %9 = load i32, ptr %lengthOfDirectory, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds i8, ptr %8, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %directorySpec.addr, align 8
  %11 = load ptr, ptr %directorySpec.addr, align 8
  %12 = call i64 @llvm.objectsize.i64.p0(ptr %11, i1 false, i1 true, i1 false)
  %call4 = call ptr @__strcpy_chk(ptr noundef %10, ptr noundef @.str, i64 noundef %12) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare ptr @strrchr(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #2

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @getFilename(ptr noundef %filename, ptr noundef %fileSpec) #0 {
entry:
  %filename.addr = alloca ptr, align 8
  %fileSpec.addr = alloca ptr, align 8
  store ptr %filename, ptr %filename.addr, align 8
  store ptr %fileSpec, ptr %fileSpec.addr, align 8
  %0 = load ptr, ptr %filename.addr, align 8
  %call = call ptr @strrchr(ptr noundef %0, i32 noundef 47) #4
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fileSpec.addr, align 8
  %2 = load ptr, ptr %filename.addr, align 8
  %call1 = call ptr @strrchr(ptr noundef %2, i32 noundef 47) #4
  %add.ptr = getelementptr inbounds i8, ptr %call1, i64 1
  %3 = load ptr, ptr %fileSpec.addr, align 8
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %3, i1 false, i1 true, i1 false)
  %call2 = call ptr @__strcpy_chk(ptr noundef %1, ptr noundef %add.ptr, i64 noundef %4) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %fileSpec.addr, align 8
  %6 = load ptr, ptr %filename.addr, align 8
  %7 = load ptr, ptr %fileSpec.addr, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call3 = call ptr @__strcpy_chk(ptr noundef %5, ptr noundef %6, i64 noundef %8) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %justPrint = alloca i32, align 4
  %idx = alloca i32, align 4
  %returnCode = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %justPrint, align 4
  store i32 1, ptr %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %idx, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load i32, ptr %idx, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8
  call void @convertPath(ptr noundef %4)
  %5 = load i32, ptr %justPrint, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %argv.addr, align 8
  %7 = load i32, ptr %idx, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds ptr, ptr %6, i64 %idxprom1
  %8 = load ptr, ptr %arrayidx2, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %8)
  br label %if.end10

if.else:                                          ; preds = %for.body
  %9 = load ptr, ptr %argv.addr, align 8
  %10 = load i32, ptr %idx, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 %idxprom3
  %11 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @rmdir(ptr noundef %11)
  store i32 %call5, ptr %returnCode, align 4
  %12 = load i32, ptr %returnCode, align 4
  %cmp6 = icmp ne i32 %12, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %call7 = call ptr @__error()
  %13 = load i32, ptr %call7, align 4
  %cmp8 = icmp ne i32 %13, 2
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %land.lhs.true
  br label %if.end

if.end:                                           ; preds = %if.then9, %land.lhs.true, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %14 = load i32, ptr %idx, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %idx, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #3

declare i32 @rmdir(ptr noundef) #3

declare ptr @__error() #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
