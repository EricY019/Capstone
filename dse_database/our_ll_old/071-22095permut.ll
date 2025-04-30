; ModuleID = './code/071-22095permut.c'
source_filename = "./code/071-22095permut.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__const.main.name = private unnamed_addr constant [11 x i8] c"9788029400\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %a, ptr noundef %c) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %temp = alloca i8, align 1
  store ptr %a, ptr %a.addr, align 8
  store ptr %c, ptr %c.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load i8, ptr %0, align 1
  store i8 %1, ptr %temp, align 1
  %2 = load ptr, ptr %c.addr, align 8
  %3 = load i8, ptr %2, align 1
  %4 = load ptr, ptr %a.addr, align 8
  store i8 %3, ptr %4, align 1
  %5 = load i8, ptr %temp, align 1
  %6 = load ptr, ptr %c.addr, align 8
  store i8 %5, ptr %6, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @permutation(ptr noundef %a, i32 noundef %l, i32 noundef %r) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %l.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %l, ptr %l.addr, align 4
  store i32 %r, ptr %r.addr, align 4
  %0 = load i32, ptr %l.addr, align 4
  %1 = load i32, ptr %r.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %a.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %l.addr, align 4
  store i32 %3, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %r.addr, align 4
  %cmp1 = icmp sle i32 %4, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %a.addr, align 8
  %7 = load i32, ptr %l.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext
  %8 = load ptr, ptr %a.addr, align 8
  %9 = load i32, ptr %i, align 4
  %idx.ext2 = sext i32 %9 to i64
  %add.ptr3 = getelementptr inbounds i8, ptr %8, i64 %idx.ext2
  call void @swap(ptr noundef %add.ptr, ptr noundef %add.ptr3)
  %10 = load ptr, ptr %a.addr, align 8
  %11 = load i32, ptr %l.addr, align 4
  %add = add nsw i32 %11, 1
  %12 = load i32, ptr %r.addr, align 4
  call void @permutation(ptr noundef %10, i32 noundef %add, i32 noundef %12)
  %13 = load ptr, ptr %a.addr, align 8
  %14 = load i32, ptr %l.addr, align 4
  %idx.ext4 = sext i32 %14 to i64
  %add.ptr5 = getelementptr inbounds i8, ptr %13, i64 %idx.ext4
  %15 = load ptr, ptr %a.addr, align 8
  %16 = load i32, ptr %i, align 4
  %idx.ext6 = sext i32 %16 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %15, i64 %idx.ext6
  call void @swap(ptr noundef %add.ptr5, ptr noundef %add.ptr7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %name = alloca [11 x i8], align 1
  %len = alloca i32, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %name, ptr align 1 @__const.main.name, i64 11, i1 false)
  %arraydecay = getelementptr inbounds [11 x i8], ptr %name, i64 0, i64 0
  %call = call i64 @strlen(ptr noundef %arraydecay) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len, align 4
  %arraydecay1 = getelementptr inbounds [11 x i8], ptr %name, i64 0, i64 0
  %0 = load i32, ptr %len, align 4
  %sub = sub nsw i32 %0, 1
  call void @permutation(ptr noundef %arraydecay1, i32 noundef 0, i32 noundef %sub)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
