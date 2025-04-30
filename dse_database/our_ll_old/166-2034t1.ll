; ModuleID = './code/166-2034t1.c'
source_filename = "./code/166-2034t1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.str = private unnamed_addr constant [8 x i8] c"1.1.1.1\00", align 1
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"aa[%d]=%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %str = alloca [8 x i8], align 1
  %aa = alloca [10 x [16 x i8]], align 1
  %p = alloca ptr, align 8
  %buff = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %str, ptr align 1 @__const.main.str, i64 8, i1 false)
  call void @llvm.memset.p0.i64(ptr align 1 %aa, i8 0, i64 160, i1 false)
  %arraydecay = getelementptr inbounds [8 x i8], ptr %str, i64 0, i64 0
  store ptr %arraydecay, ptr %buff, align 8
  %call = call ptr @strsep(ptr noundef %buff, ptr noundef @.str)
  store ptr %call, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x [16 x i8]], ptr %aa, i64 0, i64 %idxprom
  %arraydecay1 = getelementptr inbounds [16 x i8], ptr %arrayidx, i64 0, i64 0
  %2 = load ptr, ptr %p, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [10 x [16 x i8]], ptr %aa, i64 0, i64 %idxprom2
  %arraydecay4 = getelementptr inbounds [16 x i8], ptr %arrayidx3, i64 0, i64 0
  %4 = call i64 @llvm.objectsize.i64.p0(ptr %arraydecay4, i1 false, i1 true, i1 false)
  %call5 = call ptr @__strcpy_chk(ptr noundef %arraydecay1, ptr noundef %2, i64 noundef %4) #6
  %5 = load ptr, ptr %p, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %5)
  %call7 = call ptr @strsep(ptr noundef %buff, ptr noundef @.str)
  store ptr %call7, ptr %p, align 8
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %7 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %7, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [10 x [16 x i8]], ptr %aa, i64 0, i64 %idxprom8
  %arraydecay10 = getelementptr inbounds [16 x i8], ptr %arrayidx9, i64 0, i64 0
  %call11 = call i64 @strlen(ptr noundef %arraydecay10) #6
  %cmp12 = icmp uge i64 %call11, 7
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %10 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [10 x [16 x i8]], ptr %aa, i64 0, i64 %idxprom13
  %arraydecay15 = getelementptr inbounds [16 x i8], ptr %arrayidx14, i64 0, i64 0
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %9, ptr noundef %arraydecay15)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %11, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc32, %for.end
  %12 = load i32, ptr %i, align 4
  %cmp19 = icmp slt i32 %12, 10
  br i1 %cmp19, label %for.body20, label %for.end34

for.body20:                                       ; preds = %for.cond18
  %13 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [10 x [16 x i8]], ptr %aa, i64 0, i64 %idxprom21
  %arraydecay23 = getelementptr inbounds [16 x i8], ptr %arrayidx22, i64 0, i64 0
  %call24 = call i64 @strlen(ptr noundef %arraydecay23) #6
  %cmp25 = icmp uge i64 %call24, 7
  br i1 %cmp25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %for.body20
  %14 = load i32, ptr %i, align 4
  %15 = load i32, ptr %i, align 4
  %idxprom27 = sext i32 %15 to i64
  %arrayidx28 = getelementptr inbounds [10 x [16 x i8]], ptr %aa, i64 0, i64 %idxprom27
  %arraydecay29 = getelementptr inbounds [16 x i8], ptr %arrayidx28, i64 0, i64 0
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %14, ptr noundef %arraydecay29)
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %for.body20
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %16 = load i32, ptr %i, align 4
  %inc33 = add nsw i32 %16, 1
  store i32 %inc33, ptr %i, align 4
  br label %for.cond18, !llvm.loop !8

for.end34:                                        ; preds = %for.cond18
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare ptr @strsep(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #5

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #4

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
