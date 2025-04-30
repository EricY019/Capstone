; ModuleID = './code/019-33792bigint.c'
source_filename = "./code/019-33792bigint.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.ctoi = private unnamed_addr constant [5 x i8] c"ctoi\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"019-33792bigint.c\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"isdigit(c)\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"321\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"reverse_string passed\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"reverse_string failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"itoc passed\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"itoc failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"add_digits passed\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"add_digits failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"99999999999999999999999999999999999999999999\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"000000000000000000000000000000000000000000001\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"add_bigint passed\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"add_bigint failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @reverse_string(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  ret ptr @.str
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @ctoi(i8 noundef signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  %0 = load i8, ptr %c.addr, align 1
  %conv = sext i8 %0 to i32
  %call = call i32 @isdigit(i32 noundef %conv) #6
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv1 = sext i32 %lnot.ext to i64
  %tobool2 = icmp ne i64 %conv1, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.ctoi, ptr noundef @.str.1, i32 noundef 46, ptr noundef @.str.2) #7
  unreachable

1:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %1
  %2 = load i8, ptr %c.addr, align 1
  %conv3 = sext i8 %2 to i32
  %sub = sub nsw i32 %conv3, 48
  ret i32 %sub
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isdigit(i32 noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define signext i8 @itoc(i32 noundef %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  ret i8 48
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @add_digits(i8 noundef signext %a, i8 noundef signext %b, i8 noundef signext %c, ptr noundef %total, ptr noundef %carry) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %c.addr = alloca i8, align 1
  %total.addr = alloca ptr, align 8
  %carry.addr = alloca ptr, align 8
  store i8 %a, ptr %a.addr, align 1
  store i8 %b, ptr %b.addr, align 1
  store i8 %c, ptr %c.addr, align 1
  store ptr %total, ptr %total.addr, align 8
  store ptr %carry, ptr %carry.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @add_bigint(ptr noundef %x, ptr noundef %y, i8 noundef signext %carry_in, ptr noundef %z) #0 {
entry:
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %carry_in.addr = alloca i8, align 1
  %z.addr = alloca ptr, align 8
  %total = alloca i8, align 1
  %carry_out = alloca i8, align 1
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dz = alloca i32, align 4
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  store ptr %x, ptr %x.addr, align 8
  store ptr %y, ptr %y.addr, align 8
  store i8 %carry_in, ptr %carry_in.addr, align 1
  store ptr %z, ptr %z.addr, align 8
  store i32 1, ptr %dx, align 4
  store i32 1, ptr %dy, align 4
  store i32 1, ptr %dz, align 4
  %0 = load ptr, ptr %x.addr, align 8
  %1 = load i8, ptr %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 48, ptr %a, align 1
  store i32 0, ptr %dx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %x.addr, align 8
  %3 = load i8, ptr %2, align 1
  store i8 %3, ptr %a, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load ptr, ptr %y.addr, align 8
  %5 = load i8, ptr %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end
  store i8 48, ptr %b, align 1
  store i32 0, ptr %dy, align 4
  br label %if.end7

if.else6:                                         ; preds = %if.end
  %6 = load ptr, ptr %y.addr, align 8
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %b, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  %8 = load i8, ptr %a, align 1
  %9 = load i8, ptr %b, align 1
  %10 = load i8, ptr %carry_in.addr, align 1
  call void @add_digits(i8 noundef signext %8, i8 noundef signext %9, i8 noundef signext %10, ptr noundef %total, ptr noundef %carry_out)
  %11 = load i8, ptr %total, align 1
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 48
  br i1 %cmp9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end7
  %12 = load i8, ptr %carry_out, align 1
  %conv11 = sext i8 %12 to i32
  %cmp12 = icmp eq i32 %conv11, 48
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  %13 = load ptr, ptr %z.addr, align 8
  store i8 0, ptr %13, align 1
  br label %return

if.end15:                                         ; preds = %land.lhs.true, %if.end7
  %14 = load i8, ptr %total, align 1
  %15 = load ptr, ptr %z.addr, align 8
  store i8 %14, ptr %15, align 1
  %16 = load ptr, ptr %x.addr, align 8
  %17 = load i32, ptr %dx, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, ptr %16, i64 %idx.ext
  %18 = load ptr, ptr %y.addr, align 8
  %19 = load i32, ptr %dy, align 4
  %idx.ext16 = sext i32 %19 to i64
  %add.ptr17 = getelementptr inbounds i8, ptr %18, i64 %idx.ext16
  %20 = load i8, ptr %carry_out, align 1
  %21 = load ptr, ptr %z.addr, align 8
  %22 = load i32, ptr %dz, align 4
  %idx.ext18 = sext i32 %22 to i64
  %add.ptr19 = getelementptr inbounds i8, ptr %21, i64 %idx.ext18
  call void @add_bigint(ptr noundef %add.ptr, ptr noundef %add.ptr17, i8 noundef signext %20, ptr noundef %add.ptr19)
  br label %return

return:                                           ; preds = %if.end15, %if.then14
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_bigint(ptr noundef %big) #0 {
entry:
  %big.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  store ptr %big, ptr %big.addr, align 8
  %0 = load ptr, ptr %big.addr, align 8
  %1 = load i8, ptr %0, align 1
  store i8 %1, ptr %c, align 1
  %2 = load i8, ptr %c, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %big.addr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 1
  call void @print_bigint(ptr noundef %add.ptr)
  %4 = load i8, ptr %c, align 1
  %conv2 = sext i8 %4 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %conv2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @make_bigint(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  %0 = load ptr, ptr %s.addr, align 8
  %call = call ptr @reverse_string(ptr noundef %0)
  store ptr %call, ptr %r, align 8
  %1 = load ptr, ptr %r, align 8
  ret ptr %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_reverse_string() #0 {
entry:
  %s = alloca ptr, align 8
  %t = alloca ptr, align 8
  store ptr @.str.4, ptr %s, align 8
  %0 = load ptr, ptr %s, align 8
  %call = call ptr @reverse_string(ptr noundef %0)
  store ptr %call, ptr %t, align 8
  %1 = load ptr, ptr %t, align 8
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.5) #8
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_itoc() #0 {
entry:
  %c = alloca i8, align 1
  %call = call signext i8 @itoc(i32 noundef 3)
  store i8 %call, ptr %c, align 1
  %0 = load i8, ptr %c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 51
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_add_digits() #0 {
entry:
  %total = alloca i8, align 1
  %carry = alloca i8, align 1
  call void @add_digits(i8 noundef signext 55, i8 noundef signext 52, i8 noundef signext 49, ptr noundef %total, ptr noundef %carry)
  %0 = load i8, ptr %total, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 50
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %carry, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 49
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_add_bigint() #0 {
entry:
  %s = alloca ptr, align 8
  %t = alloca ptr, align 8
  %res = alloca ptr, align 8
  %big1 = alloca ptr, align 8
  %big2 = alloca ptr, align 8
  %big3 = alloca ptr, align 8
  store ptr @.str.12, ptr %s, align 8
  store ptr @.str.13, ptr %t, align 8
  store ptr @.str.14, ptr %res, align 8
  %0 = load ptr, ptr %s, align 8
  %call = call ptr @make_bigint(ptr noundef %0)
  store ptr %call, ptr %big1, align 8
  %1 = load ptr, ptr %t, align 8
  %call1 = call ptr @make_bigint(ptr noundef %1)
  store ptr %call1, ptr %big2, align 8
  %call2 = call ptr @malloc(i64 noundef 100) #9
  store ptr %call2, ptr %big3, align 8
  %2 = load ptr, ptr %big1, align 8
  %3 = load ptr, ptr %big2, align 8
  %4 = load ptr, ptr %big3, align 8
  call void @add_bigint(ptr noundef %2, ptr noundef %3, i8 noundef signext 48, ptr noundef %4)
  %5 = load ptr, ptr %big3, align 8
  %6 = load ptr, ptr %res, align 8
  %call3 = call i32 @strcmp(ptr noundef %5, ptr noundef %6) #8
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.15)
  br label %if.end

if.else:                                          ; preds = %entry
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #5

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @test_reverse_string()
  call void @test_itoc()
  call void @test_add_digits()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #5 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { cold noreturn }
attributes #8 = { nounwind }
attributes #9 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
