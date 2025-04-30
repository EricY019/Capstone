; ModuleID = 'code/093-30858loop_longlong_var.c'
source_filename = "code/093-30858loop_longlong_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %start = alloca i64, align 8
  %length = alloca i64, align 8
  %i = alloca i64, align 8
  %a = alloca i64*, align 8
  %alloc = alloca i64*, align 8
  store i32 0, i32* %retval, align 4
  store i64 6442450944, i64* %start, align 8
  store i64 1048576, i64* %length, align 8
  %call = call noalias align 16 i8* @malloc(i64 8388608) #2
  %0 = bitcast i8* %call to i64*
  store i64* %0, i64** %alloc, align 8
  %1 = load i64*, i64** %alloc, align 8
  %add.ptr = getelementptr inbounds i64, i64* %1, i64 -6442450944
  store i64* %add.ptr, i64** %a, align 8
  store i64 6442450944, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %cmp = icmp slt i64 %2, 6443499520
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load i64*, i64** %a, align 8
  %5 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds i64, i64* %4, i64 %5
  store i64 %3, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add nsw i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i64 6442450944, i64* %i, align 8
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %7 = load i64, i64* %i, align 8
  %cmp2 = icmp slt i64 %7, 6443499520
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %8 = load i64*, i64** %a, align 8
  %9 = load i64, i64* %i, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %8, i64 %9
  %10 = load i64, i64* %arrayidx4, align 8
  %11 = load i64, i64* %i, align 8
  %cmp5 = icmp ne i64 %10, %11
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body3
  br label %for.inc6

for.inc6:                                         ; preds = %if.end
  %12 = load i64, i64* %i, align 8
  %inc7 = add nsw i64 %12, 1
  store i64 %inc7, i64* %i, align 8
  br label %for.cond1, !llvm.loop !6

for.end8:                                         ; preds = %for.cond1
  %13 = load i64*, i64** %alloc, align 8
  %14 = bitcast i64* %13 to i8*
  call void @free(i8* %14) #2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end8, %if.then
  %15 = load i32, i32* %retval, align 4
  ret i32 %15
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
