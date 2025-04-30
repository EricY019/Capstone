; ModuleID = './code/297-321832017-02-22-Strings.c'
source_filename = "./code/297-321832017-02-22-Strings.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"cls\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\0A\09\09HALLO WELT als Stringkonstante!\0A\09\09\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\0A\09\09\00", align 1
@__const.main.halloWelt = private unnamed_addr constant [11 x i8] c"HALLO WELT\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__const.main.hW = private unnamed_addr constant [12 x i8] c"HALLO WELT\00\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %stringArray = alloca [11 x i8], align 1
  %i = alloca i32, align 4
  %halloWelt = alloca [11 x i8], align 1
  %hW = alloca [12 x i8], align 1
  store i32 0, ptr %retval, align 4
  %call = call i32 @"\01_system"(ptr noundef @.str)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %arrayidx = getelementptr inbounds [11 x i8], ptr %stringArray, i64 0, i64 0
  store i8 72, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr inbounds [11 x i8], ptr %stringArray, i64 0, i64 1
  store i8 65, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr inbounds [11 x i8], ptr %stringArray, i64 0, i64 2
  store i8 76, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr inbounds [11 x i8], ptr %stringArray, i64 0, i64 3
  store i8 76, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr inbounds [11 x i8], ptr %stringArray, i64 0, i64 4
  store i8 79, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr inbounds [11 x i8], ptr %stringArray, i64 0, i64 5
  store i8 32, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr inbounds [11 x i8], ptr %stringArray, i64 0, i64 6
  store i8 87, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr inbounds [11 x i8], ptr %stringArray, i64 0, i64 7
  store i8 69, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr inbounds [11 x i8], ptr %stringArray, i64 0, i64 8
  store i8 76, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr inbounds [11 x i8], ptr %stringArray, i64 0, i64 9
  store i8 84, ptr %arrayidx11, align 1
  %arrayidx12 = getelementptr inbounds [11 x i8], ptr %stringArray, i64 0, i64 10
  store i8 0, ptr %arrayidx12, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx13 = getelementptr inbounds [11 x i8], ptr %stringArray, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx13, align 1
  %conv = sext i8 %2 to i32
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %halloWelt, ptr align 1 @__const.main.halloWelt, i64 11, i1 false)
  %arraydecay = getelementptr inbounds [11 x i8], ptr %halloWelt, i64 0, i64 0
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %arraydecay)
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %hW, ptr align 1 @__const.main.hW, i64 12, i1 false)
  %arraydecay18 = getelementptr inbounds [12 x i8], ptr %hW, i64 0, i64 0
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %arraydecay18)
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 0
}

declare i32 @"\01_system"(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
