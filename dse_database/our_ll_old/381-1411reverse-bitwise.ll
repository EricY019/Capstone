; ModuleID = './code/381-1411reverse-bitwise.c'
source_filename = "./code/381-1411reverse-bitwise.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.input = private unnamed_addr constant [16 x i8] c"the sky is blue\00", align 1
@.str = private unnamed_addr constant [21 x i8] c"[before] input : %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"[after]  input : %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverse_string_bitwise(ptr noundef %input) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %1 = load ptr, ptr %input.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #4
  %div = udiv i64 %call, 2
  %cmp = icmp ult i64 %conv, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %input.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 %idx.ext
  %4 = load i8, ptr %add.ptr, align 1
  %conv2 = sext i8 %4 to i32
  %5 = load ptr, ptr %input.addr, align 8
  %6 = load ptr, ptr %input.addr, align 8
  %call3 = call i64 @strlen(ptr noundef %6) #4
  %add.ptr4 = getelementptr inbounds i8, ptr %5, i64 %call3
  %7 = load i32, ptr %i, align 4
  %idx.ext5 = sext i32 %7 to i64
  %idx.neg = sub i64 0, %idx.ext5
  %add.ptr6 = getelementptr inbounds i8, ptr %add.ptr4, i64 %idx.neg
  %add.ptr7 = getelementptr inbounds i8, ptr %add.ptr6, i64 -1
  %8 = load i8, ptr %add.ptr7, align 1
  %conv8 = sext i8 %8 to i32
  %xor = xor i32 %conv2, %conv8
  %conv9 = trunc i32 %xor to i8
  %9 = load ptr, ptr %input.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idx.ext10 = sext i32 %10 to i64
  %add.ptr11 = getelementptr inbounds i8, ptr %9, i64 %idx.ext10
  store i8 %conv9, ptr %add.ptr11, align 1
  %11 = load ptr, ptr %input.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idx.ext12 = sext i32 %12 to i64
  %add.ptr13 = getelementptr inbounds i8, ptr %11, i64 %idx.ext12
  %13 = load i8, ptr %add.ptr13, align 1
  %conv14 = sext i8 %13 to i32
  %14 = load ptr, ptr %input.addr, align 8
  %15 = load ptr, ptr %input.addr, align 8
  %call15 = call i64 @strlen(ptr noundef %15) #4
  %add.ptr16 = getelementptr inbounds i8, ptr %14, i64 %call15
  %16 = load i32, ptr %i, align 4
  %idx.ext17 = sext i32 %16 to i64
  %idx.neg18 = sub i64 0, %idx.ext17
  %add.ptr19 = getelementptr inbounds i8, ptr %add.ptr16, i64 %idx.neg18
  %add.ptr20 = getelementptr inbounds i8, ptr %add.ptr19, i64 -1
  %17 = load i8, ptr %add.ptr20, align 1
  %conv21 = sext i8 %17 to i32
  %xor22 = xor i32 %conv14, %conv21
  %conv23 = trunc i32 %xor22 to i8
  %18 = load ptr, ptr %input.addr, align 8
  %19 = load ptr, ptr %input.addr, align 8
  %call24 = call i64 @strlen(ptr noundef %19) #4
  %add.ptr25 = getelementptr inbounds i8, ptr %18, i64 %call24
  %20 = load i32, ptr %i, align 4
  %idx.ext26 = sext i32 %20 to i64
  %idx.neg27 = sub i64 0, %idx.ext26
  %add.ptr28 = getelementptr inbounds i8, ptr %add.ptr25, i64 %idx.neg27
  %add.ptr29 = getelementptr inbounds i8, ptr %add.ptr28, i64 -1
  store i8 %conv23, ptr %add.ptr29, align 1
  %21 = load ptr, ptr %input.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idx.ext30 = sext i32 %22 to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %21, i64 %idx.ext30
  %23 = load i8, ptr %add.ptr31, align 1
  %conv32 = sext i8 %23 to i32
  %24 = load ptr, ptr %input.addr, align 8
  %25 = load ptr, ptr %input.addr, align 8
  %call33 = call i64 @strlen(ptr noundef %25) #4
  %add.ptr34 = getelementptr inbounds i8, ptr %24, i64 %call33
  %26 = load i32, ptr %i, align 4
  %idx.ext35 = sext i32 %26 to i64
  %idx.neg36 = sub i64 0, %idx.ext35
  %add.ptr37 = getelementptr inbounds i8, ptr %add.ptr34, i64 %idx.neg36
  %add.ptr38 = getelementptr inbounds i8, ptr %add.ptr37, i64 -1
  %27 = load i8, ptr %add.ptr38, align 1
  %conv39 = sext i8 %27 to i32
  %xor40 = xor i32 %conv32, %conv39
  %conv41 = trunc i32 %xor40 to i8
  %28 = load ptr, ptr %input.addr, align 8
  %29 = load i32, ptr %i, align 4
  %idx.ext42 = sext i32 %29 to i64
  %add.ptr43 = getelementptr inbounds i8, ptr %28, i64 %idx.ext42
  store i8 %conv41, ptr %add.ptr43, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, ptr %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %input = alloca [16 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %input, ptr align 1 @__const.main.input, i64 16, i1 false)
  %arraydecay = getelementptr inbounds [16 x i8], ptr %input, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %input, i64 0, i64 0
  call void @reverse_string_bitwise(ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %input, i64 0, i64 0
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay2)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
