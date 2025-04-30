; ModuleID = './code/001-960725.c'
source_filename = "./code/001-960725.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [12 x i8] c"%d %d %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %first_code = alloca i64, align 8
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i64 20151125, ptr %first_code, align 8
  store i32 1, ptr %row, align 4
  store i32 1, ptr %col, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %row, align 4
  %cmp = icmp ne i32 %0, 2947
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %1 = load i32, ptr %col, align 4
  %cmp1 = icmp ne i32 %1, 3029
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %2 = phi i1 [ true, %while.cond ], [ %cmp1, %lor.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %3 = load i64, ptr %first_code, align 8
  %call = call i64 @next_code(i64 noundef %3)
  store i64 %call, ptr %first_code, align 8
  %4 = load i32, ptr %row, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i32, ptr %col, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, ptr %row, align 4
  store i32 1, ptr %col, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %6 = load i32, ptr %row, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %row, align 4
  %7 = load i32, ptr %col, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %col, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %lor.end
  %8 = load i32, ptr %row, align 4
  %9 = load i32, ptr %col, align 4
  %10 = load i64, ptr %first_code, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8, i32 noundef %9, i64 noundef %10)
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i64 @next_code(i64 noundef %prev_code) #0 {
entry:
  %prev_code.addr = alloca i64, align 8
  store i64 %prev_code, ptr %prev_code.addr, align 8
  %0 = load i64, ptr %prev_code.addr, align 8
  %mul = mul i64 %0, 252533
  %rem = urem i64 %mul, 33554393
  ret i64 %rem
}

declare i32 @printf(ptr noundef, ...) #1

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
