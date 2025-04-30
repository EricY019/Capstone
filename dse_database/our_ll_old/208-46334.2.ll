; ModuleID = './code/208-46334.2.c'
source_filename = "./code/208-46334.2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Largest is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverse_string(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %temp = alloca i8, align 1
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #3
  %sub = sub i64 %call, 1
  store i64 %sub, ptr %len, align 8
  %1 = load i64, ptr %len, align 8
  store i64 %1, ptr %k, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8
  %3 = load i64, ptr %len, align 8
  %add = add i64 %3, 1
  %div = udiv i64 %add, 2
  %cmp = icmp ult i64 %2, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %str.addr, align 8
  %5 = load i64, ptr %k, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load i8, ptr %arrayidx, align 1
  store i8 %6, ptr %temp, align 1
  %7 = load ptr, ptr %str.addr, align 8
  %8 = load i64, ptr %i, align 8
  %arrayidx1 = getelementptr inbounds i8, ptr %7, i64 %8
  %9 = load i8, ptr %arrayidx1, align 1
  %10 = load ptr, ptr %str.addr, align 8
  %11 = load i64, ptr %k, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %10, i64 %11
  store i8 %9, ptr %arrayidx2, align 1
  %12 = load i8, ptr %temp, align 1
  %13 = load ptr, ptr %str.addr, align 8
  %14 = load i64, ptr %i, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %13, i64 %14
  store i8 %12, ptr %arrayidx3, align 1
  %15 = load i64, ptr %k, align 8
  %dec = add i64 %15, -1
  store i64 %dec, ptr %k, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, ptr %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPalindrome(i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %str = alloca [10 x i8], align 1
  %rev = alloca [10 x i8], align 1
  store i32 %n, ptr %n.addr, align 4
  %arraydecay = getelementptr inbounds [10 x i8], ptr %str, i64 0, i64 0
  %0 = load i32, ptr %n.addr, align 4
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 10, ptr noundef @.str, i32 noundef %0)
  %arraydecay1 = getelementptr inbounds [10 x i8], ptr %rev, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [10 x i8], ptr %str, i64 0, i64 0
  %call3 = call ptr @__strcpy_chk(ptr noundef %arraydecay1, ptr noundef %arraydecay2, i64 noundef 10) #3
  %arraydecay4 = getelementptr inbounds [10 x i8], ptr %rev, i64 0, i64 0
  call void @reverse_string(ptr noundef %arraydecay4)
  %arraydecay5 = getelementptr inbounds [10 x i8], ptr %str, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [10 x i8], ptr %rev, i64 0, i64 0
  %call7 = call i32 @strcmp(ptr noundef %arraydecay5, ptr noundef %arraydecay6) #3
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %product = alloca i32, align 4
  %large = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 100, ptr %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %a, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %a, align 4
  store i32 %1, ptr %b, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %b, align 4
  %cmp2 = icmp slt i32 %2, 1000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %a, align 4
  %4 = load i32, ptr %b, align 4
  %mul = mul nsw i32 %3, %4
  store i32 %mul, ptr %product, align 4
  %5 = load i32, ptr %product, align 4
  %call = call i32 @isPalindrome(i32 noundef %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %for.body3
  %6 = load i32, ptr %product, align 4
  %7 = load i32, ptr %large, align 4
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %8 = load i32, ptr %product, align 4
  store i32 %8, ptr %large, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %9 = load i32, ptr %b, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %b, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %10 = load i32, ptr %a, align 4
  %inc8 = add nsw i32 %10, 1
  store i32 %inc8, ptr %a, align 4
  br label %for.cond, !llvm.loop !8

for.end9:                                         ; preds = %for.cond
  %11 = load i32, ptr %large, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %11)
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
