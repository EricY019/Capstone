; ModuleID = './code/332-18760split2.c'
source_filename = "./code/332-18760split2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.str = private unnamed_addr constant [20 x i8] c"0 1 2 3 4 5 6 7 8 9\00", align 1
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @strsplit(ptr noundef %str, ptr noundef %parts, ptr noundef %delimiter) #0 {
entry:
  %str.addr = alloca ptr, align 8
  %parts.addr = alloca ptr, align 8
  %delimiter.addr = alloca ptr, align 8
  %pch = alloca ptr, align 8
  %i = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  store ptr %parts, ptr %parts.addr, align 8
  store ptr %delimiter, ptr %delimiter.addr, align 8
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr %str.addr, align 8
  %call = call ptr @strdup(ptr noundef %0) #5
  store ptr %call, ptr %tmp, align 8
  %1 = load ptr, ptr %tmp, align 8
  %2 = load ptr, ptr %delimiter.addr, align 8
  %call1 = call ptr @strtok(ptr noundef %1, ptr noundef %2)
  store ptr %call1, ptr %pch, align 8
  %3 = load ptr, ptr %pch, align 8
  %call2 = call ptr @strdup(ptr noundef %3) #5
  %4 = load ptr, ptr %parts.addr, align 8
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  store ptr %call2, ptr %arrayidx, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load ptr, ptr %pch, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %delimiter.addr, align 8
  %call3 = call ptr @strtok(ptr noundef null, ptr noundef %7)
  store ptr %call3, ptr %pch, align 8
  %8 = load ptr, ptr %pch, align 8
  %cmp = icmp eq ptr null, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %9 = load ptr, ptr %pch, align 8
  %call4 = call ptr @strdup(ptr noundef %9) #5
  %10 = load ptr, ptr %parts.addr, align 8
  %11 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, ptr %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %10, i64 %idxprom6
  store ptr %call4, ptr %arrayidx7, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %if.then, %while.cond
  %12 = load ptr, ptr %tmp, align 8
  call void @free(ptr noundef %12)
  %13 = load ptr, ptr %pch, align 8
  call void @free(ptr noundef %13)
  %14 = load i32, ptr %i, align 4
  ret i32 %14
}

; Function Attrs: nounwind
declare ptr @strdup(ptr noundef) #1

declare ptr @strtok(ptr noundef, ptr noundef) #2

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [20 x i8], align 1
  %parts = alloca ptr, align 8
  %size = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str, ptr align 1 @__const.main.str, i64 20, i1 false)
  %call = call ptr @calloc(i64 noundef 10, i64 noundef 8) #6
  store ptr %call, ptr %parts, align 8
  %arraydecay = getelementptr inbounds [20 x i8], ptr %str, i64 0, i64 0
  %0 = load ptr, ptr %parts, align 8
  %call1 = call i32 @strsplit(ptr noundef %arraydecay, ptr noundef %0, ptr noundef @.str)
  %conv = sext i32 %call1 to i64
  store i64 %conv, ptr %size, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i64, ptr %size, align 8
  %conv2 = trunc i64 %2 to i32
  %cmp = icmp slt i32 %1, %conv2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %parts, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 %idxprom
  %5 = load ptr, ptr %arrayidx, align 8
  %call4 = call i32 @atoi(ptr noundef %5)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #4

declare i32 @printf(ptr noundef, ...) #2

declare i32 @atoi(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nounwind }
attributes #6 = { allocsize(0,1) }

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
