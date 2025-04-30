; ModuleID = './code/207-16091palindrome.c'
source_filename = "./code/207-16091palindrome.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %largest = alloca i32, align 4
  %buffer = alloca [8 x i8], align 1
  %reversed = alloca ptr, align 8
  %length = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %largest, align 4
  store i32 999, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %x, align 4
  %cmp = icmp sgt i32 %0, 99
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 999, ptr %y, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %y, align 4
  %cmp2 = icmp sgt i32 %1, 99
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arraydecay = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 0
  %2 = load i32, ptr %x, align 4
  %3 = load i32, ptr %y, align 4
  %mul = mul nsw i32 %2, %3
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 8, ptr noundef @.str, i32 noundef %mul)
  %arraydecay4 = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 0
  %call5 = call i64 @strlen(ptr noundef %arraydecay4) #5
  store i64 %call5, ptr %length, align 8
  %4 = load i64, ptr %length, align 8
  %add = add i64 %4, 1
  %mul6 = mul i64 %add, 1
  %call7 = call ptr @malloc(i64 noundef %mul6) #6
  store ptr %call7, ptr %reversed, align 8
  %5 = load ptr, ptr %reversed, align 8
  %arraydecay8 = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 0
  %6 = load i64, ptr %length, align 8
  %7 = load ptr, ptr %reversed, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %7, i1 false, i1 true, i1 false)
  %call9 = call ptr @__strncpy_chk(ptr noundef %5, ptr noundef %arraydecay8, i64 noundef %6, i64 noundef %8) #5
  %9 = load ptr, ptr %reversed, align 8
  call void @reverse(ptr noundef %9)
  %arraydecay10 = getelementptr inbounds [8 x i8], ptr %buffer, i64 0, i64 0
  %10 = load ptr, ptr %reversed, align 8
  %call11 = call i32 @strcmp(ptr noundef %arraydecay10, ptr noundef %10) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %11 = load i32, ptr %largest, align 4
  %12 = load i32, ptr %x, align 4
  %13 = load i32, ptr %y, align 4
  %mul13 = mul nsw i32 %12, %13
  %cmp14 = icmp sgt i32 %11, %mul13
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %14 = load i32, ptr %largest, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %15 = load i32, ptr %x, align 4
  %16 = load i32, ptr %y, align 4
  %mul15 = mul nsw i32 %15, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %mul15, %cond.false ]
  store i32 %cond, ptr %largest, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body3
  %17 = load ptr, ptr %reversed, align 8
  %18 = load i64, ptr %length, align 8
  %19 = load ptr, ptr %reversed, align 8
  %20 = call i64 @llvm.objectsize.i64.p0(ptr %19, i1 false, i1 true, i1 false)
  %call16 = call ptr @__strncpy_chk(ptr noundef %17, ptr noundef @.str.1, i64 noundef %18, i64 noundef %20) #5
  %21 = load ptr, ptr %reversed, align 8
  call void @free(ptr noundef %21)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, ptr %y, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %y, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %23 = load i32, ptr %x, align 4
  %dec18 = add nsw i32 %23, -1
  store i32 %dec18, ptr %x, align 4
  br label %for.cond, !llvm.loop !7

for.end19:                                        ; preds = %for.cond
  %24 = load i32, ptr %largest, align 4
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %24)
  ret i32 0
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #3

; Function Attrs: nounwind
declare ptr @__strncpy_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverse(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %length = alloca i32, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %length, align 4
  store i32 0, ptr %i, align 4
  %1 = load i32, ptr %length, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %s.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv2 = sext i8 %6 to i32
  store i32 %conv2, ptr %c, align 4
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load i32, ptr %j, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %7, i64 %idxprom3
  %9 = load i8, ptr %arrayidx4, align 1
  %10 = load ptr, ptr %s.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %10, i64 %idxprom5
  store i8 %9, ptr %arrayidx6, align 1
  %12 = load i32, ptr %c, align 4
  %conv7 = trunc i32 %12 to i8
  %13 = load ptr, ptr %s.addr, align 8
  %14 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %13, i64 %idxprom8
  store i8 %conv7, ptr %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  %16 = load i32, ptr %j, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #2

declare void @free(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { allocsize(0) }

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
