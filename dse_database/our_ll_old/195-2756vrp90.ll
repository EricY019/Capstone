; ModuleID = './code/195-2756vrp90.c'
source_filename = "./code/195-2756vrp90.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @foo(i32 noundef %n, i32 noundef %r) #0 {
entry:
  %n.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %r, ptr %r.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  call void asm sideeffect "", ""() #2, !srcloc !5
  %1 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp ult i32 %1, 10
  br i1 %cmp1, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  call void asm sideeffect "", ""() #2, !srcloc !6
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then2
  %2 = load i32, ptr %n.addr, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %n.addr, align 4
  %3 = load i32, ptr %r.addr, align 4
  %mul = mul nsw i32 %3, 2
  store i32 %mul, ptr %r.addr, align 4
  %4 = load i32, ptr %n.addr, align 4
  %cmp3 = icmp uge i32 %4, 9
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %do.body
  call void @link_error()
  br label %if.end

if.end:                                           ; preds = %if.then4, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %5 = load i32, ptr %n.addr, align 4
  %cmp5 = icmp ugt i32 %5, 0
  br i1 %cmp5, label %do.body, label %do.end, !llvm.loop !7

do.end:                                           ; preds = %do.cond
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %entry
  %6 = load i32, ptr %r.addr, align 4
  %7 = load i32, ptr %n.addr, align 4
  %add = add i32 %6, %7
  ret i32 %add
}

declare void @link_error() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo(i32 noundef 7, i32 noundef 2)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{i64 269}
!6 = !{i64 303}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
