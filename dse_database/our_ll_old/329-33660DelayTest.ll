; ModuleID = './code/329-33660DelayTest.c'
source_filename = "./code/329-33660DelayTest.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [37 x i8] c"Starting ... \0Adelay 1/2 second ... \0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"now delay 3 seconds ... \0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"now delay 5 seconds ... \0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Done \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %delay = alloca i64, align 8
  store i64 500, ptr %delay, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i64, ptr %delay, align 8
  call void @pause2(i64 noundef %0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i64 3000, ptr %delay, align 8
  %1 = load i64, ptr %delay, align 8
  call void @pause2(i64 noundef %1)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  call void @pause2(i64 noundef 5000)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @pause2(i64 noundef %msecs) #0 {
entry:
  %msecs.addr = alloca i64, align 8
  %finish = alloca i64, align 8
  %start = alloca i64, align 8
  store i64 %msecs, ptr %msecs.addr, align 8
  store i64 0, ptr %finish, align 8
  store i64 0, ptr %start, align 8
  %call = call i64 @"\01_clock"()
  store i64 %call, ptr %start, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %finish, align 8
  %1 = load i64, ptr %msecs.addr, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call i64 @"\01_clock"()
  %2 = load i64, ptr %start, align 8
  %sub = sub i64 %call1, %2
  store i64 %sub, ptr %finish, align 8
  %3 = load i64, ptr %finish, align 8
  %div = udiv i64 %3, 1000
  store i64 %div, ptr %finish, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret void
}

declare i64 @"\01_clock"() #1

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
