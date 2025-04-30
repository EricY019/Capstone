; ModuleID = './code/392-32672memcmp.c'
source_filename = "./code/392-32672memcmp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@__stdoutp = external global ptr, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"compare : \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" => [%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @show_mem(ptr noundef %p, i64 noundef %n) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %pz = alloca ptr, align 8
  %c = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr null, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  store ptr %1, ptr %pz, align 8
  store i64 0, ptr %c, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i64 0, ptr %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i64, ptr %c, align 8
  %3 = load i64, ptr %n.addr, align 8
  %cmp1 = icmp ne i64 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pz, align 8
  %5 = load i64, ptr %c, align 8
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %5
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %c, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %c, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %8 = load ptr, ptr @__stdoutp, align 8
  %call4 = call i32 @fflush(ptr noundef %8)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @fflush(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @ext_memcmp(ptr noundef %s1, ptr noundef %s2, i64 noundef %n) #0 {
entry:
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 8
  store ptr %s2, ptr %s2.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %s1.addr, align 8
  %1 = load ptr, ptr %s2.addr, align 8
  %2 = load i64, ptr %n.addr, align 8
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  store i32 %call, ptr %ret, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %3 = load ptr, ptr %s1.addr, align 8
  %4 = load i64, ptr %n.addr, align 8
  call void @show_mem(ptr noundef %3, i64 noundef %4)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %5 = load ptr, ptr %s2.addr, align 8
  %6 = load i64, ptr %n.addr, align 8
  call void @show_mem(ptr noundef %5, i64 noundef %6)
  %7 = load i32, ptr %ret, align 4
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %7)
  ret i32 0
}

declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %s1 = alloca [32 x i8], align 1
  %s2 = alloca [32 x i8], align 1
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %s1, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %s2, i8 0, i64 32, i1 false)
  %arraydecay = getelementptr inbounds [32 x i8], ptr %s1, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 32, i1 false)
  %arraydecay1 = getelementptr inbounds [32 x i8], ptr %s2, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay1, i8 0, i64 32, i1 false)
  store i32 0, ptr %i, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [32 x i8], ptr %s1, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load i32, ptr %i, align 4
  %conv2 = trunc i32 %3 to i8
  %4 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [32 x i8], ptr %s2, i64 0, i64 %idxprom3
  store i8 %conv2, ptr %arrayidx4, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc16, %for.end
  %6 = load i32, ptr %i, align 4
  %cmp6 = icmp slt i32 %6, 20
  br i1 %cmp6, label %for.body8, label %for.end18

for.body8:                                        ; preds = %for.cond5
  %7 = load i32, ptr %i, align 4
  %add = add nsw i32 %7, 20
  %conv9 = trunc i32 %add to i8
  %8 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [32 x i8], ptr %s1, i64 0, i64 %idxprom10
  store i8 %conv9, ptr %arrayidx11, align 1
  %9 = load i32, ptr %i, align 4
  %add12 = add nsw i32 %9, 50
  %conv13 = trunc i32 %add12 to i8
  %10 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [32 x i8], ptr %s2, i64 0, i64 %idxprom14
  store i8 %conv13, ptr %arrayidx15, align 1
  br label %for.inc16

for.inc16:                                        ; preds = %for.body8
  %11 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %11, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond5, !llvm.loop !8

for.end18:                                        ; preds = %for.cond5
  %arraydecay19 = getelementptr inbounds [32 x i8], ptr %s1, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [32 x i8], ptr %s2, i64 0, i64 0
  %call = call i32 @ext_memcmp(ptr noundef %arraydecay19, ptr noundef %arraydecay20, i64 noundef 10)
  %arraydecay21 = getelementptr inbounds [32 x i8], ptr %s1, i64 0, i64 0
  %arraydecay22 = getelementptr inbounds [32 x i8], ptr %s2, i64 0, i64 0
  %call23 = call i32 @ext_memcmp(ptr noundef %arraydecay21, ptr noundef %arraydecay22, i64 noundef 12)
  %arraydecay24 = getelementptr inbounds [32 x i8], ptr %s1, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [32 x i8], ptr %s2, i64 0, i64 0
  %call26 = call i32 @ext_memcmp(ptr noundef %arraydecay24, ptr noundef %arraydecay25, i64 noundef 16)
  %arraydecay27 = getelementptr inbounds [32 x i8], ptr %s1, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [32 x i8], ptr %s2, i64 0, i64 0
  %call29 = call i32 @ext_memcmp(ptr noundef %arraydecay27, ptr noundef %arraydecay28, i64 noundef 20)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

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
!8 = distinct !{!8, !6}
