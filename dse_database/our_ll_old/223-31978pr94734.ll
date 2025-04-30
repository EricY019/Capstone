; ModuleID = './code/223-31978pr94734.c'
source_filename = "./code/223-31978pr94734.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @foo(i32 noundef %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arr = alloca [16 x i32], align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %s, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %2, 16
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %arr, i64 0, i64 %idxprom
  store i32 %3, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %6 = load i32, ptr %i2, align 4
  %cmp4 = icmp slt i32 %6, 16
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, ptr %i2, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [16 x i32], ptr %arr, i64 0, i64 %idxprom6
  %8 = load i32, ptr %arrayidx7, align 4
  %9 = load i32, ptr %s, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, ptr %s, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %10 = load i32, ptr %i2, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, ptr %i2, align 4
  br label %for.cond3, !llvm.loop !7

for.end10:                                        ; preds = %for.cond3
  %11 = load i32, ptr %s, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @bar(i32 noundef %n, i32 noundef %x, i64 noundef %y, i64 noundef %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i64, align 8
  %z.addr = alloca i64, align 8
  %arr = alloca [16 x i32], align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  store i64 %y, ptr %y.addr, align 8
  store i64 %z, ptr %z.addr, align 8
  store i32 0, ptr %s, align 4
  %arrayidx = getelementptr inbounds [16 x i32], ptr %arr, i64 0, i64 4
  store i32 42, ptr %arrayidx, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %i, align 4
  %and = and i32 %3, 37
  %cmp1 = icmp eq i32 %2, %and
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %5 = load i64, ptr %y.addr, align 8
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %arr, i64 0, i64 %5
  store i32 %4, ptr %arrayidx2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %7 = load i64, ptr %z.addr, align 8
  %arrayidx3 = getelementptr inbounds [16 x i32], ptr %arr, i64 0, i64 %7
  %8 = load i32, ptr %arrayidx3, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @baz(i32 noundef %n, i32 noundef %x, i64 noundef %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %z.addr = alloca i64, align 8
  %arr = alloca [16 x i32], align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  store i64 %z, ptr %z.addr, align 8
  store i32 0, ptr %s, align 4
  %arrayidx = getelementptr inbounds [16 x i32], ptr %arr, i64 0, i64 12
  store i32 42, ptr %arrayidx, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %x.addr, align 4
  %3 = load i32, ptr %i, align 4
  %and = and i32 %3, 37
  %cmp1 = icmp eq i32 %2, %and
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %arrayidx2 = getelementptr inbounds [16 x i32], ptr %arr, i64 0, i64 7
  store i32 %4, ptr %arrayidx2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %6 = load i64, ptr %z.addr, align 8
  %arrayidx3 = getelementptr inbounds [16 x i32], ptr %arr, i64 0, i64 %6
  %7 = load i32, ptr %arrayidx3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @foo(i32 noundef 10374)
  %cmp = icmp ne i32 %call, 120
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @bar(i32 noundef 25, i32 noundef 37, i64 noundef -2401053089408754003, i64 noundef 4)
  %cmp2 = icmp ne i32 %call1, 42
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @bar(i32 noundef 25, i32 noundef 4, i64 noundef 15, i64 noundef 15)
  %cmp6 = icmp ne i32 %call5, 22
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @abort() #2
  unreachable

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @baz(i32 noundef 25, i32 noundef 37, i64 noundef 12)
  %cmp10 = icmp ne i32 %call9, 42
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @abort() #2
  unreachable

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @baz(i32 noundef 25, i32 noundef 4, i64 noundef 7)
  %cmp14 = icmp ne i32 %call13, 22
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @abort() #2
  unreachable

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @baz(i32 noundef 25, i32 noundef 4, i64 noundef 12)
  %cmp18 = icmp ne i32 %call17, 42
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @abort() #2
  unreachable

if.end20:                                         ; preds = %if.end16
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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
