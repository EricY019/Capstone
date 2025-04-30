; ModuleID = './code/358-21915program2.c'
source_filename = "./code/358-21915program2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.demo_strtok.str = private unnamed_addr constant [17 x i8] c"This is a string\00", align 1
@.str = private unnamed_addr constant [10 x i8] c"str = %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"word1 = %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"word2 = %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"word3 = %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"word4 = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"word5 = %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@__const.demo_substr.date = private unnamed_addr constant [15 x i8] c"March 23, 2016\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"date = %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"copy = %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"str1 = %s \0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"str2 = %s \0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"len1 = %d \0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"len2 = %d \0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\0A\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @demo_strtok() #0 {
entry:
  %str = alloca [17 x i8], align 1
  %copy = alloca [50 x i8], align 1
  %word1 = alloca ptr, align 8
  %word2 = alloca ptr, align 8
  %word3 = alloca ptr, align 8
  %word4 = alloca ptr, align 8
  %word5 = alloca ptr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str, ptr align 1 @__const.demo_strtok.str, i64 17, i1 false)
  %arraydecay = getelementptr inbounds [50 x i8], ptr %copy, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [17 x i8], ptr %str, i64 0, i64 0
  %call = call ptr @__strcpy_chk(ptr noundef %arraydecay, ptr noundef %arraydecay1, i64 noundef 50) #4
  %arraydecay2 = getelementptr inbounds [17 x i8], ptr %str, i64 0, i64 0
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay2)
  %arraydecay4 = getelementptr inbounds [50 x i8], ptr %copy, i64 0, i64 0
  %call5 = call ptr @strtok(ptr noundef %arraydecay4, ptr noundef @.str.1)
  store ptr %call5, ptr %word1, align 8
  %call6 = call ptr @strtok(ptr noundef null, ptr noundef @.str.1)
  store ptr %call6, ptr %word2, align 8
  %call7 = call ptr @strtok(ptr noundef null, ptr noundef @.str.1)
  store ptr %call7, ptr %word3, align 8
  %call8 = call ptr @strtok(ptr noundef null, ptr noundef @.str.1)
  store ptr %call8, ptr %word4, align 8
  %call9 = call ptr @strtok(ptr noundef null, ptr noundef @.str.1)
  store ptr %call9, ptr %word5, align 8
  %0 = load ptr, ptr %word1, align 8
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %0)
  %1 = load ptr, ptr %word2, align 8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %1)
  %2 = load ptr, ptr %word3, align 8
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %2)
  %3 = load ptr, ptr %word4, align 8
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %3)
  %4 = load ptr, ptr %word5, align 8
  %cmp = icmp ne ptr %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load ptr, ptr %word5, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ @.str.7, %cond.false ]
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %cond)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @printf(ptr noundef, ...) #3

declare ptr @strtok(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @demo_substr() #0 {
entry:
  %date = alloca [15 x i8], align 1
  %copy = alloca [10 x i8], align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %date, ptr align 1 @__const.demo_substr.date, i64 15, i1 false)
  %arraydecay = getelementptr inbounds [10 x i8], ptr %copy, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [15 x i8], ptr %date, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay1, i64 6
  %call = call ptr @__strncpy_chk(ptr noundef %arraydecay, ptr noundef %add.ptr, i64 noundef 2, i64 noundef 10) #4
  %arrayidx = getelementptr inbounds [10 x i8], ptr %copy, i64 0, i64 2
  store i8 0, ptr %arrayidx, align 1
  %arraydecay2 = getelementptr inbounds [15 x i8], ptr %date, i64 0, i64 0
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, ptr noundef %arraydecay2)
  %arraydecay4 = getelementptr inbounds [10 x i8], ptr %copy, i64 0, i64 0
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %arraydecay4)
  ret void
}

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str2 = alloca [10 x i8], align 1
  %str1 = alloca [10 x i8], align 1
  %i = alloca i32, align 4
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i8], ptr %str1, i64 0, i64 %idxprom
  store i8 97, ptr %arrayidx, align 1
  %2 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [10 x i8], ptr %str2, i64 0, i64 %idxprom1
  store i8 122, ptr %arrayidx2, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds [10 x i8], ptr %str2, i64 0, i64 9
  store i8 0, ptr %arrayidx3, align 1
  %arraydecay = getelementptr inbounds [10 x i8], ptr %str1, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %arraydecay)
  %arraydecay4 = getelementptr inbounds [10 x i8], ptr %str2, i64 0, i64 0
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, ptr noundef %arraydecay4)
  %arraydecay6 = getelementptr inbounds [10 x i8], ptr %str1, i64 0, i64 0
  %call7 = call i64 @strlen(ptr noundef %arraydecay6) #4
  %conv = trunc i64 %call7 to i32
  store i32 %conv, ptr %len1, align 4
  %arraydecay8 = getelementptr inbounds [10 x i8], ptr %str2, i64 0, i64 0
  %call9 = call i64 @strlen(ptr noundef %arraydecay8) #4
  %conv10 = trunc i64 %call9 to i32
  store i32 %conv10, ptr %len2, align 4
  %4 = load i32, ptr %len1, align 4
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i32 noundef %4)
  %5 = load i32, ptr %len2, align 4
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %5)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  call void @demo_substr()
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.14)
  call void @demo_strtok()
  ret i32 0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
