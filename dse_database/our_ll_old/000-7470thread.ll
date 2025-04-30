; ModuleID = './code/000-7470thread.c'
source_filename = "./code/000-7470thread.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [16 x i8] c"job1: print %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"job1: pthread_self: %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"job2: print %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"job2: pthread_self: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"job3: print %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"job3: pthread_self: %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"job4: print %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"job4: pthread_self: %lu\0A\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"000-7470thread.c\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"pthread_create(&tid1[i], NULL, job1, (void*)i) == 0\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"pthread_create(&tid2[i], NULL, job2, (void*)i) == 0\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"pthread_create(&tid3[i], NULL, job3, (void*)i) == 0\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"pthread_create(&tid4[i], NULL, job4, (void*)i) == 0\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"pthread_join(tid1[i], &res) == 0\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"res == (void*)i\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"pthread_join(tid2[i], &res) == 0\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"res == NULL\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @job1(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %pid = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call ptr @pthread_self()
  store ptr %call, ptr %pid, align 8
  %call1 = call i32 @"\01_sleep"(i32 noundef 1)
  %0 = load ptr, ptr %arg.addr, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  %1 = load ptr, ptr %pid, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %1)
  %call4 = call i32 @"\01_sleep"(i32 noundef 1)
  %2 = load ptr, ptr %arg.addr, align 8
  ret ptr %2
}

declare ptr @pthread_self() #1

declare i32 @"\01_sleep"(i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @job2(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %pid = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call ptr @pthread_self()
  store ptr %call, ptr %pid, align 8
  %call1 = call i32 @"\01_sleep"(i32 noundef 1)
  %0 = load ptr, ptr %arg.addr, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %0)
  %1 = load ptr, ptr %pid, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %1)
  %call4 = call i32 @"\01_sleep"(i32 noundef 1)
  call void @pthread_exit(ptr noundef null) #4
  unreachable
}

; Function Attrs: noreturn
declare void @pthread_exit(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @job3(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %pid = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call ptr @pthread_self()
  store ptr %call, ptr %pid, align 8
  %0 = load ptr, ptr %pid, align 8
  %call1 = call i32 @pthread_detach(ptr noundef %0)
  %call2 = call i32 @"\01_sleep"(i32 noundef 1)
  %1 = load ptr, ptr %arg.addr, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %1)
  %2 = load ptr, ptr %pid, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %2)
  %call5 = call i32 @"\01_sleep"(i32 noundef 1)
  %3 = load ptr, ptr %arg.addr, align 8
  ret ptr %3
}

declare i32 @pthread_detach(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @job4(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %pid = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  %call = call ptr @pthread_self()
  store ptr %call, ptr %pid, align 8
  %0 = load ptr, ptr %pid, align 8
  %call1 = call i32 @pthread_detach(ptr noundef %0)
  %call2 = call i32 @"\01_sleep"(i32 noundef 1)
  %1 = load ptr, ptr %arg.addr, align 8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %1)
  %2 = load ptr, ptr %pid, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %2)
  %call5 = call i32 @"\01_sleep"(i32 noundef 1)
  %3 = load ptr, ptr %arg.addr, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %tid1 = alloca [8 x ptr], align 8
  %tid2 = alloca [8 x ptr], align 8
  %tid3 = alloca [8 x ptr], align 8
  %tid4 = alloca [8 x ptr], align 8
  %i = alloca i32, align 4
  %res = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x ptr], ptr %tid1, i64 0, i64 %idxprom
  %2 = load i32, ptr %i, align 4
  %conv = sext i32 %2 to i64
  %3 = inttoptr i64 %conv to ptr
  %call = call i32 @pthread_create(ptr noundef %arrayidx, ptr noundef null, ptr noundef @job1, ptr noundef %3)
  %cmp1 = icmp eq i32 %call, 0
  %lnot = xor i1 %cmp1, true
  %lnot.ext = zext i1 %lnot to i32
  %conv3 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv3, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.8, i32 noundef 67, ptr noundef @.str.9) #5
  unreachable

4:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %4
  %5 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [8 x ptr], ptr %tid2, i64 0, i64 %idxprom4
  %6 = load i32, ptr %i, align 4
  %conv6 = sext i32 %6 to i64
  %7 = inttoptr i64 %conv6 to ptr
  %call7 = call i32 @pthread_create(ptr noundef %arrayidx5, ptr noundef null, ptr noundef @job2, ptr noundef %7)
  %cmp8 = icmp eq i32 %call7, 0
  %lnot10 = xor i1 %cmp8, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  %conv12 = sext i32 %lnot.ext11 to i64
  %tobool13 = icmp ne i64 %conv12, 0
  br i1 %tobool13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.8, i32 noundef 68, ptr noundef @.str.10) #5
  unreachable

8:                                                ; No predecessors!
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %8
  %9 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %9 to i64
  %arrayidx18 = getelementptr inbounds [8 x ptr], ptr %tid3, i64 0, i64 %idxprom17
  %10 = load i32, ptr %i, align 4
  %conv19 = sext i32 %10 to i64
  %11 = inttoptr i64 %conv19 to ptr
  %call20 = call i32 @pthread_create(ptr noundef %arrayidx18, ptr noundef null, ptr noundef @job3, ptr noundef %11)
  %cmp21 = icmp eq i32 %call20, 0
  %lnot23 = xor i1 %cmp21, true
  %lnot.ext24 = zext i1 %lnot23 to i32
  %conv25 = sext i32 %lnot.ext24 to i64
  %tobool26 = icmp ne i64 %conv25, 0
  br i1 %tobool26, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %cond.end16
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.8, i32 noundef 69, ptr noundef @.str.11) #5
  unreachable

12:                                               ; No predecessors!
  br label %cond.end29

cond.false28:                                     ; preds = %cond.end16
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %12
  %13 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %13 to i64
  %arrayidx31 = getelementptr inbounds [8 x ptr], ptr %tid4, i64 0, i64 %idxprom30
  %14 = load i32, ptr %i, align 4
  %conv32 = sext i32 %14 to i64
  %15 = inttoptr i64 %conv32 to ptr
  %call33 = call i32 @pthread_create(ptr noundef %arrayidx31, ptr noundef null, ptr noundef @job4, ptr noundef %15)
  %cmp34 = icmp eq i32 %call33, 0
  %lnot36 = xor i1 %cmp34, true
  %lnot.ext37 = zext i1 %lnot36 to i32
  %conv38 = sext i32 %lnot.ext37 to i64
  %tobool39 = icmp ne i64 %conv38, 0
  br i1 %tobool39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %cond.end29
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.8, i32 noundef 70, ptr noundef @.str.12) #5
  unreachable

16:                                               ; No predecessors!
  br label %cond.end42

cond.false41:                                     ; preds = %cond.end29
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %16
  br label %for.inc

for.inc:                                          ; preds = %cond.end42
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc90, %for.end
  %18 = load i32, ptr %i, align 4
  %cmp44 = icmp slt i32 %18, 8
  br i1 %cmp44, label %for.body46, label %for.end92

for.body46:                                       ; preds = %for.cond43
  %19 = load i32, ptr %i, align 4
  %idxprom47 = sext i32 %19 to i64
  %arrayidx48 = getelementptr inbounds [8 x ptr], ptr %tid1, i64 0, i64 %idxprom47
  %20 = load ptr, ptr %arrayidx48, align 8
  %call49 = call i32 @"\01_pthread_join"(ptr noundef %20, ptr noundef %res)
  %cmp50 = icmp eq i32 %call49, 0
  %lnot52 = xor i1 %cmp50, true
  %lnot.ext53 = zext i1 %lnot52 to i32
  %conv54 = sext i32 %lnot.ext53 to i64
  %tobool55 = icmp ne i64 %conv54, 0
  br i1 %tobool55, label %cond.true56, label %cond.false57

cond.true56:                                      ; preds = %for.body46
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.8, i32 noundef 74, ptr noundef @.str.13) #5
  unreachable

21:                                               ; No predecessors!
  br label %cond.end58

cond.false57:                                     ; preds = %for.body46
  br label %cond.end58

cond.end58:                                       ; preds = %cond.false57, %21
  %22 = load ptr, ptr %res, align 8
  %23 = load i32, ptr %i, align 4
  %conv59 = sext i32 %23 to i64
  %24 = inttoptr i64 %conv59 to ptr
  %cmp60 = icmp eq ptr %22, %24
  %lnot62 = xor i1 %cmp60, true
  %lnot.ext63 = zext i1 %lnot62 to i32
  %conv64 = sext i32 %lnot.ext63 to i64
  %tobool65 = icmp ne i64 %conv64, 0
  br i1 %tobool65, label %cond.true66, label %cond.false67

cond.true66:                                      ; preds = %cond.end58
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.8, i32 noundef 75, ptr noundef @.str.14) #5
  unreachable

25:                                               ; No predecessors!
  br label %cond.end68

cond.false67:                                     ; preds = %cond.end58
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %25
  %26 = load i32, ptr %i, align 4
  %idxprom69 = sext i32 %26 to i64
  %arrayidx70 = getelementptr inbounds [8 x ptr], ptr %tid2, i64 0, i64 %idxprom69
  %27 = load ptr, ptr %arrayidx70, align 8
  %call71 = call i32 @"\01_pthread_join"(ptr noundef %27, ptr noundef %res)
  %cmp72 = icmp eq i32 %call71, 0
  %lnot74 = xor i1 %cmp72, true
  %lnot.ext75 = zext i1 %lnot74 to i32
  %conv76 = sext i32 %lnot.ext75 to i64
  %tobool77 = icmp ne i64 %conv76, 0
  br i1 %tobool77, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %cond.end68
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.8, i32 noundef 76, ptr noundef @.str.15) #5
  unreachable

28:                                               ; No predecessors!
  br label %cond.end80

cond.false79:                                     ; preds = %cond.end68
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false79, %28
  %29 = load ptr, ptr %res, align 8
  %cmp81 = icmp eq ptr %29, null
  %lnot83 = xor i1 %cmp81, true
  %lnot.ext84 = zext i1 %lnot83 to i32
  %conv85 = sext i32 %lnot.ext84 to i64
  %tobool86 = icmp ne i64 %conv85, 0
  br i1 %tobool86, label %cond.true87, label %cond.false88

cond.true87:                                      ; preds = %cond.end80
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.8, i32 noundef 77, ptr noundef @.str.16) #5
  unreachable

30:                                               ; No predecessors!
  br label %cond.end89

cond.false88:                                     ; preds = %cond.end80
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false88, %30
  br label %for.inc90

for.inc90:                                        ; preds = %cond.end89
  %31 = load i32, ptr %i, align 4
  %inc91 = add nsw i32 %31, 1
  store i32 %inc91, ptr %i, align 4
  br label %for.cond43, !llvm.loop !7

for.end92:                                        ; preds = %for.cond43
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { noreturn }
attributes #5 = { cold noreturn }

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
