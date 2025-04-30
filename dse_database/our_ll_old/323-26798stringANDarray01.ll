; ModuleID = './code/323-26798stringANDarray01.c'
source_filename = "./code/323-26798stringANDarray01.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.a = private unnamed_addr constant [12 x i8] c"I am a boy.\00", align 1
@.str = private unnamed_addr constant [19 x i8] c"string a is : %s \0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"string b is :\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [12 x i8], align 1
  %b = alloca [20 x i8], align 1
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a, ptr align 1 @__const.main.a, i64 12, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %arraydecay = getelementptr inbounds [12 x i8], ptr %a, i64 0, i64 0
  %0 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 %idx.ext
  %1 = load i8, ptr %add.ptr, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [12 x i8], ptr %a, i64 0, i64 0
  %2 = load i32, ptr %i, align 4
  %idx.ext3 = sext i32 %2 to i64
  %add.ptr4 = getelementptr inbounds i8, ptr %arraydecay2, i64 %idx.ext3
  %3 = load i8, ptr %add.ptr4, align 1
  %arraydecay5 = getelementptr inbounds [20 x i8], ptr %b, i64 0, i64 0
  %4 = load i32, ptr %i, align 4
  %idx.ext6 = sext i32 %4 to i64
  %add.ptr7 = getelementptr inbounds i8, ptr %arraydecay5, i64 %idx.ext6
  store i8 %3, ptr %add.ptr7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %arraydecay8 = getelementptr inbounds [20 x i8], ptr %b, i64 0, i64 0
  %6 = load i32, ptr %i, align 4
  %idx.ext9 = sext i32 %6 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %arraydecay8, i64 %idx.ext9
  store i8 0, ptr %add.ptr10, align 1
  %arraydecay11 = getelementptr inbounds [12 x i8], ptr %a, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay11)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  store i32 0, ptr %i, align 4
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc23, %for.end
  %arraydecay14 = getelementptr inbounds [20 x i8], ptr %b, i64 0, i64 0
  %7 = load i32, ptr %i, align 4
  %idx.ext15 = sext i32 %7 to i64
  %add.ptr16 = getelementptr inbounds i8, ptr %arraydecay14, i64 %idx.ext15
  %8 = load i8, ptr %add.ptr16, align 1
  %conv17 = sext i8 %8 to i32
  %cmp18 = icmp ne i32 %conv17, 0
  br i1 %cmp18, label %for.body20, label %for.end25

for.body20:                                       ; preds = %for.cond13
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [20 x i8], ptr %b, i64 0, i64 %idxprom
  %10 = load i8, ptr %arrayidx, align 1
  %conv21 = sext i8 %10 to i32
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv21)
  br label %for.inc23

for.inc23:                                        ; preds = %for.body20
  %11 = load i32, ptr %i, align 4
  %inc24 = add nsw i32 %11, 1
  store i32 %inc24, ptr %i, align 4
  br label %for.cond13, !llvm.loop !7

for.end25:                                        ; preds = %for.cond13
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
