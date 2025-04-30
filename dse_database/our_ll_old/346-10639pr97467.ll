; ModuleID = './code/346-10639pr97467.c'
source_filename = "./code/346-10639pr97467.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@c = global i32 1, align 4
@b = global i64 0, align 8
@a = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @c, align 4
  %cmp = icmp ule i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %f, align 4
  %1 = load i32, ptr %e, align 4
  %conv = sext i32 %1 to i64
  store i64 %conv, ptr @b, align 8
  %2 = load i32, ptr %f, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %3 = load i64, ptr @b, align 8
  %4 = load i32, ptr @c, align 4
  %sh_prom = zext i32 %4 to i64
  %shl = shl i64 %3, %sh_prom
  %tobool1 = icmp ne i64 %shl, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %5 = phi i1 [ true, %for.body ], [ %tobool1, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  store i32 %lor.ext, ptr @a, align 4
  br label %for.inc

for.inc:                                          ; preds = %lor.end
  %6 = load i32, ptr @c, align 4
  %inc = add i32 %6, 1
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
