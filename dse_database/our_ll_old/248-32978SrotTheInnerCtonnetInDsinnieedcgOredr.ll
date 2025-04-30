; ModuleID = './code/248-32978SrotTheInnerCtonnetInDsinnieedcgOredr.c'
source_filename = "./code/248-32978SrotTheInnerCtonnetInDsinnieedcgOredr.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\0AYour result:     %s\0AExpected result: %s\0A\00", align 1
@__func__.assertString = private unnamed_addr constant [13 x i8] c"assertString\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"248-32978SrotTheInnerCtonnetInDsinnieedcgOredr.c\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"actual[i] == expected[i]\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"sort the inner content in descending order\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"srot the inner ctonnet in dsnnieedcg oredr\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"wait for me\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"wiat for me\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"this kata is easy\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"tihs ktaa is esay\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @cmp_char(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %0 = load ptr, ptr %a.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load ptr, ptr %b.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %a.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load ptr, ptr %b.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp slt i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %8 = load i32, ptr %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @sortTheInnerContent(ptr noundef %words, i32 noundef %length) #0 {
entry:
  %words.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %result = alloca ptr, align 8
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %word = alloca ptr, align 8
  store ptr %words, ptr %words.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  %0 = load i32, ptr %length.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call ptr @malloc(i64 noundef %conv) #7
  store ptr %call, ptr %result, align 8
  %1 = load ptr, ptr %result, align 8
  %2 = load ptr, ptr %result, align 8
  %3 = call i64 @llvm.objectsize.i64.p0(ptr %2, i1 false, i1 true, i1 false)
  %call1 = call ptr @__strcpy_chk(ptr noundef %1, ptr noundef @.str, i64 noundef %3) #8
  %4 = load i32, ptr %length.addr, align 4
  %5 = zext i32 %4 to i64
  %6 = call ptr @llvm.stacksave.p0()
  store ptr %6, ptr %saved_stack, align 8
  %vla = alloca i8, i64 %5, align 1
  store i64 %5, ptr %__vla_expr0, align 8
  %7 = load ptr, ptr %words.addr, align 8
  %8 = call i64 @llvm.objectsize.i64.p0(ptr %vla, i1 false, i1 true, i1 false)
  %call2 = call ptr @__strcpy_chk(ptr noundef %vla, ptr noundef %7, i64 noundef %8) #8
  %9 = load i32, ptr %length.addr, align 4
  %10 = zext i32 %9 to i64
  %vla3 = alloca i8, i64 %10, align 1
  store i64 %10, ptr %__vla_expr1, align 8
  %11 = call i64 @llvm.objectsize.i64.p0(ptr %vla3, i1 false, i1 true, i1 false)
  %call4 = call ptr @__strcpy_chk(ptr noundef %vla3, ptr noundef @.str.1, i64 noundef %11) #8
  %call5 = call ptr @strtok(ptr noundef %vla, ptr noundef @.str.1)
  store ptr %call5, ptr %word, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then, %entry
  %12 = load ptr, ptr %word, align 8
  %cmp = icmp ne ptr %12, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load ptr, ptr %word, align 8
  %call7 = call i64 @strlen(ptr noundef %13) #8
  %cmp8 = icmp ule i64 %call7, 3
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %14 = load ptr, ptr %result, align 8
  %15 = load ptr, ptr %word, align 8
  %16 = load ptr, ptr %result, align 8
  %17 = call i64 @llvm.objectsize.i64.p0(ptr %16, i1 false, i1 true, i1 false)
  %call10 = call ptr @__strcat_chk(ptr noundef %14, ptr noundef %15, i64 noundef %17) #8
  %18 = load ptr, ptr %result, align 8
  %19 = load ptr, ptr %result, align 8
  %20 = call i64 @llvm.objectsize.i64.p0(ptr %19, i1 false, i1 true, i1 false)
  %call11 = call ptr @__strcat_chk(ptr noundef %18, ptr noundef @.str.1, i64 noundef %20) #8
  %call12 = call ptr @strtok(ptr noundef null, ptr noundef @.str.1)
  store ptr %call12, ptr %word, align 8
  br label %while.cond, !llvm.loop !5

if.end:                                           ; preds = %while.body
  %21 = load ptr, ptr %result, align 8
  %22 = load ptr, ptr %word, align 8
  %arrayidx = getelementptr inbounds i8, ptr %22, i64 0
  %23 = load ptr, ptr %result, align 8
  %24 = call i64 @llvm.objectsize.i64.p0(ptr %23, i1 false, i1 true, i1 false)
  %call13 = call ptr @__strncat_chk(ptr noundef %21, ptr noundef %arrayidx, i64 noundef 1, i64 noundef %24) #8
  %25 = load ptr, ptr %word, align 8
  %add.ptr = getelementptr inbounds i8, ptr %25, i64 1
  %26 = call i64 @llvm.objectsize.i64.p0(ptr %vla3, i1 false, i1 true, i1 false)
  %call14 = call ptr @__strcpy_chk(ptr noundef %vla3, ptr noundef %add.ptr, i64 noundef %26) #8
  %call15 = call i64 @strlen(ptr noundef %vla3) #8
  %sub = sub i64 %call15, 1
  %arrayidx16 = getelementptr inbounds i8, ptr %vla3, i64 %sub
  store i8 0, ptr %arrayidx16, align 1
  %call17 = call i64 @strlen(ptr noundef %vla3) #8
  call void @qsort(ptr noundef %vla3, i64 noundef %call17, i64 noundef 1, ptr noundef @cmp_char)
  %27 = load ptr, ptr %result, align 8
  %28 = load ptr, ptr %result, align 8
  %29 = call i64 @llvm.objectsize.i64.p0(ptr %28, i1 false, i1 true, i1 false)
  %call18 = call ptr @__strcat_chk(ptr noundef %27, ptr noundef %vla3, i64 noundef %29) #8
  %30 = load ptr, ptr %result, align 8
  %31 = load ptr, ptr %word, align 8
  %32 = load ptr, ptr %word, align 8
  %call19 = call i64 @strlen(ptr noundef %32) #8
  %sub20 = sub i64 %call19, 1
  %arrayidx21 = getelementptr inbounds i8, ptr %31, i64 %sub20
  %33 = load ptr, ptr %result, align 8
  %34 = call i64 @llvm.objectsize.i64.p0(ptr %33, i1 false, i1 true, i1 false)
  %call22 = call ptr @__strncat_chk(ptr noundef %30, ptr noundef %arrayidx21, i64 noundef 1, i64 noundef %34) #8
  %35 = load ptr, ptr %result, align 8
  %36 = load ptr, ptr %result, align 8
  %37 = call i64 @llvm.objectsize.i64.p0(ptr %36, i1 false, i1 true, i1 false)
  %call23 = call ptr @__strcat_chk(ptr noundef %35, ptr noundef @.str.1, i64 noundef %37) #8
  %call24 = call ptr @strtok(ptr noundef null, ptr noundef @.str.1)
  store ptr %call24, ptr %word, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %38 = load ptr, ptr %result, align 8
  %39 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %39)
  ret ptr %38
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #4

declare ptr @strtok(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @__strcat_chk(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare ptr @__strncat_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #2

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @assertString(ptr noundef %actual, ptr noundef %expected, i32 noundef %length) #0 {
entry:
  %actual.addr = alloca ptr, align 8
  %expected.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %actual, ptr %actual.addr, align 8
  store ptr %expected, ptr %expected.addr, align 8
  store i32 %length, ptr %length.addr, align 4
  %0 = load ptr, ptr %actual.addr, align 8
  %1 = load ptr, ptr %expected.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, ptr noundef %0, ptr noundef %1)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %length.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %actual.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom
  %6 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %7 = load ptr, ptr %expected.addr, align 8
  %8 = load i32, ptr %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i8, ptr %7, i64 %idxprom1
  %9 = load i8, ptr %arrayidx2, align 1
  %conv3 = sext i8 %9 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %actual.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 %idxprom6
  %12 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %12 to i32
  %13 = load ptr, ptr %expected.addr, align 8
  %14 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %13, i64 %idxprom9
  %15 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv8, %conv11
  %lnot = xor i1 %cmp12, true
  %lnot.ext = zext i1 %lnot to i32
  %conv14 = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv14, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  call void @__assert_rtn(ptr noundef @__func__.assertString, ptr noundef @.str.3, i32 noundef 55, ptr noundef @.str.4) #9
  unreachable

16:                                               ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %16
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #5

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %words1 = alloca ptr, align 8
  %expected1 = alloca ptr, align 8
  %words2 = alloca ptr, align 8
  %expected2 = alloca ptr, align 8
  %words3 = alloca ptr, align 8
  %expected3 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr @.str.5, ptr %words1, align 8
  store ptr @.str.6, ptr %expected1, align 8
  %0 = load ptr, ptr %words1, align 8
  %1 = load ptr, ptr %words1, align 8
  %call = call i64 @strlen(ptr noundef %1) #8
  %conv = trunc i64 %call to i32
  %call1 = call ptr @sortTheInnerContent(ptr noundef %0, i32 noundef %conv)
  %2 = load ptr, ptr %expected1, align 8
  %3 = load ptr, ptr %words1, align 8
  %call2 = call i64 @strlen(ptr noundef %3) #8
  %conv3 = trunc i64 %call2 to i32
  call void @assertString(ptr noundef %call1, ptr noundef %2, i32 noundef %conv3)
  store ptr @.str.7, ptr %words2, align 8
  store ptr @.str.8, ptr %expected2, align 8
  %4 = load ptr, ptr %words2, align 8
  %5 = load ptr, ptr %words2, align 8
  %call4 = call i64 @strlen(ptr noundef %5) #8
  %conv5 = trunc i64 %call4 to i32
  %call6 = call ptr @sortTheInnerContent(ptr noundef %4, i32 noundef %conv5)
  %6 = load ptr, ptr %expected2, align 8
  %7 = load ptr, ptr %words2, align 8
  %call7 = call i64 @strlen(ptr noundef %7) #8
  %conv8 = trunc i64 %call7 to i32
  call void @assertString(ptr noundef %call6, ptr noundef %6, i32 noundef %conv8)
  store ptr @.str.9, ptr %words3, align 8
  store ptr @.str.10, ptr %expected3, align 8
  %8 = load ptr, ptr %words3, align 8
  %9 = load ptr, ptr %words3, align 8
  %call9 = call i64 @strlen(ptr noundef %9) #8
  %conv10 = trunc i64 %call9 to i32
  %call11 = call ptr @sortTheInnerContent(ptr noundef %8, i32 noundef %conv10)
  %10 = load ptr, ptr %expected3, align 8
  %11 = load ptr, ptr %words3, align 8
  %call12 = call i64 @strlen(ptr noundef %11) #8
  %conv13 = trunc i64 %call12 to i32
  call void @assertString(ptr noundef %call11, ptr noundef %10, i32 noundef %conv13)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #7 = { allocsize(0) }
attributes #8 = { nounwind }
attributes #9 = { cold noreturn }

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
