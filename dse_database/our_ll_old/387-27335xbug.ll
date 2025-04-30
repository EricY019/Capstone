; ModuleID = './code/387-27335xbug.c'
source_filename = "./code/387-27335xbug.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._Buffer = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.main.filename = private unnamed_addr constant [7 x i8] c"xbug.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@__stdinp = external global ptr, align 8
@__stderrp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"cannot open file\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"LD_LIBRARY_PATH\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"/bin/cat\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"cannot run \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @InitBuffer(ptr noundef %b) #0 {
entry:
  %b.addr = alloca ptr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %b.addr, align 8
  %room = getelementptr inbounds %struct._Buffer, ptr %0, i32 0, i32 1
  store i32 10000, ptr %room, align 8
  %1 = load ptr, ptr %b.addr, align 8
  %used = getelementptr inbounds %struct._Buffer, ptr %1, i32 0, i32 2
  store i32 0, ptr %used, align 4
  %call = call ptr @malloc(i64 noundef 10000) #7
  %2 = load ptr, ptr %b.addr, align 8
  %buff = getelementptr inbounds %struct._Buffer, ptr %2, i32 0, i32 0
  store ptr %call, ptr %buff, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @AppendToBuffer(ptr noundef %b, ptr noundef %str, i32 noundef %len) #0 {
entry:
  %b.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  store ptr %b, ptr %b.addr, align 8
  store ptr %str, ptr %str.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %b.addr, align 8
  %used = getelementptr inbounds %struct._Buffer, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %used, align 4
  %2 = load i32, ptr %len.addr, align 4
  %add = add nsw i32 %1, %2
  %3 = load ptr, ptr %b.addr, align 8
  %room = getelementptr inbounds %struct._Buffer, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %room, align 8
  %cmp = icmp sgt i32 %add, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %b.addr, align 8
  %buff = getelementptr inbounds %struct._Buffer, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %buff, align 8
  %7 = load ptr, ptr %b.addr, align 8
  %room1 = getelementptr inbounds %struct._Buffer, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %room1, align 8
  %mul = mul nsw i32 2, %8
  %conv = sext i32 %mul to i64
  %mul2 = mul i64 %conv, 1
  %call = call ptr @realloc(ptr noundef %6, i64 noundef %mul2) #8
  %9 = load ptr, ptr %b.addr, align 8
  %buff3 = getelementptr inbounds %struct._Buffer, ptr %9, i32 0, i32 0
  store ptr %call, ptr %buff3, align 8
  %10 = load ptr, ptr %b.addr, align 8
  %room4 = getelementptr inbounds %struct._Buffer, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %room4, align 8
  %mul5 = mul nsw i32 %11, 2
  store i32 %mul5, ptr %room4, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %b.addr, align 8
  %buff6 = getelementptr inbounds %struct._Buffer, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %buff6, align 8
  %14 = load ptr, ptr %b.addr, align 8
  %used7 = getelementptr inbounds %struct._Buffer, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %used7, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  %16 = load ptr, ptr %str.addr, align 8
  %17 = load i32, ptr %len.addr, align 4
  %conv8 = sext i32 %17 to i64
  %18 = load ptr, ptr %b.addr, align 8
  %buff9 = getelementptr inbounds %struct._Buffer, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %buff9, align 8
  %20 = load ptr, ptr %b.addr, align 8
  %used10 = getelementptr inbounds %struct._Buffer, ptr %20, i32 0, i32 2
  %21 = load i32, ptr %used10, align 4
  %idx.ext11 = sext i32 %21 to i64
  %add.ptr12 = getelementptr inbounds i8, ptr %19, i64 %idx.ext11
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr12, i1 false, i1 true, i1 false)
  %call13 = call ptr @__strncpy_chk(ptr noundef %add.ptr, ptr noundef %16, i64 noundef %conv8, i64 noundef %22) #9
  %23 = load i32, ptr %len.addr, align 4
  %24 = load ptr, ptr %b.addr, align 8
  %used14 = getelementptr inbounds %struct._Buffer, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %used14, align 4
  %add15 = add nsw i32 %25, %23
  store i32 %add15, ptr %used14, align 4
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @ReadFile(ptr noundef %buffer, ptr noundef %input) #0 {
entry:
  %buffer.addr = alloca ptr, align 8
  %input.addr = alloca ptr, align 8
  %buf = alloca [1025 x i8], align 1
  %bytes = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  store ptr %input, ptr %input.addr, align 8
  %0 = load ptr, ptr %buffer.addr, align 8
  %used = getelementptr inbounds %struct._Buffer, ptr %0, i32 0, i32 2
  store i32 0, ptr %used, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %input.addr, align 8
  %call = call i32 @feof(ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arraydecay = getelementptr inbounds [1025 x i8], ptr %buf, i64 0, i64 0
  %2 = load ptr, ptr %input.addr, align 8
  %call1 = call i64 @fread(ptr noundef %arraydecay, i64 noundef 1, i64 noundef 1024, ptr noundef %2)
  %conv = trunc i64 %call1 to i32
  store i32 %conv, ptr %bytes, align 4
  %cmp = icmp sgt i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %4 = load ptr, ptr %buffer.addr, align 8
  %arraydecay3 = getelementptr inbounds [1025 x i8], ptr %buf, i64 0, i64 0
  %5 = load i32, ptr %bytes, align 4
  call void @AppendToBuffer(ptr noundef %4, ptr noundef %arraydecay3, i32 noundef %5)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %6 = load ptr, ptr %buffer.addr, align 8
  call void @AppendToBuffer(ptr noundef %6, ptr noundef @.str, i32 noundef 1)
  ret void
}

declare i32 @feof(ptr noundef) #5

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %filename = alloca [7 x i8], align 1
  %input = alloca ptr, align 8
  %buffer = alloca %struct._Buffer, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %filename, ptr align 1 @__const.main.filename, i64 7, i1 false)
  call void @InitBuffer(ptr noundef %buffer)
  %arraydecay = getelementptr inbounds [7 x i8], ptr %filename, i64 0, i64 0
  %0 = load ptr, ptr @__stdinp, align 8
  %call = call ptr @"\01_freopen"(ptr noundef %arraydecay, ptr noundef @.str.1, ptr noundef %0)
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.2) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @"\01_unsetenv"(ptr noundef @.str.3)
  %call3 = call ptr @"\01_popen"(ptr noundef @.str.4, ptr noundef @.str.1)
  store ptr %call3, ptr %input, align 8
  %tobool4 = icmp ne ptr %call3, null
  br i1 %tobool4, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.5) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %3 = load ptr, ptr %input, align 8
  call void @ReadFile(ptr noundef %buffer, ptr noundef %3)
  %4 = load ptr, ptr %input, align 8
  %call8 = call i32 @pclose(ptr noundef %4)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare ptr @"\01_freopen"(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

declare i32 @"\01_unsetenv"(ptr noundef) #5

declare ptr @"\01_popen"(ptr noundef, ptr noundef) #5

declare i32 @pclose(ptr noundef) #5

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { allocsize(0) }
attributes #8 = { allocsize(1) }
attributes #9 = { nounwind }

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
