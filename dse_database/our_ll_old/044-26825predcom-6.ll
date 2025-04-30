; ModuleID = './code/044-26825predcom-6.c'
source_filename = "./code/044-26825predcom-6.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@d = global i32 0, align 4
@a = global i32 0, align 4
@e = global [5 x [2 x i32]] zeroinitializer, align 4
@c = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr @d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @d, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @a, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br i1 false, label %if.then, label %if.end

cond.false:                                       ; preds = %for.body
  %2 = load i32, ptr @c, align 4
  %add = add nsw i32 %2, 3
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [5 x [2 x i32]], ptr @e, i64 0, i64 %idxprom
  %3 = load i32, ptr @d, align 4
  %idxprom1 = zext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %arrayidx, i64 0, i64 %idxprom1
  %4 = load i32, ptr %arrayidx2, align 4
  %5 = load i32, ptr @c, align 4
  %add3 = add nsw i32 %5, 4
  %idxprom4 = sext i32 %add3 to i64
  %arrayidx5 = getelementptr inbounds [5 x [2 x i32]], ptr @e, i64 0, i64 %idxprom4
  %6 = load i32, ptr @d, align 4
  %idxprom6 = zext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [2 x i32], ptr %arrayidx5, i64 0, i64 %idxprom6
  %7 = load i32, ptr %arrayidx7, align 4
  %and = and i32 %4, %7
  %tobool8 = icmp ne i32 %and, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %cond.false, %cond.true
  br label %for.end

if.end:                                           ; preds = %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr @d, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr @d, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond
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
