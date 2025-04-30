; ModuleID = './code/129-11278exo3.c'
source_filename = "./code/129-11278exo3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.permAlphaChar.alphabet = private unnamed_addr constant [26 x i8] c"abcdefghijklmnopqrstuvwxyz", align 1
@__const.main.rev_msg = private unnamed_addr constant [17 x i8] c"Bonjour le monde\00", align 1
@__const.main.perm_msg = private unnamed_addr constant [25 x i8] c"Bonjour a tous et toutes\00", align 1
@.str = private unnamed_addr constant [80 x i8] c"La chaine de caracteres a inverser est \22%s\22 et a pour longueur %d caractere(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"La chaine inversee de caracteres est \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"La chaine de caracteres a permuter est \22%s\22 et a pour longueur %d caractere(s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"La chaine permutee de caracteres est \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @swap(ptr noundef %v1, ptr noundef %v2) #0 {
entry:
  %v1.addr = alloca ptr, align 8
  %v2.addr = alloca ptr, align 8
  %tmp = alloca i8, align 1
  store ptr %v1, ptr %v1.addr, align 8
  store ptr %v2, ptr %v2.addr, align 8
  %0 = load ptr, ptr %v1.addr, align 8
  %1 = load ptr, ptr %v2.addr, align 8
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %v1.addr, align 8
  %3 = load i8, ptr %2, align 1
  store i8 %3, ptr %tmp, align 1
  %4 = load ptr, ptr %v2.addr, align 8
  %5 = load i8, ptr %4, align 1
  %6 = load ptr, ptr %v1.addr, align 8
  store i8 %5, ptr %6, align 1
  %7 = load i8, ptr %tmp, align 1
  %8 = load ptr, ptr %v2.addr, align 8
  store i8 %7, ptr %8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @stringLength(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store i32 0, ptr %length, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %str.addr, align 8
  %1 = load i32, ptr %length, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %length, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %length, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %length, align 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverseString(ptr noundef %str) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  %0 = load ptr, ptr %str.addr, align 8
  %call = call i32 @stringLength(ptr noundef %0)
  store i32 %call, ptr %length, align 4
  %1 = load i32, ptr %length, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %length, align 4
  %div = sdiv i32 %3, 2
  %cmp = icmp sge i32 %2, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %str.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %str.addr, align 8
  %7 = load i32, ptr %length, align 4
  %sub1 = sub nsw i32 %7, 1
  %8 = load i32, ptr %i, align 4
  %sub2 = sub nsw i32 %sub1, %8
  %idxprom3 = sext i32 %sub2 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 %idxprom3
  call void @swap(ptr noundef %arrayidx, ptr noundef %arrayidx4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @permAlphaChar(ptr noundef %str, i32 noundef %key) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %key.addr = alloca i32, align 4
  %alphabet = alloca [26 x i8], align 1
  %str_length = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  store i32 %key, ptr %key.addr, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %alphabet, ptr align 1 @__const.permAlphaChar.alphabet, i64 26, i1 false)
  %0 = load ptr, ptr %str.addr, align 8
  %call = call i32 @stringLength(ptr noundef %0)
  store i32 %call, ptr %str_length, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %str_length, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end35

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %3, 26
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load ptr, ptr %str.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %7 = load i32, ptr %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [26 x i8], ptr %alphabet, i64 0, i64 %idxprom4
  %8 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %8 to i32
  %cmp7 = icmp eq i32 %conv, %conv6
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body3
  %9 = load i32, ptr %j, align 4
  %10 = load i32, ptr %key.addr, align 4
  %add = add nsw i32 %9, %10
  %rem = srem i32 %add, 26
  %idxprom9 = sext i32 %rem to i64
  %arrayidx10 = getelementptr inbounds [26 x i8], ptr %alphabet, i64 0, i64 %idxprom9
  %11 = load i8, ptr %arrayidx10, align 1
  %12 = load ptr, ptr %str.addr, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds i8, ptr %12, i64 %idxprom11
  store i8 %11, ptr %arrayidx12, align 1
  br label %for.end

if.else:                                          ; preds = %for.body3
  %14 = load ptr, ptr %str.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds i8, ptr %14, i64 %idxprom13
  %16 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %16 to i32
  %17 = load i32, ptr %j, align 4
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [26 x i8], ptr %alphabet, i64 0, i64 %idxprom16
  %18 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %18 to i32
  %call19 = call i32 @toupper(i32 noundef %conv18) #4
  %cmp20 = icmp eq i32 %conv15, %call19
  br i1 %cmp20, label %if.then22, label %if.end

if.then22:                                        ; preds = %if.else
  %19 = load i32, ptr %j, align 4
  %20 = load i32, ptr %key.addr, align 4
  %add23 = add nsw i32 %19, %20
  %rem24 = srem i32 %add23, 26
  %idxprom25 = sext i32 %rem24 to i64
  %arrayidx26 = getelementptr inbounds [26 x i8], ptr %alphabet, i64 0, i64 %idxprom25
  %21 = load i8, ptr %arrayidx26, align 1
  %conv27 = sext i8 %21 to i32
  %call28 = call i32 @toupper(i32 noundef %conv27) #4
  %conv29 = trunc i32 %call28 to i8
  %22 = load ptr, ptr %str.addr, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds i8, ptr %22, i64 %idxprom30
  store i8 %conv29, ptr %arrayidx31, align 1
  br label %for.end

if.end:                                           ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %24 = load i32, ptr %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !8

for.end:                                          ; preds = %if.then22, %if.then, %for.cond1
  br label %for.inc33

for.inc33:                                        ; preds = %for.end
  %25 = load i32, ptr %i, align 4
  %inc34 = add nsw i32 %25, 1
  store i32 %inc34, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end35:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %rev_msg = alloca [17 x i8], align 1
  %rev_length = alloca i32, align 4
  %perm_msg = alloca [25 x i8], align 1
  %perm_length = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rev_msg, ptr align 1 @__const.main.rev_msg, i64 17, i1 false)
  %arraydecay = getelementptr inbounds [17 x i8], ptr %rev_msg, i64 0, i64 0
  %call = call i32 @stringLength(ptr noundef %arraydecay)
  store i32 %call, ptr %rev_length, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %perm_msg, ptr align 1 @__const.main.perm_msg, i64 25, i1 false)
  %arraydecay1 = getelementptr inbounds [25 x i8], ptr %perm_msg, i64 0, i64 0
  %call2 = call i32 @stringLength(ptr noundef %arraydecay1)
  store i32 %call2, ptr %perm_length, align 4
  %arraydecay3 = getelementptr inbounds [17 x i8], ptr %rev_msg, i64 0, i64 0
  %0 = load i32, ptr %rev_length, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay3, i32 noundef %0)
  %arraydecay5 = getelementptr inbounds [17 x i8], ptr %rev_msg, i64 0, i64 0
  call void @reverseString(ptr noundef %arraydecay5)
  %arraydecay6 = getelementptr inbounds [17 x i8], ptr %rev_msg, i64 0, i64 0
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay6)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %arraydecay9 = getelementptr inbounds [25 x i8], ptr %perm_msg, i64 0, i64 0
  %1 = load i32, ptr %perm_length, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arraydecay9, i32 noundef %1)
  %arraydecay11 = getelementptr inbounds [25 x i8], ptr %perm_msg, i64 0, i64 0
  call void @permAlphaChar(ptr noundef %arraydecay11, i32 noundef 13)
  %arraydecay12 = getelementptr inbounds [25 x i8], ptr %perm_msg, i64 0, i64 0
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %arraydecay12)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
