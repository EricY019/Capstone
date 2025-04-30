; ModuleID = './code/207-6361task_1.c'
source_filename = "./code/207-6361task_1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %chislo = alloca i32, align 4
  %znak = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 97, ptr %chislo, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %chislo, align 4
  %cmp = icmp slt i32 %0, 123
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %chislo, align 4
  %conv = trunc i32 %1 to i8
  store i8 %conv, ptr %znak, align 1
  %2 = load i8, ptr %znak, align 1
  %conv1 = sext i8 %2 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv1)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %3 = load i32, ptr %chislo, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %chislo, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %chislo, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 65, ptr %chislo, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc14, %for.end
  %5 = load i32, ptr %chislo, align 4
  %cmp6 = icmp slt i32 %5, 91
  br i1 %cmp6, label %for.body8, label %for.end16

for.body8:                                        ; preds = %for.cond5
  %6 = load i32, ptr %chislo, align 4
  %conv9 = trunc i32 %6 to i8
  store i8 %conv9, ptr %znak, align 1
  %7 = load i8, ptr %znak, align 1
  %conv10 = sext i8 %7 to i32
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv10)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %8 = load i32, ptr %chislo, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %8)
  br label %for.inc14

for.inc14:                                        ; preds = %for.body8
  %9 = load i32, ptr %chislo, align 4
  %inc15 = add nsw i32 %9, 1
  store i32 %inc15, ptr %chislo, align 4
  br label %for.cond5, !llvm.loop !7

for.end16:                                        ; preds = %for.cond5
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 48, ptr %chislo, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc27, %for.end16
  %10 = load i32, ptr %chislo, align 4
  %cmp19 = icmp slt i32 %10, 58
  br i1 %cmp19, label %for.body21, label %for.end29

for.body21:                                       ; preds = %for.cond18
  %11 = load i32, ptr %chislo, align 4
  %conv22 = trunc i32 %11 to i8
  store i8 %conv22, ptr %znak, align 1
  %12 = load i8, ptr %znak, align 1
  %conv23 = sext i8 %12 to i32
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv23)
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %13 = load i32, ptr %chislo, align 4
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %13)
  br label %for.inc27

for.inc27:                                        ; preds = %for.body21
  %14 = load i32, ptr %chislo, align 4
  %inc28 = add nsw i32 %14, 1
  store i32 %inc28, ptr %chislo, align 4
  br label %for.cond18, !llvm.loop !8

for.end29:                                        ; preds = %for.cond18
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret i32 0
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
!8 = distinct !{!8, !6}
