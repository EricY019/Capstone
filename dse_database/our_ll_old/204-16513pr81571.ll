; ModuleID = './code/204-16513pr81571.c'
source_filename = "./code/204-16513pr81571.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@c = global i32 0, align 4
@a = global i32 0, align 4
@d = global i32 0, align 4
@b = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define signext i16 @fn1(i32 noundef %p1, i32 noundef %p2) #0 {
entry:
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  store i32 %p1, ptr %p1.addr, align 4
  store i32 %p2, ptr %p2.addr, align 4
  %0 = load i32, ptr %p1.addr, align 4
  %conv = trunc i32 %0 to i16
  ret i16 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @fn2(i32 noundef %p1) #0 {
entry:
  %retval = alloca i32, align 4
  %p1.addr = alloca i32, align 4
  store i32 %p1, ptr %p1.addr, align 4
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @c, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @a, align 4
  %call = call signext i16 @fn1(i32 noundef 1, i32 noundef %1)
  %conv = sext i16 %call to i32
  %2 = load i32, ptr @d, align 4
  %3 = load i32, ptr @b, align 4
  %or = or i32 %3, %2
  store i32 %or, ptr @b, align 4
  %call1 = call i32 @fn2(i32 noundef %or)
  %or2 = or i32 %conv, %call1
  %4 = load i32, ptr @a, align 4
  %or3 = or i32 %4, %or2
  store i32 %or3, ptr @a, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr @c, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr @c, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
