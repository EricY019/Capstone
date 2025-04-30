; ModuleID = 'code/223-31978pr94734.c'
source_filename = "code/223-31978pr94734.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %arr = alloca [16 x i32], align 16
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %2, 16
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %6 = load i32, i32* %i2, align 4
  %cmp4 = icmp slt i32 %6, 16
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, i32* %i2, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %9 = load i32, i32* %s, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %s, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %10 = load i32, i32* %i2, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, i32* %i2, align 4
  br label %for.cond3, !llvm.loop !6

for.end10:                                        ; preds = %for.cond3
  %11 = load i32, i32* %s, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bar(i32 %n, i32 %x, i64 %y, i64 %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i64, align 8
  %z.addr = alloca i64, align 8
  %arr = alloca [16 x i32], align 16
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i64 %y, i64* %y.addr, align 8
  store i64 %z, i64* %z.addr, align 8
  store i32 0, i32* %s, align 4
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 4
  store i32 42, i32* %arrayidx, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %i, align 4
  %and = and i32 %3, 37
  %cmp1 = icmp eq i32 %2, %and
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i64, i64* %y.addr, align 8
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 %5
  store i32 %4, i32* %arrayidx2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %z.addr, align 8
  %arrayidx3 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 %7
  %8 = load i32, i32* %arrayidx3, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @baz(i32 %n, i32 %x, i64 %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %z.addr = alloca i64, align 8
  %arr = alloca [16 x i32], align 16
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i64 %z, i64* %z.addr, align 8
  store i32 0, i32* %s, align 4
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 12
  store i32 42, i32* %arrayidx, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %i, align 4
  %and = and i32 %3, 37
  %cmp1 = icmp eq i32 %2, %and
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 7
  store i32 %4, i32* %arrayidx2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %z.addr, align 8
  %arrayidx3 = getelementptr inbounds [16 x i32], [16 x i32]* %arr, i64 0, i64 %6
  %7 = load i32, i32* %arrayidx3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @foo(i32 10374)
  %cmp = icmp ne i32 %call, 120
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
  %call1 = call i32 @bar(i32 25, i32 37, i64 -2401053089408754003, i64 4)
  %cmp2 = icmp ne i32 %call1, 42
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #2
  unreachable

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @bar(i32 25, i32 4, i64 15, i64 15)
  %cmp6 = icmp ne i32 %call5, 22
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @abort() #2
  unreachable

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @baz(i32 25, i32 37, i64 12)
  %cmp10 = icmp ne i32 %call9, 42
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @abort() #2
  unreachable

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 @baz(i32 25, i32 4, i64 7)
  %cmp14 = icmp ne i32 %call13, 22
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @abort() #2
  unreachable

if.end16:                                         ; preds = %if.end12
  %call17 = call i32 @baz(i32 25, i32 4, i64 12)
  %cmp18 = icmp ne i32 %call17, 42
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @abort() #2
  unreachable

if.end20:                                         ; preds = %if.end16
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
