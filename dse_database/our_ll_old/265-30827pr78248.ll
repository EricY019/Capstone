; ModuleID = './code/265-30827pr78248.c'
source_filename = "./code/265-30827pr78248.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.S = type { i16, [2 x i8] }

@c = global i32 2, align 4
@__const.main.h = private unnamed_addr constant { i8, i8, [2 x i8] } { i8 -2, i8 127, [2 x i8] undef }, align 4
@e = global i32 0, align 4
@f = global i32 0, align 4
@b = global [1 x i32] zeroinitializer, align 4
@d = global i32 0, align 4
@a = internal global %struct.S zeroinitializer, align 4
@g = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %h = alloca %struct.S, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %h, ptr align 4 @__const.main.h, i64 4, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr @e, align 4
  %cmp = icmp slt i32 %0, 640
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr @f, align 4
  %cmp2 = icmp slt i32 %1, 1
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr @c, align 4
  %cmp4 = icmp slt i32 %2, 2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %3 = load i32, ptr @e, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1 x i32], ptr @b, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  store i32 %4, ptr @d, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %h, ptr align 4 @a, i64 4, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %5 = load i32, ptr @c, align 4
  store i32 %5, ptr @g, align 4
  store i32 1, ptr @c, align 4
  %bf.load = load i16, ptr %h, align 4
  %bf.shl = shl i16 %bf.load, 1
  %bf.ashr = ashr i16 %bf.shl, 1
  %bf.cast = sext i16 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  br label %for.end

if.end6:                                          ; preds = %if.end
  %6 = load i32, ptr @g, align 4
  store i32 %6, ptr @c, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %7 = load i32, ptr @f, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr @f, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %if.then5, %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %8 = load i32, ptr @e, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, ptr @e, align 4
  br label %for.cond, !llvm.loop !7

for.end9:                                         ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
