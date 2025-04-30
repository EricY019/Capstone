; ModuleID = 'code/320-483sketch1.c'
source_filename = "code/320-483sketch1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i16, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @traverse(%struct.Node* %list) #0 {
entry:
  %list.addr = alloca %struct.Node*, align 8
  %elem = alloca %struct.Node*, align 8
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store %struct.Node* %list, %struct.Node** %list.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %sum, align 4
  %1 = load %struct.Node*, %struct.Node** %list.addr, align 8
  store %struct.Node* %1, %struct.Node** %elem, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load %struct.Node*, %struct.Node** %elem, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %2, i32 0, i32 0
  %3 = load i16, i16* %next, align 4
  %conv = sext i16 %3 to i32
  %cmp1 = icmp sgt i32 %conv, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %sum, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %sum, align 4
  %5 = load %struct.Node*, %struct.Node** %list.addr, align 8
  %6 = load %struct.Node*, %struct.Node** %elem, align 8
  %next3 = getelementptr inbounds %struct.Node, %struct.Node* %6, i32 0, i32 0
  %7 = load i16, i16* %next3, align 4
  %conv4 = sext i16 %7 to i32
  %idx.ext = sext i32 %conv4 to i64
  %add.ptr = getelementptr inbounds %struct.Node, %struct.Node* %5, i64 %idx.ext
  store %struct.Node* %add.ptr, %struct.Node** %elem, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %8 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %8, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %list = alloca %struct.Node*, align 8
  %elem = alloca %struct.Node*, align 8
  %sum = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias align 16 i8* @calloc(i64 32768, i64 8) #2
  %0 = bitcast i8* %call to %struct.Node*
  store %struct.Node* %0, %struct.Node** %list, align 8
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 32768
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.Node*, %struct.Node** %list, align 8
  %3 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds %struct.Node, %struct.Node* %2, i64 %idx.ext
  store %struct.Node* %add.ptr, %struct.Node** %elem, align 8
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.Node*, %struct.Node** %elem, align 8
  %value = getelementptr inbounds %struct.Node, %struct.Node* %5, i32 0, i32 1
  store i32 %4, i32* %value, align 4
  %6 = load %struct.Node*, %struct.Node** %elem, align 8
  %add.ptr1 = getelementptr inbounds %struct.Node, %struct.Node* %6, i64 1
  %7 = load %struct.Node*, %struct.Node** %list, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.Node* %add.ptr1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.Node* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i16
  %8 = load %struct.Node*, %struct.Node** %elem, align 8
  %next = getelementptr inbounds %struct.Node, %struct.Node* %8, i32 0, i32 0
  store i16 %conv, i16* %next, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %10 = load %struct.Node*, %struct.Node** %list, align 8
  call void @traverse(%struct.Node* %10)
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #1

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
!7 = distinct !{!7, !5}
