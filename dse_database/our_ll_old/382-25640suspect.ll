; ModuleID = './code/382-25640suspect.c'
source_filename = "./code/382-25640suspect.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [8 x i8] c"no arg\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"*%d , %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%d .%s, %c, %p\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%d, %d, %c, %s, %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"suspect Starting\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Hello World\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"b\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Good Morning\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"Good Night\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Life is like a box of chocolates\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @ottawa() #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @quebec(i32 noundef %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @rimouski(i32 noundef %a, float noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca float, align 4
  store i32 %a, ptr %a.addr, align 4
  store float %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %1 = load float, ptr %b.addr, align 4
  %conv = fpext float %1 to double
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %0, double noundef %conv)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @getAnswer(i32 noundef %a, i8 noundef signext %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i8, align 1
  store i32 %a, ptr %a.addr, align 4
  store i8 %b, ptr %b.addr, align 1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret i32 42
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @awesome(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  store ptr %b, ptr %b.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @beauce(i32 noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @montreal(i32 noundef %a, ptr noundef %b, i8 noundef signext %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  store i32 %a, ptr %a.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i8 %c, ptr %c.addr, align 1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sherbrook(i32 noundef %a, ptr noundef %b, i8 noundef signext %c, ptr noundef %d) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca ptr, align 8
  %c.addr = alloca i8, align 1
  %d.addr = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4
  store ptr %b, ptr %b.addr, align 8
  store i8 %c, ptr %c.addr, align 1
  store ptr %d, ptr %d.addr, align 8
  %0 = load i32, ptr %a.addr, align 4
  %1 = load ptr, ptr %b.addr, align 8
  %2 = load i8, ptr %c.addr, align 1
  %conv = sext i8 %2 to i32
  %3 = load ptr, ptr %d.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %0, ptr noundef %1, i32 noundef %conv, ptr noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print(i32 noundef %a, i16 noundef signext %b, i8 noundef signext %c, ptr noundef %d, ptr noundef %e) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i16, align 2
  %c.addr = alloca i8, align 1
  %d.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  store i32 %a, ptr %a.addr, align 4
  store i16 %b, ptr %b.addr, align 2
  store i8 %c, ptr %c.addr, align 1
  store ptr %d, ptr %d.addr, align 8
  store ptr %e, ptr %e.addr, align 8
  %0 = load i32, ptr %a.addr, align 4
  %1 = load i16, ptr %b.addr, align 2
  %conv = sext i16 %1 to i32
  %2 = load i8, ptr %c.addr, align 1
  %conv1 = sext i8 %2 to i32
  %3 = load ptr, ptr %d.addr, align 8
  %4 = load ptr, ptr %e.addr, align 8
  %5 = load i32, ptr %4, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %0, i32 noundef %conv, i32 noundef %conv1, ptr noundef %3, i32 noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %var1 = alloca i32, align 4
  %var2 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca float, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 18, ptr %var1, align 4
  store i32 19, ptr %var2, align 4
  store volatile i32 53, ptr %a, align 4
  store float 0.000000e+00, ptr %b, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %call1 = call i32 @"\01_sleep"(i32 noundef 2)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @ottawa()
  %1 = load volatile i32, ptr %a, align 4
  call void @print(i32 noundef %1, i16 noundef signext 86, i8 noundef signext 99, ptr noundef @.str.7, ptr noundef %var1)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  %2 = load volatile i32, ptr %a, align 4
  call void @quebec(i32 noundef %2)
  %3 = load i32, ptr %i, align 4
  %add = add nsw i32 18, %3
  %call3 = call i32 @getAnswer(i32 noundef %add, i8 noundef signext 97)
  call void @awesome(ptr noundef @.str.9, ptr noundef @.str.10)
  call void @beauce(i32 noundef 24, ptr noundef @.str.11)
  call void @montreal(i32 noundef 24, ptr noundef @.str.11, i8 noundef signext 112)
  call void @sherbrook(i32 noundef 24, ptr noundef @.str.11, i8 noundef signext 112, ptr noundef %var1)
  %4 = load float, ptr %b, align 4
  call void @rimouski(i32 noundef 18, float noundef %4)
  %call4 = call i32 @"\01_sleep"(i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare i32 @"\01_sleep"(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
