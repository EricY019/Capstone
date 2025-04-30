; ModuleID = './code/044-245260X0073.c'
source_filename = "./code/044-245260X0073.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.s1 = private unnamed_addr constant [29 x i8] c"djfaks32132fjdksa1321fei,sjd\00", align 1
@.str = private unnamed_addr constant [26 x i8] c"%s\E9\87\8D\E5\A4\8D\E8\BE\93\E5\87\BA5\E6\AC\A1\E4\B9\8B\E5\90\8E:\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s\E5\80\92\E5\BA\8F\E8\BE\93\E5\87\BA:\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s\E5\8F\8D\E8\BD\AC\E4\B9\8B\E5\90\8E:\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s\E5\88\A0\E9\99\A4\E6\95\B0\E5\AD\97\E4\B9\8B\E5\90\8E:\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s1 = alloca [29 x i8], align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %s1, ptr align 1 @__const.main.s1, i64 29, i1 false)
  %arraydecay = getelementptr inbounds [29 x i8], ptr %s1, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay)
  %arraydecay1 = getelementptr inbounds [29 x i8], ptr %s1, i64 0, i64 0
  call void @put_stringn(ptr noundef %arraydecay1, i32 noundef 5)
  %call2 = call i32 @putchar(i32 noundef 10)
  %arraydecay3 = getelementptr inbounds [29 x i8], ptr %s1, i64 0, i64 0
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay3)
  %arraydecay5 = getelementptr inbounds [29 x i8], ptr %s1, i64 0, i64 0
  call void @put_stringr(ptr noundef %arraydecay5)
  %call6 = call i32 @putchar(i32 noundef 10)
  %arraydecay7 = getelementptr inbounds [29 x i8], ptr %s1, i64 0, i64 0
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %arraydecay7)
  %arraydecay9 = getelementptr inbounds [29 x i8], ptr %s1, i64 0, i64 0
  call void @rev_string(ptr noundef %arraydecay9)
  %arraydecay10 = getelementptr inbounds [29 x i8], ptr %s1, i64 0, i64 0
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arraydecay10)
  %call12 = call i32 @putchar(i32 noundef 10)
  %arraydecay13 = getelementptr inbounds [29 x i8], ptr %s1, i64 0, i64 0
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %arraydecay13)
  %arraydecay15 = getelementptr inbounds [29 x i8], ptr %s1, i64 0, i64 0
  call void @del_digit(ptr noundef %arraydecay15)
  %arraydecay16 = getelementptr inbounds [29 x i8], ptr %s1, i64 0, i64 0
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arraydecay16)
  %call18 = call i32 @putchar(i32 noundef 10)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @put_stringn(ptr noundef %s, i32 noundef %n) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load ptr, ptr %s.addr, align 8
  %3 = load i32, ptr %j, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 %idxprom
  %4 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %s.addr, align 8
  %6 = load i32, ptr %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %5, i64 %idxprom1
  %7 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %7 to i32
  %call = call i32 @putchar(i32 noundef %conv)
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %8 = load i32, ptr %i, align 4
  %inc3 = add nsw i32 %8, 1
  store i32 %inc3, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @putchar(i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @put_stringr(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i32 @str_length(ptr noundef %0)
  store i32 %call, ptr %len, align 4
  %1 = load i32, ptr %len, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %s.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %call1 = call i32 @putchar(i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @rev_string(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i32 @str_length(ptr noundef %0)
  store i32 %call, ptr %len, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %len, align 4
  %div = sdiv i32 %2, 2
  %cmp = icmp slt i32 %1, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %s.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %5 to i32
  store i32 %conv, ptr %t, align 4
  %6 = load ptr, ptr %s.addr, align 8
  %7 = load i32, ptr %len, align 4
  %8 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %7, %8
  %sub1 = sub nsw i32 %sub, 1
  %idxprom2 = sext i32 %sub1 to i64
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 %idxprom2
  %9 = load i8, ptr %arrayidx3, align 1
  %10 = load ptr, ptr %s.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %10, i64 %idxprom4
  store i8 %9, ptr %arrayidx5, align 1
  %12 = load i32, ptr %t, align 4
  %conv6 = trunc i32 %12 to i8
  %13 = load ptr, ptr %s.addr, align 8
  %14 = load i32, ptr %len, align 4
  %15 = load i32, ptr %i, align 4
  %sub7 = sub nsw i32 %14, %15
  %sub8 = sub nsw i32 %sub7, 1
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %13, i64 %idxprom9
  store i8 %conv6, ptr %arrayidx10, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @del_digit(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %s.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %3, i64 %idxprom1
  %5 = load i8, ptr %arrayidx2, align 1
  %conv = sext i8 %5 to i32
  %call = call i32 @isdigit(i32 noundef %conv) #4
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %s.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 %idxprom4
  %8 = load i8, ptr %arrayidx5, align 1
  %9 = load ptr, ptr %s.addr, align 8
  %10 = load i32, ptr %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %9, i64 %idxprom6
  store i8 %8, ptr %arrayidx7, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %11 = load i32, ptr %i, align 4
  %inc8 = add nsw i32 %11, 1
  store i32 %inc8, ptr %i, align 4
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %s.addr, align 8
  %13 = load i32, ptr %j, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %12, i64 %idxprom9
  store i8 0, ptr %arrayidx10, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @str_length(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 0, ptr %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load i32, ptr %len, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %len, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %len, align 4
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %4 = load i32, ptr %len, align 4
  ret i32 %4
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isdigit(i32 noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind willreturn memory(read) }

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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
