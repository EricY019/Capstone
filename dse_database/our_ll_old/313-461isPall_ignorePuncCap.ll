; ModuleID = './code/313-461isPall_ignorePuncCap.c'
source_filename = "./code/313-461isPall_ignorePuncCap.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"313-461isPall_ignorePuncCap.c\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"isPall(\22Hello\22) == 0\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"isPall(\22H\22) == 1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"rooR\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"isPall(\22rooR\22) == 1\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"rot21#!3or\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"isPall(\22rot21#!3or\22) == 1\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"isPall(\22\22) == 1\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isPall(ptr noundef %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %end = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len, align 4
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load i32, ptr %len, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  store ptr %add.ptr1, ptr %end, align 8
  %3 = load i32, ptr %len, align 4
  %cmp = icmp sle i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end23, %if.then13, %if.then8, %if.end
  %4 = load ptr, ptr %end, align 8
  %5 = load ptr, ptr %s.addr, align 8
  %add.ptr3 = getelementptr inbounds i8, ptr %5, i64 2
  %cmp4 = icmp ugt ptr %4, %add.ptr3
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %end, align 8
  %7 = load i8, ptr %6, align 1
  %conv6 = sext i8 %7 to i32
  %call7 = call i32 @isalpha(i32 noundef %conv6) #5
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end9, label %if.then8

if.then8:                                         ; preds = %while.body
  %8 = load ptr, ptr %end, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %8, i32 -1
  store ptr %incdec.ptr, ptr %end, align 8
  br label %while.cond, !llvm.loop !5

if.end9:                                          ; preds = %while.body
  %9 = load ptr, ptr %s.addr, align 8
  %10 = load i8, ptr %9, align 1
  %conv10 = sext i8 %10 to i32
  %call11 = call i32 @isalpha(i32 noundef %conv10) #5
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end9
  %11 = load ptr, ptr %s.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr14, ptr %s.addr, align 8
  br label %while.cond, !llvm.loop !5

if.end15:                                         ; preds = %if.end9
  %12 = load ptr, ptr %end, align 8
  %13 = load i8, ptr %12, align 1
  %conv16 = sext i8 %13 to i32
  %call17 = call i32 @tolower(i32 noundef %conv16) #5
  %14 = load ptr, ptr %s.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv18 = sext i8 %15 to i32
  %call19 = call i32 @tolower(i32 noundef %conv18) #5
  %cmp20 = icmp ne i32 %call17, %call19
  br i1 %cmp20, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end15
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %if.end15
  %16 = load ptr, ptr %end, align 8
  %incdec.ptr24 = getelementptr inbounds i8, ptr %16, i32 -1
  store ptr %incdec.ptr24, ptr %end, align 8
  %17 = load ptr, ptr %s.addr, align 8
  %incdec.ptr25 = getelementptr inbounds i8, ptr %17, i32 1
  store ptr %incdec.ptr25, ptr %s.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then22, %if.then
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @isPall(ptr noundef @.str)
  %cmp = icmp eq i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 28, ptr noundef @.str.2) #6
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %call1 = call i32 @isPall(ptr noundef @.str.3)
  %cmp2 = icmp eq i32 %call1, 1
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 29, ptr noundef @.str.4) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %1
  %call11 = call i32 @isPall(ptr noundef @.str.5)
  %cmp12 = icmp eq i32 %call11, 1
  %lnot14 = xor i1 %cmp12, true
  %lnot.ext15 = zext i1 %lnot14 to i32
  %conv16 = sext i32 %lnot.ext15 to i64
  %tobool17 = icmp ne i64 %conv16, 0
  br i1 %tobool17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end10
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 30, ptr noundef @.str.6) #6
  unreachable

2:                                                ; No predecessors!
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end10
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %2
  %call21 = call i32 @isPall(ptr noundef @.str.7)
  %cmp22 = icmp eq i32 %call21, 1
  %lnot24 = xor i1 %cmp22, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %conv26 = sext i32 %lnot.ext25 to i64
  %tobool27 = icmp ne i64 %conv26, 0
  br i1 %tobool27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end20
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 31, ptr noundef @.str.8) #6
  unreachable

3:                                                ; No predecessors!
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end20
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %3
  %call31 = call i32 @isPall(ptr noundef @.str.9)
  %cmp32 = icmp eq i32 %call31, 1
  %lnot34 = xor i1 %cmp32, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %conv36 = sext i32 %lnot.ext35 to i64
  %tobool37 = icmp ne i64 %conv36, 0
  br i1 %tobool37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %cond.end30
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 32, ptr noundef @.str.10) #6
  unreachable

4:                                                ; No predecessors!
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end30
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %4
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
