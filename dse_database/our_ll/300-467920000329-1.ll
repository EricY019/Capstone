; ModuleID = 'code/300-467920000329-1.c'
source_filename = "code/300-467920000329-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@giop_tx_big_endian = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %ac, i8** %av) #0 {
entry:
  %ac.addr = alloca i32, align 4
  %av.addr = alloca i8**, align 8
  store i32 %ac, i32* %ac.addr, align 4
  store i8** %av, i8*** %av.addr, align 8
  store i32 1, i32* @giop_tx_big_endian, align 4
  %call = call double @time_giop_encode(i64 0)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal double @time_giop_encode(i64 %l) #0 {
entry:
  %retval = alloca double, align 8
  %l.addr = alloca i64, align 8
  %c = alloca i32, align 4
  %buf = alloca [4 x i8], align 1
  store i64 %l, i64* %l.addr, align 8
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %0, 536870912
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %l.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %buf, i64 0, i64 0
  call void @giop_encode_ulong(i64 %1, i8* %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %c, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %3 = load double, double* %retval, align 8
  ret double %3
}

declare dso_local void @giop_encode_ulong(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
