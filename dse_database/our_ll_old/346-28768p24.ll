; ModuleID = './code/346-28768p24.c'
source_filename = "./code/346-28768p24.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @set_space(ptr noundef %s, i32 noundef %p, i8 noundef signext %c) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %p.addr = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i32 %p, ptr %p.addr, align 4
  store i8 %c, ptr %c.addr, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %p.addr, align 4
  %cmp2 = icmp sgt i32 %2, 0
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %3 = load ptr, ptr %s.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv4 = sext i8 %4 to i32
  %cmp5 = icmp ne i32 %conv4, 32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %5 = phi i1 [ true, %land.rhs ], [ %cmp5, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %5, %lor.end ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp eq i32 %conv7, 32
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i32, ptr %p.addr, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %p.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %11 = load ptr, ptr %s.addr, align 8
  %12 = load i8, ptr %11, align 1
  %conv10 = sext i8 %12 to i32
  %cmp11 = icmp ne i32 %conv10, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.end
  %13 = load i8, ptr %c.addr, align 1
  %14 = load ptr, ptr %s.addr, align 8
  store i8 %13, ptr %14, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @clear(ptr noundef %s, i8 noundef signext %c) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  store ptr %s, ptr %s.addr, align 8
  store i8 %c, ptr %c.addr, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %s.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv2 = sext i8 %3 to i32
  %4 = load i8, ptr %c.addr, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp ne i32 %conv2, %conv3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %land.end
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv6 = sext i8 %8 to i32
  %9 = load i8, ptr %c.addr, align 1
  %conv7 = sext i8 %9 to i32
  %cmp8 = icmp eq i32 %conv6, %conv7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %10 = load ptr, ptr %s.addr, align 8
  store i8 32, ptr %10, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca ptr, align 8
  %i0 = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i4 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i6 = alloca i32, align 4
  %i7 = alloca i32, align 4
  %i8 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 11) #5
  store ptr %call, ptr %s, align 8
  %0 = load ptr, ptr %s, align 8
  %1 = load ptr, ptr %s, align 8
  %2 = call i64 @llvm.objectsize.i64.p0(ptr %1, i1 false, i1 true, i1 false)
  %call1 = call ptr @__strcpy_chk(ptr noundef %0, ptr noundef @.str, i64 noundef %2) #6
  store i32 0, ptr %i0, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc48, %entry
  %3 = load i32, ptr %i0, align 4
  %cmp = icmp slt i32 %3, 10
  br i1 %cmp, label %for.body, label %for.end50

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %s, align 8
  %5 = load i32, ptr %i0, align 4
  call void @set_space(ptr noundef %4, i32 noundef %5, i8 noundef signext 48)
  store i32 0, ptr %i1, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc45, %for.body
  %6 = load i32, ptr %i1, align 4
  %cmp3 = icmp slt i32 %6, 9
  br i1 %cmp3, label %for.body4, label %for.end47

for.body4:                                        ; preds = %for.cond2
  %7 = load ptr, ptr %s, align 8
  %8 = load i32, ptr %i1, align 4
  call void @set_space(ptr noundef %7, i32 noundef %8, i8 noundef signext 49)
  store i32 0, ptr %i2, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc42, %for.body4
  %9 = load i32, ptr %i2, align 4
  %cmp6 = icmp slt i32 %9, 8
  br i1 %cmp6, label %for.body7, label %for.end44

for.body7:                                        ; preds = %for.cond5
  %10 = load ptr, ptr %s, align 8
  %11 = load i32, ptr %i2, align 4
  call void @set_space(ptr noundef %10, i32 noundef %11, i8 noundef signext 50)
  store i32 0, ptr %i3, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc39, %for.body7
  %12 = load i32, ptr %i3, align 4
  %cmp9 = icmp slt i32 %12, 7
  br i1 %cmp9, label %for.body10, label %for.end41

for.body10:                                       ; preds = %for.cond8
  %13 = load ptr, ptr %s, align 8
  %14 = load i32, ptr %i3, align 4
  call void @set_space(ptr noundef %13, i32 noundef %14, i8 noundef signext 51)
  store i32 0, ptr %i4, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc36, %for.body10
  %15 = load i32, ptr %i4, align 4
  %cmp12 = icmp slt i32 %15, 6
  br i1 %cmp12, label %for.body13, label %for.end38

for.body13:                                       ; preds = %for.cond11
  %16 = load ptr, ptr %s, align 8
  %17 = load i32, ptr %i4, align 4
  call void @set_space(ptr noundef %16, i32 noundef %17, i8 noundef signext 52)
  store i32 0, ptr %i5, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc33, %for.body13
  %18 = load i32, ptr %i5, align 4
  %cmp15 = icmp slt i32 %18, 5
  br i1 %cmp15, label %for.body16, label %for.end35

for.body16:                                       ; preds = %for.cond14
  %19 = load ptr, ptr %s, align 8
  %20 = load i32, ptr %i5, align 4
  call void @set_space(ptr noundef %19, i32 noundef %20, i8 noundef signext 53)
  store i32 0, ptr %i6, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc30, %for.body16
  %21 = load i32, ptr %i6, align 4
  %cmp18 = icmp slt i32 %21, 4
  br i1 %cmp18, label %for.body19, label %for.end32

for.body19:                                       ; preds = %for.cond17
  %22 = load ptr, ptr %s, align 8
  %23 = load i32, ptr %i6, align 4
  call void @set_space(ptr noundef %22, i32 noundef %23, i8 noundef signext 54)
  store i32 0, ptr %i7, align 4
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc27, %for.body19
  %24 = load i32, ptr %i7, align 4
  %cmp21 = icmp slt i32 %24, 3
  br i1 %cmp21, label %for.body22, label %for.end29

for.body22:                                       ; preds = %for.cond20
  %25 = load ptr, ptr %s, align 8
  %26 = load i32, ptr %i7, align 4
  call void @set_space(ptr noundef %25, i32 noundef %26, i8 noundef signext 55)
  store i32 0, ptr %i8, align 4
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc, %for.body22
  %27 = load i32, ptr %i8, align 4
  %cmp24 = icmp slt i32 %27, 2
  br i1 %cmp24, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond23
  %28 = load ptr, ptr %s, align 8
  %29 = load i32, ptr %i8, align 4
  call void @set_space(ptr noundef %28, i32 noundef %29, i8 noundef signext 56)
  %30 = load ptr, ptr %s, align 8
  call void @set_space(ptr noundef %30, i32 noundef 0, i8 noundef signext 57)
  %31 = load ptr, ptr %s, align 8
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %31)
  %32 = load ptr, ptr %s, align 8
  call void @clear(ptr noundef %32, i8 noundef signext 56)
  %33 = load ptr, ptr %s, align 8
  call void @clear(ptr noundef %33, i8 noundef signext 57)
  br label %for.inc

for.inc:                                          ; preds = %for.body25
  %34 = load i32, ptr %i8, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i8, align 4
  br label %for.cond23, !llvm.loop !8

for.end:                                          ; preds = %for.cond23
  %35 = load ptr, ptr %s, align 8
  call void @clear(ptr noundef %35, i8 noundef signext 55)
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %36 = load i32, ptr %i7, align 4
  %inc28 = add nsw i32 %36, 1
  store i32 %inc28, ptr %i7, align 4
  br label %for.cond20, !llvm.loop !9

for.end29:                                        ; preds = %for.cond20
  %37 = load ptr, ptr %s, align 8
  call void @clear(ptr noundef %37, i8 noundef signext 54)
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %38 = load i32, ptr %i6, align 4
  %inc31 = add nsw i32 %38, 1
  store i32 %inc31, ptr %i6, align 4
  br label %for.cond17, !llvm.loop !10

for.end32:                                        ; preds = %for.cond17
  %39 = load ptr, ptr %s, align 8
  call void @clear(ptr noundef %39, i8 noundef signext 53)
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %40 = load i32, ptr %i5, align 4
  %inc34 = add nsw i32 %40, 1
  store i32 %inc34, ptr %i5, align 4
  br label %for.cond14, !llvm.loop !11

for.end35:                                        ; preds = %for.cond14
  %41 = load ptr, ptr %s, align 8
  call void @clear(ptr noundef %41, i8 noundef signext 52)
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %42 = load i32, ptr %i4, align 4
  %inc37 = add nsw i32 %42, 1
  store i32 %inc37, ptr %i4, align 4
  br label %for.cond11, !llvm.loop !12

for.end38:                                        ; preds = %for.cond11
  %43 = load ptr, ptr %s, align 8
  call void @clear(ptr noundef %43, i8 noundef signext 51)
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %44 = load i32, ptr %i3, align 4
  %inc40 = add nsw i32 %44, 1
  store i32 %inc40, ptr %i3, align 4
  br label %for.cond8, !llvm.loop !13

for.end41:                                        ; preds = %for.cond8
  %45 = load ptr, ptr %s, align 8
  call void @clear(ptr noundef %45, i8 noundef signext 50)
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %46 = load i32, ptr %i2, align 4
  %inc43 = add nsw i32 %46, 1
  store i32 %inc43, ptr %i2, align 4
  br label %for.cond5, !llvm.loop !14

for.end44:                                        ; preds = %for.cond5
  %47 = load ptr, ptr %s, align 8
  call void @clear(ptr noundef %47, i8 noundef signext 49)
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %48 = load i32, ptr %i1, align 4
  %inc46 = add nsw i32 %48, 1
  store i32 %inc46, ptr %i1, align 4
  br label %for.cond2, !llvm.loop !15

for.end47:                                        ; preds = %for.cond2
  %49 = load ptr, ptr %s, align 8
  call void @clear(ptr noundef %49, i8 noundef signext 48)
  br label %for.inc48

for.inc48:                                        ; preds = %for.end47
  %50 = load i32, ptr %i0, align 4
  %inc49 = add nsw i32 %50, 1
  store i32 %inc49, ptr %i0, align 4
  br label %for.cond, !llvm.loop !16

for.end50:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
