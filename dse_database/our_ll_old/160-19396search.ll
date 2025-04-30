; ModuleID = './code/160-19396search.c'
source_filename = "./code/160-19396search.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.str = private unnamed_addr constant [20 x i8] c"Hello World\00\00\00\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"find o at :%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"find o backward forward at :%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"find Wo at :%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"Wo\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"find longest string that have Hel at :%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Hel\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"Wd\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Hello World&Class\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c" &\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"item #%d is %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %str = alloca [20 x i8], align 1
  %array = alloca [20 x ptr], align 8
  %loop = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str, ptr align 1 @__const.main.str, i64 20, i1 false)
  %arraydecay = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %call = call ptr @strchr(ptr noundef %arraydecay, i32 noundef 111) #4
  %arraydecay1 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %sub.ptr.sub)
  %arraydecay3 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %call4 = call ptr @strrchr(ptr noundef %arraydecay3, i32 noundef 111) #4
  %arraydecay5 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %sub.ptr.lhs.cast6 = ptrtoint ptr %call4 to i64
  %sub.ptr.rhs.cast7 = ptrtoint ptr %arraydecay5 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %sub.ptr.sub8)
  %arraydecay10 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %call12 = call i64 @strlen(ptr noundef %arraydecay11) #4
  %call13 = call ptr @memchr(ptr noundef %arraydecay10, i32 noundef 111, i64 noundef %call12) #4
  %arraydecay14 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %sub.ptr.lhs.cast15 = ptrtoint ptr %call13 to i64
  %sub.ptr.rhs.cast16 = ptrtoint ptr %arraydecay14 to i64
  %sub.ptr.sub17 = sub i64 %sub.ptr.lhs.cast15, %sub.ptr.rhs.cast16
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %sub.ptr.sub17)
  %arraydecay19 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %call20 = call ptr @strstr(ptr noundef %arraydecay19, ptr noundef @.str.3) #4
  %arraydecay21 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %sub.ptr.lhs.cast22 = ptrtoint ptr %call20 to i64
  %sub.ptr.rhs.cast23 = ptrtoint ptr %arraydecay21 to i64
  %sub.ptr.sub24 = sub i64 %sub.ptr.lhs.cast22, %sub.ptr.rhs.cast23
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %sub.ptr.sub24)
  %arraydecay26 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %call27 = call i64 @strspn(ptr noundef %arraydecay26, ptr noundef @.str.5) #4
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %call27)
  %call29 = call i64 @strcspn(ptr noundef @.str.6, ptr noundef @.str.7)
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %call29)
  %arraydecay31 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %call32 = call ptr @__strcpy_chk(ptr noundef %arraydecay31, ptr noundef @.str.8, i64 noundef 20) #4
  %arraydecay33 = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %call34 = call ptr @strtok(ptr noundef %arraydecay33, ptr noundef @.str.9)
  %arrayidx = getelementptr inbounds [20 x ptr], ptr %array, i64 0, i64 0
  store ptr %call34, ptr %arrayidx, align 8
  store i32 1, ptr %loop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %loop, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call35 = call ptr @strtok(ptr noundef null, ptr noundef @.str.9)
  %1 = load i32, ptr %loop, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx36 = getelementptr inbounds [20 x ptr], ptr %array, i64 0, i64 %idxprom
  store ptr %call35, ptr %arrayidx36, align 8
  %cmp37 = icmp eq ptr %call35, null
  br i1 %cmp37, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %2 = load i32, ptr %loop, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %loop, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond
  store i32 0, ptr %loop, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc49, %for.end
  %3 = load i32, ptr %loop, align 4
  %cmp39 = icmp slt i32 %3, 10
  br i1 %cmp39, label %for.body40, label %for.end51

for.body40:                                       ; preds = %for.cond38
  %4 = load i32, ptr %loop, align 4
  %idxprom41 = sext i32 %4 to i64
  %arrayidx42 = getelementptr inbounds [20 x ptr], ptr %array, i64 0, i64 %idxprom41
  %5 = load ptr, ptr %arrayidx42, align 8
  %cmp43 = icmp eq ptr %5, null
  br i1 %cmp43, label %if.then44, label %if.end45

if.then44:                                        ; preds = %for.body40
  br label %for.end51

if.end45:                                         ; preds = %for.body40
  %6 = load i32, ptr %loop, align 4
  %7 = load i32, ptr %loop, align 4
  %idxprom46 = sext i32 %7 to i64
  %arrayidx47 = getelementptr inbounds [20 x ptr], ptr %array, i64 0, i64 %idxprom46
  %8 = load ptr, ptr %arrayidx47, align 8
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %6, ptr noundef %8)
  br label %for.inc49

for.inc49:                                        ; preds = %if.end45
  %9 = load i32, ptr %loop, align 4
  %inc50 = add nsw i32 %9, 1
  store i32 %inc50, ptr %loop, align 4
  br label %for.cond38, !llvm.loop !7

for.end51:                                        ; preds = %if.then44, %for.cond38
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare ptr @strrchr(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strstr(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i64 @strspn(ptr noundef, ptr noundef) #3

declare i64 @strcspn(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #3

declare ptr @strtok(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
!7 = distinct !{!7, !6}
