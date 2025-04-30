; ModuleID = './code/332-6806lonely_integer.c'
source_filename = "./code/332-6806lonely_integer.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.test_one_element.array = private unnamed_addr constant [1 x i32] [i32 4], align 4
@__const.test_many_elements.array = private unnamed_addr constant [7 x i32] [i32 6, i32 4, i32 9, i32 5, i32 6, i32 9, i32 4], align 4
@__const.test_negative_elements.array = private unnamed_addr constant [7 x i32] [i32 6, i32 -4, i32 -9, i32 -5, i32 6, i32 -9, i32 -4], align 4
@.str = private unnamed_addr constant [26 x i8] c"Empty array test failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"One element test failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Many elements test failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Negative elements test failed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%d tests failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @find(ptr noundef %array, i32 noundef %size) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store i32 0, ptr %result, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %array.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4
  %5 = load i32, ptr %result, align 4
  %xor = xor i32 %5, %4
  store i32 %xor, ptr %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %result, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @test_empty_array() #0 {
entry:
  %call = call i32 @find(ptr noundef null, i32 noundef 0)
  %cmp = icmp eq i32 0, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @test_one_element() #0 {
entry:
  %array = alloca [1 x i32], align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 4 @__const.test_one_element.array, i64 4, i1 false)
  %arraydecay = getelementptr inbounds [1 x i32], ptr %array, i64 0, i64 0
  %call = call i32 @find(ptr noundef %arraydecay, i32 noundef 1)
  %cmp = icmp eq i32 4, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @test_many_elements() #0 {
entry:
  %array = alloca [7 x i32], align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 4 @__const.test_many_elements.array, i64 28, i1 false)
  %arraydecay = getelementptr inbounds [7 x i32], ptr %array, i64 0, i64 0
  %call = call i32 @find(ptr noundef %arraydecay, i32 noundef 7)
  %cmp = icmp eq i32 5, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @test_negative_elements() #0 {
entry:
  %array = alloca [7 x i32], align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 4 @__const.test_negative_elements.array, i64 28, i1 false)
  %arraydecay = getelementptr inbounds [7 x i32], ptr %array, i64 0, i64 0
  %call = call i32 @find(ptr noundef %arraydecay, i32 noundef 7)
  %cmp = icmp eq i32 -5, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %counter = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %counter, align 4
  %call = call i32 @test_empty_array()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %0 = load i32, ptr %counter, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %counter, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @test_one_element()
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %1 = load i32, ptr %counter, align 4
  %inc6 = add nsw i32 %1, 1
  store i32 %inc6, ptr %counter, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end
  %call8 = call i32 @test_many_elements()
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %2 = load i32, ptr %counter, align 4
  %inc12 = add nsw i32 %2, 1
  store i32 %inc12, ptr %counter, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7
  %call14 = call i32 @test_negative_elements()
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end19, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %3 = load i32, ptr %counter, align 4
  %inc18 = add nsw i32 %3, 1
  store i32 %inc18, ptr %counter, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13
  %4 = load i32, ptr %counter, align 4
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %4)
  %5 = load i32, ptr %retval, align 4
  ret i32 %5
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
