; ModuleID = 'code/301-2478struct.c'
source_filename = "code/301-2478struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_t = type { i32, [2 x i32], i32 }

@.str = private unnamed_addr constant [8 x i8] c"r = %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arraywrite(%struct.s_t* %arr, i32 %idx) #0 {
entry:
  %arr.addr = alloca %struct.s_t*, align 8
  %idx.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %innerarr = alloca i32*, align 8
  store %struct.s_t* %arr, %struct.s_t** %arr.addr, align 8
  store i32 %idx, i32* %idx.addr, align 4
  store i32 134217727, i32* %i, align 4
  store i32 0, i32* %r, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.s_t*, %struct.s_t** %arr.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.s_t, %struct.s_t* %1, i64 %idxprom
  %a = getelementptr inbounds %struct.s_t, %struct.s_t* %arrayidx, i32 0, i32 1
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %a, i64 0, i64 0
  store i32* %arraydecay, i32** %innerarr, align 8
  %3 = load i32, i32* %i, align 4
  %4 = load i32*, i32** %innerarr, align 8
  %5 = load i32, i32* %idx.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %arr = alloca %struct.s_t*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 2147483648) #3
  %0 = bitcast i8* %call to %struct.s_t*
  store %struct.s_t* %0, %struct.s_t** %arr, align 8
  %1 = load %struct.s_t*, %struct.s_t** %arr, align 8
  call void @arraywrite(%struct.s_t* %1, i32 0)
  %2 = load %struct.s_t*, %struct.s_t** %arr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.s_t* %2)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
