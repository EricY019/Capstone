; ModuleID = 'code/056-12867store_merging_27.c'
source_filename = "code/056-12867store_merging_27.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [8 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bar(%struct.S* %x) #0 {
entry:
  %x.addr = alloca %struct.S*, align 8
  %i = alloca i32, align 4
  store %struct.S* %x, %struct.S** %x.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.S*, %struct.S** %x.addr, align 8
  %buf = getelementptr inbounds %struct.S, %struct.S* %1, i32 0, i32 0
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %4 = load i32, i32* %i, align 4
  %cmp1 = icmp eq i32 %4, 1
  %conv2 = zext i1 %cmp1 to i32
  %5 = load i32, i32* %i, align 4
  %cmp3 = icmp eq i32 %5, 3
  %conv4 = zext i1 %cmp3 to i32
  %mul = mul nsw i32 %conv4, 2
  %add = add nsw i32 %conv2, %mul
  %cmp5 = icmp ne i32 %conv, %add
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca %struct.S, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.S* %s to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false)
  %buf = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 0
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %buf, i64 0, i64 1
  store i8 1, i8* %arrayidx, align 1
  %buf1 = getelementptr inbounds %struct.S, %struct.S* %s, i32 0, i32 0
  %arrayidx2 = getelementptr inbounds [8 x i8], [8 x i8]* %buf1, i64 0, i64 3
  store i8 2, i8* %arrayidx2, align 1
  call void @bar(%struct.S* %s)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
