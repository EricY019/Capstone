; ModuleID = './code/347-15138readsymlink.c'
source_filename = "./code/347-15138readsymlink.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__stdoutp = external global ptr, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %symdata = alloca [1025 x i8], align 1
  %len = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %argv.addr, align 8
  %1 = load i32, ptr %argc.addr, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %argv.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %arraydecay = getelementptr inbounds [1025 x i8], ptr %symdata, i64 0, i64 0
  %call = call i64 @readlink(ptr noundef %3, ptr noundef %arraydecay, i64 noundef 1025)
  store i64 %call, ptr %len, align 8
  %4 = load i64, ptr %len, align 8
  %cmp1 = icmp sge i64 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i64, ptr %len, align 8
  %arrayidx = getelementptr inbounds [1025 x i8], ptr %symdata, i64 0, i64 %5
  store i8 0, ptr %arrayidx, align 1
  %arraydecay2 = getelementptr inbounds [1025 x i8], ptr %symdata, i64 0, i64 0
  %6 = load ptr, ptr @__stdoutp, align 8
  %call3 = call i32 @"\01_fputs"(ptr noundef %arraydecay2, ptr noundef %6)
  %7 = load ptr, ptr @__stdoutp, align 8
  %call4 = call i32 @fputc(i32 noundef 10, ptr noundef %7)
  %8 = load ptr, ptr @__stdoutp, align 8
  %call5 = call i32 @fflush(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare i64 @readlink(ptr noundef, ptr noundef, i64 noundef) #1

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

declare i32 @fputc(i32 noundef, ptr noundef) #1

declare i32 @fflush(ptr noundef) #1

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
