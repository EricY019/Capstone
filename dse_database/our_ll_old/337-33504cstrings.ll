; ModuleID = './code/337-33504cstrings.c'
source_filename = "./code/337-33504cstrings.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.a = private unnamed_addr constant [20 x i8] c"hello \00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@__const.main.b = private unnamed_addr constant [7 x i8] c"world!\00", align 1
@.str = private unnamed_addr constant [21 x i8] c"The string c is: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"The length of c is: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"The string c is now: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"cat comes before dog (lexiographically)\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" to the\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"The cd string is: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Token:%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [20 x i8], align 1
  %b = alloca [7 x i8], align 1
  %c = alloca ptr, align 8
  %p = alloca ptr, align 8
  %d = alloca ptr, align 8
  %cd = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a, ptr align 1 @__const.main.a, i64 20, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b, ptr align 1 @__const.main.b, i64 7, i1 false)
  %arrayidx = getelementptr inbounds [20 x i8], ptr %a, i64 0, i64 0
  store i8 72, ptr %arrayidx, align 1
  %arraydecay = getelementptr inbounds [20 x i8], ptr %a, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [7 x i8], ptr %b, i64 0, i64 0
  %call = call ptr @__strcat_chk(ptr noundef %arraydecay, ptr noundef %arraydecay1, i64 noundef 20) #6
  store ptr %call, ptr %c, align 8
  %0 = load ptr, ptr %c, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  %1 = load ptr, ptr %c, align 8
  %call3 = call i64 @strlen(ptr noundef %1) #6
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %call3)
  %2 = load ptr, ptr %c, align 8
  %call5 = call ptr @strchr(ptr noundef %2, i32 noundef 119) #6
  store ptr %call5, ptr %p, align 8
  %3 = load ptr, ptr %p, align 8
  store i8 87, ptr %3, align 1
  %4 = load ptr, ptr %c, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %4)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store ptr @.str.4, ptr %d, align 8
  %5 = load ptr, ptr %c, align 8
  %call8 = call i64 @strlen(ptr noundef %5) #6
  %6 = load ptr, ptr %d, align 8
  %call9 = call i64 @strlen(ptr noundef %6) #6
  %add = add i64 %call8, %call9
  %call10 = call ptr @malloc(i64 noundef %add) #7
  store ptr %call10, ptr %cd, align 8
  %7 = load ptr, ptr %cd, align 8
  %8 = load ptr, ptr %c, align 8
  %9 = load ptr, ptr %cd, align 8
  %10 = call i64 @llvm.objectsize.i64.p0(ptr %9, i1 false, i1 true, i1 false)
  %call11 = call ptr @__memcpy_chk(ptr noundef %7, ptr noundef %8, i64 noundef 5, i64 noundef %10) #6
  %11 = load ptr, ptr %cd, align 8
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 5
  %12 = load ptr, ptr %d, align 8
  %13 = load ptr, ptr %d, align 8
  %call12 = call i64 @strlen(ptr noundef %13) #6
  %14 = load ptr, ptr %cd, align 8
  %add.ptr13 = getelementptr inbounds i8, ptr %14, i64 5
  %15 = call i64 @llvm.objectsize.i64.p0(ptr %add.ptr13, i1 false, i1 true, i1 false)
  %call14 = call ptr @__memcpy_chk(ptr noundef %add.ptr, ptr noundef %12, i64 noundef %call12, i64 noundef %15) #6
  %16 = load ptr, ptr %cd, align 8
  %add.ptr15 = getelementptr inbounds i8, ptr %16, i64 5
  %17 = load ptr, ptr %d, align 8
  %call16 = call i64 @strlen(ptr noundef %17) #6
  %add.ptr17 = getelementptr inbounds i8, ptr %add.ptr15, i64 %call16
  %18 = load ptr, ptr %c, align 8
  %add.ptr18 = getelementptr inbounds i8, ptr %18, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr17, ptr align 1 %add.ptr18, i64 6, i1 false)
  %19 = load ptr, ptr %cd, align 8
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %19)
  %20 = load ptr, ptr %cd, align 8
  %call20 = call ptr @strtok(ptr noundef %20, ptr noundef @.str.6)
  store ptr %call20, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %21 = load ptr, ptr %p, align 8
  %cmp = icmp ne ptr %21, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load ptr, ptr %p, align 8
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %22)
  %call22 = call ptr @strtok(ptr noundef null, ptr noundef @.str.6)
  store ptr %call22, ptr %p, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strchr(ptr noundef, i32 noundef) #2

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare ptr @__memcpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

declare ptr @strtok(ptr noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
