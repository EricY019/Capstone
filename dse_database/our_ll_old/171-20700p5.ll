; ModuleID = './code/171-20700p5.c'
source_filename = "./code/171-20700p5.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [14 x i8] c"Answer = %u \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %val = alloca i64, align 8
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 20, ptr %val, align 8
  store i64 20, ptr %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  store i64 19, ptr %y, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.cond
  %0 = load i64, ptr %y, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond1
  %1 = load i64, ptr %x, align 8
  %2 = load i64, ptr %y, align 8
  %rem = urem i64 %1, %2
  %cmp = icmp ne i64 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %3 = load i64, ptr %y, align 8
  %dec = add i64 %3, -1
  store i64 %dec, ptr %y, align 8
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond1
  %4 = load i64, ptr %y, align 8
  %cmp2 = icmp eq i64 %4, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.end
  %5 = load i64, ptr %x, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %5)
  br label %for.end6

if.end4:                                          ; preds = %for.end
  br label %for.inc5

for.inc5:                                         ; preds = %if.end4
  %6 = load i64, ptr %x, align 8
  %add = add i64 %6, 20
  store i64 %add, ptr %x, align 8
  br label %for.cond

for.end6:                                         ; preds = %if.then3
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
