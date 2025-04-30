; ModuleID = './code/251-27460main_dummy.c'
source_filename = "./code/251-27460main_dummy.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@a = global [100 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [11 x i8] c"bzero: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"memset: %s\0A\00", align 1
@b = global [100 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"memcpy: %s\0A\00", align 1
@c = global [100 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"memmove: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"toupper: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"strcmp: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"strlen: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %r = alloca i32, align 4
  %sz = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 1 @a, i8 0, i64 100, i1 false)
  store i8 0, ptr getelementptr inbounds ([100 x i8], ptr @a, i64 0, i64 10), align 1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @a)
  call void @llvm.memset.p0.i64(ptr align 1 @a, i8 50, i64 100, i1 false)
  store i8 0, ptr getelementptr inbounds ([100 x i8], ptr @a, i64 0, i64 10), align 1
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef @a)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 @b, ptr align 1 @a, i64 100, i1 false)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef @b)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 @c, ptr align 1 @a, i64 100, i1 false)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef @c)
  store i8 97, ptr @a, align 1
  store i8 98, ptr @b, align 1
  store i8 99, ptr @c, align 1
  %0 = load i8, ptr @a, align 1
  %conv = sext i8 %0 to i32
  %call4 = call i32 @toupper(i32 noundef %conv) #6
  %conv5 = trunc i32 %call4 to i8
  store i8 %conv5, ptr @a, align 1
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef @a)
  store i8 0, ptr getelementptr inbounds ([100 x i8], ptr @a, i64 0, i64 10), align 1
  store i8 0, ptr getelementptr inbounds ([100 x i8], ptr @b, i64 0, i64 10), align 1
  store i8 0, ptr getelementptr inbounds ([100 x i8], ptr @c, i64 0, i64 10), align 1
  %call7 = call i32 @strcmp(ptr noundef @a, ptr noundef @b) #7
  store i32 %call7, ptr %r, align 4
  %1 = load i32, ptr %r, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %1)
  %call9 = call i64 @strlen(ptr noundef @a) #7
  store i64 %call9, ptr %sz, align 8
  %2 = load i64, ptr %sz, align 8
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i64 noundef %2)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) #4

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #5

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
