; ModuleID = 'code/339-17630bcnt.c'
source_filename = "code/339-17630bcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@poptab = dso_local global [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16
@src = dso_local global <{ [64 x i64], [960 x i64] }> <{ [64 x i64] [i64 22136, i64 305397760, i64 33818120, i64 1, i64 305419896, i64 305419896, i64 305419896, i64 305419896, i64 22136, i64 305397760, i64 33818120, i64 1, i64 305419896, i64 305419896, i64 305419896, i64 305419896, i64 22136, i64 305397760, i64 33818120, i64 1, i64 305419896, i64 305419896, i64 305419896, i64 305419896, i64 22136, i64 305397760, i64 33818120, i64 1, i64 305419896, i64 305419896, i64 305419896, i64 305419896, i64 22136, i64 305397760, i64 33818120, i64 1, i64 305419896, i64 305419896, i64 305419896, i64 305419896, i64 22136, i64 305397760, i64 33818120, i64 1, i64 269488144, i64 305419896, i64 269488144, i64 305419896, i64 22136, i64 305397760, i64 33818120, i64 1, i64 269488144, i64 305419896, i64 269488144, i64 305419896, i64 22136, i64 305397760, i64 33818120, i64 1, i64 269488144, i64 305419896, i64 269488144, i64 305419896], [960 x i64] zeroinitializer }>, align 16
@dst = dso_local global [1024 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca i64*, align 8
  %d = alloca i64*, align 8
  %x = alloca i64, align 8
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store volatile i32 0, i32* %t, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc82, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5000
  br i1 %cmp, label %for.body, label %for.end83

for.body:                                         ; preds = %for.cond
  store volatile i32 0, i32* %t, align 4
  store i64* getelementptr inbounds ([1024 x i64], [1024 x i64]* bitcast (<{ [64 x i64], [960 x i64] }>* @src to [1024 x i64]*), i64 0, i64 0), i64** %s, align 8
  store i64* getelementptr inbounds ([1024 x i64], [1024 x i64]* @dst, i64 0, i64 0), i64** %d, align 8
  store volatile i32 0, i32* %t, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i64*, i64** %s, align 8
  %2 = load volatile i64, i64* %1, align 8
  %tobool = icmp ne i64 %2, 0
  br i1 %tobool, label %for.body2, label %for.end

for.body2:                                        ; preds = %for.cond1
  %3 = load i64*, i64** %s, align 8
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 0
  %4 = load volatile i64, i64* %arrayidx, align 8
  %5 = load i64*, i64** %d, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %5, i64 0
  %6 = load volatile i64, i64* %arrayidx3, align 8
  %xor = xor i64 %4, %6
  store volatile i64 %xor, i64* %x, align 8
  %7 = load volatile i64, i64* %x, align 8
  %and = and i64 %7, 255
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %and
  %8 = load volatile i8, i8* %arrayidx4, align 1
  %conv = zext i8 %8 to i32
  store volatile i32 %conv, i32* %k, align 4
  %9 = load volatile i64, i64* %x, align 8
  %shr = lshr i64 %9, 8
  %and5 = and i64 %shr, 255
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %and5
  %10 = load volatile i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %10 to i32
  %11 = load volatile i32, i32* %k, align 4
  %add = add nsw i32 %11, %conv7
  store volatile i32 %add, i32* %k, align 4
  %12 = load volatile i64, i64* %x, align 8
  %shr8 = lshr i64 %12, 16
  %and9 = and i64 %shr8, 255
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %and9
  %13 = load volatile i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  %14 = load volatile i32, i32* %k, align 4
  %add12 = add nsw i32 %14, %conv11
  store volatile i32 %add12, i32* %k, align 4
  %15 = load volatile i64, i64* %x, align 8
  %shr13 = lshr i64 %15, 24
  %arrayidx14 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %shr13
  %16 = load volatile i8, i8* %arrayidx14, align 1
  %conv15 = zext i8 %16 to i32
  %17 = load volatile i32, i32* %k, align 4
  %add16 = add nsw i32 %17, %conv15
  store volatile i32 %add16, i32* %k, align 4
  %18 = load volatile i32, i32* %k, align 4
  %19 = load volatile i32, i32* %t, align 4
  %add17 = add nsw i32 %19, %18
  store volatile i32 %add17, i32* %t, align 4
  %20 = load i64*, i64** %s, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %20, i64 1
  %21 = load volatile i64, i64* %arrayidx18, align 8
  %22 = load i64*, i64** %d, align 8
  %arrayidx19 = getelementptr inbounds i64, i64* %22, i64 1
  %23 = load volatile i64, i64* %arrayidx19, align 8
  %xor20 = xor i64 %21, %23
  store volatile i64 %xor20, i64* %x, align 8
  %24 = load volatile i64, i64* %x, align 8
  %and21 = and i64 %24, 255
  %arrayidx22 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %and21
  %25 = load volatile i8, i8* %arrayidx22, align 1
  %conv23 = zext i8 %25 to i32
  store volatile i32 %conv23, i32* %k, align 4
  %26 = load volatile i64, i64* %x, align 8
  %shr24 = lshr i64 %26, 8
  %and25 = and i64 %shr24, 255
  %arrayidx26 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %and25
  %27 = load volatile i8, i8* %arrayidx26, align 1
  %conv27 = zext i8 %27 to i32
  %28 = load volatile i32, i32* %k, align 4
  %add28 = add nsw i32 %28, %conv27
  store volatile i32 %add28, i32* %k, align 4
  %29 = load volatile i64, i64* %x, align 8
  %shr29 = lshr i64 %29, 16
  %and30 = and i64 %shr29, 255
  %arrayidx31 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %and30
  %30 = load volatile i8, i8* %arrayidx31, align 1
  %conv32 = zext i8 %30 to i32
  %31 = load volatile i32, i32* %k, align 4
  %add33 = add nsw i32 %31, %conv32
  store volatile i32 %add33, i32* %k, align 4
  %32 = load volatile i64, i64* %x, align 8
  %shr34 = lshr i64 %32, 24
  %arrayidx35 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %shr34
  %33 = load volatile i8, i8* %arrayidx35, align 1
  %conv36 = zext i8 %33 to i32
  %34 = load volatile i32, i32* %k, align 4
  %add37 = add nsw i32 %34, %conv36
  store volatile i32 %add37, i32* %k, align 4
  %35 = load volatile i32, i32* %k, align 4
  %36 = load volatile i32, i32* %t, align 4
  %add38 = add nsw i32 %36, %35
  store volatile i32 %add38, i32* %t, align 4
  %37 = load i64*, i64** %s, align 8
  %arrayidx39 = getelementptr inbounds i64, i64* %37, i64 2
  %38 = load volatile i64, i64* %arrayidx39, align 8
  %39 = load i64*, i64** %d, align 8
  %arrayidx40 = getelementptr inbounds i64, i64* %39, i64 2
  %40 = load volatile i64, i64* %arrayidx40, align 8
  %xor41 = xor i64 %38, %40
  store volatile i64 %xor41, i64* %x, align 8
  %41 = load volatile i64, i64* %x, align 8
  %and42 = and i64 %41, 255
  %arrayidx43 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %and42
  %42 = load volatile i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %42 to i32
  store volatile i32 %conv44, i32* %k, align 4
  %43 = load volatile i64, i64* %x, align 8
  %shr45 = lshr i64 %43, 8
  %and46 = and i64 %shr45, 255
  %arrayidx47 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %and46
  %44 = load volatile i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %44 to i32
  %45 = load volatile i32, i32* %k, align 4
  %add49 = add nsw i32 %45, %conv48
  store volatile i32 %add49, i32* %k, align 4
  %46 = load volatile i64, i64* %x, align 8
  %shr50 = lshr i64 %46, 16
  %and51 = and i64 %shr50, 255
  %arrayidx52 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %and51
  %47 = load volatile i8, i8* %arrayidx52, align 1
  %conv53 = zext i8 %47 to i32
  %48 = load volatile i32, i32* %k, align 4
  %add54 = add nsw i32 %48, %conv53
  store volatile i32 %add54, i32* %k, align 4
  %49 = load volatile i64, i64* %x, align 8
  %shr55 = lshr i64 %49, 24
  %arrayidx56 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %shr55
  %50 = load volatile i8, i8* %arrayidx56, align 1
  %conv57 = zext i8 %50 to i32
  %51 = load volatile i32, i32* %k, align 4
  %add58 = add nsw i32 %51, %conv57
  store volatile i32 %add58, i32* %k, align 4
  %52 = load volatile i32, i32* %k, align 4
  %53 = load volatile i32, i32* %t, align 4
  %add59 = add nsw i32 %53, %52
  store volatile i32 %add59, i32* %t, align 4
  %54 = load i64*, i64** %s, align 8
  %arrayidx60 = getelementptr inbounds i64, i64* %54, i64 3
  %55 = load volatile i64, i64* %arrayidx60, align 8
  %56 = load i64*, i64** %d, align 8
  %arrayidx61 = getelementptr inbounds i64, i64* %56, i64 3
  %57 = load volatile i64, i64* %arrayidx61, align 8
  %xor62 = xor i64 %55, %57
  store volatile i64 %xor62, i64* %x, align 8
  %58 = load volatile i64, i64* %x, align 8
  %and63 = and i64 %58, 255
  %arrayidx64 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %and63
  %59 = load volatile i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %59 to i32
  store volatile i32 %conv65, i32* %k, align 4
  %60 = load volatile i64, i64* %x, align 8
  %shr66 = lshr i64 %60, 8
  %and67 = and i64 %shr66, 255
  %arrayidx68 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %and67
  %61 = load volatile i8, i8* %arrayidx68, align 1
  %conv69 = zext i8 %61 to i32
  %62 = load volatile i32, i32* %k, align 4
  %add70 = add nsw i32 %62, %conv69
  store volatile i32 %add70, i32* %k, align 4
  %63 = load volatile i64, i64* %x, align 8
  %shr71 = lshr i64 %63, 16
  %and72 = and i64 %shr71, 255
  %arrayidx73 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %and72
  %64 = load volatile i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %64 to i32
  %65 = load volatile i32, i32* %k, align 4
  %add75 = add nsw i32 %65, %conv74
  store volatile i32 %add75, i32* %k, align 4
  %66 = load volatile i64, i64* %x, align 8
  %shr76 = lshr i64 %66, 24
  %arrayidx77 = getelementptr inbounds [256 x i8], [256 x i8]* @poptab, i64 0, i64 %shr76
  %67 = load volatile i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %67 to i32
  %68 = load volatile i32, i32* %k, align 4
  %add79 = add nsw i32 %68, %conv78
  store volatile i32 %add79, i32* %k, align 4
  %69 = load volatile i32, i32* %k, align 4
  %70 = load volatile i32, i32* %t, align 4
  %add80 = add nsw i32 %70, %69
  store volatile i32 %add80, i32* %t, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body2
  %71 = load i64*, i64** %s, align 8
  %add.ptr = getelementptr inbounds i64, i64* %71, i64 4
  store i64* %add.ptr, i64** %s, align 8
  %72 = load i64*, i64** %d, align 8
  %add.ptr81 = getelementptr inbounds i64, i64* %72, i64 4
  store i64* %add.ptr81, i64** %d, align 8
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.inc82

for.inc82:                                        ; preds = %for.end
  %73 = load i32, i32* %i, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end83:                                        ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
