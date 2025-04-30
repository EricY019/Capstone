; ModuleID = './code/236-21318section-attr-2.c'
source_filename = "./code/236-21318section-attr-2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@buf_hot = global ptr null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@buf_cold = global ptr null, align 8
@foo.i = internal global i32 0, section "__DATA,__data", align 4
@sarr = global [10000 x ptr] zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr @.str, ptr @buf_hot, align 8
  store ptr @.str.1, ptr @buf_cold, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %argc.addr, align 4
  call void @foo(i32 noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @foo(i32 noundef %path) #0 {
entry:
  %path.addr = alloca i32, align 4
  store i32 %path, ptr %path.addr, align 4
  %0 = load i32, ptr %path.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr @foo.i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr @foo.i, align 4
  %cmp = icmp slt i32 %1, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr @buf_hot, align 8
  %3 = load i32, ptr @foo.i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [10000 x ptr], ptr @sarr, i64 0, i64 %idxprom
  store ptr %2, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr @foo.i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @foo.i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, ptr @foo.i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %if.else
  %5 = load i32, ptr @foo.i, align 4
  %cmp2 = icmp slt i32 %5, 10000
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %6 = load ptr, ptr @buf_cold, align 8
  %7 = load i32, ptr @foo.i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [10000 x ptr], ptr @sarr, i64 0, i64 %idxprom4
  store ptr %6, ptr %arrayidx5, align 8
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %8 = load i32, ptr @foo.i, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, ptr @foo.i, align 4
  br label %for.cond1, !llvm.loop !8

for.end8:                                         ; preds = %for.cond1
  br label %if.end

if.end:                                           ; preds = %for.end8, %for.end
  ret void
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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
