; ModuleID = './code/234-3021trimzero.c'
source_filename = "./code/234-3021trimzero.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.buf = private unnamed_addr constant [9 x i8] c"00001234\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"lu8char: %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"tmpbuf: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"buf: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [9 x i8], align 1
  %i = alloca i32, align 4
  %bufSize = alloca i32, align 4
  %lu8pBuf = alloca ptr, align 8
  %tmpBuf = alloca [512 x i8], align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buf, ptr align 1 @__const.main.buf, i64 9, i1 false)
  store i32 0, ptr %i, align 4
  store i32 9, ptr %bufSize, align 4
  %arraydecay = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  store ptr %arraydecay, ptr %lu8pBuf, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %tmpBuf, i8 0, i64 512, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %bufSize, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %lu8pBuf, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  %6 = load ptr, ptr %lu8pBuf, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %lu8pBuf, align 8
  %7 = load ptr, ptr %lu8pBuf, align 8
  %8 = load i8, ptr %7, align 1
  %conv3 = sext i8 %8 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv3)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %arraydecay4 = getelementptr inbounds [512 x i8], ptr %tmpBuf, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %9 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %9 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay5, i64 %idx.ext
  %10 = load i32, ptr %bufSize, align 4
  %11 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %10, %11
  %conv6 = sext i32 %sub to i64
  %call7 = call ptr @__memcpy_chk(ptr noundef %arraydecay4, ptr noundef %add.ptr, i64 noundef %conv6, i64 noundef 512) #5
  %arraydecay8 = getelementptr inbounds [512 x i8], ptr %tmpBuf, i64 0, i64 0
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay8)
  %arraydecay10 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %12 = load i32, ptr %bufSize, align 4
  %conv11 = sext i32 %12 to i64
  %call12 = call ptr @__memset_chk(ptr noundef %arraydecay10, i32 noundef 0, i64 noundef %conv11, i64 noundef 9) #5
  %arraydecay13 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [512 x i8], ptr %tmpBuf, i64 0, i64 0
  %13 = load i32, ptr %bufSize, align 4
  %14 = load i32, ptr %i, align 4
  %sub15 = sub nsw i32 %13, %14
  %conv16 = sext i32 %sub15 to i64
  %call17 = call ptr @__memcpy_chk(ptr noundef %arraydecay13, ptr noundef %arraydecay14, i64 noundef %conv16, i64 noundef 9) #5
  %arraydecay18 = getelementptr inbounds [9 x i8], ptr %buf, i64 0, i64 0
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay18)
  %15 = load i32, ptr %retval, align 4
  ret i32 %15
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
