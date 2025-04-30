; ModuleID = './code/232-1887HeapPointer.c'
source_filename = "./code/232-1887HeapPointer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Tree = type { i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @plant_tree(i32 noundef %year) #0 {
entry:
  %year.addr = alloca i32, align 4
  %tn = alloca ptr, align 8
  store i32 %year, ptr %year.addr, align 4
  %call = call ptr @malloc(i64 noundef 4) #3
  store ptr %call, ptr %tn, align 8
  %0 = load i32, ptr %year.addr, align 4
  %1 = load ptr, ptr %tn, align 8
  %year_planted = getelementptr inbounds %struct.Tree, ptr %1, i32 0, i32 0
  store i32 %0, ptr %year_planted, align 4
  %2 = load ptr, ptr %tn, align 8
  ret ptr %2
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ORCHARD = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 100, ptr %ORCHARD, align 4
  %0 = call ptr @llvm.stacksave.p0()
  store ptr %0, ptr %saved_stack, align 8
  %vla = alloca ptr, i64 100, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call ptr @plant_tree(i32 noundef 2014)
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %vla, i64 %idxprom
  store ptr %call, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %vla1 = alloca ptr, i64 100, align 8
  store i32 0, ptr %i2, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %4 = load i32, ptr %i2, align 4
  %cmp4 = icmp slt i32 %4, 100
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %call6 = call ptr @plant_tree(i32 noundef 2016)
  %5 = load i32, ptr %i2, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %vla1, i64 %idxprom7
  store ptr %call6, ptr %arrayidx8, align 8
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %6 = load i32, ptr %i2, align 4
  %inc10 = add nsw i32 %6, 1
  store i32 %inc10, ptr %i2, align 4
  br label %for.cond3, !llvm.loop !7

for.end11:                                        ; preds = %for.cond3
  %7 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %7)
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
