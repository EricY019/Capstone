; ModuleID = './code/373-30652pr87290.c'
source_filename = "./code/373-30652pr87290.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@c = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f0() #0 {
entry:
  %0 = load i32, ptr @c, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @c, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @f1(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %rem = srem i32 %0, 16
  %cmp = icmp eq i32 %rem, 13
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @f2(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %rem = srem i32 %0, 16
  %cmp = icmp eq i32 %rem, -13
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f3(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %rem = srem i32 %0, 16
  %cmp = icmp eq i32 %rem, 13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @f0()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f4(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %rem = srem i32 %0, 16
  %cmp = icmp eq i32 %rem, -13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @f0()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 -30, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc57, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 30
  br i1 %cmp, label %for.body, label %for.end59

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %1, 16
  %add = add nsw i32 13, %mul
  %call = call i32 @f1(i32 noundef %add)
  %2 = load i32, ptr %i, align 4
  %cmp1 = icmp sge i32 %2, 0
  %conv = zext i1 %cmp1 to i32
  %cmp2 = icmp ne i32 %call, %conv
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %mul4 = mul nsw i32 %3, 16
  %add5 = add nsw i32 -13, %mul4
  %call6 = call i32 @f2(i32 noundef %add5)
  %4 = load i32, ptr %i, align 4
  %cmp7 = icmp sle i32 %4, 0
  %conv8 = zext i1 %cmp7 to i32
  %cmp9 = icmp ne i32 %call6, %conv8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %i, align 4
  %mul11 = mul nsw i32 %5, 16
  %add12 = add nsw i32 13, %mul11
  call void @f3(i32 noundef %add12)
  %6 = load i32, ptr @c, align 4
  %7 = load i32, ptr %i, align 4
  %cmp13 = icmp sge i32 %7, 0
  %conv14 = zext i1 %cmp13 to i32
  %cmp15 = icmp ne i32 %6, %conv14
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end
  call void @abort() #2
  unreachable

if.end18:                                         ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %mul19 = mul nsw i32 %8, 16
  %add20 = add nsw i32 -13, %mul19
  call void @f4(i32 noundef %add20)
  %9 = load i32, ptr @c, align 4
  %10 = load i32, ptr %i, align 4
  %cmp21 = icmp eq i32 %10, 0
  %conv22 = zext i1 %cmp21 to i32
  %add23 = add nsw i32 1, %conv22
  %cmp24 = icmp ne i32 %9, %add23
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end18
  call void @abort() #2
  unreachable

if.end27:                                         ; preds = %if.end18
  store i32 1, ptr %j, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %if.end27
  %11 = load i32, ptr %j, align 4
  %cmp29 = icmp slt i32 %11, 16
  br i1 %cmp29, label %for.body31, label %for.end

for.body31:                                       ; preds = %for.cond28
  %12 = load i32, ptr %i, align 4
  %mul32 = mul nsw i32 %12, 16
  %add33 = add nsw i32 13, %mul32
  %13 = load i32, ptr %j, align 4
  %add34 = add nsw i32 %add33, %13
  %call35 = call i32 @f1(i32 noundef %add34)
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %if.then42, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %for.body31
  %14 = load i32, ptr %i, align 4
  %mul37 = mul nsw i32 %14, 16
  %add38 = add nsw i32 -13, %mul37
  %15 = load i32, ptr %j, align 4
  %add39 = add nsw i32 %add38, %15
  %call40 = call i32 @f2(i32 noundef %add39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false36, %for.body31
  call void @abort() #2
  unreachable

if.end43:                                         ; preds = %lor.lhs.false36
  %16 = load i32, ptr %i, align 4
  %mul44 = mul nsw i32 %16, 16
  %add45 = add nsw i32 13, %mul44
  %17 = load i32, ptr %j, align 4
  %add46 = add nsw i32 %add45, %17
  call void @f3(i32 noundef %add46)
  %18 = load i32, ptr %i, align 4
  %mul47 = mul nsw i32 %18, 16
  %add48 = add nsw i32 -13, %mul47
  %19 = load i32, ptr %j, align 4
  %add49 = add nsw i32 %add48, %19
  call void @f4(i32 noundef %add49)
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %20 = load i32, ptr %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond28, !llvm.loop !5

for.end:                                          ; preds = %for.cond28
  %21 = load i32, ptr @c, align 4
  %22 = load i32, ptr %i, align 4
  %cmp50 = icmp eq i32 %22, 0
  %conv51 = zext i1 %cmp50 to i32
  %add52 = add nsw i32 1, %conv51
  %cmp53 = icmp ne i32 %21, %add52
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %for.end
  call void @abort() #2
  unreachable

if.end56:                                         ; preds = %for.end
  store i32 0, ptr @c, align 4
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %23 = load i32, ptr %i, align 4
  %inc58 = add nsw i32 %23, 1
  store i32 %inc58, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end59:                                        ; preds = %for.cond
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
