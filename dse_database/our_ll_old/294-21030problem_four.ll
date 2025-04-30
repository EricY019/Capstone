; ModuleID = './code/294-21030problem_four.c'
source_filename = "./code/294-21030problem_four.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Answer = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %max = alloca i32, align 4
  %a = alloca [7 x i8], align 1
  %b = alloca [7 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %max, align 4
  store i32 999, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, ptr %x, align 4
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 999, ptr %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %y, align 4
  %cmp2 = icmp sgt i32 %1, 99
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %x, align 4
  %3 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, ptr %z, align 4
  %arraydecay = getelementptr inbounds [7 x i8], ptr %a, i64 0, i64 0
  %4 = load i32, ptr %z, align 4
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 7, ptr noundef @.str, i32 noundef %4)
  %arraydecay4 = getelementptr inbounds [7 x i8], ptr %b, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [7 x i8], ptr %a, i64 0, i64 0
  %call6 = call ptr @__strcpy_chk(ptr noundef %arraydecay4, ptr noundef %arraydecay5, i64 noundef 7) #3
  %arraydecay7 = getelementptr inbounds [7 x i8], ptr %b, i64 0, i64 0
  %call8 = call ptr @strrev(ptr noundef %arraydecay7)
  %arraydecay9 = getelementptr inbounds [7 x i8], ptr %a, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [7 x i8], ptr %b, i64 0, i64 0
  %call11 = call i32 @strcmp(ptr noundef %arraydecay9, ptr noundef %arraydecay10) #3
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.end15

if.then:                                          ; preds = %for.body3
  %5 = load i32, ptr %z, align 4
  %6 = load i32, ptr %max, align 4
  %cmp13 = icmp sgt i32 %5, %6
  br i1 %cmp13, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then
  %7 = load i32, ptr %z, align 4
  store i32 %7, ptr %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then14, %if.then
  br label %if.end15

if.end15:                                         ; preds = %if.end, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end15
  %8 = load i32, ptr %y, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %y, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %9 = load i32, ptr %x, align 4
  %dec17 = add nsw i32 %9, -1
  store i32 %dec17, ptr %x, align 4
  br label %for.cond, !llvm.loop !7

for.end18:                                        ; preds = %for.cond
  %10 = load i32, ptr %max, align 4
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %10)
  ret i32 0
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @strrev(ptr noundef %str) #0 {
entry:
  %retval = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %p1 = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %str.addr, align 8
  %2 = load i8, ptr %1, align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %str.addr, align 8
  store ptr %3, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %str.addr, align 8
  store ptr %4, ptr %p1, align 8
  %5 = load ptr, ptr %str.addr, align 8
  %6 = load ptr, ptr %str.addr, align 8
  %call = call i64 @strlen(ptr noundef %6) #3
  %add.ptr = getelementptr inbounds i8, ptr %5, i64 %call
  %add.ptr2 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr2, ptr %p2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load ptr, ptr %p2, align 8
  %8 = load ptr, ptr %p1, align 8
  %cmp = icmp ugt ptr %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %p2, align 8
  %10 = load i8, ptr %9, align 1
  %conv = sext i8 %10 to i32
  %11 = load ptr, ptr %p1, align 8
  %12 = load i8, ptr %11, align 1
  %conv3 = sext i8 %12 to i32
  %xor = xor i32 %conv3, %conv
  %conv4 = trunc i32 %xor to i8
  store i8 %conv4, ptr %11, align 1
  %13 = load ptr, ptr %p1, align 8
  %14 = load i8, ptr %13, align 1
  %conv5 = sext i8 %14 to i32
  %15 = load ptr, ptr %p2, align 8
  %16 = load i8, ptr %15, align 1
  %conv6 = sext i8 %16 to i32
  %xor7 = xor i32 %conv6, %conv5
  %conv8 = trunc i32 %xor7 to i8
  store i8 %conv8, ptr %15, align 1
  %17 = load ptr, ptr %p2, align 8
  %18 = load i8, ptr %17, align 1
  %conv9 = sext i8 %18 to i32
  %19 = load ptr, ptr %p1, align 8
  %20 = load i8, ptr %19, align 1
  %conv10 = sext i8 %20 to i32
  %xor11 = xor i32 %conv10, %conv9
  %conv12 = trunc i32 %xor11 to i8
  store i8 %conv12, ptr %19, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load ptr, ptr %p1, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %p1, align 8
  %22 = load ptr, ptr %p2, align 8
  %incdec.ptr13 = getelementptr inbounds i8, ptr %22, i32 -1
  store ptr %incdec.ptr13, ptr %p2, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %str.addr, align 8
  store ptr %23, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  %24 = load ptr, ptr %retval, align 8
  ret ptr %24
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

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
