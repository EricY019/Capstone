; ModuleID = './code/317-851pr68185.c'
source_filename = "./code/317-851pr68185.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@d = global i32 1, align 4
@w = global i32 1, align 4
@o = global i32 0, align 4
@e = global i32 0, align 4
@b = global i32 0, align 4
@c = global i16 0, align 2
@z = global i32 0, align 4
@u = global i32 0, align 4
@a = global i32 0, align 4
@t = global i16 0, align 2
@f = global i32 0, align 4
@q = global i16 0, align 2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %g = alloca i8, align 1
  %h = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @d, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end12, %for.body
  %1 = load i32, ptr @o, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.end11, %while.body
  %2 = load i32, ptr @e, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %for.body4, label %for.end12

for.body4:                                        ; preds = %for.cond2
  %3 = load i32, ptr @b, align 4
  %conv = trunc i32 %3 to i16
  store i16 %conv, ptr @c, align 2
  %4 = load i32, ptr @z, align 4
  store i32 %4, ptr @o, align 4
  store i32 %4, ptr %h, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.end, %for.body4
  %5 = load i32, ptr @u, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %for.body7, label %for.end11

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.body10, %for.body7
  %6 = load i32, ptr @a, align 4
  %tobool9 = icmp ne i32 %6, 0
  br i1 %tobool9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  br label %for.cond8, !llvm.loop !5

for.end:                                          ; preds = %for.cond8
  br label %for.cond5, !llvm.loop !7

for.end11:                                        ; preds = %for.cond5
  br label %for.cond2, !llvm.loop !8

for.end12:                                        ; preds = %for.cond2
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %7 = load i16, ptr @t, align 2
  %conv13 = sext i16 %7 to i32
  %cmp = icmp slt i32 %conv13, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %8 = load i32, ptr @w, align 4
  %conv15 = trunc i32 %8 to i8
  store i8 %conv15, ptr %g, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %9 = load i8, ptr %g, align 1
  %conv16 = sext i8 %9 to i32
  store i32 %conv16, ptr @f, align 4
  %10 = load i8, ptr %g, align 1
  %conv17 = sext i8 %10 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  store i16 1, ptr @q, align 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %11 = phi i1 [ false, %if.end ], [ true, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  br label %for.inc

for.inc:                                          ; preds = %land.end
  %12 = load i32, ptr @d, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr @d, align 4
  br label %for.cond, !llvm.loop !10

for.end19:                                        ; preds = %for.cond
  %13 = load i16, ptr @q, align 2
  %conv20 = sext i16 %13 to i32
  %cmp21 = icmp ne i32 %conv20, 1
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.end19
  call void @abort() #2
  unreachable

if.end24:                                         ; preds = %for.end19
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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
