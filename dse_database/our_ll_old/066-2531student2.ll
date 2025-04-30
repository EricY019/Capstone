; ModuleID = './code/066-2531student2.c'
source_filename = "./code/066-2531student2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.student = type { [10 x i8], i32 }

@stu = global [5 x %struct.student] [%struct.student { [10 x i8] c"A\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.student { [10 x i8] c"B\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.student { [10 x i8] c"C\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.student { [10 x i8] c"D\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.student { [10 x i8] c"E\00\00\00\00\00\00\00\00\00", i32 0 }], align 4
@.str = private unnamed_addr constant [8 x i8] c"\0A%s:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [5 x i32], align 4
  %i = alloca i32, align 4
  %index = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %x, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %add = add nsw i32 %1, 1
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %add, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %if.end, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %4, 5
  br i1 %cmp2, label %for.body4, label %for.end17

for.body4:                                        ; preds = %for.cond1
  %call5 = call i32 @rand()
  %rem = srem i32 %call5, 5
  store i32 %rem, ptr %index, align 4
  %5 = load i32, ptr %index, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 %idxprom6
  %6 = load i32, ptr %arrayidx7, align 4
  %cmp8 = icmp ne i32 %6, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %7 = load i32, ptr %index, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 %idxprom10
  %8 = load i32, ptr %arrayidx11, align 4
  %9 = load i32, ptr %i, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [5 x %struct.student], ptr @stu, i64 0, i64 %idxprom12
  %num = getelementptr inbounds %struct.student, ptr %arrayidx13, i32 0, i32 1
  store i32 %8, ptr %num, align 4
  %10 = load i32, ptr %index, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [5 x i32], ptr %a, i64 0, i64 %idxprom14
  store i32 0, ptr %arrayidx15, align 4
  %11 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %11, 1
  store i32 %inc16, ptr %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.cond1, !llvm.loop !7

for.end17:                                        ; preds = %for.cond1
  store i32 0, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc28, %for.end17
  %12 = load i32, ptr %i, align 4
  %cmp19 = icmp slt i32 %12, 5
  br i1 %cmp19, label %for.body21, label %for.end30

for.body21:                                       ; preds = %for.cond18
  %13 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %13 to i64
  %arrayidx23 = getelementptr inbounds [5 x %struct.student], ptr @stu, i64 0, i64 %idxprom22
  %name = getelementptr inbounds %struct.student, ptr %arrayidx23, i32 0, i32 0
  %arraydecay = getelementptr inbounds [10 x i8], ptr %name, i64 0, i64 0
  %14 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %14 to i64
  %arrayidx25 = getelementptr inbounds [5 x %struct.student], ptr @stu, i64 0, i64 %idxprom24
  %num26 = getelementptr inbounds %struct.student, ptr %arrayidx25, i32 0, i32 1
  %15 = load i32, ptr %num26, align 4
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay, i32 noundef %15)
  br label %for.inc28

for.inc28:                                        ; preds = %for.body21
  %16 = load i32, ptr %i, align 4
  %inc29 = add nsw i32 %16, 1
  store i32 %inc29, ptr %i, align 4
  br label %for.cond18, !llvm.loop !8

for.end30:                                        ; preds = %for.cond18
  ret i32 0
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
