; ModuleID = './code/088-15797vrp30.c'
source_filename = "./code/088-15797vrp30.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @tst2(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp sgt i32 %0, 5555
  br i1 %cmp, label %land.lhs.true, label %if.else12

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %y.addr, align 4
  %cmp1 = icmp slt i32 %1, 6666
  br i1 %cmp1, label %if.then, label %if.else12

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr %x.addr, align 4
  %cmp2 = icmp sgt i32 %2, 5555
  br i1 %cmp2, label %if.then3, label %if.else6

if.then3:                                         ; preds = %if.then
  %3 = load i32, ptr %y.addr, align 4
  %cmp4 = icmp slt i32 %3, 6666
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then3
  store i32 1111, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then3
  %call = call i32 @link_error(i32 noundef 2222)
  store i32 %call, ptr %retval, align 4
  br label %return

if.else6:                                         ; preds = %if.then
  %4 = load i32, ptr %y.addr, align 4
  %cmp7 = icmp slt i32 %4, 6666
  br i1 %cmp7, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else6
  %call9 = call i32 @link_error(i32 noundef 3333)
  store i32 %call9, ptr %retval, align 4
  br label %return

if.else10:                                        ; preds = %if.else6
  %call11 = call i32 @link_error(i32 noundef 4444)
  store i32 %call11, ptr %retval, align 4
  br label %return

if.else12:                                        ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else12, %if.else10, %if.then8, %if.else, %if.then5
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare i32 @link_error(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
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
