; ModuleID = './code/126-6073pr65053-2.c'
source_filename = "./code/126-6073pr65053-2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@x = global i32 0, align 4
@i = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %u = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %0 = load i32, ptr @x, align 4
  call void asm sideeffect "", "=*imr,0"(ptr elementtype(i32) @x, i32 %0) #2, !srcloc !5
  %1 = load i32, ptr @x, align 4
  store i32 %1, ptr %n, align 4
  store i32 32, ptr %u, align 4
  %2 = load i32, ptr %n, align 4
  %cmp = icmp uge i32 %2, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %n, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %4 = load i32, ptr %n, align 4
  %add = add i32 %4, 32
  store i32 %add, ptr %u, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end3
  %5 = load i32, ptr %u, align 4
  %cmp4 = icmp ne i32 %5, 32
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %u, align 4
  call void asm sideeffect "", "imr"(i32 %6) #2, !srcloc !6
  store i32 32, ptr %u, align 4
  store i32 1, ptr @i, align 4
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr @i, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.end
  call void @abort() #3
  unreachable

if.end6:                                          ; preds = %while.end
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{i64 110}
!6 = !{i64 276}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
