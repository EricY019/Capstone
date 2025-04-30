; ModuleID = './code/151-1065513_roman_to_integer.c'
source_filename = "./code/151-1065513_roman_to_integer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [22 x i8] c"result for %s is %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"MCMLIV\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"MCMXC\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"MMXIV\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"MMXIV \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @valueOfSymbol(i8 noundef signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 73, label %sw.bb
    i32 86, label %sw.bb1
    i32 88, label %sw.bb2
    i32 76, label %sw.bb3
    i32 67, label %sw.bb4
    i32 68, label %sw.bb5
    i32 77, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 5, ptr %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 10, ptr %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 50, ptr %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 100, ptr %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 500, ptr %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 1000, ptr %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @romanToInt(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %current_value = alloca i32, align 4
  %big_value = alloca i32, align 4
  %result = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 0, ptr %current_value, align 4
  store i32 0, ptr %big_value, align 4
  store i32 0, ptr %result, align 4
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %1) #3
  %add.ptr = getelementptr inbounds i8, ptr %0, i64 %call
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr1, ptr %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %c, align 8
  %add.ptr2 = getelementptr inbounds i8, ptr %2, i64 1
  %3 = load ptr, ptr %s.addr, align 8
  %cmp = icmp ne ptr %add.ptr2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %c, align 8
  %5 = load i8, ptr %4, align 1
  %call3 = call i32 @valueOfSymbol(i8 noundef signext %5)
  store i32 %call3, ptr %current_value, align 4
  %6 = load i32, ptr %current_value, align 4
  %7 = load i32, ptr %big_value, align 4
  %cmp4 = icmp sge i32 %6, %7
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %current_value, align 4
  %9 = load i32, ptr %result, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, ptr %result, align 4
  %10 = load i32, ptr %current_value, align 4
  store i32 %10, ptr %big_value, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i32, ptr %current_value, align 4
  %12 = load i32, ptr %result, align 4
  %sub = sub nsw i32 %12, %11
  store i32 %sub, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load ptr, ptr %c, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 -1
  store ptr %incdec.ptr, ptr %c, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %14 = load i32, ptr %result, align 4
  ret i32 %14
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @romanToInt(ptr noundef @.str.1)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.1, i32 noundef %call)
  %call2 = call i32 @romanToInt(ptr noundef @.str.2)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.2, i32 noundef %call2)
  %call4 = call i32 @romanToInt(ptr noundef @.str.4)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.3, i32 noundef %call4)
  ret i32 0
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
