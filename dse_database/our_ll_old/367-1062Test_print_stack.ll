; ModuleID = './code/367-1062Test_print_stack.c'
source_filename = "./code/367-1062Test_print_stack.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [8 x i8] c"Callme\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" age %d \09 count %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c" new age %d \09 count %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0A variable i =%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"age %d\00", align 1
@nAge = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Call name nAge %d \0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"hello \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @callMe() #0 {
entry:
  %count = alloca i32, align 4
  %age = alloca i32, align 4
  %i = alloca i32, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %count, align 4
  store i32 0, ptr %age, align 4
  %0 = load i32, ptr %age, align 4
  %1 = load i32, ptr %count, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %0, i32 noundef %1)
  store i32 100, ptr %count, align 4
  store i32 25, ptr %age, align 4
  %2 = load i32, ptr %age, align 4
  %3 = load i32, ptr %count, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %2, i32 noundef %3)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %4, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %5)
  %6 = load i32, ptr %i, align 4
  store i32 %6, ptr %age, align 4
  %7 = load i32, ptr %age, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %7)
  %8 = load i32, ptr %age, align 4
  store i32 %8, ptr @nAge, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @callName() #0 {
entry:
  %0 = load i32, ptr @nAge, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  call void @callMe()
  call void @callName()
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
