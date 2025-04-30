; ModuleID = './code/377-16402pr95172.c'
source_filename = "./code/377-16402pr95172.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@a = global i32 0, align 4
@b = global ptr @a, align 8
@c = global i16 0, align 2
@d = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, ptr @c, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sle i32 %conv, 4
  br i1 %cmp, label %for.body, label %for.end4

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.body3, %for.body
  %1 = load i32, ptr @d, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond2
  br label %for.cond2, !llvm.loop !5

for.end:                                          ; preds = %for.cond2
  store i32 1, ptr @a, align 4
  %2 = load ptr, ptr @b, align 8
  store i32 0, ptr %2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.end
  %3 = load i16, ptr @c, align 2
  %dec = add i16 %3, -1
  store i16 %dec, ptr @c, align 2
  br label %for.cond, !llvm.loop !7

for.end4:                                         ; preds = %for.cond
  %4 = load i32, ptr @a, align 4
  %cmp5 = icmp ne i32 %4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end4
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.end4
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn nounwind }

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
