; ModuleID = './code/135-13575Upcase.c'
source_filename = "./code/135-13575Upcase.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [9 x i8] c"dp = %s\0A\00", align 1
@__const.main.str = private unnamed_addr constant [20 x i8] c"Nice weather today!\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"str= %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"up = %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @upcase(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %dst = alloca i8, align 1
  %dp = alloca ptr, align 8
  %c = alloca i8, align 1
  store ptr %str, ptr %str.addr, align 8
  store ptr %dst, ptr %dp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %str.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %str.addr, align 8
  %3 = load i8, ptr %2, align 1
  store i8 %3, ptr %c, align 1
  %4 = load i8, ptr %c, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp sge i32 %conv, 97
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %5 = load i8, ptr %c, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp sle i32 %conv2, 122
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i8, ptr %c, align 1
  %conv5 = sext i8 %6 to i32
  %add = add nsw i32 %conv5, -32
  %conv6 = trunc i32 %add to i8
  store i8 %conv6, ptr %c, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %7 = load i8, ptr %c, align 1
  %8 = load ptr, ptr %dp, align 8
  %incdec.ptr7 = getelementptr inbounds i8, ptr %8, i32 -1
  store ptr %incdec.ptr7, ptr %dp, align 8
  store i8 %7, ptr %8, align 1
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %dp, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %9)
  %10 = load ptr, ptr %dp, align 8
  ret ptr %10
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %str = alloca [20 x i8], align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str, ptr align 1 @__const.main.str, i64 20, i1 false)
  %arraydecay = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %call2 = call ptr @upcase(ptr noundef %arraydecay1)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %call2)
  ret i32 0
}

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
