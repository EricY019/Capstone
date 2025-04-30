; ModuleID = './code/387-1718p052.c'
source_filename = "./code/387-1718p052.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 100, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4
  %1 = load i32, ptr %x, align 4
  %mul = mul nsw i32 %1, 2
  %call = call i32 @same_digits(i32 noundef %0, i32 noundef %mul)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %2 = load i32, ptr %x, align 4
  %3 = load i32, ptr %x, align 4
  %mul1 = mul nsw i32 %3, 3
  %call2 = call i32 @same_digits(i32 noundef %2, i32 noundef %mul1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %x, align 4
  %5 = load i32, ptr %x, align 4
  %mul5 = mul nsw i32 %5, 4
  %call6 = call i32 @same_digits(i32 noundef %4, i32 noundef %mul5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %6 = load i32, ptr %x, align 4
  %7 = load i32, ptr %x, align 4
  %mul9 = mul nsw i32 %7, 5
  %call10 = call i32 @same_digits(i32 noundef %6, i32 noundef %mul9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %8 = load i32, ptr %x, align 4
  %9 = load i32, ptr %x, align 4
  %mul13 = mul nsw i32 %9, 6
  %call14 = call i32 @same_digits(i32 noundef %8, i32 noundef %mul13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true12
  %10 = load i32, ptr %x, align 4
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true12, %land.lhs.true8, %land.lhs.true4, %land.lhs.true, %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %x, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %x, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @same_digits(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %digits = alloca [10 x i32], align 4
  %goal = alloca [10 x i32], align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %arraydecay = getelementptr inbounds [10 x i32], ptr %digits, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay, i8 0, i64 40, i1 false)
  %arraydecay1 = getelementptr inbounds [10 x i32], ptr %goal, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 4 %arraydecay1, i8 0, i64 40, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %a.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %a.addr, align 4
  %rem = srem i32 %1, 10
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %digits, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %a.addr, align 4
  %div = sdiv i32 %3, 10
  store i32 %div, ptr %a.addr, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %4 = load i32, ptr %b.addr, align 4
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, ptr %b.addr, align 4
  %rem5 = srem i32 %5, 10
  %idxprom6 = sext i32 %rem5 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], ptr %digits, i64 0, i64 %idxprom6
  %6 = load i32, ptr %arrayidx7, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %arrayidx7, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %7 = load i32, ptr %b.addr, align 4
  %div9 = sdiv i32 %7, 10
  store i32 %div9, ptr %b.addr, align 4
  br label %for.cond2, !llvm.loop !7

for.end10:                                        ; preds = %for.cond2
  %arraydecay11 = getelementptr inbounds [10 x i32], ptr %digits, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [10 x i32], ptr %goal, i64 0, i64 0
  %call = call i32 @memcmp(ptr noundef %arraydecay11, ptr noundef %arraydecay12, i64 noundef 10)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
