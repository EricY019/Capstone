; ModuleID = './code/112-50691-4.c'
source_filename = "./code/112-50691-4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.str1 = private unnamed_addr constant [22 x i8] c"This is a test string\00", align 1
@__const.main.str2 = private unnamed_addr constant [22 x i8] c"string test a is This\00", align 1
@__const.main.str3 = private unnamed_addr constant [15 x i8] c"Not an anagram\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"112-50691-4.c\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"isAnagram(str1, str2) == 1\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"isAnagram(str1, str3) == 0\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @markSeen(ptr noundef %str, ptr noundef %hasSeen) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %hasSeen.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store ptr %hasSeen, ptr %hasSeen.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %length, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %length, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %hasSeen.addr, align 8
  %4 = load ptr, ptr %str.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %idxprom2 = sext i8 %6 to i64
  %arrayidx3 = getelementptr inbounds i32, ptr %3, i64 %idxprom2
  %7 = load i32, ptr %arrayidx3, align 4
  %add = add nsw i32 %7, 1
  store i32 %add, ptr %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @isAnagram(ptr noundef %str1, ptr noundef %str2) #0 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca ptr, align 8
  %str2.addr = alloca ptr, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %hasSeen1 = alloca [256 x i32], align 4
  %hasSeen2 = alloca [256 x i32], align 4
  %i = alloca i32, align 4
  store ptr %str1, ptr %str1.addr, align 8
  store ptr %str2, ptr %str2.addr, align 8
  %0 = load ptr, ptr %str1.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %len1, align 4
  %1 = load ptr, ptr %str2.addr, align 8
  %call1 = call i64 @strlen(ptr noundef %1) #5
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, ptr %len2, align 4
  %2 = load i32, ptr %len1, align 4
  %3 = load i32, ptr %len2, align 4
  %cmp = icmp ne i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 4 %hasSeen1, i8 0, i64 1024, i1 false)
  call void @llvm.memset.p0.i64(ptr align 4 %hasSeen2, i8 0, i64 1024, i1 false)
  %4 = load ptr, ptr %str1.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i32], ptr %hasSeen1, i64 0, i64 0
  call void @markSeen(ptr noundef %4, ptr noundef %arraydecay)
  %5 = load ptr, ptr %str2.addr, align 8
  %arraydecay4 = getelementptr inbounds [256 x i32], ptr %hasSeen2, i64 0, i64 0
  call void @markSeen(ptr noundef %5, ptr noundef %arraydecay4)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %len1, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [256 x i32], ptr %hasSeen1, i64 0, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4
  %10 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %arrayidx8 = getelementptr inbounds [256 x i32], ptr %hasSeen2, i64 0, i64 %idxprom7
  %11 = load i32, ptr %arrayidx8, align 4
  %cmp9 = icmp ne i32 %9, %11
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %for.body
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then11, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str1 = alloca [22 x i8], align 1
  %str2 = alloca [22 x i8], align 1
  %str3 = alloca [15 x i8], align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str1, ptr align 1 @__const.main.str1, i64 22, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str2, ptr align 1 @__const.main.str2, i64 22, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str3, ptr align 1 @__const.main.str3, i64 15, i1 false)
  %arraydecay = getelementptr inbounds [22 x i8], ptr %str1, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [22 x i8], ptr %str2, i64 0, i64 0
  %call = call i32 @isAnagram(ptr noundef %arraydecay, ptr noundef %arraydecay1)
  %cmp = icmp eq i32 %call, 1
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 42, ptr noundef @.str.1) #6
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %arraydecay2 = getelementptr inbounds [22 x i8], ptr %str1, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [15 x i8], ptr %str3, i64 0, i64 0
  %call4 = call i32 @isAnagram(ptr noundef %arraydecay2, ptr noundef %arraydecay3)
  %cmp5 = icmp eq i32 %call4, 0
  %lnot7 = xor i1 %cmp5, true
  %lnot.ext8 = zext i1 %lnot7 to i32
  %conv9 = sext i32 %lnot.ext8 to i64
  %tobool10 = icmp ne i64 %conv9, 0
  br i1 %tobool10, label %cond.true11, label %cond.false12

cond.true11:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 43, ptr noundef @.str.2) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end13

cond.false12:                                     ; preds = %cond.end
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false12, %1
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind }
attributes #6 = { cold noreturn }

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
