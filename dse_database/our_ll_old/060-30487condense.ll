; ModuleID = './code/060-30487condense.c'
source_filename = "./code/060-30487condense.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.s1 = private unnamed_addr constant [5 x i8] c"aaaa\00", align 1
@__const.main.s2 = private unnamed_addr constant [7 x i8] c"aabbaa\00", align 1
@__const.main.s3 = private unnamed_addr constant [11 x i8] c"aaaabbbccd\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"aaaa\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"060-30487condense.c\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"!strcmp(s1,\22aaaa\22)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"!strcmp(s1,\22\22)\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"!strcmp(s2,\22bb\22)\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"!strcmp(s2,\22\22)\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"aaaabbbcc\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"!strcmp(s3,\22aaaabbbcc\22)\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"bbbcc\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"!strcmp(s3,\22bbbcc\22)\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %s1 = alloca [5 x i8], align 1
  %s2 = alloca [7 x i8], align 1
  %s3 = alloca [11 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %s1, ptr align 1 @__const.main.s1, i64 5, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %s2, ptr align 1 @__const.main.s2, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %s3, ptr align 1 @__const.main.s3, i64 11, i1 false)
  %arraydecay = getelementptr inbounds [5 x i8], ptr %s1, i64 0, i64 0
  call void @condense_by_removing(ptr noundef %arraydecay, i8 noundef signext 122)
  %arraydecay1 = getelementptr inbounds [5 x i8], ptr %s1, i64 0, i64 0
  %call = call i32 @strcmp(ptr noundef %arraydecay1, ptr noundef @.str) #5
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot2 to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool3 = icmp ne i64 %conv, 0
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 24, ptr noundef @.str.2) #6
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %arraydecay4 = getelementptr inbounds [5 x i8], ptr %s1, i64 0, i64 0
  call void @condense_by_removing(ptr noundef %arraydecay4, i8 noundef signext 97)
  %arraydecay5 = getelementptr inbounds [5 x i8], ptr %s1, i64 0, i64 0
  %call6 = call i32 @strcmp(ptr noundef %arraydecay5, ptr noundef @.str.3) #5
  %tobool7 = icmp ne i32 %call6, 0
  %lnot8 = xor i1 %tobool7, true
  %lnot10 = xor i1 %lnot8, true
  %lnot.ext11 = zext i1 %lnot10 to i32
  %conv12 = sext i32 %lnot.ext11 to i64
  %tobool13 = icmp ne i64 %conv12, 0
  br i1 %tobool13, label %cond.true14, label %cond.false15

cond.true14:                                      ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 27, ptr noundef @.str.4) #6
  unreachable

1:                                                ; No predecessors!
  br label %cond.end16

cond.false15:                                     ; preds = %cond.end
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false15, %1
  %arraydecay17 = getelementptr inbounds [7 x i8], ptr %s2, i64 0, i64 0
  call void @condense_by_removing(ptr noundef %arraydecay17, i8 noundef signext 97)
  %arraydecay18 = getelementptr inbounds [7 x i8], ptr %s2, i64 0, i64 0
  %call19 = call i32 @strcmp(ptr noundef %arraydecay18, ptr noundef @.str.5) #5
  %tobool20 = icmp ne i32 %call19, 0
  %lnot21 = xor i1 %tobool20, true
  %lnot23 = xor i1 %lnot21, true
  %lnot.ext24 = zext i1 %lnot23 to i32
  %conv25 = sext i32 %lnot.ext24 to i64
  %tobool26 = icmp ne i64 %conv25, 0
  br i1 %tobool26, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %cond.end16
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 30, ptr noundef @.str.6) #6
  unreachable

2:                                                ; No predecessors!
  br label %cond.end29

cond.false28:                                     ; preds = %cond.end16
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %2
  %arraydecay30 = getelementptr inbounds [7 x i8], ptr %s2, i64 0, i64 0
  call void @condense_by_removing(ptr noundef %arraydecay30, i8 noundef signext 98)
  %arraydecay31 = getelementptr inbounds [7 x i8], ptr %s2, i64 0, i64 0
  %call32 = call i32 @strcmp(ptr noundef %arraydecay31, ptr noundef @.str.3) #5
  %tobool33 = icmp ne i32 %call32, 0
  %lnot34 = xor i1 %tobool33, true
  %lnot36 = xor i1 %lnot34, true
  %lnot.ext37 = zext i1 %lnot36 to i32
  %conv38 = sext i32 %lnot.ext37 to i64
  %tobool39 = icmp ne i64 %conv38, 0
  br i1 %tobool39, label %cond.true40, label %cond.false41

cond.true40:                                      ; preds = %cond.end29
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 33, ptr noundef @.str.7) #6
  unreachable

3:                                                ; No predecessors!
  br label %cond.end42

cond.false41:                                     ; preds = %cond.end29
  br label %cond.end42

cond.end42:                                       ; preds = %cond.false41, %3
  %arraydecay43 = getelementptr inbounds [11 x i8], ptr %s3, i64 0, i64 0
  call void @condense_by_removing(ptr noundef %arraydecay43, i8 noundef signext 100)
  %arraydecay44 = getelementptr inbounds [11 x i8], ptr %s3, i64 0, i64 0
  %call45 = call i32 @strcmp(ptr noundef %arraydecay44, ptr noundef @.str.8) #5
  %tobool46 = icmp ne i32 %call45, 0
  %lnot47 = xor i1 %tobool46, true
  %lnot49 = xor i1 %lnot47, true
  %lnot.ext50 = zext i1 %lnot49 to i32
  %conv51 = sext i32 %lnot.ext50 to i64
  %tobool52 = icmp ne i64 %conv51, 0
  br i1 %tobool52, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %cond.end42
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 36, ptr noundef @.str.9) #6
  unreachable

4:                                                ; No predecessors!
  br label %cond.end55

cond.false54:                                     ; preds = %cond.end42
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false54, %4
  %arraydecay56 = getelementptr inbounds [11 x i8], ptr %s3, i64 0, i64 0
  call void @condense_by_removing(ptr noundef %arraydecay56, i8 noundef signext 97)
  %arraydecay57 = getelementptr inbounds [11 x i8], ptr %s3, i64 0, i64 0
  %call58 = call i32 @strcmp(ptr noundef %arraydecay57, ptr noundef @.str.10) #5
  %tobool59 = icmp ne i32 %call58, 0
  %lnot60 = xor i1 %tobool59, true
  %lnot62 = xor i1 %lnot60, true
  %lnot.ext63 = zext i1 %lnot62 to i32
  %conv64 = sext i32 %lnot.ext63 to i64
  %tobool65 = icmp ne i64 %conv64, 0
  br i1 %tobool65, label %cond.true66, label %cond.false67

cond.true66:                                      ; preds = %cond.end55
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 39, ptr noundef @.str.11) #6
  unreachable

5:                                                ; No predecessors!
  br label %cond.end68

cond.false67:                                     ; preds = %cond.end55
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false67, %5
  %call69 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @condense_by_removing(ptr noundef %z_term, i8 noundef signext %remove) #0 {
entry:
  %z_term.addr = alloca ptr, align 8
  %remove.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ch = alloca i8, align 1
  store ptr %z_term, ptr %z_term.addr, align 8
  store i8 %remove, ptr %remove.addr, align 1
  store i32 0, ptr %i, align 4
  store i32 0, ptr %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %z_term.addr, align 8
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  store i8 %2, ptr %ch, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i8, ptr %ch, align 1
  %conv = sext i8 %3 to i32
  %4 = load i8, ptr %remove.addr, align 1
  %conv1 = sext i8 %4 to i32
  %cmp = icmp ne i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i8, ptr %ch, align 1
  %6 = load ptr, ptr %z_term.addr, align 8
  %7 = load i32, ptr %j, align 4
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, ptr %j, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %6, i64 %idxprom4
  store i8 %5, ptr %arrayidx5, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %z_term.addr, align 8
  %9 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %8, i64 %idxprom6
  store i8 0, ptr %arrayidx7, align 1
  ret void
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
