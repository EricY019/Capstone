; ModuleID = './code/021-13252translator.c'
source_filename = "./code/021-13252translator.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__const.main.mas = private unnamed_addr constant [35 x i8] c"xrrJfvuGrgveJhbLqvQfznetbeClanZjbU\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @trans(ptr noundef %arr) #0 {
entry:
  %arr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ch = alloca i8, align 1
  %number = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %arr, ptr %arr.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %arr.addr, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1
  store i8 %3, ptr %ch, align 1
  %4 = load ptr, ptr %arr.addr, align 8
  %5 = load i32, ptr %i, align 4
  %sub = sub nsw i32 33, %5
  %idxprom1 = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %4, i64 %idxprom1
  %6 = load i8, ptr %arrayidx2, align 1
  %7 = load ptr, ptr %arr.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 %idxprom3
  store i8 %6, ptr %arrayidx4, align 1
  %9 = load i8, ptr %ch, align 1
  %10 = load ptr, ptr %arr.addr, align 8
  %11 = load i32, ptr %i, align 4
  %sub5 = sub nsw i32 33, %11
  %idxprom6 = sext i32 %sub5 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 %idxprom6
  store i8 %9, ptr %arrayidx7, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc41, %for.end
  %13 = load ptr, ptr %arr.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %13, i64 %idxprom9
  %15 = load i8, ptr %arrayidx10, align 1
  %conv = sext i8 %15 to i32
  %cmp11 = icmp ne i32 %conv, 0
  br i1 %cmp11, label %for.body13, label %for.end43

for.body13:                                       ; preds = %for.cond8
  %16 = load ptr, ptr %arr.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds i8, ptr %16, i64 %idxprom14
  %18 = load i8, ptr %arrayidx15, align 1
  store i8 %18, ptr %ch, align 1
  store i32 13, ptr %n, align 4
  %19 = load ptr, ptr %arr.addr, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %19, i64 %idxprom16
  %21 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %21 to i32
  %cmp19 = icmp sge i32 %conv18, 65
  br i1 %cmp19, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body13
  %22 = load ptr, ptr %arr.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %22, i64 %idxprom21
  %24 = load i8, ptr %arrayidx22, align 1
  %conv23 = sext i8 %24 to i32
  %cmp24 = icmp sle i32 %conv23, 90
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %25 = load ptr, ptr %arr.addr, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %25, i64 %idxprom26
  store i8 65, ptr %arrayidx27, align 1
  %27 = load i8, ptr %ch, align 1
  %conv28 = sext i8 %27 to i32
  %sub29 = sub nsw i32 %conv28, 65
  store i32 %sub29, ptr %number, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body13
  %28 = load i8, ptr %ch, align 1
  %conv30 = sext i8 %28 to i32
  %sub31 = sub nsw i32 %conv30, 97
  store i32 %sub31, ptr %number, align 4
  %29 = load ptr, ptr %arr.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %29, i64 %idxprom32
  store i8 97, ptr %arrayidx33, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %31 = load i32, ptr %number, align 4
  %32 = load i32, ptr %n, align 4
  %add = add nsw i32 %31, %32
  %rem = srem i32 %add, 26
  store i32 %rem, ptr %number, align 4
  %33 = load ptr, ptr %arr.addr, align 8
  %34 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %34 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %33, i64 %idxprom34
  %35 = load i8, ptr %arrayidx35, align 1
  %conv36 = sext i8 %35 to i32
  %36 = load i32, ptr %number, align 4
  %add37 = add nsw i32 %conv36, %36
  %conv38 = trunc i32 %add37 to i8
  %37 = load ptr, ptr %arr.addr, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom39 = sext i32 %38 to i64
  %arrayidx40 = getelementptr inbounds i8, ptr %37, i64 %idxprom39
  store i8 %conv38, ptr %arrayidx40, align 1
  br label %for.inc41

for.inc41:                                        ; preds = %if.end
  %39 = load i32, ptr %i, align 4
  %inc42 = add nsw i32 %39, 1
  store i32 %inc42, ptr %i, align 4
  br label %for.cond8, !llvm.loop !7

for.end43:                                        ; preds = %for.cond8
  %40 = load ptr, ptr %arr.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %40)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %mas = alloca [35 x i8], align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %mas, ptr align 1 @__const.main.mas, i64 35, i1 false)
  %arraydecay = getelementptr inbounds [35 x i8], ptr %mas, i64 0, i64 0
  call void @trans(ptr noundef %arraydecay)
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
!7 = distinct !{!7, !6}
