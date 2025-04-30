; ModuleID = './code/118-7029pr83553.c'
source_filename = "./code/118-7029pr83553.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@a = global [3 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @foo(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  store i32 7, ptr %n.addr, align 4
  %1 = load i32, ptr @a, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  br i1 false, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %for.body
  %2 = load i32, ptr @a, align 4
  %add = add nsw i32 %2, 1
  store i32 %add, ptr getelementptr inbounds ([3 x i32], ptr @a, i64 0, i64 1), align 4
  br label %for.inc

for.inc:                                          ; preds = %sw.bb1
  %3 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @a, i64 0, i64 1), align 4
  %add2 = add nsw i32 %3, 1
  store i32 %add2, ptr getelementptr inbounds ([3 x i32], ptr @a, i64 0, i64 2), align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %entry
  %4 = load i32, ptr %n.addr, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo(i32 noundef 0)
  %cmp = icmp ne i32 %call, 7
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = load i32, ptr @a, align 4
  %cmp1 = icmp ne i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %1 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @a, i64 0, i64 1), align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false2
  %2 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @a, i64 0, i64 2), align 4
  %tobool4 = icmp ne i32 %2, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false2, %lor.lhs.false, %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %lor.lhs.false3
  %call5 = call i32 @foo(i32 noundef 2)
  %cmp6 = icmp ne i32 %call5, 2
  br i1 %cmp6, label %if.then13, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %3 = load i32, ptr @a, align 4
  %cmp8 = icmp ne i32 %3, 1
  br i1 %cmp8, label %if.then13, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %4 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @a, i64 0, i64 1), align 4
  %cmp10 = icmp ne i32 %4, 2
  br i1 %cmp10, label %if.then13, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %5 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @a, i64 0, i64 2), align 4
  %cmp12 = icmp ne i32 %5, 3
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %if.end
  call void @abort() #2
  unreachable

if.end14:                                         ; preds = %lor.lhs.false11
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
