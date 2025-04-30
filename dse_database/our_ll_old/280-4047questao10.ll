; ModuleID = './code/280-4047questao10.c'
source_filename = "./code/280-4047questao10.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@__const.main.array1 = private unnamed_addr constant [7 x i32] [i32 1, i32 30, i32 34, i32 80, i32 0, i32 1, i32 32], align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_arr(ptr noundef %arr, i32 noundef %size, i32 noundef %pares) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %pares.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %par = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 %pares, ptr %pares.addr, align 4
  store i32 0, ptr %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %idx, align 4
  %1 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %arr.addr, align 8
  %3 = load i32, ptr %idx, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end17

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %arr.addr, align 8
  %6 = load i32, ptr %idx, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %5, i64 %idxprom2
  %7 = load i32, ptr %arrayidx3, align 4
  %rem = srem i32 %7, 2
  %cmp4 = icmp eq i32 %rem, 0
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, ptr %par, align 4
  %8 = load i32, ptr %pares.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %9 = load i32, ptr %par, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %arr.addr, align 8
  %11 = load i32, ptr %idx, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %10, i64 %idxprom7
  %12 = load i32, ptr %arrayidx8, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %12)
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true, %if.then
  %13 = load i32, ptr %pares.addr, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.end, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.else
  %14 = load i32, ptr %par, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.end, label %if.then12

if.then12:                                        ; preds = %land.lhs.true10
  %15 = load ptr, ptr %arr.addr, align 8
  %16 = load i32, ptr %idx, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds i32, ptr %15, i64 %idxprom13
  %17 = load i32, ptr %arrayidx14, align 4
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %17)
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true10, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then6
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %18 = load i32, ptr %idx, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %idx, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %array1 = alloca [7 x i32], align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array1, ptr align 4 @__const.main.array1, i64 28, i1 false)
  %arraydecay = getelementptr inbounds [7 x i32], ptr %array1, i64 0, i64 0
  %add.ptr = getelementptr inbounds i32, ptr %arraydecay, i64 1
  call void @print_arr(ptr noundef %add.ptr, i32 noundef 5, i32 noundef 1)
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
