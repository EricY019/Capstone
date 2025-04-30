; ModuleID = './code/316-9581main.c'
source_filename = "./code/316-9581main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [9 x i8] c"main.smc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"rb+\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"m7.bin\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %file = alloca ptr, align 8
  %zoom = alloca float, align 4
  %sub = alloca float, align 4
  %byte = alloca [512 x i32], align 4
  %div = alloca float, align 4
  %ozoom = alloca i32, align 4
  %pr = alloca float, align 4
  %tzoom = alloca float, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %file, align 8
  %0 = load ptr, ptr %file, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %file, align 8
  %call1 = call i32 @fseek(ptr noundef %1, i64 noundef 131072, i32 noundef 0)
  store float 8.320000e+02, ptr %zoom, align 4
  %2 = load float, ptr %zoom, align 4
  %conv = fpext float %2 to double
  %mul = fmul double %conv, 2.400000e-02
  %conv2 = fptrunc double %mul to float
  store float %conv2, ptr %div, align 4
  %3 = load float, ptr %zoom, align 4
  store float %3, ptr %tzoom, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %4, 128
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load float, ptr %zoom, align 4
  %6 = load float, ptr %div, align 4
  %div5 = fdiv float %5, %6
  store float %div5, ptr %sub, align 4
  %7 = load float, ptr %zoom, align 4
  %8 = load float, ptr %tzoom, align 4
  %div6 = fdiv float %7, %8
  store float %div6, ptr %pr, align 4
  %9 = load float, ptr %zoom, align 4
  %conv7 = fptosi float %9 to i32
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [512 x i32], ptr %byte, i64 0, i64 %idxprom
  store i32 %conv7, ptr %arrayidx, align 4
  %11 = load float, ptr %zoom, align 4
  %conv8 = fptosi float %11 to i32
  store i32 %conv8, ptr %ozoom, align 4
  %12 = load i32, ptr %ozoom, align 4
  %and = and i32 %12, 255
  %13 = load ptr, ptr %file, align 8
  %call9 = call i32 @fputc(i32 noundef %and, ptr noundef %13)
  %14 = load i32, ptr %ozoom, align 4
  %shr = ashr i32 %14, 8
  %and10 = and i32 %shr, 255
  %15 = load ptr, ptr %file, align 8
  %call11 = call i32 @fputc(i32 noundef %and10, ptr noundef %15)
  %16 = load float, ptr %sub, align 4
  %17 = load float, ptr %pr, align 4
  %18 = load float, ptr %zoom, align 4
  %neg = fneg float %16
  %19 = call float @llvm.fmuladd.f32(float %neg, float %17, float %18)
  store float %19, ptr %zoom, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %file, align 8
  %call13 = call i32 @fclose(ptr noundef %21)
  %call14 = call ptr @"\01_fopen"(ptr noundef @.str.2, ptr noundef @.str.3)
  store ptr %call14, ptr %file, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc26, %for.end
  %22 = load i32, ptr %i, align 4
  %cmp16 = icmp slt i32 %22, 256
  br i1 %cmp16, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond15
  %23 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [512 x i32], ptr %byte, i64 0, i64 %idxprom19
  %24 = load i32, ptr %arrayidx20, align 4
  store i32 %24, ptr %ozoom, align 4
  %25 = load i32, ptr %ozoom, align 4
  %and21 = and i32 %25, 255
  %26 = load ptr, ptr %file, align 8
  %call22 = call i32 @fputc(i32 noundef %and21, ptr noundef %26)
  %27 = load i32, ptr %ozoom, align 4
  %shr23 = ashr i32 %27, 8
  %and24 = and i32 %shr23, 255
  %28 = load ptr, ptr %file, align 8
  %call25 = call i32 @fputc(i32 noundef %and24, ptr noundef %28)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %29 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %29, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond15, !llvm.loop !7

for.end28:                                        ; preds = %for.cond15
  %30 = load ptr, ptr %file, align 8
  %call29 = call i32 @fclose(ptr noundef %30)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end28, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fseek(ptr noundef, i64 noundef, i32 noundef) #1

declare i32 @fputc(i32 noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

declare i32 @fclose(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
