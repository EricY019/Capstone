; ModuleID = 'code/232-1887HeapPointer.c'
source_filename = "code/232-1887HeapPointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Tree = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Tree* @plant_tree(i32 %year) #0 {
entry:
  %year.addr = alloca i32, align 4
  %tn = alloca %struct.Tree*, align 8
  store i32 %year, i32* %year.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 4) #3
  %0 = bitcast i8* %call to %struct.Tree*
  store %struct.Tree* %0, %struct.Tree** %tn, align 8
  %1 = load i32, i32* %year.addr, align 4
  %2 = load %struct.Tree*, %struct.Tree** %tn, align 8
  %year_planted = getelementptr inbounds %struct.Tree, %struct.Tree* %2, i32 0, i32 0
  store i32 %1, i32* %year_planted, align 4
  %3 = load %struct.Tree*, %struct.Tree** %tn, align 8
  ret %struct.Tree* %3
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ORCHARD = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 100, i32* %ORCHARD, align 4
  %0 = call i8* @llvm.stacksave()
  store i8* %0, i8** %saved_stack, align 8
  %vla = alloca %struct.Tree*, i64 100, align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call %struct.Tree* @plant_tree(i32 2014)
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.Tree*, %struct.Tree** %vla, i64 %idxprom
  store %struct.Tree* %call, %struct.Tree** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %vla1 = alloca %struct.Tree*, i64 100, align 16
  store i32 0, i32* %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %4 = load i32, i32* %i2, align 4
  %cmp4 = icmp slt i32 %4, 100
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %call6 = call %struct.Tree* @plant_tree(i32 2016)
  %5 = load i32, i32* %i2, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds %struct.Tree*, %struct.Tree** %vla1, i64 %idxprom7
  store %struct.Tree* %call6, %struct.Tree** %arrayidx8, align 8
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %6 = load i32, i32* %i2, align 4
  %inc10 = add nsw i32 %6, 1
  store i32 %inc10, i32* %i2, align 4
  br label %for.cond3, !llvm.loop !6

for.end11:                                        ; preds = %for.cond3
  %7 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %7)
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
