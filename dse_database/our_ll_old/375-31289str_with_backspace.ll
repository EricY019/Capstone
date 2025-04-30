; ModuleID = './code/375-31289str_with_backspace.c'
source_filename = "./code/375-31289str_with_backspace.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.str1 = private unnamed_addr constant [10 x i8] c"a\00\00\00\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@__const.main.str2 = private unnamed_addr constant [10 x i8] c"aB\00\00\00\00\00\00\00\00", align 1
@__const.main.str3 = private unnamed_addr constant [10 x i8] c"aaaBaBaB\00\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @clean(ptr noundef %str, i32 noundef %len) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store i32 %len, ptr %len.addr, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %entry
  %0 = load i32, ptr %j, align 4
  %1 = load i32, ptr %len.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %str.addr, align 8
  %3 = load i32, ptr %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp sge i32 %conv, 97
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %5 = load ptr, ptr %str.addr, align 8
  %6 = load i32, ptr %j, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 %idxprom3
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp sle i32 %conv5, 122
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %str.addr, align 8
  %9 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %8, i64 %idxprom8
  %10 = load i8, ptr %arrayidx9, align 1
  %11 = load ptr, ptr %str.addr, align 8
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %11, i64 %idxprom10
  store i8 %10, ptr %arrayidx11, align 1
  br label %if.end32

if.else:                                          ; preds = %land.lhs.true, %while.body
  %13 = load ptr, ptr %str.addr, align 8
  %14 = load i32, ptr %j, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds i8, ptr %13, i64 %idxprom12
  %15 = load i8, ptr %arrayidx13, align 1
  %conv14 = sext i8 %15 to i32
  %cmp15 = icmp eq i32 %conv14, 66
  br i1 %cmp15, label %if.then17, label %if.else22

if.then17:                                        ; preds = %if.else
  %16 = load i32, ptr %i, align 4
  %cmp18 = icmp sgt i32 %16, 0
  br i1 %cmp18, label %if.then20, label %if.else21

if.then20:                                        ; preds = %if.then17
  %17 = load i32, ptr %i, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %i, align 4
  br label %if.end

if.else21:                                        ; preds = %if.then17
  br label %if.end

if.end:                                           ; preds = %if.else21, %if.then20
  br label %if.end31

if.else22:                                        ; preds = %if.else
  %18 = load ptr, ptr %str.addr, align 8
  %19 = load i32, ptr %j, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds i8, ptr %18, i64 %idxprom23
  %20 = load i8, ptr %arrayidx24, align 1
  %conv25 = sext i8 %20 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %if.then28, label %if.else29

if.then28:                                        ; preds = %if.else22
  br label %while.end

if.else29:                                        ; preds = %if.else22
  br label %if.end30

if.end30:                                         ; preds = %if.else29
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then
  %21 = load i32, ptr %j, align 4
  %inc33 = add nsw i32 %21, 1
  store i32 %inc33, ptr %j, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %if.then28, %while.cond
  %22 = load ptr, ptr %str.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %22, i64 %idxprom34
  store i8 0, ptr %arrayidx35, align 1
  %24 = load i32, ptr %i, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @same(ptr noundef %str1, i32 noundef %len1, ptr noundef %str2, i32 noundef %len2) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca ptr, align 8
  %len1.addr = alloca i32, align 4
  %str2.addr = alloca ptr, align 8
  %len2.addr = alloca i32, align 4
  store ptr %str1, ptr %str1.addr, align 8
  store i32 %len1, ptr %len1.addr, align 4
  store ptr %str2, ptr %str2.addr, align 8
  store i32 %len2, ptr %len2.addr, align 4
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str1 = alloca [10 x i8], align 1
  %x = alloca i32, align 4
  %str2 = alloca [10 x i8], align 1
  %x2 = alloca i32, align 4
  %str3 = alloca [10 x i8], align 1
  %x3 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str1, ptr align 1 @__const.main.str1, i64 10, i1 false)
  %arraydecay = getelementptr inbounds [10 x i8], ptr %str1, i64 0, i64 0
  %call = call i32 @clean(ptr noundef %arraydecay, i32 noundef 10)
  store i32 %call, ptr %x, align 4
  %arraydecay1 = getelementptr inbounds [10 x i8], ptr %str1, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str2, ptr align 1 @__const.main.str2, i64 10, i1 false)
  %arraydecay3 = getelementptr inbounds [10 x i8], ptr %str2, i64 0, i64 0
  %call4 = call i32 @clean(ptr noundef %arraydecay3, i32 noundef 10)
  store i32 %call4, ptr %x2, align 4
  %arraydecay5 = getelementptr inbounds [10 x i8], ptr %str2, i64 0, i64 0
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay5)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str3, ptr align 1 @__const.main.str3, i64 10, i1 false)
  %arraydecay7 = getelementptr inbounds [10 x i8], ptr %str3, i64 0, i64 0
  %call8 = call i32 @clean(ptr noundef %arraydecay7, i32 noundef 10)
  store i32 %call8, ptr %x3, align 4
  %arraydecay9 = getelementptr inbounds [10 x i8], ptr %str3, i64 0, i64 0
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay9)
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
