; ModuleID = './code/377-34220main.c'
source_filename = "./code/377-34220main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [12 x i8] c"argc is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"###ARGV#####\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"###ENVP######\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv, ptr noundef %envp) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %envp.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr %envp, ptr %envp.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %argv.addr, align 8
  %incdec.ptr = getelementptr inbounds ptr, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %argv.addr, align 8
  %4 = load ptr, ptr %3, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %4)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.end
  %5 = load ptr, ptr %envp.addr, align 8
  %6 = load ptr, ptr %5, align 8
  %tobool5 = icmp ne ptr %6, null
  br i1 %tobool5, label %while.body6, label %while.end9

while.body6:                                      ; preds = %while.cond4
  %7 = load ptr, ptr %envp.addr, align 8
  %incdec.ptr7 = getelementptr inbounds ptr, ptr %7, i32 1
  store ptr %incdec.ptr7, ptr %envp.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %8)
  br label %while.cond4, !llvm.loop !7

while.end9:                                       ; preds = %while.cond4
  ret i32 0
}

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
