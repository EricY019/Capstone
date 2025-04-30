; ModuleID = './code/327-10398problem_nine.c'
source_filename = "./code/327-10398problem_nine.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [19 x i8] c"The product is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp ult i32 %0, 1000
  br i1 %cmp, label %while.body, label %while.end12

while.body:                                       ; preds = %while.cond
  store i32 1, ptr %j, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %if.end, %while.body
  %1 = load i32, ptr %j, align 4
  %2 = load i32, ptr %i, align 4
  %sub = sub i32 1000, %2
  %cmp2 = icmp ult i32 %1, %sub
  br i1 %cmp2, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  %3 = load i32, ptr %i, align 4
  %sub4 = sub i32 1000, %3
  %4 = load i32, ptr %j, align 4
  %sub5 = sub i32 %sub4, %4
  store i32 %sub5, ptr %k, align 4
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %i, align 4
  %mul = mul i32 %5, %6
  %7 = load i32, ptr %j, align 4
  %8 = load i32, ptr %j, align 4
  %mul6 = mul i32 %7, %8
  %add = add i32 %mul, %mul6
  %9 = load i32, ptr %k, align 4
  %10 = load i32, ptr %k, align 4
  %mul7 = mul i32 %9, %10
  %cmp8 = icmp eq i32 %add, %mul7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body3
  %11 = load i32, ptr %i, align 4
  %12 = load i32, ptr %j, align 4
  %mul9 = mul i32 %11, %12
  %13 = load i32, ptr %k, align 4
  %mul10 = mul i32 %mul9, %13
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %mul10)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body3
  %14 = load i32, ptr %j, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %j, align 4
  br label %while.cond1, !llvm.loop !5

while.end:                                        ; preds = %while.cond1
  %15 = load i32, ptr %i, align 4
  %inc11 = add i32 %15, 1
  store i32 %inc11, ptr %i, align 4
  br label %while.cond, !llvm.loop !7

while.end12:                                      ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end12, %if.then
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
!7 = distinct !{!7, !6}
