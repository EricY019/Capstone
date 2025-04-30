; ModuleID = './code/371-15068mem_dump.c'
source_filename = "./code/371-15068mem_dump.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [9 x i8] c"mem.dump\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"arr[%d] = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %i = alloca i32, align 4
  %mul = alloca i32, align 4
  %file = alloca ptr, align 8
  %i4 = alloca i32, align 4
  %i16 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 10, ptr %N, align 4
  %0 = call ptr @llvm.stacksave.p0()
  store ptr %0, ptr %saved_stack, align 8
  %vla = alloca i32, i64 10, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 9, ptr %mul, align 4
  %2 = load i32, ptr %i, align 4
  %mul1 = mul nsw i32 9, %2
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %mul1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %file, align 8
  %5 = load ptr, ptr %file, align 8
  %call2 = call i64 @"\01_fwrite"(ptr noundef %vla, i64 noundef 4, i64 noundef 10, ptr noundef %5)
  %6 = load ptr, ptr %file, align 8
  %call3 = call i32 @fclose(ptr noundef %6)
  store i32 0, ptr %i4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc10, %for.end
  %7 = load i32, ptr %i4, align 4
  %cmp6 = icmp slt i32 %7, 10
  br i1 %cmp6, label %for.body7, label %for.end12

for.body7:                                        ; preds = %for.cond5
  %8 = load i32, ptr %i4, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %vla, i64 %idxprom8
  store i32 0, ptr %arrayidx9, align 4
  br label %for.inc10

for.inc10:                                        ; preds = %for.body7
  %9 = load i32, ptr %i4, align 4
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %i4, align 4
  br label %for.cond5, !llvm.loop !7

for.end12:                                        ; preds = %for.cond5
  %call13 = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.2)
  store ptr %call13, ptr %file, align 8
  %10 = load ptr, ptr %file, align 8
  %call14 = call i64 @fread(ptr noundef %vla, i64 noundef 4, i64 noundef 10, ptr noundef %10)
  %11 = load ptr, ptr %file, align 8
  %call15 = call i32 @fclose(ptr noundef %11)
  store i32 0, ptr %i16, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc23, %for.end12
  %12 = load i32, ptr %i16, align 4
  %cmp18 = icmp slt i32 %12, 10
  br i1 %cmp18, label %for.body19, label %for.end25

for.body19:                                       ; preds = %for.cond17
  %13 = load i32, ptr %i16, align 4
  %14 = load i32, ptr %i16, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds i32, ptr %vla, i64 %idxprom20
  %15 = load i32, ptr %arrayidx21, align 4
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %13, i32 noundef %15)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body19
  %16 = load i32, ptr %i16, align 4
  %inc24 = add nsw i32 %16, 1
  store i32 %inc24, ptr %i16, align 4
  br label %for.cond17, !llvm.loop !8

for.end25:                                        ; preds = %for.cond17
  store i32 0, ptr %retval, align 4
  %17 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %17)
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #2

declare i64 @"\01_fwrite"(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

declare i64 @fread(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
