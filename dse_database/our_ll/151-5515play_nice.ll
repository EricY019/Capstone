; ModuleID = 'code/151-5515play_nice.c'
source_filename = "code/151-5515play_nice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@did_alarm = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"With a nice of %+.2d, we have counted to %lld in %d seconds.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %call = call void (i32)* @signal(i32 14, void (i32)* @trap_alarm) #4
  call void @demo(i32 -10, i32 1)
  call void @demo(i32 -5, i32 1)
  call void @demo(i32 0, i32 1)
  call void @demo(i32 5, i32 1)
  call void @demo(i32 10, i32 1)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trap_alarm(i32 %signum) #0 {
entry:
  %signum.addr = alloca i32, align 4
  store i32 %signum, i32* %signum.addr, align 4
  store i32 1, i32* @did_alarm, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @demo(i32 %nice, i32 %seconds) #0 {
entry:
  %nice.addr = alloca i32, align 4
  %seconds.addr = alloca i32, align 4
  %op_pad = alloca [5 x i8], align 1
  %counter = alloca i64, align 8
  %next_op = alloca i64, align 8
  store i32 %nice, i32* %nice.addr, align 4
  store i32 %seconds, i32* %seconds.addr, align 4
  store i32 0, i32* @did_alarm, align 4
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %op_pad, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 1 %arraydecay, i8 0, i64 5, i1 false)
  store i64 0, i64* %counter, align 8
  store i64 2, i64* %next_op, align 8
  %0 = load i32, i32* %seconds.addr, align 4
  %call = call i32 @alarm(i32 %0) #4
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i32, i32* @did_alarm, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %op_pad, i64 0, i64 0
  %2 = load i64, i64* %next_op, align 8
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %2) #4
  %arraydecay3 = getelementptr inbounds [5 x i8], [5 x i8]* %op_pad, i64 0, i64 0
  %call4 = call i64 @strtol(i8* %arraydecay3, i8** null, i32 10) #4
  store i64 %call4, i64* %next_op, align 8
  %3 = load i64, i64* %next_op, align 8
  %4 = load i64, i64* %counter, align 8
  %add = add nsw i64 %4, %3
  store i64 %add, i64* %counter, align 8
  %5 = load i64, i64* %next_op, align 8
  switch i64 %5, label %sw.default [
    i64 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  store i64 -1, i64* %next_op, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i64 2, i64* %next_op, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %6 = load i32, i32* %nice.addr, align 4
  %7 = load i64, i64* %counter, align 8
  %8 = load i32, i32* %seconds.addr, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %6, i64 %7, i32 %8)
  %call6 = call i32 @sleep(i32 1)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @alarm(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @sleep(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
