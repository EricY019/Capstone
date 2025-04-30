; ModuleID = './code/374-14407setmem_long-1.c'
source_filename = "./code/374-14407setmem_long-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@buf = global [502 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test(ptr noundef %p, i8 noundef signext %c, i32 noundef %len) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  %len.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i8 %c, ptr %c.addr, align 1
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i8, ptr %c.addr, align 1
  %conv = sext i8 %1 to i32
  %2 = trunc i32 %conv to i8
  %3 = load i32, ptr %len.addr, align 4
  %conv1 = sext i32 %3 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %2, i64 %conv1, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test2(ptr noundef %p, i32 noundef %c, i32 noundef %len) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %c, ptr %c.addr, align 4
  store i32 %len, ptr %len.addr, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load i32, ptr %c.addr, align 4
  %conv = trunc i32 %1 to i8
  %conv1 = sext i8 %conv to i32
  %2 = trunc i32 %conv1 to i8
  %3 = load i32, ptr %len.addr, align 4
  %conv2 = sext i32 %3 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %2, i64 %conv2, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @init_buf() #0 {
entry:
  %i = alloca i32, align 4
  store i8 0, ptr @buf, align 1
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %and = and i32 %1, 63
  %add = add nsw i32 16, %and
  %conv = trunc i32 %add to i8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [502 x i8], ptr @buf, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i8 127, ptr getelementptr inbounds ([502 x i8], ptr @buf, i64 0, i64 501), align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @validate_buf(i8 noundef signext %val) #0 {
entry:
  %val.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store i8 %val, ptr %val.addr, align 1
  %0 = load i8, ptr @buf, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %i, align 4
  %cmp2 = icmp sle i32 %1, 500
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [502 x i8], ptr @buf, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  %conv4 = sext i8 %3 to i32
  %4 = load i8, ptr %val.addr, align 1
  %conv5 = sext i8 %4 to i32
  %cmp6 = icmp ne i32 %conv4, %conv5
  br i1 %cmp6, label %if.then8, label %if.end9

if.then8:                                         ; preds = %for.body
  call void @abort() #3
  unreachable

if.end9:                                          ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %6 = load i8, ptr getelementptr inbounds ([502 x i8], ptr @buf, i64 0, i64 501), align 1
  %conv10 = sext i8 %6 to i32
  %cmp11 = icmp ne i32 %conv10, 127
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  call void @abort() #3
  unreachable

if.end14:                                         ; preds = %for.end
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  call void @init_buf()
  call void @test(ptr noundef getelementptr inbounds (i8, ptr @buf, i64 1), i8 noundef signext 55, i32 noundef 500)
  call void @validate_buf(i8 noundef signext 55)
  call void @init_buf()
  call void @test(ptr noundef getelementptr inbounds (i8, ptr @buf, i64 1), i8 noundef signext 66, i32 noundef 500)
  call void @validate_buf(i8 noundef signext 66)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noreturn nounwind }

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
