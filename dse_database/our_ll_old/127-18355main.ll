; ModuleID = './code/127-18355main.c'
source_filename = "./code/127-18355main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.a = private unnamed_addr constant [4 x i8] c"abm\00", align 1
@__const.main.b = private unnamed_addr constant [5 x i8] c"aqid\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %a = alloca [4 x i8], align 1
  %b = alloca [5 x i8], align 1
  %c = alloca [10 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %i, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a, ptr align 1 @__const.main.a, i64 4, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b, ptr align 1 @__const.main.b, i64 5, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [4 x i8], ptr %a, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [5 x i8], ptr %b, i64 0, i64 %idxprom2
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [4 x i8], ptr %a, i64 0, i64 %idxprom7
  %6 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %6 to i32
  %7 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [5 x i8], ptr %b, i64 0, i64 %idxprom10
  %8 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %8 to i32
  %cmp13 = icmp sge i32 %conv9, %conv12
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %9 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %9 to i64
  %arrayidx16 = getelementptr inbounds [4 x i8], ptr %a, i64 0, i64 %idxprom15
  %10 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %10 to i32
  %sub = sub nsw i32 %conv17, 32
  %conv18 = trunc i32 %sub to i8
  %11 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [10 x i8], ptr %c, i64 0, i64 %idxprom19
  store i8 %conv18, ptr %arrayidx20, align 1
  br label %if.end

if.else:                                          ; preds = %while.body
  %12 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %12 to i64
  %arrayidx22 = getelementptr inbounds [5 x i8], ptr %b, i64 0, i64 %idxprom21
  %13 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %13 to i32
  %sub24 = sub nsw i32 %conv23, 32
  %conv25 = trunc i32 %sub24 to i8
  %14 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %14 to i64
  %arrayidx27 = getelementptr inbounds [10 x i8], ptr %c, i64 0, i64 %idxprom26
  store i8 %conv25, ptr %arrayidx27, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  %16 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %16 to i64
  %arrayidx29 = getelementptr inbounds [10 x i8], ptr %c, i64 0, i64 %idxprom28
  store i8 0, ptr %arrayidx29, align 1
  %arraydecay = getelementptr inbounds [10 x i8], ptr %c, i64 0, i64 0
  %call = call i32 @puts(ptr noundef %arraydecay)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @puts(ptr noundef) #2

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
