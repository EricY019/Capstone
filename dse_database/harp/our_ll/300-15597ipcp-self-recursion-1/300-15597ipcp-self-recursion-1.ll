; ModuleID = 'code/300-15597ipcp-self-recursion-1.c'
source_filename = "code/300-15597ipcp-self-recursion-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global i32 0, align 4
@blah = dso_local global i32 0, align 4
@counter = dso_local global i32 0, align 4
@array = dso_local global [128 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obscured_one() #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store volatile i32 0, i32* @counter, align 4
  call void @f(i32 0, i32 5)
  %call = call i32 @obscured_one()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %1 = load i32, i32* %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %if.then, %for.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f(i32 %c, i32 %l) #0 {
entry:
  %c.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %c, i32* %c.addr, align 4
  store i32 %l, i32* %l.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %c.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [128 x i32], [128 x i32]* @array, i64 0, i64 %idxprom
  store i32 455, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %4 = load volatile i32, i32* @counter, align 4
  %inc1 = add nsw i32 %4, 1
  store volatile i32 %inc1, i32* @counter, align 4
  %5 = load volatile i32, i32* @counter, align 4
  %cmp2 = icmp sgt i32 %5, 6
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.end
  %6 = load i32, i32* %l.addr, align 4
  store volatile i32 %6, i32* @v, align 4
  %7 = load i32, i32* %l.addr, align 4
  %cmp3 = icmp sgt i32 %7, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  %8 = load i32, i32* %c.addr, align 4
  %9 = load i32, i32* %l.addr, align 4
  %sub = sub nsw i32 %9, 1
  call void @f(i32 %8, i32 %sub)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %10 = load i32, i32* %l.addr, align 4
  store volatile i32 %10, i32* @blah, align 4
  ret void
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
