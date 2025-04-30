; ModuleID = './code/158-24742CharacterConstant.c'
source_filename = "./code/158-24742CharacterConstant.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.array_2 = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@.str = private unnamed_addr constant [6 x i8] c"%d\0A\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s\0A\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %array = alloca [1000 x i8], align 1
  %array_2 = alloca [6 x i8], align 1
  %array_3 = alloca [1 x i32], align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %array_2, ptr align 1 @__const.main.array_2, i64 6, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %array_3, i8 0, i64 4, i1 false)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 2)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000 x i8], ptr %array, i64 0, i64 %idxprom
  store i8 49, ptr %arrayidx, align 1
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %3 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1000 x i8], ptr %array, i64 0, i64 %idxprom1
  store i8 0, ptr %arrayidx2, align 1
  %arraydecay = getelementptr inbounds [1000 x i8], ptr %array, i64 0, i64 0
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay)
  %arraydecay4 = getelementptr inbounds [6 x i8], ptr %array_2, i64 0, i64 0
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay4)
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
