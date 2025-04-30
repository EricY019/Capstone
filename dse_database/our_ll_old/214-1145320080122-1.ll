; ModuleID = './code/214-1145320080122-1.c'
source_filename = "./code/214-1145320080122-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.outbuf = private unnamed_addr constant [32 x i8] c"buffer     \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@__const.main.inbuf = private unnamed_addr constant [32 x i8] c"\0C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %outbuf = alloca [32 x i8], align 1
  %inbuf = alloca [32 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %outbuf, ptr align 1 @__const.main.outbuf, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %inbuf, ptr align 1 @__const.main.inbuf, i64 32, i1 false)
  call void asm sideeffect "", ""() #2, !srcloc !5
  %arraydecay = getelementptr inbounds [32 x i8], ptr %inbuf, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [32 x i8], ptr %outbuf, i64 0, i64 0
  call void @do_segfault(ptr noundef %arraydecay, ptr noundef %arraydecay1, i32 noundef 12)
  call void asm sideeffect "", ""() #2, !srcloc !6
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @do_segfault(ptr noundef %in_buf, ptr noundef %out_buf, i32 noundef %len) #0 {
entry:
  %in_buf.addr = alloca ptr, align 8
  %out_buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %in_buf, ptr %in_buf.addr, align 8
  store ptr %out_buf, ptr %out_buf.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void asm sideeffect "", ""() #2, !srcloc !7
  %2 = load ptr, ptr %out_buf.addr, align 8
  %3 = load i32, ptr %i, align 4
  %mul = mul nsw i32 2, %3
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %5 = load ptr, ptr %out_buf.addr, align 8
  %6 = load i32, ptr %i, align 4
  %mul1 = mul nsw i32 2, %6
  %add = add nsw i32 %mul1, 1
  %idxprom2 = sext i32 %add to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %5, i64 %idxprom2
  %7 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %shl = shl i32 %conv4, 8
  %or = or i32 %conv, %shl
  %and = and i32 %or, 255
  %conv5 = trunc i32 %and to i8
  %8 = load ptr, ptr %in_buf.addr, align 8
  %9 = load i32, ptr %i, align 4
  %mul6 = mul nsw i32 2, %9
  %idxprom7 = sext i32 %mul6 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %8, i64 %idxprom7
  store i8 %conv5, ptr %arrayidx8, align 1
  call void asm sideeffect "", ""() #2, !srcloc !8
  %10 = load ptr, ptr %out_buf.addr, align 8
  %11 = load i32, ptr %i, align 4
  %mul9 = mul nsw i32 2, %11
  %idxprom10 = sext i32 %mul9 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %10, i64 %idxprom10
  %12 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %12 to i32
  %13 = load ptr, ptr %out_buf.addr, align 8
  %14 = load i32, ptr %i, align 4
  %mul13 = mul nsw i32 2, %14
  %add14 = add nsw i32 %mul13, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds i8, ptr %13, i64 %idxprom15
  %15 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %15 to i32
  %shl18 = shl i32 %conv17, 8
  %or19 = or i32 %conv12, %shl18
  %shr = ashr i32 %or19, 8
  %conv20 = trunc i32 %shr to i8
  %16 = load ptr, ptr %in_buf.addr, align 8
  %17 = load i32, ptr %i, align 4
  %mul21 = mul nsw i32 2, %17
  %add22 = add nsw i32 %mul21, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %16, i64 %idxprom23
  store i8 %conv20, ptr %arrayidx24, align 1
  call void asm sideeffect "", ""() #2, !srcloc !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{i64 536}
!6 = !{i64 581}
!7 = !{i64 260}
!8 = !{i64 343}
!9 = !{i64 426}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
