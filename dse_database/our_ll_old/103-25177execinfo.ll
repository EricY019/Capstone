; ModuleID = './code/103-25177execinfo.c'
source_filename = "./code/103-25177execinfo.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [28 x i8] c"Obtained %zd stack frames.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_trace() #0 {
entry:
  %array = alloca [10 x ptr], align 8
  %size = alloca i64, align 8
  %strings = alloca ptr, align 8
  %i = alloca i64, align 8
  %arraydecay = getelementptr inbounds [10 x ptr], ptr %array, i64 0, i64 0
  %call = call i32 @backtrace(ptr noundef %arraydecay, i32 noundef 10)
  %conv = sext i32 %call to i64
  store i64 %conv, ptr %size, align 8
  %arraydecay1 = getelementptr inbounds [10 x ptr], ptr %array, i64 0, i64 0
  %0 = load i64, ptr %size, align 8
  %conv2 = trunc i64 %0 to i32
  %call3 = call ptr @backtrace_symbols(ptr noundef %arraydecay1, i32 noundef %conv2)
  store ptr %call3, ptr %strings, align 8
  %1 = load i64, ptr %size, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %1)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8
  %3 = load i64, ptr %size, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %strings, align 8
  %5 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %5
  %6 = load ptr, ptr %arrayidx, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %8 = load ptr, ptr %strings, align 8
  call void @free(ptr noundef %8)
  ret void
}

declare i32 @backtrace(ptr noundef, i32 noundef) #1

declare ptr @backtrace_symbols(ptr noundef, i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @dummy_function() #0 {
entry:
  call void @print_trace()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @dummy_function()
  ret i32 0
}

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
