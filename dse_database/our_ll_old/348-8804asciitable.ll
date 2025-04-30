; ModuleID = './code/348-8804asciitable.c'
source_filename = "./code/348-8804asciitable.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.A = private unnamed_addr constant [63 x i8] c"*              THE ASCII TABLE BY JOSEF ZIEGLER              *\00", align 1
@__stdoutp = external global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"%.3d  \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %A = alloca [63 x i8], align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %A, ptr align 1 @__const.main.A, i64 63, i1 false)
  store i32 -1, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %0 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %while.body, label %while.end11

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end, %while.body
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4
  %conv = sext i32 %inc to i64
  %cmp2 = icmp ult i64 %conv, 62
  br i1 %cmp2, label %while.body4, label %while.end

while.body4:                                      ; preds = %while.cond1
  %2 = load i32, ptr %j, align 4
  %rem = srem i32 %2, 2
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %while.body4
  %3 = load ptr, ptr @__stdoutp, align 8
  %call = call i32 @putc(i32 noundef 42, ptr noundef %3)
  br label %if.end

if.else:                                          ; preds = %while.body4
  %arraydecay = getelementptr inbounds [63 x i8], ptr %A, i64 0, i64 0
  %4 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %4 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %idx.ext
  %5 = load i8, ptr %add.ptr, align 1
  %conv7 = sext i8 %5 to i32
  %6 = load ptr, ptr @__stdoutp, align 8
  %call8 = call i32 @putc(i32 noundef %conv7, ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond1, !llvm.loop !5

while.end:                                        ; preds = %while.cond1
  %7 = load ptr, ptr @__stdoutp, align 8
  %call9 = call i32 @putc(i32 noundef 10, ptr noundef %7)
  %8 = load i32, ptr %j, align 4
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, ptr %j, align 4
  store i32 -1, ptr %i, align 4
  br label %while.cond, !llvm.loop !7

while.end11:                                      ; preds = %while.cond
  store i32 33, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end11
  %9 = load i32, ptr %i, align 4
  %cmp12 = icmp slt i32 %9, 127
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %i, align 4
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10)
  %11 = load i32, ptr %i, align 4
  %12 = load ptr, ptr @__stdoutp, align 8
  %call15 = call i32 @putc(i32 noundef %11, ptr noundef %12)
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %13 = load i32, ptr %i, align 4
  %rem17 = srem i32 %13, 8
  %cmp18 = icmp eq i32 %rem17, 0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %for.body
  %14 = load ptr, ptr @__stdoutp, align 8
  %call21 = call i32 @putc(i32 noundef 10, ptr noundef %14)
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %15 = load i32, ptr %i, align 4
  %inc23 = add nsw i32 %15, 1
  store i32 %inc23, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @putc(i32 noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

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
!8 = distinct !{!8, !6}
