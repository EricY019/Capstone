; ModuleID = './code/090-3740ex4.c'
source_filename = "./code/090-3740ex4.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.first_name = private unnamed_addr constant [6 x i8] c"Jonas\00", align 1
@__const.main.last_name = private unnamed_addr constant [10 x i8] c"Libbrecht\00", align 1
@__const.main.myarray = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 4
@.str = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"jonaslibbrecht\00", align 1
@__const.main.array_of_strings = private unnamed_addr constant [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"I am %d years old.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"I am %f meter tall.\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"I have an initial %c \0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"I have a firstname %s \0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"I have a lastname %s \0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"I have %f amount of power \0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"My whole name is %s %c. %s \0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Amount of arguments %d \0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Argument %d: %s \0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Size of array `myarray` %lo\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"array item %d value %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"an integer is %lo bytes large\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"a double is %lo bytes large\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"this char is %lo bytes large\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"this char type is %lo bytes large\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"amount of strings in `array_of_strings` %lo\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"item %d with value %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"while number %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"my happy number %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"my sad number %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"He chose the letter A!\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"He chose the letter B!\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"He chose poorly, he chose nothing\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %age = alloca i32, align 4
  %height = alloca double, align 8
  %power = alloca float, align 4
  %initial = alloca i8, align 1
  %first_name = alloca [6 x i8], align 1
  %last_name = alloca [10 x i8], align 1
  %myarray = alloca [4 x i32], align 4
  %array_of_strings = alloca [3 x ptr], align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %letter = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 22, ptr %age, align 4
  store double 1.800000e+00, ptr %height, align 8
  store float 0x4002C28F60000000, ptr %power, align 4
  store i8 71, ptr %initial, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %first_name, ptr align 1 @__const.main.first_name, i64 6, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %last_name, ptr align 1 @__const.main.last_name, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %myarray, ptr align 4 @__const.main.myarray, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %array_of_strings, ptr align 8 @__const.main.array_of_strings, i64 24, i1 false)
  %0 = load i32, ptr %age, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %0)
  %1 = load double, ptr %height, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, double noundef %1)
  %2 = load i8, ptr %initial, align 1
  %conv = sext i8 %2 to i32
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %conv)
  %arraydecay = getelementptr inbounds [6 x i8], ptr %first_name, i64 0, i64 0
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %arraydecay)
  %arraydecay4 = getelementptr inbounds [10 x i8], ptr %last_name, i64 0, i64 0
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %arraydecay4)
  %3 = load float, ptr %power, align 4
  %conv6 = fpext float %3 to double
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %conv6)
  %arraydecay8 = getelementptr inbounds [6 x i8], ptr %first_name, i64 0, i64 0
  %4 = load i8, ptr %initial, align 1
  %conv9 = sext i8 %4 to i32
  %arraydecay10 = getelementptr inbounds [10 x i8], ptr %last_name, i64 0, i64 0
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, ptr noundef %arraydecay8, i32 noundef %conv9, ptr noundef %arraydecay10)
  %5 = load i32, ptr %argc.addr, align 4
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i32 noundef %5)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, ptr %i, align 4
  %7 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr %argv.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %9, i64 %idxprom
  %11 = load ptr, ptr %arrayidx, align 8
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %8, ptr noundef %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i64 noundef 4)
  store i32 0, ptr %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc24, %for.end
  %13 = load i32, ptr %j, align 4
  %conv17 = sext i32 %13 to i64
  %cmp18 = icmp ult i64 %conv17, 4
  br i1 %cmp18, label %for.body20, label %for.end26

for.body20:                                       ; preds = %for.cond16
  %14 = load i32, ptr %j, align 4
  %15 = load i32, ptr %j, align 4
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds [4 x i32], ptr %myarray, i64 0, i64 %idxprom21
  %16 = load i32, ptr %arrayidx22, align 4
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i32 noundef %14, i32 noundef %16)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body20
  %17 = load i32, ptr %j, align 4
  %inc25 = add nsw i32 %17, 1
  store i32 %inc25, ptr %j, align 4
  br label %for.cond16, !llvm.loop !7

for.end26:                                        ; preds = %for.cond16
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, i64 noundef 4)
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i64 noundef 8)
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i64 noundef 6)
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i64 noundef 10)
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, i64 noundef 1)
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i64 noundef 3)
  store i32 0, ptr %x, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc41, %for.end26
  %18 = load i32, ptr %x, align 4
  %conv34 = sext i32 %18 to i64
  %cmp35 = icmp ult i64 %conv34, 3
  br i1 %cmp35, label %for.body37, label %for.end43

for.body37:                                       ; preds = %for.cond33
  %19 = load i32, ptr %x, align 4
  %20 = load i32, ptr %x, align 4
  %idxprom38 = sext i32 %20 to i64
  %arrayidx39 = getelementptr inbounds [3 x ptr], ptr %array_of_strings, i64 0, i64 %idxprom38
  %21 = load ptr, ptr %arrayidx39, align 8
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, i32 noundef %19, ptr noundef %21)
  br label %for.inc41

for.inc41:                                        ; preds = %for.body37
  %22 = load i32, ptr %x, align 4
  %inc42 = add nsw i32 %22, 1
  store i32 %inc42, ptr %x, align 4
  br label %for.cond33, !llvm.loop !8

for.end43:                                        ; preds = %for.cond33
  store i32 5, ptr %y, align 4
  store i32 0, ptr %z, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end43
  %23 = load i32, ptr %z, align 4
  %24 = load i32, ptr %y, align 4
  %cmp44 = icmp slt i32 %23, %24
  br i1 %cmp44, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %25 = load i32, ptr %z, align 4
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, i32 noundef %25)
  %26 = load i32, ptr %z, align 4
  %inc47 = add nsw i32 %26, 1
  store i32 %inc47, ptr %z, align 4
  %27 = load i32, ptr %z, align 4
  %cmp48 = icmp eq i32 %27, 4
  br i1 %cmp48, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %28 = load i32, ptr %z, align 4
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, i32 noundef %28)
  br label %if.end

if.else:                                          ; preds = %while.body
  %29 = load i32, ptr %z, align 4
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.22, i32 noundef %29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  store i8 66, ptr %letter, align 1
  %30 = load i8, ptr %letter, align 1
  %conv52 = sext i8 %30 to i32
  switch i32 %conv52, label %sw.default [
    i32 65, label %sw.bb
    i32 66, label %sw.bb54
  ]

sw.bb:                                            ; preds = %while.end
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.23)
  br label %sw.bb54

sw.bb54:                                          ; preds = %while.end, %sw.bb
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.24)
  br label %sw.default

sw.default:                                       ; preds = %while.end, %sw.bb54
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.25)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
