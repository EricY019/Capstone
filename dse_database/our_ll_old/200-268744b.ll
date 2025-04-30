; ModuleID = './code/200-268744b.c'
source_filename = "./code/200-268744b.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [14 x i8] c"Campos verdes\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @duplica_string(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #5
  %add = add i64 %call, 1
  %call1 = call ptr @malloc(i64 noundef %add) #6
  store ptr %call1, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p, align 8
  %3 = load ptr, ptr %s.addr, align 8
  %4 = load ptr, ptr %p, align 8
  %5 = call i64 @llvm.objectsize.i64.p0(ptr %4, i1 false, i1 true, i1 false)
  %call2 = call ptr @__strcpy_chk(ptr noundef %2, ptr noundef %3, i64 noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %p, align 8
  ret ptr %6
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @voltea_string(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %length, align 4
  store i32 0, ptr %i, align 4
  %1 = load i32, ptr %length, align 4
  %conv1 = sext i32 %1 to i64
  %call2 = call ptr @malloc(i64 noundef %conv1) #6
  store ptr %call2, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, ptr %length, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %s.addr, align 8
  %4 = load i32, ptr %length, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  %add.ptr4 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %5 = load i8, ptr %add.ptr4, align 1
  %6 = load ptr, ptr %p, align 8
  %7 = load i32, ptr %i, align 4
  %idx.ext5 = sext i32 %7 to i64
  %add.ptr6 = getelementptr inbounds i8, ptr %6, i64 %idx.ext5
  store i8 %5, ptr %add.ptr6, align 1
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  %9 = load i32, ptr %length, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %length, align 4
  %10 = load ptr, ptr %p, align 8
  %11 = load i32, ptr %i, align 4
  %idx.ext7 = sext i32 %11 to i64
  %add.ptr8 = getelementptr inbounds i8, ptr %10, i64 %idx.ext7
  store i8 0, ptr %add.ptr8, align 1
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %p, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca ptr, align 8
  %s_duplicado = alloca ptr, align 8
  %s_volteado = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr @.str, ptr %s, align 8
  %0 = load ptr, ptr %s, align 8
  %call = call i64 @strlen(ptr noundef %0) #5
  %call1 = call ptr @malloc(i64 noundef %call) #6
  store ptr %call1, ptr %s_duplicado, align 8
  %1 = load ptr, ptr %s, align 8
  %call2 = call i64 @strlen(ptr noundef %1) #5
  %call3 = call ptr @malloc(i64 noundef %call2) #6
  store ptr %call3, ptr %s_volteado, align 8
  %2 = load ptr, ptr %s, align 8
  %call4 = call ptr @duplica_string(ptr noundef %2)
  store ptr %call4, ptr %s_duplicado, align 8
  %3 = load ptr, ptr %s_duplicado, align 8
  %call5 = call ptr @voltea_string(ptr noundef %3)
  store ptr %call5, ptr %s_volteado, align 8
  %4 = load ptr, ptr %s_volteado, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %4)
  %5 = load ptr, ptr %s_volteado, align 8
  call void @free(ptr noundef %5)
  %6 = load ptr, ptr %s_duplicado, align 8
  call void @free(ptr noundef %6)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #4

declare void @free(ptr noundef) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind }
attributes #6 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
