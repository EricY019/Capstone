; ModuleID = './code/277-17112backtrace-tst.c'
source_filename = "./code/277-17112backtrace-tst.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"called from %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"            %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %arr = alloca [20 x i32], align 4
  %cnt = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i64 0, ptr %cnt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %cnt, align 8
  %cmp = icmp ult i64 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i64 @random()
  %conv = trunc i64 %call to i32
  %1 = load i64, ptr %cnt, align 8
  %arrayidx = getelementptr inbounds [20 x i32], ptr %arr, i64 0, i64 %1
  store i32 %conv, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i64, ptr %cnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %cnt, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [20 x i32], ptr %arr, i64 0, i64 0
  call void @qsort(ptr noundef %arraydecay, i64 noundef 20, i64 noundef 4, ptr noundef @compare)
  store i64 0, ptr %cnt, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc7, %for.end
  %3 = load i64, ptr %cnt, align 8
  %cmp2 = icmp ult i64 %3, 20
  br i1 %cmp2, label %for.body4, label %for.end9

for.body4:                                        ; preds = %for.cond1
  %4 = load i64, ptr %cnt, align 8
  %arrayidx5 = getelementptr inbounds [20 x i32], ptr %arr, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx5, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  br label %for.inc7

for.inc7:                                         ; preds = %for.body4
  %6 = load i64, ptr %cnt, align 8
  %inc8 = add i64 %6, 1
  store i64 %inc8, ptr %cnt, align 8
  br label %for.cond1, !llvm.loop !7

for.end9:                                         ; preds = %for.cond1
  ret i32 0
}

declare i64 @random() #1

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @compare(ptr noundef %p1, ptr noundef %p2) #0 {
entry:
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %ba = alloca [20 x ptr], align 8
  %n = alloca i32, align 4
  %names = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %p1, ptr %p1.addr, align 8
  store ptr %p2, ptr %p2.addr, align 8
  %arraydecay = getelementptr inbounds [20 x ptr], ptr %ba, i64 0, i64 0
  %call = call i32 @backtrace(ptr noundef %arraydecay, i32 noundef 20)
  store i32 %call, ptr %n, align 4
  %0 = load i32, ptr %n, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [20 x ptr], ptr %ba, i64 0, i64 0
  %1 = load i32, ptr %n, align 4
  %call2 = call ptr @backtrace_symbols(ptr noundef %arraydecay1, i32 noundef %1)
  store ptr %call2, ptr %names, align 8
  %2 = load ptr, ptr %names, align 8
  %cmp3 = icmp ne ptr %2, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %3 = load ptr, ptr %names, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %4)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %n, align 4
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %names, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 %idxprom
  %9 = load ptr, ptr %arrayidx7, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %11 = load ptr, ptr %names, align 8
  call void @free(ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %12 = load ptr, ptr %p1.addr, align 8
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %p2.addr, align 8
  %15 = load i32, ptr %14, align 4
  %sub = sub i32 %13, %15
  ret i32 %sub
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @backtrace(ptr noundef, i32 noundef) #1

declare ptr @backtrace_symbols(ptr noundef, i32 noundef) #1

declare void @free(ptr noundef) #1

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
