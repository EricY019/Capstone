; ModuleID = './code/344-27597buffer.c'
source_filename = "./code/344-27597buffer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.buff1 = private unnamed_addr constant [50 x i8] c"How now brown cow.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"buff1 = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"buffer = %s\0A\00", align 1
@__stdoutp = external global ptr, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"length of buffer = %ld, buffer[%ld] = %c\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buffer = alloca ptr, align 8
  %buff1 = alloca [50 x i8], align 1
  %x = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 50) #5
  store ptr %call, ptr %buffer, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buff1, ptr align 1 @__const.main.buff1, i64 50, i1 false)
  %arraydecay = getelementptr inbounds [50 x i8], ptr %buff1, i64 0, i64 0
  store ptr %arraydecay, ptr %buffer, align 8
  %arraydecay1 = getelementptr inbounds [50 x i8], ptr %buff1, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay1)
  %0 = load ptr, ptr %buffer, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %0)
  %1 = load ptr, ptr %buffer, align 8
  %call4 = call i64 @strlen(ptr noundef %1) #6
  store i64 %call4, ptr %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %x, align 8
  %cmp = icmp ne i64 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %buffer, align 8
  %4 = load i8, ptr %3, align 1
  %conv = sext i8 %4 to i32
  %5 = load ptr, ptr @__stdoutp, align 8
  %call5 = call i32 @fputc(i32 noundef %conv, ptr noundef %5)
  %6 = load ptr, ptr @__stdoutp, align 8
  %call6 = call i32 @fputc(i32 noundef 10, ptr noundef %6)
  %7 = load ptr, ptr %buffer, align 8
  %call7 = call i64 @strlen(ptr noundef %7) #6
  %8 = load i64, ptr %x, align 8
  %9 = load ptr, ptr %buffer, align 8
  %10 = load i8, ptr %9, align 1
  %conv8 = sext i8 %10 to i32
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %call7, i64 noundef %8, i32 noundef %conv8)
  %11 = load ptr, ptr %buffer, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr, ptr %buffer, align 8
  %12 = load i8, ptr %11, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i64, ptr %x, align 8
  %dec = add nsw i64 %13, -1
  store i64 %dec, ptr %x, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #4

declare i32 @fputc(i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
