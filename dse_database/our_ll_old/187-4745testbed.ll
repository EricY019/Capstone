; ModuleID = './code/187-4745testbed.c'
source_filename = "./code/187-4745testbed.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.test = type { i32, %union.anon }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"Thread %d\0A\00", align 1
@__const.threadFunction.TestVariable = private unnamed_addr constant { i32, [4 x i8], { i8, [7 x i8] } } { i32 2, [4 x i8] undef, { i8, [7 x i8] } { i8 3, [7 x i8] undef } }, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"String: %s\0AInteger: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"%d arguments were passed to this program.\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Argument %d: %s\0A\00", align 1
@__const.main.TestVariable = private unnamed_addr constant { i32, [4 x i8], { i8, [7 x i8] } } { i32 12, [4 x i8] undef, { i8, [7 x i8] } { i8 97, [7 x i8] undef } }, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"Index: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Hello world\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"4! = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"5! = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @threadFunction(ptr noundef %Vargp) #0 {
entry:
  %Vargp.addr = alloca ptr, align 8
  %Id = alloca i32, align 4
  %TestVariable = alloca %struct.test, align 8
  store ptr %Vargp, ptr %Vargp.addr, align 8
  %0 = load ptr, ptr %Vargp.addr, align 8
  %1 = load i32, ptr %0, align 4
  store i32 %1, ptr %Id, align 4
  %2 = load i32, ptr %Id, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %TestVariable, ptr align 8 @__const.threadFunction.TestVariable, i64 16, i1 false)
  %Number = getelementptr inbounds %struct.test, ptr %TestVariable, i32 0, i32 0
  store i32 10, ptr %Number, align 8
  %call1 = call i32 @"\01_sleep"(i32 noundef 2)
  ret ptr null
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare i32 @"\01_sleep"(i32 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @functionToCall(ptr noundef %Arg1, i32 noundef %Arg2) #0 {
entry:
  %Arg1.addr = alloca ptr, align 8
  %Arg2.addr = alloca i32, align 4
  store ptr %Arg1, ptr %Arg1.addr, align 8
  store i32 %Arg2, ptr %Arg2.addr, align 4
  %0 = load ptr, ptr %Arg1.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %Arg1.addr, align 8
  %2 = load i32, ptr %Arg2.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %1, i32 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @factorial(i32 noundef %N) #0 {
entry:
  %retval = alloca i32, align 4
  %N.addr = alloca i32, align 4
  store i32 %N, ptr %N.addr, align 4
  %0 = load i32, ptr %N.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %N.addr, align 4
  %2 = load i32, ptr %N.addr, align 4
  %sub = sub nsw i32 %2, 1
  %call = call i32 @factorial(i32 noundef %sub)
  %mul = mul nsw i32 %1, %call
  store i32 %mul, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %ArgCount, ptr noundef %ArgVal) #0 {
entry:
  %retval = alloca i32, align 4
  %ArgCount.addr = alloca i32, align 4
  %ArgVal.addr = alloca ptr, align 8
  %I = alloca i32, align 4
  %ThreadId = alloca ptr, align 8
  %.compoundliteral = alloca i32, align 4
  %.compoundliteral5 = alloca i32, align 4
  %SingleLetter = alloca i8, align 1
  %TestVariable = alloca %struct.test, align 8
  %Pointer = alloca ptr, align 8
  %TestIndex = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %ArgCount, ptr %ArgCount.addr, align 4
  store ptr %ArgVal, ptr %ArgVal.addr, align 8
  %0 = load i32, ptr %ArgCount.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ArgCount.addr, align 4
  %sub = sub nsw i32 %1, 1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %sub)
  store i32 1, ptr %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %I, align 4
  %3 = load i32, ptr %ArgCount.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %I, align 4
  %5 = load ptr, ptr %ArgVal.addr, align 8
  %6 = load i32, ptr %I, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %5, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %4, ptr noundef %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %I, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %I, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i32 0, ptr %.compoundliteral, align 4
  %call3 = call i32 @pthread_create(ptr noundef %ThreadId, ptr noundef null, ptr noundef @threadFunction, ptr noundef %.compoundliteral)
  %9 = load ptr, ptr %ThreadId, align 8
  %call4 = call i32 @"\01_pthread_join"(ptr noundef %9, ptr noundef null)
  store i32 1, ptr %.compoundliteral5, align 4
  %call6 = call i32 @pthread_create(ptr noundef %ThreadId, ptr noundef null, ptr noundef @threadFunction, ptr noundef %.compoundliteral5)
  %10 = load ptr, ptr %ThreadId, align 8
  %call7 = call i32 @"\01_pthread_join"(ptr noundef %10, ptr noundef null)
  store i8 97, ptr %SingleLetter, align 1
  store i8 122, ptr %SingleLetter, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %TestVariable, ptr align 8 @__const.main.TestVariable, i64 16, i1 false)
  %Number = getelementptr inbounds %struct.test, ptr %TestVariable, i32 0, i32 0
  store i32 3, ptr %Number, align 8
  %11 = getelementptr inbounds %struct.test, ptr %TestVariable, i32 0, i32 1
  store i64 1891898, ptr %11, align 8
  store ptr null, ptr %Pointer, align 8
  store ptr %TestVariable, ptr %Pointer, align 8
  store i32 0, ptr %TestIndex, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc12, %if.end
  %12 = load i32, ptr %TestIndex, align 4
  %cmp9 = icmp slt i32 %12, 10
  br i1 %cmp9, label %for.body10, label %for.end14

for.body10:                                       ; preds = %for.cond8
  %13 = load i32, ptr %TestIndex, align 4
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %13)
  br label %for.inc12

for.inc12:                                        ; preds = %for.body10
  %14 = load i32, ptr %TestIndex, align 4
  %inc13 = add nsw i32 %14, 1
  store i32 %inc13, ptr %TestIndex, align 4
  br label %for.cond8, !llvm.loop !7

for.end14:                                        ; preds = %for.cond8
  call void @functionToCall(ptr noundef @.str.5, i32 noundef 4)
  %call15 = call i32 @factorial(i32 noundef 4)
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i32 noundef %call15)
  %call17 = call i32 @factorial(i32 noundef 5)
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i32 noundef %call17)
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_pthread_join"(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
