; ModuleID = './code/035-4268pr91293-1.c'
source_filename = "./code/035-4268pr91293-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@d = global i32 62, align 4
@b = global i32 0, align 4
@c = global i32 0, align 4
@a = global i64 0, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @e(ptr noundef %f, i32 noundef %p2) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %p2.addr = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8
  store i32 %p2, ptr %p2.addr, align 4
  %0 = load i32, ptr %p2.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load ptr, ptr %f.addr, align 8
  store i64 %conv, ptr %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %g = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 2, ptr %g, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %g, align 4
  %1 = load i32, ptr @d, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %g, align 4
  %add = add nsw i32 %2, 4
  %3 = load i32, ptr @b, align 4
  %add1 = add i32 %3, %add
  store i32 %add1, ptr @b, align 4
  %4 = load i32, ptr %g, align 4
  %sub = sub nsw i32 5, %4
  %5 = load i32, ptr @c, align 4
  %add2 = add i32 %5, %sub
  store i32 %add2, ptr @c, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %g, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %g, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr @b, align 4
  call void @e(ptr noundef @a, i32 noundef %7)
  %8 = load i64, ptr @a, align 8
  %cmp3 = icmp ne i64 %8, 2196
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.end
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
