; ModuleID = './code/065-10095smallest.c'
source_filename = "./code/065-10095smallest.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 20, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4
  %cmp = icmp ult i32 %0, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %x, align 4
  %rem = urem i32 %1, 1
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, ptr %x, align 4
  %rem2 = urem i32 %2, 2
  %cmp3 = icmp eq i32 %rem2, 0
  br i1 %cmp3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %x, align 4
  %rem5 = urem i32 %3, 3
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %land.lhs.true7, label %if.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %4 = load i32, ptr %x, align 4
  %rem8 = urem i32 %4, 4
  %cmp9 = icmp eq i32 %rem8, 0
  br i1 %cmp9, label %land.lhs.true10, label %if.end

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %5 = load i32, ptr %x, align 4
  %rem11 = urem i32 %5, 5
  %cmp12 = icmp eq i32 %rem11, 0
  br i1 %cmp12, label %land.lhs.true13, label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %6 = load i32, ptr %x, align 4
  %rem14 = urem i32 %6, 6
  %cmp15 = icmp eq i32 %rem14, 0
  br i1 %cmp15, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %7 = load i32, ptr %x, align 4
  %rem17 = urem i32 %7, 7
  %cmp18 = icmp eq i32 %rem17, 0
  br i1 %cmp18, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %8 = load i32, ptr %x, align 4
  %rem20 = urem i32 %8, 8
  %cmp21 = icmp eq i32 %rem20, 0
  br i1 %cmp21, label %land.lhs.true22, label %if.end

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %9 = load i32, ptr %x, align 4
  %rem23 = urem i32 %9, 9
  %cmp24 = icmp eq i32 %rem23, 0
  br i1 %cmp24, label %land.lhs.true25, label %if.end

land.lhs.true25:                                  ; preds = %land.lhs.true22
  %10 = load i32, ptr %x, align 4
  %rem26 = urem i32 %10, 10
  %cmp27 = icmp eq i32 %rem26, 0
  br i1 %cmp27, label %land.lhs.true28, label %if.end

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %11 = load i32, ptr %x, align 4
  %rem29 = urem i32 %11, 11
  %cmp30 = icmp eq i32 %rem29, 0
  br i1 %cmp30, label %land.lhs.true31, label %if.end

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %12 = load i32, ptr %x, align 4
  %rem32 = urem i32 %12, 12
  %cmp33 = icmp eq i32 %rem32, 0
  br i1 %cmp33, label %land.lhs.true34, label %if.end

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %13 = load i32, ptr %x, align 4
  %rem35 = urem i32 %13, 13
  %cmp36 = icmp eq i32 %rem35, 0
  br i1 %cmp36, label %land.lhs.true37, label %if.end

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %14 = load i32, ptr %x, align 4
  %rem38 = urem i32 %14, 14
  %cmp39 = icmp eq i32 %rem38, 0
  br i1 %cmp39, label %land.lhs.true40, label %if.end

land.lhs.true40:                                  ; preds = %land.lhs.true37
  %15 = load i32, ptr %x, align 4
  %rem41 = urem i32 %15, 15
  %cmp42 = icmp eq i32 %rem41, 0
  br i1 %cmp42, label %land.lhs.true43, label %if.end

land.lhs.true43:                                  ; preds = %land.lhs.true40
  %16 = load i32, ptr %x, align 4
  %rem44 = urem i32 %16, 16
  %cmp45 = icmp eq i32 %rem44, 0
  br i1 %cmp45, label %land.lhs.true46, label %if.end

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %17 = load i32, ptr %x, align 4
  %rem47 = urem i32 %17, 17
  %cmp48 = icmp eq i32 %rem47, 0
  br i1 %cmp48, label %land.lhs.true49, label %if.end

land.lhs.true49:                                  ; preds = %land.lhs.true46
  %18 = load i32, ptr %x, align 4
  %rem50 = urem i32 %18, 18
  %cmp51 = icmp eq i32 %rem50, 0
  br i1 %cmp51, label %land.lhs.true52, label %if.end

land.lhs.true52:                                  ; preds = %land.lhs.true49
  %19 = load i32, ptr %x, align 4
  %rem53 = urem i32 %19, 19
  %cmp54 = icmp eq i32 %rem53, 0
  br i1 %cmp54, label %land.lhs.true55, label %if.end

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %20 = load i32, ptr %x, align 4
  %rem56 = urem i32 %20, 20
  %cmp57 = icmp eq i32 %rem56, 0
  br i1 %cmp57, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true55
  br label %for.end

if.end:                                           ; preds = %land.lhs.true55, %land.lhs.true52, %land.lhs.true49, %land.lhs.true46, %land.lhs.true43, %land.lhs.true40, %land.lhs.true37, %land.lhs.true34, %land.lhs.true31, %land.lhs.true28, %land.lhs.true25, %land.lhs.true22, %land.lhs.true19, %land.lhs.true16, %land.lhs.true13, %land.lhs.true10, %land.lhs.true7, %land.lhs.true4, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, ptr %x, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %x, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond
  %22 = load i32, ptr %x, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %22)
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
