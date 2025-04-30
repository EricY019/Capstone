; ModuleID = './code/230-28646reverse_string.c'
source_filename = "./code/230-28646reverse_string.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.str = private unnamed_addr constant [11 x i8] c"Atul Patil\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"%s ==> %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [11 x i8], align 1
  %rstr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str, ptr align 1 @__const.main.str, i64 11, i1 false)
  %arraydecay = getelementptr inbounds [11 x i8], ptr %str, i64 0, i64 0
  %call = call ptr @rstrdup(ptr noundef %arraydecay)
  store ptr %call, ptr %rstr, align 8
  %arraydecay1 = getelementptr inbounds [11 x i8], ptr %str, i64 0, i64 0
  call void @reverse_string(ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [11 x i8], ptr %str, i64 0, i64 0
  %0 = load ptr, ptr %rstr, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay2, ptr noundef %0)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @rstrdup(ptr noundef %str) #0 {
entry:
  %retval = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %rstr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8
  %call = call ptr @strdup(ptr noundef %1) #4
  store ptr %call, ptr %rstr, align 8
  %2 = load ptr, ptr %rstr, align 8
  call void @reverse_string(ptr noundef %2)
  %3 = load ptr, ptr %rstr, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load ptr, ptr %retval, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverse_string(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %start = alloca ptr, align 8
  %end = alloca ptr, align 8
  %tmp = alloca i8, align 1
  store ptr %str, ptr %str.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len, align 4
  %2 = load ptr, ptr %str.addr, align 8
  store ptr %2, ptr %start, align 8
  %3 = load ptr, ptr %str.addr, align 8
  %4 = load i32, ptr %len, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr1, ptr %end, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %5 = load ptr, ptr %start, align 8
  %6 = load ptr, ptr %end, align 8
  %cmp = icmp ult ptr %5, %6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %start, align 8
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr %tmp, align 1
  %9 = load ptr, ptr %end, align 8
  %10 = load i8, ptr %9, align 1
  %11 = load ptr, ptr %start, align 8
  store i8 %10, ptr %11, align 1
  %12 = load i8, ptr %tmp, align 1
  %13 = load ptr, ptr %end, align 8
  store i8 %12, ptr %13, align 1
  %14 = load ptr, ptr %start, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %14, i32 1
  store ptr %incdec.ptr, ptr %start, align 8
  %15 = load ptr, ptr %end, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %15, i32 -1
  store ptr %incdec.ptr3, ptr %end, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @strdup(ptr noundef) #3

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
