; ModuleID = './code/008-4370ReplaceBlank.c'
source_filename = "./code/008-4370ReplaceBlank.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.str = private unnamed_addr constant [100 x i8] c"Hooray! Oh My Zsh has been update and/or is at the current version.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @ReplaceBlank(ptr noundef %str, i32 noundef %N) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %originalLength = alloca i32, align 4
  %currentLength = alloca i32, align 4
  %amountOfSpace = alloca i32, align 4
  %orginalEnd = alloca ptr, align 8
  %newEnd = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store i32 0, ptr %originalLength, align 4
  store i32 0, ptr %currentLength, align 4
  store i32 0, ptr %amountOfSpace, align 4
  %0 = load ptr, ptr %str.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %N.addr, align 4
  %cmp1 = icmp eq i32 0, %1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %while.end30

if.end:                                           ; preds = %land.lhs.true, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end8, %if.end
  %2 = load ptr, ptr %str.addr, align 8
  %3 = load i32, ptr %originalLength, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %str.addr, align 8
  %6 = load i32, ptr %originalLength, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %originalLength, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %5, i64 %idxprom2
  %7 = load i8, ptr %arrayidx3, align 1
  %conv = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 32
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %while.body
  %8 = load i32, ptr %amountOfSpace, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, ptr %amountOfSpace, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %while.body
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr %originalLength, align 4
  %10 = load i32, ptr %amountOfSpace, align 4
  %mul = mul nsw i32 2, %10
  %add = add nsw i32 %9, %mul
  store i32 %add, ptr %currentLength, align 4
  %11 = load i32, ptr %currentLength, align 4
  %12 = load i32, ptr %N.addr, align 4
  %cmp9 = icmp sgt i32 %11, %12
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.end
  br label %while.end30

if.end12:                                         ; preds = %while.end
  %13 = load ptr, ptr %str.addr, align 8
  %14 = load i32, ptr %originalLength, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, ptr %13, i64 %idx.ext
  store ptr %add.ptr, ptr %orginalEnd, align 8
  %15 = load ptr, ptr %str.addr, align 8
  %16 = load i32, ptr %currentLength, align 4
  %idx.ext13 = sext i32 %16 to i64
  %add.ptr14 = getelementptr inbounds i8, ptr %15, i64 %idx.ext13
  store ptr %add.ptr14, ptr %newEnd, align 8
  br label %while.cond15

while.cond15:                                     ; preds = %if.end29, %if.end12
  %17 = load ptr, ptr %orginalEnd, align 8
  %18 = load ptr, ptr %str.addr, align 8
  %add.ptr16 = getelementptr inbounds i8, ptr %18, i64 -1
  %cmp17 = icmp ne ptr %17, %add.ptr16
  br i1 %cmp17, label %while.body19, label %while.end30

while.body19:                                     ; preds = %while.cond15
  %19 = load ptr, ptr %orginalEnd, align 8
  %20 = load i8, ptr %19, align 1
  %conv20 = sext i8 %20 to i32
  %cmp21 = icmp eq i32 %conv20, 32
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %while.body19
  %21 = load ptr, ptr %newEnd, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 -1
  store ptr %incdec.ptr, ptr %newEnd, align 8
  store i8 48, ptr %21, align 1
  %22 = load ptr, ptr %newEnd, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %22, i32 -1
  store ptr %incdec.ptr24, ptr %newEnd, align 8
  store i8 50, ptr %22, align 1
  %23 = load ptr, ptr %newEnd, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %23, i32 -1
  store ptr %incdec.ptr25, ptr %newEnd, align 8
  store i8 37, ptr %23, align 1
  %24 = load ptr, ptr %orginalEnd, align 8
  %incdec.ptr26 = getelementptr inbounds i8, ptr %24, i32 -1
  store ptr %incdec.ptr26, ptr %orginalEnd, align 8
  br label %if.end29

if.else:                                          ; preds = %while.body19
  %25 = load ptr, ptr %orginalEnd, align 8
  %incdec.ptr27 = getelementptr inbounds i8, ptr %25, i32 -1
  store ptr %incdec.ptr27, ptr %orginalEnd, align 8
  %26 = load i8, ptr %25, align 1
  %27 = load ptr, ptr %newEnd, align 8
  %incdec.ptr28 = getelementptr inbounds i8, ptr %27, i32 -1
  store ptr %incdec.ptr28, ptr %newEnd, align 8
  store i8 %26, ptr %27, align 1
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then23
  br label %while.cond15, !llvm.loop !7

while.end30:                                      ; preds = %if.then, %if.then11, %while.cond15
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %str = alloca [100 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str, ptr align 1 @__const.main.str, i64 100, i1 false)
  %arraydecay = getelementptr inbounds [100 x i8], ptr %str, i64 0, i64 0
  call void @ReplaceBlank(ptr noundef %arraydecay, i32 noundef 100)
  %arraydecay1 = getelementptr inbounds [100 x i8], ptr %str, i64 0, i64 0
  %call = call i32 @puts(ptr noundef %arraydecay1)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @puts(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
