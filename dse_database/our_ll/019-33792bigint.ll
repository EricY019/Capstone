; ModuleID = 'code/019-33792bigint.c'
source_filename = "code/019-33792bigint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"((*__ctype_b_loc ())[(int) ((c))] & (unsigned short int) _ISdigit)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"code/019-33792bigint.c\00", align 1
@__PRETTY_FUNCTION__.ctoi = private unnamed_addr constant [15 x i8] c"int ctoi(char)\00", align 1
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @reverse_string(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctoi(i8 signext %c) #0 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %call = call i16** @__ctype_b_loc() #6
  %0 = load i16*, i16** %call, align 8
  %1 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %1 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, i16* %0, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv1 = zext i16 %2 to i32
  %and = and i32 %conv1, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.ctoi, i64 0, i64 0)) #7
  unreachable

3:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %3, %cond.true
  %4 = load i8, i8* %c.addr, align 1
  %conv2 = sext i8 %4 to i32
  %sub = sub nsw i32 %conv2, 48
  ret i32 %sub
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @itoc(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  ret i8 48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_digits(i8 signext %a, i8 signext %b, i8 signext %c, i8* %total, i8* %carry) #0 {
entry:
  %a.addr = alloca i8, align 1
  %b.addr = alloca i8, align 1
  %c.addr = alloca i8, align 1
  %total.addr = alloca i8*, align 8
  %carry.addr = alloca i8*, align 8
  store i8 %a, i8* %a.addr, align 1
  store i8 %b, i8* %b.addr, align 1
  store i8 %c, i8* %c.addr, align 1
  store i8* %total, i8** %total.addr, align 8
  store i8* %carry, i8** %carry.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_bigint(i8* %x, i8* %y, i8 signext %carry_in, i8* %z) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %carry_in.addr = alloca i8, align 1
  %z.addr = alloca i8*, align 8
  %total = alloca i8, align 1
  %carry_out = alloca i8, align 1
  %dx = alloca i32, align 4
  %dy = alloca i32, align 4
  %dz = alloca i32, align 4
  %a = alloca i8, align 1
  %b = alloca i8, align 1
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  store i8 %carry_in, i8* %carry_in.addr, align 1
  store i8* %z, i8** %z.addr, align 8
  store i32 1, i32* %dx, align 4
  store i32 1, i32* %dy, align 4
  store i32 1, i32* %dz, align 4
  %0 = load i8*, i8** %x.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 48, i8* %a, align 1
  store i32 0, i32* %dx, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %x.addr, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %a, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %y.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv2 = sext i8 %5 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.end
  store i8 48, i8* %b, align 1
  store i32 0, i32* %dy, align 4
  br label %if.end7

if.else6:                                         ; preds = %if.end
  %6 = load i8*, i8** %y.addr, align 8
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %b, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  %8 = load i8, i8* %a, align 1
  %9 = load i8, i8* %b, align 1
  %10 = load i8, i8* %carry_in.addr, align 1
  call void @add_digits(i8 signext %8, i8 signext %9, i8 signext %10, i8* %total, i8* %carry_out)
  %11 = load i8, i8* %total, align 1
  %conv8 = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv8, 48
  br i1 %cmp9, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.end7
  %12 = load i8, i8* %carry_out, align 1
  %conv11 = sext i8 %12 to i32
  %cmp12 = icmp eq i32 %conv11, 48
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %z.addr, align 8
  store i8 0, i8* %13, align 1
  br label %return

if.end15:                                         ; preds = %land.lhs.true, %if.end7
  %14 = load i8, i8* %total, align 1
  %15 = load i8*, i8** %z.addr, align 8
  store i8 %14, i8* %15, align 1
  %16 = load i8*, i8** %x.addr, align 8
  %17 = load i32, i32* %dx, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 %idx.ext
  %18 = load i8*, i8** %y.addr, align 8
  %19 = load i32, i32* %dy, align 4
  %idx.ext16 = sext i32 %19 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %18, i64 %idx.ext16
  %20 = load i8, i8* %carry_out, align 1
  %21 = load i8*, i8** %z.addr, align 8
  %22 = load i32, i32* %dz, align 4
  %idx.ext18 = sext i32 %22 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %21, i64 %idx.ext18
  call void @add_bigint(i8* %add.ptr, i8* %add.ptr17, i8 signext %20, i8* %add.ptr19)
  br label %return

return:                                           ; preds = %if.end15, %if.then14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_bigint(i8* %big) #0 {
entry:
  %big.addr = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %big, i8** %big.addr, align 8
  %0 = load i8*, i8** %big.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %2 = load i8, i8* %c, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %big.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 1
  call void @print_bigint(i8* %add.ptr)
  %4 = load i8, i8* %c, align 1
  %conv2 = sext i8 %4 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %conv2)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @make_bigint(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %r = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i8* @reverse_string(i8* %0)
  store i8* %call, i8** %r, align 8
  %1 = load i8*, i8** %r, align 8
  ret i8* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reverse_string() #0 {
entry:
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %s, align 8
  %0 = load i8*, i8** %s, align 8
  %call = call i8* @reverse_string(i8* %0)
  store i8* %call, i8** %t, align 8
  %1 = load i8*, i8** %t, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #8
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_itoc() #0 {
entry:
  %c = alloca i8, align 1
  %call = call signext i8 @itoc(i32 3)
  store i8 %call, i8* %c, align 1
  %0 = load i8, i8* %c, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 51
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_add_digits() #0 {
entry:
  %total = alloca i8, align 1
  %carry = alloca i8, align 1
  call void @add_digits(i8 signext 55, i8 signext 52, i8 signext 49, i8* %total, i8* %carry)
  %0 = load i8, i8* %total, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 50
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %carry, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 49
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_add_bigint() #0 {
entry:
  %s = alloca i8*, align 8
  %t = alloca i8*, align 8
  %res = alloca i8*, align 8
  %big1 = alloca i8*, align 8
  %big2 = alloca i8*, align 8
  %big3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8** %s, align 8
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i8** %t, align 8
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i8** %res, align 8
  %0 = load i8*, i8** %s, align 8
  %call = call i8* @make_bigint(i8* %0)
  store i8* %call, i8** %big1, align 8
  %1 = load i8*, i8** %t, align 8
  %call1 = call i8* @make_bigint(i8* %1)
  store i8* %call1, i8** %big2, align 8
  %call2 = call noalias align 16 i8* @malloc(i64 100) #9
  store i8* %call2, i8** %big3, align 8
  %2 = load i8*, i8** %big1, align 8
  %3 = load i8*, i8** %big2, align 8
  %4 = load i8*, i8** %big3, align 8
  call void @add_bigint(i8* %2, i8* %3, i8 signext 48, i8* %4)
  %5 = load i8*, i8** %big3, align 8
  %6 = load i8*, i8** %res, align 8
  %call3 = call i32 @strcmp(i8* %5, i8* %6) #8
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @test_reverse_string()
  call void @test_itoc()
  call void @test_add_digits()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
