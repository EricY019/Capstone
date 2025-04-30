; ModuleID = './code/169-6354test.c'
source_filename = "./code/169-6354test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.test = type { i32, i32, i32 }

@a = global %struct.test { i32 1, i32 2, i32 3 }, align 4
@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [9 x i8] c"HAHAAHA\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"AHAAHA\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"HAAHA\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"AAHA\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"AHA\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"HA\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"A\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Yo\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"returned from init\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @two(i32 noundef %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i32, ptr %a.addr, align 4
  %mul = mul nsw i32 %0, %1
  ret i32 %mul
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @one(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %call = call i32 @two(i32 noundef %0)
  %1 = load i32, ptr %b.addr, align 4
  %call1 = call i32 @two(i32 noundef %1)
  %add = add nsw i32 %call, %call1
  ret i32 %add
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @short_func() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  %call = call i32 @"\01_sleep"(i32 noundef 1)
  store i32 1, ptr %i, align 4
  store i32 2, ptr %i, align 4
  ret void
}

declare i32 @"\01_sleep"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @long_func() #0 {
entry:
  %k = alloca i32, align 4
  store i32 0, ptr %k, align 4
  %call = call i32 @"\01_sleep"(i32 noundef 5)
  store i32 1, ptr %k, align 4
  store i32 2, ptr %k, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca [100000 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 3, ptr %i, align 4
  store i32 4, ptr %j, align 4
  call void @long_func()
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str) #3
  %1 = load ptr, ptr @__stderrp, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1) #3
  %2 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.2) #3
  %3 = load ptr, ptr @__stderrp, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.3) #3
  %4 = load ptr, ptr @__stderrp, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.4) #3
  %5 = load ptr, ptr @__stderrp, align 8
  %call5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.5) #3
  %6 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.6) #3
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %7, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr @__stderrp, align 8
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.7) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  call void @short_func()
  call void @short_func()
  call void @short_func()
  store i32 0, ptr %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc12, %for.end
  %10 = load i32, ptr %i, align 4
  %cmp9 = icmp slt i32 %10, 100000
  br i1 %cmp9, label %for.body10, label %for.end14

for.body10:                                       ; preds = %for.cond8
  %11 = load i32, ptr %j, align 4
  %inc11 = add nsw i32 %11, 1
  store i32 %inc11, ptr %j, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.body10
  %12 = load i32, ptr %i, align 4
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, ptr %i, align 4
  br label %for.cond8, !llvm.loop !7

for.end14:                                        ; preds = %for.cond8
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %j, align 4
  %call15 = call i32 @one(i32 noundef %13, i32 noundef %14)
  store i32 %call15, ptr %i, align 4
  %15 = load i32, ptr %i, align 4
  %call16 = call i32 @two(i32 noundef %15)
  store i32 %call16, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc21, %for.end14
  %16 = load i32, ptr %i, align 4
  %cmp18 = icmp slt i32 %16, 6
  br i1 %cmp18, label %for.body19, label %for.end23

for.body19:                                       ; preds = %for.cond17
  %17 = load ptr, ptr @__stderrp, align 8
  %call20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.8) #3
  br label %for.inc21

for.inc21:                                        ; preds = %for.body19
  %18 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %18, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond17, !llvm.loop !8

for.end23:                                        ; preds = %for.cond17
  store i32 0, ptr %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc27, %for.end23
  %19 = load i32, ptr %i, align 4
  %cmp25 = icmp slt i32 %19, 100000
  br i1 %cmp25, label %for.body26, label %for.end29

for.body26:                                       ; preds = %for.cond24
  %20 = load i32, ptr %i, align 4
  %rem = srem i32 %20, 40
  %add = add nsw i32 %rem, 40
  %conv = trunc i32 %add to i8
  %21 = load i32, ptr %i, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx = getelementptr inbounds [100000 x i8], ptr %temp, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc27

for.inc27:                                        ; preds = %for.body26
  %22 = load i32, ptr %i, align 4
  %inc28 = add nsw i32 %22, 1
  store i32 %inc28, ptr %i, align 4
  br label %for.cond24, !llvm.loop !9

for.end29:                                        ; preds = %for.cond24
  %23 = load i32, ptr %j, align 4
  %24 = load i32, ptr %i, align 4
  %add30 = add nsw i32 %24, %23
  store i32 %add30, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

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
