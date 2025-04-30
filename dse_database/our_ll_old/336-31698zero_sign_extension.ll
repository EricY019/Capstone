; ModuleID = './code/336-31698zero_sign_extension.c'
source_filename = "./code/336-31698zero_sign_extension.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c" %.2x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"xs = %d:\09\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"usx = %u:\09\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"x = %d:\09\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ux = %u:\09\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @show_bytes(ptr noundef %start, i32 noundef %len) #0 {
entry:
  %start.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %start, ptr %start.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %start.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @show_int(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @show_bytes(ptr noundef %x.addr, i32 noundef 4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @show_float(float noundef %x) #0 {
entry:
  %x.addr = alloca float, align 4
  store float %x, ptr %x.addr, align 4
  call void @show_bytes(ptr noundef %x.addr, i32 noundef 4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @show_pointer(ptr noundef %x) #0 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @show_bytes(ptr noundef %x.addr, i32 noundef 8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sx = alloca i16, align 2
  %usx = alloca i16, align 2
  %x = alloca i32, align 4
  %ux = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i16 -12345, ptr %sx, align 2
  %0 = load i16, ptr %sx, align 2
  store i16 %0, ptr %usx, align 2
  %1 = load i16, ptr %sx, align 2
  %conv = sext i16 %1 to i32
  store i32 %conv, ptr %x, align 4
  %2 = load i16, ptr %usx, align 2
  %conv1 = zext i16 %2 to i32
  store i32 %conv1, ptr %ux, align 4
  %3 = load i16, ptr %sx, align 2
  %conv2 = sext i16 %3 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv2)
  call void @show_bytes(ptr noundef %sx, i32 noundef 2)
  %4 = load i16, ptr %usx, align 2
  %conv3 = zext i16 %4 to i32
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %conv3)
  call void @show_bytes(ptr noundef %usx, i32 noundef 2)
  %5 = load i32, ptr %x, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %5)
  call void @show_bytes(ptr noundef %x, i32 noundef 4)
  %6 = load i32, ptr %ux, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %6)
  call void @show_bytes(ptr noundef %ux, i32 noundef 4)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
