; ModuleID = 'code/187-26512pr23386.c'
source_filename = "code/187-26512pr23386.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@f = dso_local global [100 x i32] zeroinitializer, align 16
@g = dso_local global [100 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i8 @f1(i32 %a, i32 %b) #0 {
entry:
  %retval = alloca i8, align 1
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %ix = alloca i64, align 8
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  store i64 4, i64* %ix, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end4, %if.end
  %1 = load i64, i64* %ix, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %ix, align 8
  %tobool1 = icmp ne i64 %1, 0
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %ix, align 8
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @f, i64 0, i64 %2
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i64, i64* %ix, align 8
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* @g, i64 0, i64 %4
  %5 = load i32, i32* %arrayidx2, align 4
  %cmp = icmp ne i32 %3, %5
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.body
  store i8 0, i8* %retval, align 1
  br label %return

if.end4:                                          ; preds = %for.body
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %retval, align 1
  br label %return

return:                                           ; preds = %for.end, %if.then3, %if.then
  %6 = load i8, i8* %retval, align 1
  ret i8 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call zeroext i8 @f1(i32 0, i32 2)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %entry
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
