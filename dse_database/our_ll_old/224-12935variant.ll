; ModuleID = './code/224-12935variant.c'
source_filename = "./code/224-12935variant.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@buffer = global [8 x i8] zeroinitializer, align 1
@buffer2 = global [8 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 23, ptr %x, align 4
  %0 = load i8, ptr %x, align 4
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 23, ptr @buffer, align 1
  store i8 23, ptr getelementptr inbounds ([8 x i8], ptr @buffer, i64 0, i64 4), align 1
  store i8 -1, ptr @buffer2, align 1
  store i8 23, ptr getelementptr inbounds ([8 x i8], ptr @buffer2, i64 0, i64 4), align 1
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 23, ptr getelementptr inbounds ([8 x i8], ptr @buffer, i64 0, i64 3), align 1
  store i8 23, ptr getelementptr inbounds ([8 x i8], ptr @buffer, i64 0, i64 7), align 1
  store i8 -1, ptr @buffer2, align 1
  store i8 23, ptr getelementptr inbounds ([8 x i8], ptr @buffer2, i64 0, i64 7), align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @func()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @func() #0 {
entry:
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
