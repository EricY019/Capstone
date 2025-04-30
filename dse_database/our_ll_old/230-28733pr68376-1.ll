; ModuleID = './code/230-28733pr68376-1.c'
source_filename = "./code/230-28733pr68376-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@c = global i32 1, align 4
@a = global i32 0, align 4
@b = global i32 0, align 4
@d = global i8 0, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr @a, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr @b, align 4
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i8, ptr @d, align 1
  %conv = sext i8 %2 to i32
  %not = xor i32 %conv, -1
  %conv4 = trunc i32 %not to i8
  store i8 %conv4, ptr %e, align 1
  %3 = load i8, ptr @d, align 1
  %conv5 = sext i8 %3 to i32
  %cmp6 = icmp slt i32 %conv5, 1
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %4 = load i8, ptr @d, align 1
  store i8 %4, ptr %e, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %5 = load i8, ptr %e, align 1
  store i8 %5, ptr @d, align 1
  %6 = load i32, ptr @c, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end9:                                          ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %7 = load i32, ptr @b, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @b, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %8 = load i32, ptr @a, align 4
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr @a, align 4
  br label %for.cond, !llvm.loop !7

for.end12:                                        ; preds = %for.cond
  %9 = load i8, ptr @d, align 1
  %conv13 = sext i8 %9 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %for.end12
  call void @abort() #2
  unreachable

if.end17:                                         ; preds = %for.end12
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
