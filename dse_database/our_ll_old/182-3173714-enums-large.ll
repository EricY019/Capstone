; ModuleID = './code/182-3173714-enums-large.c'
source_filename = "./code/182-3173714-enums-large.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str = private unnamed_addr constant [26 x i8] c"182-3173714-enums-large.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"y == 3\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"s > 9223372036854775806\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"t == -9223372036854775807\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %x = alloca i64, align 8
  %y = alloca i64, align 8
  %s = alloca i64, align 8
  %t = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %a, align 4
  store i64 -1, ptr %x, align 8
  %0 = load i64, ptr %x, align 8
  %cmp = icmp ugt i64 %0, -4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %a, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %a, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool1 = icmp ne i64 %conv, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 12, ptr noundef @.str.1) #2
  unreachable

2:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %2
  %3 = load i64, ptr %x, align 8
  %add = add i64 %3, 4
  store i64 %add, ptr %y, align 8
  %4 = load i64, ptr %y, align 8
  %cmp2 = icmp eq i64 %4, 3
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 15, ptr noundef @.str.2) #2
  unreachable

5:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %5
  store i64 9223372036854775807, ptr %s, align 8
  %6 = load i64, ptr %s, align 8
  %cmp11 = icmp sgt i64 %6, 9223372036854775806
  %lnot13 = xor i1 %cmp11, true
  %lnot.ext14 = zext i1 %lnot13 to i32
  %conv15 = sext i32 %lnot.ext14 to i64
  %tobool16 = icmp ne i64 %conv15, 0
  br i1 %tobool16, label %cond.true17, label %cond.false18

cond.true17:                                      ; preds = %cond.end10
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 19, ptr noundef @.str.3) #2
  unreachable

7:                                                ; No predecessors!
  br label %cond.end19

cond.false18:                                     ; preds = %cond.end10
  br label %cond.end19

cond.end19:                                       ; preds = %cond.false18, %7
  %8 = load i64, ptr %s, align 8
  %add20 = add nsw i64 %8, 2
  store i64 %add20, ptr %t, align 8
  %9 = load i64, ptr %t, align 8
  %cmp21 = icmp eq i64 %9, -9223372036854775807
  %lnot23 = xor i1 %cmp21, true
  %lnot.ext24 = zext i1 %lnot23 to i32
  %conv25 = sext i32 %lnot.ext24 to i64
  %tobool26 = icmp ne i64 %conv25, 0
  br i1 %tobool26, label %cond.true27, label %cond.false28

cond.true27:                                      ; preds = %cond.end19
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str, i32 noundef 23, ptr noundef @.str.4) #2
  unreachable

10:                                               ; No predecessors!
  br label %cond.end29

cond.false28:                                     ; preds = %cond.end19
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false28, %10
  ret i32 0
}

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
