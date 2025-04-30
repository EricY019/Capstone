; ModuleID = './code/090-8594test2.c'
source_filename = "./code/090-8594test2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.array = private unnamed_addr constant <{ [11 x i32], [9 x i32] }> <{ [11 x i32] [i32 1, i32 4, i32 6, i32 8, i32 10, i32 13, i32 17, i32 18, i32 24, i32 26, i32 30], [9 x i32] zeroinitializer }>, align 4
@.str = private unnamed_addr constant [18 x i8] c"%d's index is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d can't be found\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @search(ptr noundef %array, i32 noundef %a, i32 noundef %be, i32 noundef %en) #0 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca ptr, align 8
  %a.addr = alloca i32, align 4
  %be.addr = alloca i32, align 4
  %en.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %mid = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %a, ptr %a.addr, align 4
  store i32 %be, ptr %be.addr, align 4
  store i32 %en, ptr %en.addr, align 4
  %0 = load i32, ptr %be.addr, align 4
  %1 = load i32, ptr %en.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp eq i32 %0, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %be.addr, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %array.addr, align 8
  %4 = load i32, ptr %be.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %6 = load i32, ptr %a.addr, align 4
  %cmp1 = icmp eq i32 %5, %6
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %7 = load i32, ptr %be.addr, align 4
  store i32 %7, ptr %retval, align 4
  br label %return

if.end3:                                          ; preds = %if.end
  %8 = load i32, ptr %be.addr, align 4
  %9 = load i32, ptr %en.addr, align 4
  %add = add nsw i32 %8, %9
  %div = sdiv i32 %add, 2
  store i32 %div, ptr %mid, align 4
  %10 = load ptr, ptr %array.addr, align 8
  %11 = load i32, ptr %mid, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i32, ptr %10, i64 %idxprom4
  %12 = load i32, ptr %arrayidx5, align 4
  %13 = load i32, ptr %a.addr, align 4
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end3
  %14 = load i32, ptr %mid, align 4
  store i32 %14, ptr %be.addr, align 4
  br label %if.end8

if.else:                                          ; preds = %if.end3
  %15 = load i32, ptr %mid, align 4
  store i32 %15, ptr %en.addr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %16 = load ptr, ptr %array.addr, align 8
  %17 = load i32, ptr %a.addr, align 4
  %18 = load i32, ptr %be.addr, align 4
  %19 = load i32, ptr %en.addr, align 4
  %call = call i32 @search(ptr noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19)
  store i32 %call, ptr %result, align 4
  %20 = load i32, ptr %result, align 4
  store i32 %20, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then2, %if.then
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [20 x i32], align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 4 @__const.main.array, i64 80, i1 false)
  store i32 -1, ptr %index, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [20 x i32], ptr %array, i64 0, i64 0
  %1 = load i32, ptr %i, align 4
  %call = call i32 @search(ptr noundef %arraydecay, i32 noundef %1, i32 noundef 1, i32 noundef 18)
  store i32 %call, ptr %index, align 4
  %2 = load i32, ptr %index, align 4
  %cmp1 = icmp ne i32 %2, -1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %index, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr %array, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load i32, ptr %index, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4, i32 noundef %5)
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
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
