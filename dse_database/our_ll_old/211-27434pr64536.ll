; ModuleID = './code/211-27434pr64536.c'
source_filename = "./code/211-27434pr64536.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.S = type { i64 }

@e = global ptr null, align 8
@b = global i64 0, align 8
@a = global i64 0, align 8
@d = global ptr null, align 8
@f = global ptr null, align 8
@k = global i64 0, align 8
@g = global i64 0, align 8
@h = global ptr null, align 8
@j = global i64 0, align 8
@i = global ptr null, align 8
@c = global ptr null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @baz() #0 {
entry:
  call void asm sideeffect "", "~{memory}"() #1, !srcloc !5
  %0 = load ptr, ptr @e, align 8
  ret ptr %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @bar(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 0, ptr %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %y, align 4
  %1 = load i32, ptr %x.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr @b, align 8
  switch i64 %2, label %sw.epilog [
    i64 0, label %sw.bb
    i64 2, label %sw.bb
    i64 3, label %sw.bb1
    i64 1, label %sw.bb3
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %3 = load i64, ptr @a, align 8
  %inc = add nsw i64 %3, 1
  store i64 %inc, ptr @a, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %for.body
  %4 = load i64, ptr @a, align 8
  %inc2 = add nsw i64 %4, 1
  store i64 %inc2, ptr @a, align 8
  br label %sw.epilog

sw.bb3:                                           ; preds = %for.body
  %5 = load i64, ptr @a, align 8
  %inc4 = add nsw i64 %5, 1
  store i64 %inc4, ptr @a, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %for.body, %sw.bb1, %sw.bb
  %6 = load ptr, ptr @d, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.else10

if.then:                                          ; preds = %sw.epilog
  %call = call ptr @baz()
  store ptr %call, ptr @f, align 8
  %7 = load i64, ptr @k, align 8
  %inc5 = add nsw i64 %7, 1
  store i64 %inc5, ptr @k, align 8
  store i64 %7, ptr @g, align 8
  %8 = load ptr, ptr @h, align 8
  %q = getelementptr inbounds %struct.S, ptr %8, i32 0, i32 0
  %tobool6 = icmp ne ptr %q, null
  br i1 %tobool6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %9 = load ptr, ptr @f, align 8
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr @j, align 8
  %11 = load ptr, ptr @f, align 8
  %12 = load i64, ptr %11, align 8
  %13 = load ptr, ptr @h, align 8
  %q8 = getelementptr inbounds %struct.S, ptr %13, i32 0, i32 0
  store i64 %12, ptr %q8, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load ptr, ptr @f, align 8
  %15 = load i64, ptr %14, align 8
  %16 = load ptr, ptr @h, align 8
  %q9 = getelementptr inbounds %struct.S, ptr %16, i32 0, i32 0
  store i64 %15, ptr %q9, align 8
  %17 = inttoptr i64 %15 to ptr
  store ptr %17, ptr @i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %18 = load ptr, ptr @f, align 8
  %19 = ptrtoint ptr %18 to i64
  %20 = load ptr, ptr @c, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %20, i32 1
  store ptr %incdec.ptr, ptr @c, align 8
  store i64 %19, ptr %20, align 8
  %21 = load ptr, ptr @e, align 8
  %add.ptr = getelementptr inbounds i64, ptr %21, i64 6
  store ptr %add.ptr, ptr @e, align 8
  br label %if.end22

if.else10:                                        ; preds = %sw.epilog
  %call11 = call ptr @baz()
  store ptr %call11, ptr @f, align 8
  %22 = load i64, ptr @k, align 8
  %inc12 = add nsw i64 %22, 1
  store i64 %inc12, ptr @k, align 8
  store i64 %22, ptr @g, align 8
  %23 = load ptr, ptr @h, align 8
  %q13 = getelementptr inbounds %struct.S, ptr %23, i32 0, i32 0
  %tobool14 = icmp ne ptr %q13, null
  br i1 %tobool14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else10
  %24 = load ptr, ptr @f, align 8
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr @j, align 8
  %26 = load ptr, ptr @f, align 8
  %27 = load i64, ptr %26, align 8
  %28 = load ptr, ptr @h, align 8
  %q16 = getelementptr inbounds %struct.S, ptr %28, i32 0, i32 0
  store i64 %27, ptr %q16, align 8
  br label %if.end19

if.else17:                                        ; preds = %if.else10
  %29 = load ptr, ptr @f, align 8
  %30 = load i64, ptr %29, align 8
  %31 = load ptr, ptr @h, align 8
  %q18 = getelementptr inbounds %struct.S, ptr %31, i32 0, i32 0
  store i64 %30, ptr %q18, align 8
  %32 = inttoptr i64 %30 to ptr
  store ptr %32, ptr @i, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  %33 = load ptr, ptr @f, align 8
  %34 = ptrtoint ptr %33 to i64
  %35 = load ptr, ptr @c, align 8
  %incdec.ptr20 = getelementptr inbounds i64, ptr %35, i32 1
  store ptr %incdec.ptr20, ptr @c, align 8
  store i64 %34, ptr %35, align 8
  %36 = load ptr, ptr @e, align 8
  %add.ptr21 = getelementptr inbounds i64, ptr %36, i64 6
  store ptr %add.ptr21, ptr @e, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.end19, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %37 = load i32, ptr %y, align 4
  %inc23 = add nsw i32 %37, 1
  store i32 %inc23, ptr %y, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{i64 239}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
