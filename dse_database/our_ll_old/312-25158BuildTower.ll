; ModuleID = './code/312-25158BuildTower.c'
source_filename = "./code/312-25158BuildTower.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @towerBuilder(i32 noundef %nFloors) #0 {
entry:
  %nFloors.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %i = alloca i32, align 4
  %temp = alloca ptr, align 8
  store i32 %nFloors, ptr %nFloors.addr, align 4
  %0 = load i32, ptr %nFloors.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call ptr @malloc(i64 noundef %mul) #5
  store ptr %call, ptr %res, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %nFloors.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %nFloors.addr, align 4
  %mul2 = mul nsw i32 2, %3
  %conv3 = sext i32 %mul2 to i64
  %mul4 = mul i64 1, %conv3
  %call5 = call ptr @malloc(i64 noundef %mul4) #5
  %4 = load ptr, ptr %res, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  store ptr %call5, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %nFloors.addr, align 4
  %mul6 = mul nsw i32 2, %7
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 1, %conv7
  %call9 = call ptr @malloc(i64 noundef %mul8) #5
  store ptr %call9, ptr %temp, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc42, %for.end
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %nFloors.addr, align 4
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body13, label %for.end44

for.body13:                                       ; preds = %for.cond10
  %10 = load ptr, ptr %temp, align 8
  %11 = load i32, ptr %nFloors.addr, align 4
  %12 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %11, %12
  %sub14 = sub nsw i32 %sub, 1
  %conv15 = sext i32 %sub14 to i64
  %13 = load ptr, ptr %temp, align 8
  %14 = call i64 @llvm.objectsize.i64.p0(ptr %13, i1 false, i1 true, i1 false)
  %call16 = call ptr @__memset_chk(ptr noundef %10, i32 noundef 32, i64 noundef %conv15, i64 noundef %14) #6
  %15 = load ptr, ptr %res, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds ptr, ptr %15, i64 %idxprom17
  %17 = load ptr, ptr %arrayidx18, align 8
  %18 = load ptr, ptr %temp, align 8
  %19 = load ptr, ptr %res, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %20 to i64
  %arrayidx20 = getelementptr inbounds ptr, ptr %19, i64 %idxprom19
  %21 = load ptr, ptr %arrayidx20, align 8
  %22 = call i64 @llvm.objectsize.i64.p0(ptr %21, i1 false, i1 true, i1 false)
  %call21 = call ptr @__strcat_chk(ptr noundef %17, ptr noundef %18, i64 noundef %22) #6
  %23 = load ptr, ptr %temp, align 8
  %24 = load ptr, ptr %temp, align 8
  %25 = call i64 @llvm.objectsize.i64.p0(ptr %24, i1 false, i1 true, i1 false)
  %call22 = call ptr @__strcpy_chk(ptr noundef %23, ptr noundef @.str, i64 noundef %25) #6
  %26 = load ptr, ptr %temp, align 8
  %27 = load i32, ptr %i, align 4
  %mul23 = mul nsw i32 %27, 2
  %add = add nsw i32 %mul23, 1
  %conv24 = sext i32 %add to i64
  %28 = load ptr, ptr %temp, align 8
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call25 = call ptr @__memset_chk(ptr noundef %26, i32 noundef 42, i64 noundef %conv24, i64 noundef %29) #6
  %30 = load ptr, ptr %res, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %31 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %30, i64 %idxprom26
  %32 = load ptr, ptr %arrayidx27, align 8
  %33 = load ptr, ptr %temp, align 8
  %34 = load ptr, ptr %res, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds ptr, ptr %34, i64 %idxprom28
  %36 = load ptr, ptr %arrayidx29, align 8
  %37 = call i64 @llvm.objectsize.i64.p0(ptr %36, i1 false, i1 true, i1 false)
  %call30 = call ptr @__strcat_chk(ptr noundef %32, ptr noundef %33, i64 noundef %37) #6
  %38 = load ptr, ptr %temp, align 8
  %39 = load ptr, ptr %temp, align 8
  %40 = call i64 @llvm.objectsize.i64.p0(ptr %39, i1 false, i1 true, i1 false)
  %call31 = call ptr @__strcpy_chk(ptr noundef %38, ptr noundef @.str, i64 noundef %40) #6
  %41 = load ptr, ptr %temp, align 8
  %42 = load i32, ptr %nFloors.addr, align 4
  %43 = load i32, ptr %i, align 4
  %sub32 = sub nsw i32 %42, %43
  %sub33 = sub nsw i32 %sub32, 1
  %conv34 = sext i32 %sub33 to i64
  %44 = load ptr, ptr %temp, align 8
  %45 = call i64 @llvm.objectsize.i64.p0(ptr %44, i1 false, i1 true, i1 false)
  %call35 = call ptr @__memset_chk(ptr noundef %41, i32 noundef 32, i64 noundef %conv34, i64 noundef %45) #6
  %46 = load ptr, ptr %res, align 8
  %47 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %47 to i64
  %arrayidx37 = getelementptr inbounds ptr, ptr %46, i64 %idxprom36
  %48 = load ptr, ptr %arrayidx37, align 8
  %49 = load ptr, ptr %temp, align 8
  %50 = load ptr, ptr %res, align 8
  %51 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %51 to i64
  %arrayidx39 = getelementptr inbounds ptr, ptr %50, i64 %idxprom38
  %52 = load ptr, ptr %arrayidx39, align 8
  %53 = call i64 @llvm.objectsize.i64.p0(ptr %52, i1 false, i1 true, i1 false)
  %call40 = call ptr @__strcat_chk(ptr noundef %48, ptr noundef %49, i64 noundef %53) #6
  %54 = load ptr, ptr %temp, align 8
  %55 = load ptr, ptr %temp, align 8
  %56 = call i64 @llvm.objectsize.i64.p0(ptr %55, i1 false, i1 true, i1 false)
  %call41 = call ptr @__strcpy_chk(ptr noundef %54, ptr noundef @.str, i64 noundef %56) #6
  br label %for.inc42

for.inc42:                                        ; preds = %for.body13
  %57 = load i32, ptr %i, align 4
  %inc43 = add nsw i32 %57, 1
  store i32 %inc43, ptr %i, align 4
  br label %for.cond10, !llvm.loop !7

for.end44:                                        ; preds = %for.cond10
  %58 = load ptr, ptr %temp, align 8
  call void @free(ptr noundef %58)
  %59 = load ptr, ptr %res, align 8
  ret ptr %59
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__memset_chk(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

declare void @free(ptr noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @tests() #0 {
entry:
  %floors = alloca i32, align 4
  %actual = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 2, ptr %floors, align 4
  %0 = load i32, ptr %floors, align 4
  %call = call ptr @towerBuilder(i32 noundef %0)
  store ptr %call, ptr %actual, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %floors, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %actual, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  store i32 3, ptr %floors, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %7 = load i32, ptr %floors, align 4
  %call3 = call ptr @towerBuilder(i32 noundef %7)
  store ptr %call3, ptr %actual, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc10, %for.end
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %floors, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body6, label %for.end12

for.body6:                                        ; preds = %for.cond4
  %10 = load ptr, ptr %actual, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds ptr, ptr %10, i64 %idxprom7
  %12 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %12)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %13 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond4, !llvm.loop !9

for.end12:                                        ; preds = %for.cond4
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc18, %for.end12
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %floors, align 4
  %cmp14 = icmp slt i32 %14, %15
  br i1 %cmp14, label %for.body15, label %for.end20

for.body15:                                       ; preds = %for.cond13
  %16 = load ptr, ptr %actual, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds ptr, ptr %16, i64 %idxprom16
  %18 = load ptr, ptr %arrayidx17, align 8
  call void @free(ptr noundef %18)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %19 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond13, !llvm.loop !10

for.end20:                                        ; preds = %for.cond13
  %20 = load ptr, ptr %actual, align 8
  call void @free(ptr noundef %20)
  ret void
}

declare i32 @printf(ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @tests()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { allocsize(0) }
attributes #6 = { nounwind }

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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
