; ModuleID = 'code/376-6542strncmp.c'
source_filename = "code/376-6542strncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"mstrncmp( 0, \22\22, \22\22) == 0\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"code/376-6542strncmp.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
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
@.str.15 = private unnamed_addr constant [38 x i8] c"mstrncmp( 0, ((void*)0), \22help\22) == 0\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"mstrncmp( 1, ((void*)0), \22help\22) == -1\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"mstrncmp( 1, \22help\22, ((void*)0)) == 1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mstrncmp(i32 %n, i8* %p, i8* %q) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p.addr = alloca i8*, align 8
  %q.addr = alloca i8*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8* %p, i8** %p.addr, align 8
  store i8* %q, i8** %q.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %p.addr, align 8
  %cmp1 = icmp eq i8* %1, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i8*, i8** %q.addr, align 8
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load i8*, i8** %p.addr, align 8
  %cmp3 = icmp eq i8* %3, null
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = load i8*, i8** %q.addr, align 8
  %cmp6 = icmp eq i8* %4, null
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  store i32 1, i32* %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end5
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %if.end8
  %5 = load i32, i32* %n.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %p.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv, 0
  br i1 %cmp9, label %land.lhs.true11, label %if.end16

land.lhs.true11:                                  ; preds = %while.body
  %8 = load i8*, i8** %q.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then15, label %if.end16

if.then15:                                        ; preds = %land.lhs.true11
  store i32 0, i32* %retval, align 4
  br label %return

if.end16:                                         ; preds = %land.lhs.true11, %while.body
  %10 = load i8*, i8** %p.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv17 = sext i8 %11 to i32
  %12 = load i8*, i8** %q.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv18 = sext i8 %13 to i32
  %cmp19 = icmp slt i32 %conv17, %conv18
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  store i32 -1, i32* %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end16
  %14 = load i8*, i8** %p.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv23 = sext i8 %15 to i32
  %16 = load i8*, i8** %q.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv24 = sext i8 %17 to i32
  %cmp25 = icmp sgt i32 %conv23, %conv24
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  store i32 1, i32* %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.end22
  %18 = load i8*, i8** %p.addr, align 8
  %19 = load i8, i8* %18, align 1
  %conv29 = sext i8 %19 to i32
  %20 = load i8*, i8** %q.addr, align 8
  %21 = load i8, i8* %20, align 1
  %conv30 = sext i8 %21 to i32
  %cmp31 = icmp eq i32 %conv29, %conv30
  br i1 %cmp31, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end28
  %22 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %23 = load i8*, i8** %q.addr, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr34, i8** %q.addr, align 8
  %24 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %24, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end28
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then27, %if.then21, %if.then15, %if.then7, %if.then4, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @mstrncmp(i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

0:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %0, %cond.true
  %call1 = call i32 @mstrncmp(i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %cond.true3, label %cond.false4

cond.true3:                                       ; preds = %cond.end
  br label %cond.end5

cond.false4:                                      ; preds = %cond.end
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

1:                                                ; No predecessors!
  br label %cond.end5

cond.end5:                                        ; preds = %1, %cond.true3
  %call6 = call i32 @mstrncmp(i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %cmp7 = icmp eq i32 %call6, 1
  br i1 %cmp7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.end5
  br label %cond.end10

cond.false9:                                      ; preds = %cond.end5
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

2:                                                ; No predecessors!
  br label %cond.end10

cond.end10:                                       ; preds = %2, %cond.true8
  %call11 = call i32 @mstrncmp(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %cmp12 = icmp eq i32 %call11, -1
  br i1 %cmp12, label %cond.true13, label %cond.false14

cond.true13:                                      ; preds = %cond.end10
  br label %cond.end15

cond.false14:                                     ; preds = %cond.end10
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

3:                                                ; No predecessors!
  br label %cond.end15

cond.end15:                                       ; preds = %3, %cond.true13
  %call16 = call i32 @mstrncmp(i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %cond.true18, label %cond.false19

cond.true18:                                      ; preds = %cond.end15
  br label %cond.end20

cond.false19:                                     ; preds = %cond.end15
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

4:                                                ; No predecessors!
  br label %cond.end20

cond.end20:                                       ; preds = %4, %cond.true18
  %call21 = call i32 @mstrncmp(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %cmp22 = icmp eq i32 %call21, -1
  br i1 %cmp22, label %cond.true23, label %cond.false24

cond.true23:                                      ; preds = %cond.end20
  br label %cond.end25

cond.false24:                                     ; preds = %cond.end20
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

5:                                                ; No predecessors!
  br label %cond.end25

cond.end25:                                       ; preds = %5, %cond.true23
  %call26 = call i32 @mstrncmp(i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %cmp27 = icmp eq i32 %call26, 1
  br i1 %cmp27, label %cond.true28, label %cond.false29

cond.true28:                                      ; preds = %cond.end25
  br label %cond.end30

cond.false29:                                     ; preds = %cond.end25
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

6:                                                ; No predecessors!
  br label %cond.end30

cond.end30:                                       ; preds = %6, %cond.true28
  %call31 = call i32 @mstrncmp(i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %cond.true33, label %cond.false34

cond.true33:                                      ; preds = %cond.end30
  br label %cond.end35

cond.false34:                                     ; preds = %cond.end30
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

7:                                                ; No predecessors!
  br label %cond.end35

cond.end35:                                       ; preds = %7, %cond.true33
  %call36 = call i32 @mstrncmp(i32 9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %cond.true38, label %cond.false39

cond.true38:                                      ; preds = %cond.end35
  br label %cond.end40

cond.false39:                                     ; preds = %cond.end35
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

8:                                                ; No predecessors!
  br label %cond.end40

cond.end40:                                       ; preds = %8, %cond.true38
  %call41 = call i32 @mstrncmp(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %cond.true43, label %cond.false44

cond.true43:                                      ; preds = %cond.end40
  br label %cond.end45

cond.false44:                                     ; preds = %cond.end40
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

9:                                                ; No predecessors!
  br label %cond.end45

cond.end45:                                       ; preds = %9, %cond.true43
  %call46 = call i32 @mstrncmp(i32 0, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %cond.end45
  br label %cond.end50

cond.false49:                                     ; preds = %cond.end45
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

10:                                               ; No predecessors!
  br label %cond.end50

cond.end50:                                       ; preds = %10, %cond.true48
  %call51 = call i32 @mstrncmp(i32 1, i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %cmp52 = icmp eq i32 %call51, -1
  br i1 %cmp52, label %cond.true53, label %cond.false54

cond.true53:                                      ; preds = %cond.end50
  br label %cond.end55

cond.false54:                                     ; preds = %cond.end50
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

11:                                               ; No predecessors!
  br label %cond.end55

cond.end55:                                       ; preds = %11, %cond.true53
  %call56 = call i32 @mstrncmp(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* null)
  %cmp57 = icmp eq i32 %call56, 1
  br i1 %cmp57, label %cond.true58, label %cond.false59

cond.true58:                                      ; preds = %cond.end55
  br label %cond.end60

cond.false59:                                     ; preds = %cond.end55
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #2
  unreachable

12:                                               ; No predecessors!
  br label %cond.end60

cond.end60:                                       ; preds = %12, %cond.true58
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
