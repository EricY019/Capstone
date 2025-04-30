; ModuleID = './code/129-11343display.c'
source_filename = "./code/129-11343display.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@i = global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Hello world!\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i64, ptr @i, align 8
  call void @display_i64(i64 noundef %0)
  call void @display_string(ptr noundef @.str)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @display_i64(i64 noundef %it) #0 {
entry:
  %it.addr = alloca i64, align 8
  %c = alloca i32, align 4
  store i64 %it, ptr %it.addr, align 8
  %0 = load i64, ptr %it.addr, align 8
  %rem = srem i64 %0, 10
  %add = add nsw i64 48, %rem
  %conv = trunc i64 %add to i32
  store i32 %conv, ptr %c, align 4
  %1 = load i64, ptr %it.addr, align 8
  %div = sdiv i64 %1, 10
  store i64 %div, ptr %it.addr, align 8
  %2 = load i64, ptr %it.addr, align 8
  %cmp = icmp sgt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %it.addr, align 8
  call void @display_i64(i64 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %c, align 4
  %call = call i32 @putchar(i32 noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @display_string(ptr noundef %string) #0 {
entry:
  %string.addr = alloca ptr, align 8
  store ptr %string, ptr %string.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %string.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %string.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv2 = sext i8 %3 to i32
  %call = call i32 @putchar(i32 noundef %conv2)
  %4 = load ptr, ptr %string.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %string.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call3 = call i32 @putchar(i32 noundef 10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @display_si64(i64 noundef %it) #0 {
entry:
  %it.addr = alloca i64, align 8
  store i64 %it, ptr %it.addr, align 8
  %0 = load i64, ptr %it.addr, align 8
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 @putchar(i32 noundef 45)
  %1 = load i64, ptr %it.addr, align 8
  %sub = sub nsw i64 0, %1
  store i64 %sub, ptr %it.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, ptr %it.addr, align 8
  call void @display_i64(i64 noundef %2)
  ret void
}

declare i32 @putchar(i32 noundef) #1

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
