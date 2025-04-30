; ModuleID = './code/250-23303pr78482.c'
source_filename = "./code/250-23303pr78482.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@a = global i16 -5, align 2
@b = global i32 3, align 4
@c = global i8 0, align 1
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@f = global i32 0, align 4
@d = global i8 0, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @bar(ptr noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  store i32 %y, ptr %y.addr, align 4
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i32, ptr %y.addr, align 4
  call void asm sideeffect "", "=*imr,=*imr,0,1,~{memory}"(ptr elementtype(ptr) %x.addr, ptr elementtype(i32) %y.addr, ptr %0, i32 %1) #2, !srcloc !5
  %2 = load i32, ptr %y.addr, align 4
  %cmp = icmp eq i32 %2, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, ptr @c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr @b, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %call = call i32 @bar(ptr noundef @.str, i32 noundef 2)
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = load i16, ptr @a, align 2
  %conv2 = sext i16 %2 to i32
  call void @fn1(i32 noundef %conv2)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %3 = load i8, ptr @c, align 1
  %dec = add i8 %3, -1
  store i8 %dec, ptr @c, align 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @fn1(i32 noundef %p1) #0 {
entry:
  %p1.addr = alloca i32, align 4
  %e = alloca i16, align 2
  store i32 %p1, ptr %p1.addr, align 4
  %0 = load i32, ptr @f, align 4
  store i32 %0, ptr @b, align 4
  %1 = load i32, ptr @f, align 4
  %2 = load i32, ptr %p1.addr, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %p1.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  br label %L

L:                                                ; preds = %if.end12, %if.then
  store i16 0, ptr %e, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.body, %L
  br i1 false, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end4

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i8, ptr @d, align 1
  %tobool1 = icmp ne i8 %4, 0
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %5 = load i32, ptr @b, align 4
  %cmp3 = icmp sge i32 0, %5
  %conv = zext i1 %cmp3 to i32
  store i32 %conv, ptr @b, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %for.end
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %if.end4
  %6 = load i16, ptr %e, align 2
  %conv6 = sext i16 %6 to i32
  %cmp7 = icmp sle i32 %conv6, 3
  br i1 %cmp7, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond5
  %7 = load i32, ptr @b, align 4
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %for.body9
  br label %for.inc

if.end12:                                         ; preds = %for.body9
  store i32 3, ptr @b, align 4
  br label %L

for.inc:                                          ; preds = %if.then11
  %8 = load i16, ptr %e, align 2
  %inc = add i16 %8, 1
  store i16 %inc, ptr %e, align 2
  br label %for.cond5, !llvm.loop !8

for.end13:                                        ; preds = %for.cond5
  ret void
}

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
!5 = !{i64 398}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
