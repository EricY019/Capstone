; ModuleID = './code/051-31560success_006.c'
source_filename = "./code/051-31560success_006.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.A_t = type { [64 x i8], %struct.B_t }
%struct.B_t = type { i32, i32 }

@a0 = global %struct.A_t { [64 x i8] c"FOO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.B_t { i32 4, i32 5 } }, align 4
@a1 = global %struct.A_t { [64 x i8] c"FOO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.B_t { i32 4, i32 5 } }, align 4
@a2 = global %struct.A_t { [64 x i8] c"FOOFAA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.B_t { i32 4, i32 5 } }, align 4
@a3 = global { <{ i8, i8, i8, i8, [60 x i8] }>, %struct.B_t } { <{ i8, i8, i8, i8, [60 x i8] }> <{ i8 70, i8 79, i8 79, i8 65, [60 x i8] zeroinitializer }>, %struct.B_t zeroinitializer }, align 4
@.str = private unnamed_addr constant [4 x i8] c"FOO\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"051-31560success_006.c\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"strcmp(a0.name, \22FOO\22) ==0\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"strcmp(a1.name, \22FOO\22) ==0\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FOOFAA\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"strcmp(a2.name, \22FOOFAA\22) ==0\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"FOOA\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"strcmp(a3.name, \22FOOA\22) ==0\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"a0.m.z0 == 4\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"a1.m.z0 == 4\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"a2.m.z0 == 4\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"a3.m.z0 == 0\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"a0.m.z1 == 5\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"a1.m.z1 == 5\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"a2.m.z1 == 5\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"a3.m.z1 == 0\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @strcmp(ptr noundef @a0, ptr noundef @.str) #3
  %cmp = icmp eq i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 57, ptr noundef @.str.2) #4
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %call1 = call i32 @strcmp(ptr noundef @a1, ptr noundef @.str) #3
  %cmp2 = icmp eq i32 %call1, 0
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 58, ptr noundef @.str.3) #4
  unreachable

1:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %1
  %call11 = call i32 @strcmp(ptr noundef @a2, ptr noundef @.str.4) #3
  %cmp12 = icmp eq i32 %call11, 0
  %lnot14 = xor i1 %cmp12, true
  %lnot.ext15 = zext i1 %lnot14 to i32
  %conv16 = sext i32 %lnot.ext15 to i64
  %tobool17 = icmp ne i64 %conv16, 0
  br i1 %tobool17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end10
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 59, ptr noundef @.str.5) #4
  unreachable

2:                                                ; No predecessors!
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end10
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %2
  %call21 = call i32 @strcmp(ptr noundef @a3, ptr noundef @.str.6) #3
  %cmp22 = icmp eq i32 %call21, 0
  %lnot24 = xor i1 %cmp22, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %conv26 = sext i32 %lnot.ext25 to i64
  %tobool27 = icmp ne i64 %conv26, 0
  br i1 %tobool27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end20
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 60, ptr noundef @.str.7) #4
  unreachable

3:                                                ; No predecessors!
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end20
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %3
  %4 = load i32, ptr getelementptr inbounds (%struct.A_t, ptr @a0, i32 0, i32 1), align 4
  %cmp31 = icmp eq i32 %4, 4
  %lnot33 = xor i1 %cmp31, true
  %lnot.ext34 = zext i1 %lnot33 to i32
  %conv35 = sext i32 %lnot.ext34 to i64
  %tobool36 = icmp ne i64 %conv35, 0
  br i1 %tobool36, label %cond.true37, label %cond.false38

cond.true37:                                      ; preds = %cond.end30
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 63, ptr noundef @.str.8) #4
  unreachable

5:                                                ; No predecessors!
  br label %cond.end39

cond.false38:                                     ; preds = %cond.end30
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false38, %5
  %6 = load i32, ptr getelementptr inbounds (%struct.A_t, ptr @a1, i32 0, i32 1), align 4
  %cmp40 = icmp eq i32 %6, 4
  %lnot42 = xor i1 %cmp40, true
  %lnot.ext43 = zext i1 %lnot42 to i32
  %conv44 = sext i32 %lnot.ext43 to i64
  %tobool45 = icmp ne i64 %conv44, 0
  br i1 %tobool45, label %cond.true46, label %cond.false47

cond.true46:                                      ; preds = %cond.end39
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 64, ptr noundef @.str.9) #4
  unreachable

7:                                                ; No predecessors!
  br label %cond.end48

cond.false47:                                     ; preds = %cond.end39
  br label %cond.end48

cond.end48:                                       ; preds = %cond.false47, %7
  %8 = load i32, ptr getelementptr inbounds (%struct.A_t, ptr @a2, i32 0, i32 1), align 4
  %cmp49 = icmp eq i32 %8, 4
  %lnot51 = xor i1 %cmp49, true
  %lnot.ext52 = zext i1 %lnot51 to i32
  %conv53 = sext i32 %lnot.ext52 to i64
  %tobool54 = icmp ne i64 %conv53, 0
  br i1 %tobool54, label %cond.true55, label %cond.false56

cond.true55:                                      ; preds = %cond.end48
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 65, ptr noundef @.str.10) #4
  unreachable

9:                                                ; No predecessors!
  br label %cond.end57

cond.false56:                                     ; preds = %cond.end48
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false56, %9
  %10 = load i32, ptr getelementptr inbounds (%struct.A_t, ptr @a3, i32 0, i32 1), align 4
  %cmp58 = icmp eq i32 %10, 0
  %lnot60 = xor i1 %cmp58, true
  %lnot.ext61 = zext i1 %lnot60 to i32
  %conv62 = sext i32 %lnot.ext61 to i64
  %tobool63 = icmp ne i64 %conv62, 0
  br i1 %tobool63, label %cond.true64, label %cond.false65

cond.true64:                                      ; preds = %cond.end57
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 66, ptr noundef @.str.11) #4
  unreachable

11:                                               ; No predecessors!
  br label %cond.end66

cond.false65:                                     ; preds = %cond.end57
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false65, %11
  %12 = load i32, ptr getelementptr inbounds (%struct.B_t, ptr getelementptr inbounds (%struct.A_t, ptr @a0, i32 0, i32 1), i32 0, i32 1), align 4
  %cmp67 = icmp eq i32 %12, 5
  %lnot69 = xor i1 %cmp67, true
  %lnot.ext70 = zext i1 %lnot69 to i32
  %conv71 = sext i32 %lnot.ext70 to i64
  %tobool72 = icmp ne i64 %conv71, 0
  br i1 %tobool72, label %cond.true73, label %cond.false74

cond.true73:                                      ; preds = %cond.end66
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 69, ptr noundef @.str.12) #4
  unreachable

13:                                               ; No predecessors!
  br label %cond.end75

cond.false74:                                     ; preds = %cond.end66
  br label %cond.end75

cond.end75:                                       ; preds = %cond.false74, %13
  %14 = load i32, ptr getelementptr inbounds (%struct.B_t, ptr getelementptr inbounds (%struct.A_t, ptr @a1, i32 0, i32 1), i32 0, i32 1), align 4
  %cmp76 = icmp eq i32 %14, 5
  %lnot78 = xor i1 %cmp76, true
  %lnot.ext79 = zext i1 %lnot78 to i32
  %conv80 = sext i32 %lnot.ext79 to i64
  %tobool81 = icmp ne i64 %conv80, 0
  br i1 %tobool81, label %cond.true82, label %cond.false83

cond.true82:                                      ; preds = %cond.end75
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 70, ptr noundef @.str.13) #4
  unreachable

15:                                               ; No predecessors!
  br label %cond.end84

cond.false83:                                     ; preds = %cond.end75
  br label %cond.end84

cond.end84:                                       ; preds = %cond.false83, %15
  %16 = load i32, ptr getelementptr inbounds (%struct.B_t, ptr getelementptr inbounds (%struct.A_t, ptr @a2, i32 0, i32 1), i32 0, i32 1), align 4
  %cmp85 = icmp eq i32 %16, 5
  %lnot87 = xor i1 %cmp85, true
  %lnot.ext88 = zext i1 %lnot87 to i32
  %conv89 = sext i32 %lnot.ext88 to i64
  %tobool90 = icmp ne i64 %conv89, 0
  br i1 %tobool90, label %cond.true91, label %cond.false92

cond.true91:                                      ; preds = %cond.end84
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 71, ptr noundef @.str.14) #4
  unreachable

17:                                               ; No predecessors!
  br label %cond.end93

cond.false92:                                     ; preds = %cond.end84
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false92, %17
  %18 = load i32, ptr getelementptr inbounds (%struct.B_t, ptr getelementptr inbounds (%struct.A_t, ptr @a3, i32 0, i32 1), i32 0, i32 1), align 4
  %cmp94 = icmp eq i32 %18, 0
  %lnot96 = xor i1 %cmp94, true
  %lnot.ext97 = zext i1 %lnot96 to i32
  %conv98 = sext i32 %lnot.ext97 to i64
  %tobool99 = icmp ne i64 %conv98, 0
  br i1 %tobool99, label %cond.true100, label %cond.false101

cond.true100:                                     ; preds = %cond.end93
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 72, ptr noundef @.str.15) #4
  unreachable

19:                                               ; No predecessors!
  br label %cond.end102

cond.false101:                                    ; preds = %cond.end93
  br label %cond.end102

cond.end102:                                      ; preds = %cond.false101, %19
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: cold noreturn
declare void @__assert_rtn(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }
attributes #4 = { cold noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
