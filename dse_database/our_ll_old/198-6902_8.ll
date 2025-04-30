; ModuleID = './code/198-6902_8.c'
source_filename = "./code/198-6902_8.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [13 x i8] c"original:   \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\0Aafter rotr: \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"illegal move\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 52942, ptr %x, align 4
  store i32 6, ptr %n, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  call void @printBits(i64 noundef 4, ptr noundef %x)
  %0 = load i32, ptr %x, align 4
  %1 = load i32, ptr %n, align 4
  %call1 = call i32 @rightrot(i32 noundef %0, i32 noundef %1)
  store i32 %call1, ptr %x, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  call void @printBits(i64 noundef 4, ptr noundef %x)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printBits(i64 noundef %size, ptr noundef %ptr) #0 {
entry:
  %size.addr = alloca i64, align 8
  %ptr.addr = alloca ptr, align 8
  %b = alloca ptr, align 8
  %byte = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  %0 = load ptr, ptr %ptr.addr, align 8
  store ptr %0, ptr %b, align 8
  %1 = load i64, ptr %size.addr, align 8
  %sub = sub i64 %1, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 7, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4
  %cmp3 = icmp sge i32 %3, 0
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %4 = load ptr, ptr %b, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load i32, ptr %j, align 4
  %shr = ashr i32 %conv6, %7
  %and = and i32 %shr, 1
  %conv7 = trunc i32 %and to i8
  store i8 %conv7, ptr %byte, align 1
  %8 = load i8, ptr %byte, align 1
  %conv8 = zext i8 %8 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %conv8)
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %9 = load i32, ptr %j, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond2, !llvm.loop !5

for.end:                                          ; preds = %for.cond2
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %10 = load i32, ptr %i, align 4
  %dec10 = add nsw i32 %10, -1
  store i32 %dec10, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end11:                                        ; preds = %for.cond
  %call12 = call i32 @puts(ptr noundef @.str.4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @rightrot(i32 noundef %x, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %sz = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 32, ptr %sz, align 4
  %0 = load i32, ptr %n.addr, align 4
  %1 = load i32, ptr %sz, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %n.addr, align 4
  %shr = lshr i32 %2, %3
  %4 = load i32, ptr %x.addr, align 4
  %5 = load i32, ptr %sz, align 4
  %6 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 %5, %6
  %shl = shl i32 %4, %sub
  %or = or i32 %shr, %shl
  store i32 %or, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, ptr %retval, align 4
  ret i32 %7
}

declare i32 @puts(ptr noundef) #1

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
!7 = distinct !{!7, !6}
