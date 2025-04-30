; ModuleID = './code/376-6542strncmp.c'
source_filename = "./code/376-6542strncmp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"376-6542strncmp.c\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"mstrncmp( 0, \22\22, \22\22) == 0\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"mstrncmp( 1, \22\22, \22\22) == 0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"hel\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"mstrncmp( 4, \22help\22, \22hel\22) == 1\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"mstrncmp( 4, \22hel\22, \22help\22) == -1\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"mstrncmp( 3, \22hello\22, \22help\22) == 0\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"mstrncmp( 4, \22hello\22, \22help\22) == -1\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"mstrncmp( 4, \22help\22, \22hello\22) == 1\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"mstrncmp( 2, \22help\22, \22help\22) == 0\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"mstrncmp( 9, \22help\22, \22help\22) == 0\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"mstrncmp( 0, \22help\22, \22help\22) == 0\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"mstrncmp( 0, NULL, \22help\22) == 0\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"mstrncmp( 1, NULL, \22help\22) == -1\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"mstrncmp( 1, \22help\22, NULL) == 1\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @mstrncmp(i32 noundef %n, ptr noundef %p, ptr noundef %q) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %q.addr = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %q, ptr %q.addr, align 8
  %0 = load i32, ptr %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load ptr, ptr %q.addr, align 8
  %cmp2 = icmp eq ptr %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load ptr, ptr %p.addr, align 8
  %cmp3 = icmp eq ptr %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %q.addr, align 8
  %cmp6 = icmp eq ptr %4, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %if.end8
  %5 = load i32, ptr %n.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %p.addr, align 8
  %7 = load i8, ptr %6, align 1
  %conv = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %land.lhs.true11, label %if.end16

land.lhs.true11:                                  ; preds = %while.body
  %8 = load ptr, ptr %q.addr, align 8
  %9 = load i8, ptr %8, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true11
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true11, %while.body
  %10 = load ptr, ptr %p.addr, align 8
  %11 = load i8, ptr %10, align 1
  %conv17 = sext i8 %11 to i32
  %12 = load ptr, ptr %q.addr, align 8
  %13 = load i8, ptr %12, align 1
  %conv18 = sext i8 %13 to i32
  %cmp19 = icmp slt i32 %conv17, %conv18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  store i32 -1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end16
  %14 = load ptr, ptr %p.addr, align 8
  %15 = load i8, ptr %14, align 1
  %conv23 = sext i8 %15 to i32
  %16 = load ptr, ptr %q.addr, align 8
  %17 = load i8, ptr %16, align 1
  %conv24 = sext i8 %17 to i32
  %cmp25 = icmp sgt i32 %conv23, %conv24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  store i32 1, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end22
  %18 = load ptr, ptr %p.addr, align 8
  %19 = load i8, ptr %18, align 1
  %conv29 = sext i8 %19 to i32
  %20 = load ptr, ptr %q.addr, align 8
  %21 = load i8, ptr %20, align 1
  %conv30 = sext i8 %21 to i32
  %cmp31 = icmp eq i32 %conv29, %conv30
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end28
  %22 = load ptr, ptr %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %p.addr, align 8
  %23 = load ptr, ptr %q.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, ptr %23, i32 1
  store ptr %incdec.ptr34, ptr %q.addr, align 8
  %24 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, ptr %n.addr, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end28
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then27, %if.then21, %if.then15, %if.then7, %if.then4, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 @mstrncmp(i32 noundef 0, ptr noundef @.str, ptr noundef @.str)
  %cmp = icmp eq i32 %call, 0
  %lnot = xor i1 %cmp, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = sext i32 %lnot.ext to i64
  %tobool = icmp ne i64 %conv, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 31, ptr noundef @.str.2) #2
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %0
  %call1 = call i32 @mstrncmp(i32 noundef 1, ptr noundef @.str, ptr noundef @.str)
  %cmp2 = icmp eq i32 %call1, 0
  %lnot4 = xor i1 %cmp2, true
  %lnot.ext5 = zext i1 %lnot4 to i32
  %conv6 = sext i32 %lnot.ext5 to i64
  %tobool7 = icmp ne i64 %conv6, 0
  br i1 %tobool7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 32, ptr noundef @.str.3) #2
  unreachable

1:                                                ; No predecessors!
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false9, %1
  %call11 = call i32 @mstrncmp(i32 noundef 4, ptr noundef @.str.4, ptr noundef @.str.5)
  %cmp12 = icmp eq i32 %call11, 1
  %lnot14 = xor i1 %cmp12, true
  %lnot.ext15 = zext i1 %lnot14 to i32
  %conv16 = sext i32 %lnot.ext15 to i64
  %tobool17 = icmp ne i64 %conv16, 0
  br i1 %tobool17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end10
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 33, ptr noundef @.str.6) #2
  unreachable

2:                                                ; No predecessors!
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end10
  br label %cond.end20

cond.end20:                                       ; preds = %cond.false19, %2
  %call21 = call i32 @mstrncmp(i32 noundef 4, ptr noundef @.str.5, ptr noundef @.str.4)
  %cmp22 = icmp eq i32 %call21, -1
  %lnot24 = xor i1 %cmp22, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %conv26 = sext i32 %lnot.ext25 to i64
  %tobool27 = icmp ne i64 %conv26, 0
  br i1 %tobool27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end20
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 34, ptr noundef @.str.7) #2
  unreachable

3:                                                ; No predecessors!
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end20
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false29, %3
  %call31 = call i32 @mstrncmp(i32 noundef 3, ptr noundef @.str.8, ptr noundef @.str.4)
  %cmp32 = icmp eq i32 %call31, 0
  %lnot34 = xor i1 %cmp32, true
  %lnot.ext35 = zext i1 %lnot34 to i32
  %conv36 = sext i32 %lnot.ext35 to i64
  %tobool37 = icmp ne i64 %conv36, 0
  br i1 %tobool37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %cond.end30
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 35, ptr noundef @.str.9) #2
  unreachable

4:                                                ; No predecessors!
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end30
  br label %cond.end40

cond.end40:                                       ; preds = %cond.false39, %4
  %call41 = call i32 @mstrncmp(i32 noundef 4, ptr noundef @.str.8, ptr noundef @.str.4)
  %cmp42 = icmp eq i32 %call41, -1
  %lnot44 = xor i1 %cmp42, true
  %lnot.ext45 = zext i1 %lnot44 to i32
  %conv46 = sext i32 %lnot.ext45 to i64
  %tobool47 = icmp ne i64 %conv46, 0
  br i1 %tobool47, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %cond.end40
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 36, ptr noundef @.str.10) #2
  unreachable

5:                                                ; No predecessors!
  br label %cond.end50

cond.false49:                                     ; preds = %cond.end40
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %5
  %call51 = call i32 @mstrncmp(i32 noundef 4, ptr noundef @.str.4, ptr noundef @.str.8)
  %cmp52 = icmp eq i32 %call51, 1
  %lnot54 = xor i1 %cmp52, true
  %lnot.ext55 = zext i1 %lnot54 to i32
  %conv56 = sext i32 %lnot.ext55 to i64
  %tobool57 = icmp ne i64 %conv56, 0
  br i1 %tobool57, label %cond.true58, label %cond.false59

cond.true58:                                      ; preds = %cond.end50
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 37, ptr noundef @.str.11) #2
  unreachable

6:                                                ; No predecessors!
  br label %cond.end60

cond.false59:                                     ; preds = %cond.end50
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %6
  %call61 = call i32 @mstrncmp(i32 noundef 2, ptr noundef @.str.4, ptr noundef @.str.4)
  %cmp62 = icmp eq i32 %call61, 0
  %lnot64 = xor i1 %cmp62, true
  %lnot.ext65 = zext i1 %lnot64 to i32
  %conv66 = sext i32 %lnot.ext65 to i64
  %tobool67 = icmp ne i64 %conv66, 0
  br i1 %tobool67, label %cond.true68, label %cond.false69

cond.true68:                                      ; preds = %cond.end60
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 38, ptr noundef @.str.12) #2
  unreachable

7:                                                ; No predecessors!
  br label %cond.end70

cond.false69:                                     ; preds = %cond.end60
  br label %cond.end70

cond.end70:                                       ; preds = %cond.false69, %7
  %call71 = call i32 @mstrncmp(i32 noundef 9, ptr noundef @.str.4, ptr noundef @.str.4)
  %cmp72 = icmp eq i32 %call71, 0
  %lnot74 = xor i1 %cmp72, true
  %lnot.ext75 = zext i1 %lnot74 to i32
  %conv76 = sext i32 %lnot.ext75 to i64
  %tobool77 = icmp ne i64 %conv76, 0
  br i1 %tobool77, label %cond.true78, label %cond.false79

cond.true78:                                      ; preds = %cond.end70
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 39, ptr noundef @.str.13) #2
  unreachable

8:                                                ; No predecessors!
  br label %cond.end80

cond.false79:                                     ; preds = %cond.end70
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false79, %8
  %call81 = call i32 @mstrncmp(i32 noundef 0, ptr noundef @.str.4, ptr noundef @.str.4)
  %cmp82 = icmp eq i32 %call81, 0
  %lnot84 = xor i1 %cmp82, true
  %lnot.ext85 = zext i1 %lnot84 to i32
  %conv86 = sext i32 %lnot.ext85 to i64
  %tobool87 = icmp ne i64 %conv86, 0
  br i1 %tobool87, label %cond.true88, label %cond.false89

cond.true88:                                      ; preds = %cond.end80
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 40, ptr noundef @.str.14) #2
  unreachable

9:                                                ; No predecessors!
  br label %cond.end90

cond.false89:                                     ; preds = %cond.end80
  br label %cond.end90

cond.end90:                                       ; preds = %cond.false89, %9
  %call91 = call i32 @mstrncmp(i32 noundef 0, ptr noundef null, ptr noundef @.str.4)
  %cmp92 = icmp eq i32 %call91, 0
  %lnot94 = xor i1 %cmp92, true
  %lnot.ext95 = zext i1 %lnot94 to i32
  %conv96 = sext i32 %lnot.ext95 to i64
  %tobool97 = icmp ne i64 %conv96, 0
  br i1 %tobool97, label %cond.true98, label %cond.false99

cond.true98:                                      ; preds = %cond.end90
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 41, ptr noundef @.str.15) #2
  unreachable

10:                                               ; No predecessors!
  br label %cond.end100

cond.false99:                                     ; preds = %cond.end90
  br label %cond.end100

cond.end100:                                      ; preds = %cond.false99, %10
  %call101 = call i32 @mstrncmp(i32 noundef 1, ptr noundef null, ptr noundef @.str.4)
  %cmp102 = icmp eq i32 %call101, -1
  %lnot104 = xor i1 %cmp102, true
  %lnot.ext105 = zext i1 %lnot104 to i32
  %conv106 = sext i32 %lnot.ext105 to i64
  %tobool107 = icmp ne i64 %conv106, 0
  br i1 %tobool107, label %cond.true108, label %cond.false109

cond.true108:                                     ; preds = %cond.end100
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 42, ptr noundef @.str.16) #2
  unreachable

11:                                               ; No predecessors!
  br label %cond.end110

cond.false109:                                    ; preds = %cond.end100
  br label %cond.end110

cond.end110:                                      ; preds = %cond.false109, %11
  %call111 = call i32 @mstrncmp(i32 noundef 1, ptr noundef @.str.4, ptr noundef null)
  %cmp112 = icmp eq i32 %call111, 1
  %lnot114 = xor i1 %cmp112, true
  %lnot.ext115 = zext i1 %lnot114 to i32
  %conv116 = sext i32 %lnot.ext115 to i64
  %tobool117 = icmp ne i64 %conv116, 0
  br i1 %tobool117, label %cond.true118, label %cond.false119

cond.true118:                                     ; preds = %cond.end110
  call void @__assert_rtn(ptr noundef @__func__.main, ptr noundef @.str.1, i32 noundef 43, ptr noundef @.str.17) #2
  unreachable

12:                                               ; No predecessors!
  br label %cond.end120

cond.false119:                                    ; preds = %cond.end110
  br label %cond.end120

cond.end120:                                      ; preds = %cond.false119, %12
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
