; ModuleID = './code/031-18745urandom.c'
source_filename = "./code/031-18745urandom.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @clamp(i32 noundef %x, i32 noundef %a, i32 noundef %b) #0 {
entry:
  %x.addr = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i32, ptr %a.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4
  store i32 %2, ptr %x.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %x.addr, align 4
  %4 = load i32, ptr %b.addr, align 4
  %cmp1 = icmp sgt i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %b.addr, align 4
  store i32 %5, ptr %x.addr, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load i32, ptr %x.addr, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @geturand() #0 {
entry:
  %retval = alloca i32, align 4
  %fp = alloca ptr, align 8
  %r = alloca i32, align 4
  %call = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %fp, align 8
  %0 = load ptr, ptr %fp, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %fp, align 8
  %call1 = call i32 @fgetc(ptr noundef %1)
  %and = and i32 %call1, 255
  store i32 %and, ptr %r, align 4
  %2 = load ptr, ptr %fp, align 8
  %call2 = call i32 @fclose(ptr noundef %2)
  %3 = load i32, ptr %r, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fgetc(ptr noundef) #1

declare i32 @fclose(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @dist(i32 noundef %mask, i32 noundef %iters) #0 {
entry:
  %mask.addr = alloca i32, align 4
  %iters.addr = alloca i32, align 4
  %h = alloca [256 x i32], align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  store i32 %iters, ptr %iters.addr, align 4
  call void @llvm.memset.p0.i64(ptr align 4 %h, i8 0, i64 1024, i1 false)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %iters.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @geturand()
  store i32 %call, ptr %j, align 4
  %2 = load i32, ptr %j, align 4
  %cmp1 = icmp slt i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = load i32, ptr %j, align 4
  %4 = load i32, ptr %mask.addr, align 4
  %rem = srem i32 %3, %4
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr %h, i64 0, i64 %idxprom
  %5 = load i32, ptr %arrayidx, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %6 = load i32, ptr %i, align 4
  %inc2 = add nsw i32 %6, 1
  store i32 %inc2, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %mask.addr, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [256 x i32], ptr %h, i64 0, i64 %idxprom6
  %11 = load i32, ptr %arrayidx7, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %9, i32 noundef %11)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %12 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %12, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond3, !llvm.loop !7

for.end11:                                        ; preds = %for.cond3
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %iters = alloca i32, align 4
  %mask = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 10, ptr %iters, align 4
  store i32 2, ptr %mask, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sge i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %2)
  store i32 %call, ptr %mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %argc.addr, align 4
  %cmp1 = icmp sge i32 %3, 3
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @atoi(ptr noundef %5)
  store i32 %call4, ptr %iters, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %6 = load i32, ptr %mask, align 4
  %call6 = call i32 @clamp(i32 noundef %6, i32 noundef 0, i32 noundef 255)
  store i32 %call6, ptr %mask, align 4
  %7 = load i32, ptr %mask, align 4
  %8 = load i32, ptr %iters, align 4
  call void @dist(i32 noundef %7, i32 noundef %8)
  ret i32 0
}

declare i32 @atoi(ptr noundef) #1

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
