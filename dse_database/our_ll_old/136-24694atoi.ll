; ModuleID = './code/136-24694atoi.c'
source_filename = "./code/136-24694atoi.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [12 x i8] c"-2147483649\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"136-24694atoi.c\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"i == INT_MIN\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"2147483648\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"i == INT_MAX\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"-2147483648\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"      -11919730356x\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @myatoi(ptr noundef %str) #0 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %v = alloca i64, align 8
  %sign = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  store ptr %0, ptr %p, align 8
  store i64 0, ptr %v, align 8
  store i32 43, ptr %sign, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %p, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8
  %4 = load i8, ptr %3, align 1
  %conv1 = sext i8 %4 to i32
  %call = call i32 @isspace(i32 noundef %conv1) #3
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %p, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %p, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %7 = load ptr, ptr %p, align 8
  %8 = load i8, ptr %7, align 1
  %conv3 = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv3, 45
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %9 = load ptr, ptr %p, align 8
  %10 = load i8, ptr %9, align 1
  %conv5 = sext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv5, 43
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %while.end
  %11 = load ptr, ptr %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %11, i32 1
  store ptr %incdec.ptr8, ptr %p, align 8
  %12 = load i8, ptr %11, align 1
  %conv9 = sext i8 %12 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ 43, %cond.false ]
  store i32 %cond, ptr %sign, align 4
  br label %while.cond10

while.cond10:                                     ; preds = %if.end34, %cond.end
  %13 = load ptr, ptr %p, align 8
  %14 = load i8, ptr %13, align 1
  %tobool11 = icmp ne i8 %14, 0
  br i1 %tobool11, label %while.body12, label %while.end36

while.body12:                                     ; preds = %while.cond10
  %15 = load ptr, ptr %p, align 8
  %16 = load i8, ptr %15, align 1
  %conv13 = sext i8 %16 to i32
  %cmp14 = icmp slt i32 %conv13, 48
  br i1 %cmp14, label %if.then, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %while.body12
  %17 = load ptr, ptr %p, align 8
  %18 = load i8, ptr %17, align 1
  %conv17 = sext i8 %18 to i32
  %cmp18 = icmp sgt i32 %conv17, 57
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false16, %while.body12
  br label %done

if.end:                                           ; preds = %lor.lhs.false16
  %19 = load i64, ptr %v, align 8
  %mul = mul nsw i64 %19, 10
  %20 = load ptr, ptr %p, align 8
  %21 = load i8, ptr %20, align 1
  %conv20 = sext i8 %21 to i32
  %sub = sub nsw i32 %conv20, 48
  %conv21 = sext i32 %sub to i64
  %add = add nsw i64 %mul, %conv21
  store i64 %add, ptr %v, align 8
  %22 = load i32, ptr %sign, align 4
  %cmp22 = icmp eq i32 %22, 43
  br i1 %cmp22, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end
  %23 = load i64, ptr %v, align 8
  %cmp24 = icmp sge i64 %23, 2147483647
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %land.lhs.true
  store i32 2147483647, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %land.lhs.true, %if.end
  %24 = load i32, ptr %sign, align 4
  %cmp28 = icmp eq i32 %24, 45
  br i1 %cmp28, label %land.lhs.true30, label %if.end34

land.lhs.true30:                                  ; preds = %if.end27
  %25 = load i64, ptr %v, align 8
  %cmp31 = icmp sge i64 %25, 2147483648
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %land.lhs.true30
  store i32 -2147483648, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %land.lhs.true30, %if.end27
  %26 = load ptr, ptr %p, align 8
  %incdec.ptr35 = getelementptr inbounds i8, ptr %26, i32 1
  store ptr %incdec.ptr35, ptr %p, align 8
  br label %while.cond10, !llvm.loop !7

while.end36:                                      ; preds = %while.cond10
  br label %done

done:                                             ; preds = %while.end36, %if.then
  %27 = load i32, ptr %sign, align 4
  %cmp37 = icmp eq i32 %27, 45
  br i1 %cmp37, label %cond.true39, label %cond.false41

cond.true39:                                      ; preds = %done
  %28 = load i64, ptr %v, align 8
  %sub40 = sub nsw i64 0, %28
  br label %cond.end42

cond.false41:                                     ; preds = %done
  %29 = load i64, ptr %v, align 8
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %cond.true39
  %cond43 = phi i64 [ %sub40, %cond.true39 ], [ %29, %cond.false41 ]
  %conv44 = trunc i64 %cond43 to i32
  store i32 %conv44, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end42, %if.then33, %if.then26
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @myatoi(ptr noundef @.str)
  store i32 %call, ptr %i, align 4
  %0 = load i32, ptr %i, align 4
  %cmp = icmp eq i32 %0, -2147483648
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 45, ptr noundef @.str.2) #4
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %call1 = call i32 @myatoi(ptr noundef @.str.3)
  store i32 %call1, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %cmp2 = icmp eq i32 %2, 2147483647
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 49, ptr noundef @.str.4) #4
  unreachable

3:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %3
  %call11 = call i32 @myatoi(ptr noundef @.str.5)
  store i32 %call11, ptr %i, align 4
  %4 = load i32, ptr %i, align 4
  %cmp12 = icmp eq i32 %4, -2147483648
  %lnot14 = xor i1 %cmp12, true
  %lnot.ext15 = zext i1 %lnot14 to i32
  %conv16 = sext i32 %lnot.ext15 to i64
  %tobool17 = icmp ne i64 %conv16, 0
  br i1 %tobool17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end10
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 52, ptr noundef @.str.2) #4
  unreachable

5:                                                ; No predecessors!
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end10
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %5
  %call21 = call i32 @myatoi(ptr noundef @.str.6)
  store i32 %call21, ptr %i, align 4
  %6 = load i32, ptr %i, align 4
  %cmp22 = icmp eq i32 %6, -2147483648
  %lnot24 = xor i1 %cmp22, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %conv26 = sext i32 %lnot.ext25 to i64
  %tobool27 = icmp ne i64 %conv26, 0
  br i1 %tobool27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end20
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 55, ptr noundef @.str.2) #4
  unreachable

7:                                                ; No predecessors!
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end20
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %7
  ret i32 0
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind willreturn memory(read) }
attributes #4 = { cold noreturn }

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
