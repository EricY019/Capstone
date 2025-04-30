; ModuleID = 'code/256-31658meteor.c'
source_filename = "code/256-31658meteor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@board = dso_local global i64 -1125899906842624, align 8
@piece_def = dso_local global [10 x [4 x i8]] [[4 x i8] c"\00\00\00\02", [4 x i8] c"\02\00\0A\00", [4 x i8] c"\00\00\02\04", [4 x i8] c"\00\00\04\02", [4 x i8] c"\02\00\0A\03", [4 x i8] c"\00\00\04\00", [4 x i8] c"\00\02\02\0A", [4 x i8] c"\00\02\02\06", [4 x i8] c"\00\02\00\00", [4 x i8] c"\00\00\00\04"], align 16
@pieces = dso_local global [10 x [50 x [12 x i64]]] zeroinitializer, align 16
@piece_counts = dso_local global [10 x [50 x i32]] zeroinitializer, align 16
@next_cell = dso_local global [10 x [50 x [12 x i8]]] zeroinitializer, align 16
@all_rows = dso_local global [32 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F", align 16
@bad_even_rows = dso_local global [32 x [32 x i32]] zeroinitializer, align 16
@bad_odd_rows = dso_local global [32 x [32 x i32]] zeroinitializer, align 16
@bad_even_triple = dso_local global [32768 x i32] zeroinitializer, align 16
@bad_odd_triple = dso_local global [32768 x i32] zeroinitializer, align 16
@avail = dso_local global i16 1023, align 2
@solution_count = dso_local global i32 0, align 4
@max_solutions = dso_local global i32 2100, align 4
@sol_masks = dso_local global [10 x i64] zeroinitializer, align 16
@sol_nums = dso_local global [10 x i8] zeroinitializer, align 1
@solutions = dso_local global [2100 x [50 x i8]] zeroinitializer, align 16
@.str = private unnamed_addr constant [34 x i8] c"%c %c %c %c %c \0A %c %c %c %c %c \0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%d solutions found\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @rotate(i8 signext %dir) #0 {
entry:
  %dir.addr = alloca i8, align 1
  store i8 %dir, i8* %dir.addr, align 1
  %0 = load i8, i8* %dir.addr, align 1
  %conv = sext i8 %0 to i32
  %add = add nsw i32 %conv, 2
  %rem = srem i32 %add, 12
  %conv1 = trunc i32 %rem to i8
  ret i8 %conv1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @flip(i8 signext %dir) #0 {
entry:
  %dir.addr = alloca i8, align 1
  store i8 %dir, i8* %dir.addr, align 1
  %0 = load i8, i8* %dir.addr, align 1
  %conv = sext i8 %0 to i32
  %sub = sub nsw i32 12, %conv
  %rem = srem i32 %sub, 12
  %conv1 = trunc i32 %rem to i8
  ret i8 %conv1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @shift(i8 signext %cell, i8 signext %dir) #0 {
entry:
  %retval = alloca i8, align 1
  %cell.addr = alloca i8, align 1
  %dir.addr = alloca i8, align 1
  store i8 %cell, i8* %cell.addr, align 1
  store i8 %dir, i8* %dir.addr, align 1
  %0 = load i8, i8* %dir.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb11
    i32 3, label %sw.bb24
    i32 4, label %sw.bb28
    i32 5, label %sw.bb41
    i32 6, label %sw.bb54
    i32 7, label %sw.bb57
    i32 8, label %sw.bb70
    i32 9, label %sw.bb83
    i32 10, label %sw.bb87
    i32 11, label %sw.bb100
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8, i8* %cell.addr, align 1
  %conv1 = sext i8 %1 to i32
  %add = add nsw i32 %conv1, 1
  %conv2 = trunc i32 %add to i8
  store i8 %conv2, i8* %retval, align 1
  br label %return

sw.bb3:                                           ; preds = %entry
  %2 = load i8, i8* %cell.addr, align 1
  %conv4 = sext i8 %2 to i32
  %div = sdiv i32 %conv4, 5
  %rem = srem i32 %div, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb3
  %3 = load i8, i8* %cell.addr, align 1
  %conv5 = sext i8 %3 to i32
  %add6 = add nsw i32 %conv5, 7
  %conv7 = trunc i32 %add6 to i8
  store i8 %conv7, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %sw.bb3
  %4 = load i8, i8* %cell.addr, align 1
  %conv8 = sext i8 %4 to i32
  %add9 = add nsw i32 %conv8, 6
  %conv10 = trunc i32 %add9 to i8
  store i8 %conv10, i8* %retval, align 1
  br label %return

sw.bb11:                                          ; preds = %entry
  %5 = load i8, i8* %cell.addr, align 1
  %conv12 = sext i8 %5 to i32
  %div13 = sdiv i32 %conv12, 5
  %rem14 = srem i32 %div13, 2
  %tobool15 = icmp ne i32 %rem14, 0
  br i1 %tobool15, label %if.then16, label %if.else20

if.then16:                                        ; preds = %sw.bb11
  %6 = load i8, i8* %cell.addr, align 1
  %conv17 = sext i8 %6 to i32
  %add18 = add nsw i32 %conv17, 6
  %conv19 = trunc i32 %add18 to i8
  store i8 %conv19, i8* %retval, align 1
  br label %return

if.else20:                                        ; preds = %sw.bb11
  %7 = load i8, i8* %cell.addr, align 1
  %conv21 = sext i8 %7 to i32
  %add22 = add nsw i32 %conv21, 5
  %conv23 = trunc i32 %add22 to i8
  store i8 %conv23, i8* %retval, align 1
  br label %return

sw.bb24:                                          ; preds = %entry
  %8 = load i8, i8* %cell.addr, align 1
  %conv25 = sext i8 %8 to i32
  %add26 = add nsw i32 %conv25, 10
  %conv27 = trunc i32 %add26 to i8
  store i8 %conv27, i8* %retval, align 1
  br label %return

sw.bb28:                                          ; preds = %entry
  %9 = load i8, i8* %cell.addr, align 1
  %conv29 = sext i8 %9 to i32
  %div30 = sdiv i32 %conv29, 5
  %rem31 = srem i32 %div30, 2
  %tobool32 = icmp ne i32 %rem31, 0
  br i1 %tobool32, label %if.then33, label %if.else37

if.then33:                                        ; preds = %sw.bb28
  %10 = load i8, i8* %cell.addr, align 1
  %conv34 = sext i8 %10 to i32
  %add35 = add nsw i32 %conv34, 5
  %conv36 = trunc i32 %add35 to i8
  store i8 %conv36, i8* %retval, align 1
  br label %return

if.else37:                                        ; preds = %sw.bb28
  %11 = load i8, i8* %cell.addr, align 1
  %conv38 = sext i8 %11 to i32
  %add39 = add nsw i32 %conv38, 4
  %conv40 = trunc i32 %add39 to i8
  store i8 %conv40, i8* %retval, align 1
  br label %return

sw.bb41:                                          ; preds = %entry
  %12 = load i8, i8* %cell.addr, align 1
  %conv42 = sext i8 %12 to i32
  %div43 = sdiv i32 %conv42, 5
  %rem44 = srem i32 %div43, 2
  %tobool45 = icmp ne i32 %rem44, 0
  br i1 %tobool45, label %if.then46, label %if.else50

if.then46:                                        ; preds = %sw.bb41
  %13 = load i8, i8* %cell.addr, align 1
  %conv47 = sext i8 %13 to i32
  %add48 = add nsw i32 %conv47, 4
  %conv49 = trunc i32 %add48 to i8
  store i8 %conv49, i8* %retval, align 1
  br label %return

if.else50:                                        ; preds = %sw.bb41
  %14 = load i8, i8* %cell.addr, align 1
  %conv51 = sext i8 %14 to i32
  %add52 = add nsw i32 %conv51, 3
  %conv53 = trunc i32 %add52 to i8
  store i8 %conv53, i8* %retval, align 1
  br label %return

sw.bb54:                                          ; preds = %entry
  %15 = load i8, i8* %cell.addr, align 1
  %conv55 = sext i8 %15 to i32
  %sub = sub nsw i32 %conv55, 1
  %conv56 = trunc i32 %sub to i8
  store i8 %conv56, i8* %retval, align 1
  br label %return

sw.bb57:                                          ; preds = %entry
  %16 = load i8, i8* %cell.addr, align 1
  %conv58 = sext i8 %16 to i32
  %div59 = sdiv i32 %conv58, 5
  %rem60 = srem i32 %div59, 2
  %tobool61 = icmp ne i32 %rem60, 0
  br i1 %tobool61, label %if.then62, label %if.else66

if.then62:                                        ; preds = %sw.bb57
  %17 = load i8, i8* %cell.addr, align 1
  %conv63 = sext i8 %17 to i32
  %sub64 = sub nsw i32 %conv63, 6
  %conv65 = trunc i32 %sub64 to i8
  store i8 %conv65, i8* %retval, align 1
  br label %return

if.else66:                                        ; preds = %sw.bb57
  %18 = load i8, i8* %cell.addr, align 1
  %conv67 = sext i8 %18 to i32
  %sub68 = sub nsw i32 %conv67, 7
  %conv69 = trunc i32 %sub68 to i8
  store i8 %conv69, i8* %retval, align 1
  br label %return

sw.bb70:                                          ; preds = %entry
  %19 = load i8, i8* %cell.addr, align 1
  %conv71 = sext i8 %19 to i32
  %div72 = sdiv i32 %conv71, 5
  %rem73 = srem i32 %div72, 2
  %tobool74 = icmp ne i32 %rem73, 0
  br i1 %tobool74, label %if.then75, label %if.else79

if.then75:                                        ; preds = %sw.bb70
  %20 = load i8, i8* %cell.addr, align 1
  %conv76 = sext i8 %20 to i32
  %sub77 = sub nsw i32 %conv76, 5
  %conv78 = trunc i32 %sub77 to i8
  store i8 %conv78, i8* %retval, align 1
  br label %return

if.else79:                                        ; preds = %sw.bb70
  %21 = load i8, i8* %cell.addr, align 1
  %conv80 = sext i8 %21 to i32
  %sub81 = sub nsw i32 %conv80, 6
  %conv82 = trunc i32 %sub81 to i8
  store i8 %conv82, i8* %retval, align 1
  br label %return

sw.bb83:                                          ; preds = %entry
  %22 = load i8, i8* %cell.addr, align 1
  %conv84 = sext i8 %22 to i32
  %sub85 = sub nsw i32 %conv84, 10
  %conv86 = trunc i32 %sub85 to i8
  store i8 %conv86, i8* %retval, align 1
  br label %return

sw.bb87:                                          ; preds = %entry
  %23 = load i8, i8* %cell.addr, align 1
  %conv88 = sext i8 %23 to i32
  %div89 = sdiv i32 %conv88, 5
  %rem90 = srem i32 %div89, 2
  %tobool91 = icmp ne i32 %rem90, 0
  br i1 %tobool91, label %if.then92, label %if.else96

if.then92:                                        ; preds = %sw.bb87
  %24 = load i8, i8* %cell.addr, align 1
  %conv93 = sext i8 %24 to i32
  %sub94 = sub nsw i32 %conv93, 4
  %conv95 = trunc i32 %sub94 to i8
  store i8 %conv95, i8* %retval, align 1
  br label %return

if.else96:                                        ; preds = %sw.bb87
  %25 = load i8, i8* %cell.addr, align 1
  %conv97 = sext i8 %25 to i32
  %sub98 = sub nsw i32 %conv97, 5
  %conv99 = trunc i32 %sub98 to i8
  store i8 %conv99, i8* %retval, align 1
  br label %return

sw.bb100:                                         ; preds = %entry
  %26 = load i8, i8* %cell.addr, align 1
  %conv101 = sext i8 %26 to i32
  %div102 = sdiv i32 %conv101, 5
  %rem103 = srem i32 %div102, 2
  %tobool104 = icmp ne i32 %rem103, 0
  br i1 %tobool104, label %if.then105, label %if.else109

if.then105:                                       ; preds = %sw.bb100
  %27 = load i8, i8* %cell.addr, align 1
  %conv106 = sext i8 %27 to i32
  %sub107 = sub nsw i32 %conv106, 3
  %conv108 = trunc i32 %sub107 to i8
  store i8 %conv108, i8* %retval, align 1
  br label %return

if.else109:                                       ; preds = %sw.bb100
  %28 = load i8, i8* %cell.addr, align 1
  %conv110 = sext i8 %28 to i32
  %sub111 = sub nsw i32 %conv110, 4
  %conv112 = trunc i32 %sub111 to i8
  store i8 %conv112, i8* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  %29 = load i8, i8* %cell.addr, align 1
  store i8 %29, i8* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %if.else109, %if.then105, %if.else96, %if.then92, %sw.bb83, %if.else79, %if.then75, %if.else66, %if.then62, %sw.bb54, %if.else50, %if.then46, %if.else37, %if.then33, %sw.bb24, %if.else20, %if.then16, %if.else, %if.then, %sw.bb
  %30 = load i8, i8* %retval, align 1
  ret i8 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @out_of_bounds(i8 signext %cell, i8 signext %dir) #0 {
entry:
  %retval = alloca i8, align 1
  %cell.addr = alloca i8, align 1
  %dir.addr = alloca i8, align 1
  %i = alloca i8, align 1
  store i8 %cell, i8* %cell.addr, align 1
  store i8 %dir, i8* %dir.addr, align 1
  %0 = load i8, i8* %dir.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb22
    i32 3, label %sw.bb34
    i32 4, label %sw.bb39
    i32 5, label %sw.bb51
    i32 6, label %sw.bb73
    i32 7, label %sw.bb79
    i32 8, label %sw.bb101
    i32 9, label %sw.bb113
    i32 10, label %sw.bb118
    i32 11, label %sw.bb130
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i8, i8* %cell.addr, align 1
  %conv1 = sext i8 %1 to i32
  %rem = srem i32 %conv1, 5
  %cmp = icmp eq i32 %rem, 4
  %conv2 = zext i1 %cmp to i32
  %conv3 = trunc i32 %conv2 to i8
  store i8 %conv3, i8* %retval, align 1
  br label %return

sw.bb4:                                           ; preds = %entry
  %2 = load i8, i8* %cell.addr, align 1
  %conv5 = sext i8 %2 to i32
  %rem6 = srem i32 %conv5, 10
  %conv7 = trunc i32 %rem6 to i8
  store i8 %conv7, i8* %i, align 1
  %3 = load i8, i8* %i, align 1
  %conv8 = sext i8 %3 to i32
  %cmp9 = icmp eq i32 %conv8, 4
  br i1 %cmp9, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb4
  %4 = load i8, i8* %i, align 1
  %conv11 = sext i8 %4 to i32
  %cmp12 = icmp eq i32 %conv11, 8
  br i1 %cmp12, label %lor.end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %5 = load i8, i8* %i, align 1
  %conv15 = sext i8 %5 to i32
  %cmp16 = icmp eq i32 %conv15, 9
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false14
  %6 = load i8, i8* %cell.addr, align 1
  %conv18 = sext i8 %6 to i32
  %cmp19 = icmp sge i32 %conv18, 45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false14, %lor.lhs.false, %sw.bb4
  %7 = phi i1 [ true, %lor.lhs.false14 ], [ true, %lor.lhs.false ], [ true, %sw.bb4 ], [ %cmp19, %lor.rhs ]
  %lor.ext = zext i1 %7 to i32
  %conv21 = trunc i32 %lor.ext to i8
  store i8 %conv21, i8* %retval, align 1
  br label %return

sw.bb22:                                          ; preds = %entry
  %8 = load i8, i8* %cell.addr, align 1
  %conv23 = sext i8 %8 to i32
  %rem24 = srem i32 %conv23, 10
  %cmp25 = icmp eq i32 %rem24, 9
  br i1 %cmp25, label %lor.end31, label %lor.rhs27

lor.rhs27:                                        ; preds = %sw.bb22
  %9 = load i8, i8* %cell.addr, align 1
  %conv28 = sext i8 %9 to i32
  %cmp29 = icmp sge i32 %conv28, 45
  br label %lor.end31

lor.end31:                                        ; preds = %lor.rhs27, %sw.bb22
  %10 = phi i1 [ true, %sw.bb22 ], [ %cmp29, %lor.rhs27 ]
  %lor.ext32 = zext i1 %10 to i32
  %conv33 = trunc i32 %lor.ext32 to i8
  store i8 %conv33, i8* %retval, align 1
  br label %return

sw.bb34:                                          ; preds = %entry
  %11 = load i8, i8* %cell.addr, align 1
  %conv35 = sext i8 %11 to i32
  %cmp36 = icmp sge i32 %conv35, 40
  %conv37 = zext i1 %cmp36 to i32
  %conv38 = trunc i32 %conv37 to i8
  store i8 %conv38, i8* %retval, align 1
  br label %return

sw.bb39:                                          ; preds = %entry
  %12 = load i8, i8* %cell.addr, align 1
  %conv40 = sext i8 %12 to i32
  %rem41 = srem i32 %conv40, 10
  %cmp42 = icmp eq i32 %rem41, 0
  br i1 %cmp42, label %lor.end48, label %lor.rhs44

lor.rhs44:                                        ; preds = %sw.bb39
  %13 = load i8, i8* %cell.addr, align 1
  %conv45 = sext i8 %13 to i32
  %cmp46 = icmp sge i32 %conv45, 45
  br label %lor.end48

lor.end48:                                        ; preds = %lor.rhs44, %sw.bb39
  %14 = phi i1 [ true, %sw.bb39 ], [ %cmp46, %lor.rhs44 ]
  %lor.ext49 = zext i1 %14 to i32
  %conv50 = trunc i32 %lor.ext49 to i8
  store i8 %conv50, i8* %retval, align 1
  br label %return

sw.bb51:                                          ; preds = %entry
  %15 = load i8, i8* %cell.addr, align 1
  %conv52 = sext i8 %15 to i32
  %rem53 = srem i32 %conv52, 10
  %conv54 = trunc i32 %rem53 to i8
  store i8 %conv54, i8* %i, align 1
  %16 = load i8, i8* %i, align 1
  %conv55 = sext i8 %16 to i32
  %cmp56 = icmp eq i32 %conv55, 0
  br i1 %cmp56, label %lor.end70, label %lor.lhs.false58

lor.lhs.false58:                                  ; preds = %sw.bb51
  %17 = load i8, i8* %i, align 1
  %conv59 = sext i8 %17 to i32
  %cmp60 = icmp eq i32 %conv59, 1
  br i1 %cmp60, label %lor.end70, label %lor.lhs.false62

lor.lhs.false62:                                  ; preds = %lor.lhs.false58
  %18 = load i8, i8* %i, align 1
  %conv63 = sext i8 %18 to i32
  %cmp64 = icmp eq i32 %conv63, 5
  br i1 %cmp64, label %lor.end70, label %lor.rhs66

lor.rhs66:                                        ; preds = %lor.lhs.false62
  %19 = load i8, i8* %cell.addr, align 1
  %conv67 = sext i8 %19 to i32
  %cmp68 = icmp sge i32 %conv67, 45
  br label %lor.end70

lor.end70:                                        ; preds = %lor.rhs66, %lor.lhs.false62, %lor.lhs.false58, %sw.bb51
  %20 = phi i1 [ true, %lor.lhs.false62 ], [ true, %lor.lhs.false58 ], [ true, %sw.bb51 ], [ %cmp68, %lor.rhs66 ]
  %lor.ext71 = zext i1 %20 to i32
  %conv72 = trunc i32 %lor.ext71 to i8
  store i8 %conv72, i8* %retval, align 1
  br label %return

sw.bb73:                                          ; preds = %entry
  %21 = load i8, i8* %cell.addr, align 1
  %conv74 = sext i8 %21 to i32
  %rem75 = srem i32 %conv74, 5
  %cmp76 = icmp eq i32 %rem75, 0
  %conv77 = zext i1 %cmp76 to i32
  %conv78 = trunc i32 %conv77 to i8
  store i8 %conv78, i8* %retval, align 1
  br label %return

sw.bb79:                                          ; preds = %entry
  %22 = load i8, i8* %cell.addr, align 1
  %conv80 = sext i8 %22 to i32
  %rem81 = srem i32 %conv80, 10
  %conv82 = trunc i32 %rem81 to i8
  store i8 %conv82, i8* %i, align 1
  %23 = load i8, i8* %i, align 1
  %conv83 = sext i8 %23 to i32
  %cmp84 = icmp eq i32 %conv83, 0
  br i1 %cmp84, label %lor.end98, label %lor.lhs.false86

lor.lhs.false86:                                  ; preds = %sw.bb79
  %24 = load i8, i8* %i, align 1
  %conv87 = sext i8 %24 to i32
  %cmp88 = icmp eq i32 %conv87, 1
  br i1 %cmp88, label %lor.end98, label %lor.lhs.false90

lor.lhs.false90:                                  ; preds = %lor.lhs.false86
  %25 = load i8, i8* %i, align 1
  %conv91 = sext i8 %25 to i32
  %cmp92 = icmp eq i32 %conv91, 5
  br i1 %cmp92, label %lor.end98, label %lor.rhs94

lor.rhs94:                                        ; preds = %lor.lhs.false90
  %26 = load i8, i8* %cell.addr, align 1
  %conv95 = sext i8 %26 to i32
  %cmp96 = icmp slt i32 %conv95, 5
  br label %lor.end98

lor.end98:                                        ; preds = %lor.rhs94, %lor.lhs.false90, %lor.lhs.false86, %sw.bb79
  %27 = phi i1 [ true, %lor.lhs.false90 ], [ true, %lor.lhs.false86 ], [ true, %sw.bb79 ], [ %cmp96, %lor.rhs94 ]
  %lor.ext99 = zext i1 %27 to i32
  %conv100 = trunc i32 %lor.ext99 to i8
  store i8 %conv100, i8* %retval, align 1
  br label %return

sw.bb101:                                         ; preds = %entry
  %28 = load i8, i8* %cell.addr, align 1
  %conv102 = sext i8 %28 to i32
  %rem103 = srem i32 %conv102, 10
  %cmp104 = icmp eq i32 %rem103, 0
  br i1 %cmp104, label %lor.end110, label %lor.rhs106

lor.rhs106:                                       ; preds = %sw.bb101
  %29 = load i8, i8* %cell.addr, align 1
  %conv107 = sext i8 %29 to i32
  %cmp108 = icmp slt i32 %conv107, 5
  br label %lor.end110

lor.end110:                                       ; preds = %lor.rhs106, %sw.bb101
  %30 = phi i1 [ true, %sw.bb101 ], [ %cmp108, %lor.rhs106 ]
  %lor.ext111 = zext i1 %30 to i32
  %conv112 = trunc i32 %lor.ext111 to i8
  store i8 %conv112, i8* %retval, align 1
  br label %return

sw.bb113:                                         ; preds = %entry
  %31 = load i8, i8* %cell.addr, align 1
  %conv114 = sext i8 %31 to i32
  %cmp115 = icmp slt i32 %conv114, 10
  %conv116 = zext i1 %cmp115 to i32
  %conv117 = trunc i32 %conv116 to i8
  store i8 %conv117, i8* %retval, align 1
  br label %return

sw.bb118:                                         ; preds = %entry
  %32 = load i8, i8* %cell.addr, align 1
  %conv119 = sext i8 %32 to i32
  %rem120 = srem i32 %conv119, 10
  %cmp121 = icmp eq i32 %rem120, 9
  br i1 %cmp121, label %lor.end127, label %lor.rhs123

lor.rhs123:                                       ; preds = %sw.bb118
  %33 = load i8, i8* %cell.addr, align 1
  %conv124 = sext i8 %33 to i32
  %cmp125 = icmp slt i32 %conv124, 5
  br label %lor.end127

lor.end127:                                       ; preds = %lor.rhs123, %sw.bb118
  %34 = phi i1 [ true, %sw.bb118 ], [ %cmp125, %lor.rhs123 ]
  %lor.ext128 = zext i1 %34 to i32
  %conv129 = trunc i32 %lor.ext128 to i8
  store i8 %conv129, i8* %retval, align 1
  br label %return

sw.bb130:                                         ; preds = %entry
  %35 = load i8, i8* %cell.addr, align 1
  %conv131 = sext i8 %35 to i32
  %rem132 = srem i32 %conv131, 10
  %conv133 = trunc i32 %rem132 to i8
  store i8 %conv133, i8* %i, align 1
  %36 = load i8, i8* %i, align 1
  %conv134 = sext i8 %36 to i32
  %cmp135 = icmp eq i32 %conv134, 4
  br i1 %cmp135, label %lor.end149, label %lor.lhs.false137

lor.lhs.false137:                                 ; preds = %sw.bb130
  %37 = load i8, i8* %i, align 1
  %conv138 = sext i8 %37 to i32
  %cmp139 = icmp eq i32 %conv138, 8
  br i1 %cmp139, label %lor.end149, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %lor.lhs.false137
  %38 = load i8, i8* %i, align 1
  %conv142 = sext i8 %38 to i32
  %cmp143 = icmp eq i32 %conv142, 9
  br i1 %cmp143, label %lor.end149, label %lor.rhs145

lor.rhs145:                                       ; preds = %lor.lhs.false141
  %39 = load i8, i8* %cell.addr, align 1
  %conv146 = sext i8 %39 to i32
  %cmp147 = icmp slt i32 %conv146, 5
  br label %lor.end149

lor.end149:                                       ; preds = %lor.rhs145, %lor.lhs.false141, %lor.lhs.false137, %sw.bb130
  %40 = phi i1 [ true, %lor.lhs.false141 ], [ true, %lor.lhs.false137 ], [ true, %sw.bb130 ], [ %cmp147, %lor.rhs145 ]
  %lor.ext150 = zext i1 %40 to i32
  %conv151 = trunc i32 %lor.ext150 to i8
  store i8 %conv151, i8* %retval, align 1
  br label %return

sw.default:                                       ; preds = %entry
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %sw.default, %lor.end149, %lor.end127, %sw.bb113, %lor.end110, %lor.end98, %sw.bb73, %lor.end70, %lor.end48, %sw.bb34, %lor.end31, %lor.end, %sw.bb
  %41 = load i8, i8* %retval, align 1
  ret i8 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rotate_piece(i32 %piece) #0 {
entry:
  %piece.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %piece, i32* %piece.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %piece.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @piece_def, i64 0, i64 %idxprom
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i64 0, i64 %idxprom1
  %3 = load i8, i8* %arrayidx2, align 1
  %call = call signext i8 @rotate(i8 signext %3)
  %4 = load i32, i32* %piece.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @piece_def, i64 0, i64 %idxprom3
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx4, i64 0, i64 %idxprom5
  store i8 %call, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flip_piece(i32 %piece) #0 {
entry:
  %piece.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %piece, i32* %piece.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %piece.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @piece_def, i64 0, i64 %idxprom
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx, i64 0, i64 %idxprom1
  %3 = load i8, i8* %arrayidx2, align 1
  %call = call signext i8 @flip(i8 signext %3)
  %4 = load i32, i32* %piece.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @piece_def, i64 0, i64 %idxprom3
  %5 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx4, i64 0, i64 %idxprom5
  store i8 %call, i8* %arrayidx6, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_cell_indices(i8* %cell, i32 %piece, i8 signext %index) #0 {
entry:
  %cell.addr = alloca i8*, align 8
  %piece.addr = alloca i32, align 4
  %index.addr = alloca i8, align 1
  store i8* %cell, i8** %cell.addr, align 8
  store i32 %piece, i32* %piece.addr, align 4
  store i8 %index, i8* %index.addr, align 1
  %0 = load i8, i8* %index.addr, align 1
  %1 = load i8*, i8** %cell.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 0
  store i8 %0, i8* %arrayidx, align 1
  %2 = load i8*, i8** %cell.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx1, align 1
  %4 = load i32, i32* %piece.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @piece_def, i64 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx2, i64 0, i64 0
  %5 = load i8, i8* %arrayidx3, align 4
  %call = call signext i8 @shift(i8 signext %3, i8 signext %5)
  %6 = load i8*, i8** %cell.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 1
  store i8 %call, i8* %arrayidx4, align 1
  %7 = load i8*, i8** %cell.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %7, i64 1
  %8 = load i8, i8* %arrayidx5, align 1
  %9 = load i32, i32* %piece.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @piece_def, i64 0, i64 %idxprom6
  %arrayidx8 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx7, i64 0, i64 1
  %10 = load i8, i8* %arrayidx8, align 1
  %call9 = call signext i8 @shift(i8 signext %8, i8 signext %10)
  %11 = load i8*, i8** %cell.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 2
  store i8 %call9, i8* %arrayidx10, align 1
  %12 = load i8*, i8** %cell.addr, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %12, i64 2
  %13 = load i8, i8* %arrayidx11, align 1
  %14 = load i32, i32* %piece.addr, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @piece_def, i64 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx13, i64 0, i64 2
  %15 = load i8, i8* %arrayidx14, align 2
  %call15 = call signext i8 @shift(i8 signext %13, i8 signext %15)
  %16 = load i8*, i8** %cell.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 3
  store i8 %call15, i8* %arrayidx16, align 1
  %17 = load i8*, i8** %cell.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %17, i64 3
  %18 = load i8, i8* %arrayidx17, align 1
  %19 = load i32, i32* %piece.addr, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @piece_def, i64 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx19, i64 0, i64 3
  %20 = load i8, i8* %arrayidx20, align 1
  %call21 = call signext i8 @shift(i8 signext %18, i8 signext %20)
  %21 = load i8*, i8** %cell.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %21, i64 4
  store i8 %call21, i8* %arrayidx22, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cells_fit_on_board(i8* %cell, i32 %piece) #0 {
entry:
  %cell.addr = alloca i8*, align 8
  %piece.addr = alloca i32, align 4
  store i8* %cell, i8** %cell.addr, align 8
  store i32 %piece, i32* %piece.addr, align 4
  %0 = load i8*, i8** %cell.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %2 = load i32, i32* %piece.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx1 = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @piece_def, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx1, i64 0, i64 0
  %3 = load i8, i8* %arrayidx2, align 4
  %call = call signext i8 @out_of_bounds(i8 signext %1, i8 signext %3)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %cell.addr, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8, i8* %arrayidx3, align 1
  %6 = load i32, i32* %piece.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @piece_def, i64 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx5, i64 0, i64 1
  %7 = load i8, i8* %arrayidx6, align 1
  %call7 = call signext i8 @out_of_bounds(i8 signext %5, i8 signext %7)
  %tobool8 = icmp ne i8 %call7, 0
  br i1 %tobool8, label %land.end, label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true
  %8 = load i8*, i8** %cell.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx10, align 1
  %10 = load i32, i32* %piece.addr, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @piece_def, i64 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx12, i64 0, i64 2
  %11 = load i8, i8* %arrayidx13, align 2
  %call14 = call signext i8 @out_of_bounds(i8 signext %9, i8 signext %11)
  %tobool15 = icmp ne i8 %call14, 0
  br i1 %tobool15, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true9
  %12 = load i8*, i8** %cell.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %12, i64 3
  %13 = load i8, i8* %arrayidx16, align 1
  %14 = load i32, i32* %piece.addr, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [10 x [4 x i8]], [10 x [4 x i8]]* @piece_def, i64 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [4 x i8], [4 x i8]* %arrayidx18, i64 0, i64 3
  %15 = load i8, i8* %arrayidx19, align 1
  %call20 = call signext i8 @out_of_bounds(i8 signext %13, i8 signext %15)
  %tobool21 = icmp ne i8 %call20, 0
  %lnot = xor i1 %tobool21, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true9, %land.lhs.true, %entry
  %16 = phi i1 [ false, %land.lhs.true9 ], [ false, %land.lhs.true ], [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %16 to i32
  ret i32 %land.ext
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @minimum_of_cells(i8* %cell) #0 {
entry:
  %cell.addr = alloca i8*, align 8
  %minimum = alloca i8, align 1
  store i8* %cell, i8** %cell.addr, align 8
  %0 = load i8*, i8** %cell.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  store i8 %1, i8* %minimum, align 1
  %2 = load i8*, i8** %cell.addr, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %3 to i32
  %4 = load i8, i8* %minimum, align 1
  %conv2 = sext i8 %4 to i32
  %cmp = icmp slt i32 %conv, %conv2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i8*, i8** %cell.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %6 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load i8, i8* %minimum, align 1
  %conv6 = sext i8 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv5, %cond.true ], [ %conv6, %cond.false ]
  %conv7 = trunc i32 %cond to i8
  store i8 %conv7, i8* %minimum, align 1
  %8 = load i8*, i8** %cell.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %9 to i32
  %10 = load i8, i8* %minimum, align 1
  %conv10 = sext i8 %10 to i32
  %cmp11 = icmp slt i32 %conv9, %conv10
  br i1 %cmp11, label %cond.true13, label %cond.false16

cond.true13:                                      ; preds = %cond.end
  %11 = load i8*, i8** %cell.addr, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %11, i64 2
  %12 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %12 to i32
  br label %cond.end18

cond.false16:                                     ; preds = %cond.end
  %13 = load i8, i8* %minimum, align 1
  %conv17 = sext i8 %13 to i32
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false16, %cond.true13
  %cond19 = phi i32 [ %conv15, %cond.true13 ], [ %conv17, %cond.false16 ]
  %conv20 = trunc i32 %cond19 to i8
  store i8 %conv20, i8* %minimum, align 1
  %14 = load i8*, i8** %cell.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %14, i64 3
  %15 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %15 to i32
  %16 = load i8, i8* %minimum, align 1
  %conv23 = sext i8 %16 to i32
  %cmp24 = icmp slt i32 %conv22, %conv23
  br i1 %cmp24, label %cond.true26, label %cond.false29

cond.true26:                                      ; preds = %cond.end18
  %17 = load i8*, i8** %cell.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %17, i64 3
  %18 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %18 to i32
  br label %cond.end31

cond.false29:                                     ; preds = %cond.end18
  %19 = load i8, i8* %minimum, align 1
  %conv30 = sext i8 %19 to i32
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false29, %cond.true26
  %cond32 = phi i32 [ %conv28, %cond.true26 ], [ %conv30, %cond.false29 ]
  %conv33 = trunc i32 %cond32 to i8
  store i8 %conv33, i8* %minimum, align 1
  %20 = load i8*, i8** %cell.addr, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %20, i64 4
  %21 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %21 to i32
  %22 = load i8, i8* %minimum, align 1
  %conv36 = sext i8 %22 to i32
  %cmp37 = icmp slt i32 %conv35, %conv36
  br i1 %cmp37, label %cond.true39, label %cond.false42

cond.true39:                                      ; preds = %cond.end31
  %23 = load i8*, i8** %cell.addr, align 8
  %arrayidx40 = getelementptr inbounds i8, i8* %23, i64 4
  %24 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %24 to i32
  br label %cond.end44

cond.false42:                                     ; preds = %cond.end31
  %25 = load i8, i8* %minimum, align 1
  %conv43 = sext i8 %25 to i32
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false42, %cond.true39
  %cond45 = phi i32 [ %conv41, %cond.true39 ], [ %conv43, %cond.false42 ]
  %conv46 = trunc i32 %cond45 to i8
  store i8 %conv46, i8* %minimum, align 1
  %26 = load i8, i8* %minimum, align 1
  ret i8 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @first_empty_cell(i8* %cell, i8 signext %minimum) #0 {
entry:
  %cell.addr = alloca i8*, align 8
  %minimum.addr = alloca i8, align 1
  %first_empty = alloca i8, align 1
  store i8* %cell, i8** %cell.addr, align 8
  store i8 %minimum, i8* %minimum.addr, align 1
  %0 = load i8, i8* %minimum.addr, align 1
  store i8 %0, i8* %first_empty, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i8, i8* %first_empty, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %cell.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, %conv1
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %4 = load i8, i8* %first_empty, align 1
  %conv3 = sext i8 %4 to i32
  %5 = load i8*, i8** %cell.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp eq i32 %conv3, %conv5
  br i1 %cmp6, label %lor.end, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %7 = load i8, i8* %first_empty, align 1
  %conv9 = sext i8 %7 to i32
  %8 = load i8*, i8** %cell.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %8, i64 2
  %9 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %9 to i32
  %cmp12 = icmp eq i32 %conv9, %conv11
  br i1 %cmp12, label %lor.end, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false8
  %10 = load i8, i8* %first_empty, align 1
  %conv15 = sext i8 %10 to i32
  %11 = load i8*, i8** %cell.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, i8* %11, i64 3
  %12 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %12 to i32
  %cmp18 = icmp eq i32 %conv15, %conv17
  br i1 %cmp18, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false14
  %13 = load i8, i8* %first_empty, align 1
  %conv20 = sext i8 %13 to i32
  %14 = load i8*, i8** %cell.addr, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %14, i64 4
  %15 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %15 to i32
  %cmp23 = icmp eq i32 %conv20, %conv22
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false14, %lor.lhs.false8, %lor.lhs.false, %while.cond
  %16 = phi i1 [ true, %lor.lhs.false14 ], [ true, %lor.lhs.false8 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp23, %lor.rhs ]
  br i1 %16, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %17 = load i8, i8* %first_empty, align 1
  %inc = add i8 %17, 1
  store i8 %inc, i8* %first_empty, align 1
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %lor.end
  %18 = load i8, i8* %first_empty, align 1
  ret i8 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bitmask_from_cells(i8* %cell) #0 {
entry:
  %cell.addr = alloca i8*, align 8
  %piece_mask = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %cell, i8** %cell.addr, align 8
  store i64 0, i64* %piece_mask, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %cell.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %4 = load i64, i64* %piece_mask, align 8
  %or = or i64 %4, %shl
  store i64 %or, i64* %piece_mask, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %6 = load i64, i64* %piece_mask, align 8
  ret i64 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_piece(i32 %piece, i32 %minimum, i8 signext %first_empty, i64 %piece_mask) #0 {
entry:
  %piece.addr = alloca i32, align 4
  %minimum.addr = alloca i32, align 4
  %first_empty.addr = alloca i8, align 1
  %piece_mask.addr = alloca i64, align 8
  store i32 %piece, i32* %piece.addr, align 4
  store i32 %minimum, i32* %minimum.addr, align 4
  store i8 %first_empty, i8* %first_empty.addr, align 1
  store i64 %piece_mask, i64* %piece_mask.addr, align 8
  %0 = load i64, i64* %piece_mask.addr, align 8
  %1 = load i32, i32* %piece.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x [50 x [12 x i64]]], [10 x [50 x [12 x i64]]]* @pieces, i64 0, i64 %idxprom
  %2 = load i32, i32* %minimum.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [50 x [12 x i64]], [50 x [12 x i64]]* %arrayidx, i64 0, i64 %idxprom1
  %3 = load i32, i32* %piece.addr, align 4
  %idxprom3 = sext i32 %3 to i64
  %arrayidx4 = getelementptr inbounds [10 x [50 x i32]], [10 x [50 x i32]]* @piece_counts, i64 0, i64 %idxprom3
  %4 = load i32, i32* %minimum.addr, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx4, i64 0, i64 %idxprom5
  %5 = load i32, i32* %arrayidx6, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [12 x i64], [12 x i64]* %arrayidx2, i64 0, i64 %idxprom7
  store i64 %0, i64* %arrayidx8, align 8
  %6 = load i8, i8* %first_empty.addr, align 1
  %7 = load i32, i32* %piece.addr, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [10 x [50 x [12 x i8]]], [10 x [50 x [12 x i8]]]* @next_cell, i64 0, i64 %idxprom9
  %8 = load i32, i32* %minimum.addr, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [50 x [12 x i8]], [50 x [12 x i8]]* %arrayidx10, i64 0, i64 %idxprom11
  %9 = load i32, i32* %piece.addr, align 4
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [10 x [50 x i32]], [10 x [50 x i32]]* @piece_counts, i64 0, i64 %idxprom13
  %10 = load i32, i32* %minimum.addr, align 4
  %idxprom15 = sext i32 %10 to i64
  %arrayidx16 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx14, i64 0, i64 %idxprom15
  %11 = load i32, i32* %arrayidx16, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [12 x i8], [12 x i8]* %arrayidx12, i64 0, i64 %idxprom17
  store i8 %6, i8* %arrayidx18, align 1
  %12 = load i32, i32* %piece.addr, align 4
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [10 x [50 x i32]], [10 x [50 x i32]]* @piece_counts, i64 0, i64 %idxprom19
  %13 = load i32, i32* %minimum.addr, align 4
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx20, i64 0, i64 %idxprom21
  %14 = load i32, i32* %arrayidx22, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %arrayidx22, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_contiguous_space(i8* %board, i32 %index) #0 {
entry:
  %board.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  store i8* %board, i8** %board.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i8*, i8** %board.addr, align 8
  %1 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end49

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %board.addr, align 8
  %4 = load i32, i32* %index.addr, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %3, i64 %idxprom2
  store i8 1, i8* %arrayidx3, align 1
  %5 = load i32, i32* %index.addr, align 4
  %conv4 = trunc i32 %5 to i8
  %call = call signext i8 @out_of_bounds(i8 signext %conv4, i8 signext 0)
  %tobool = icmp ne i8 %call, 0
  br i1 %tobool, label %if.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  %6 = load i8*, i8** %board.addr, align 8
  %7 = load i32, i32* %index.addr, align 4
  %conv6 = trunc i32 %7 to i8
  %call7 = call signext i8 @shift(i8 signext %conv6, i8 signext 0)
  %conv8 = sext i8 %call7 to i32
  call void @fill_contiguous_space(i8* %6, i32 %conv8)
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %8 = load i32, i32* %index.addr, align 4
  %conv10 = trunc i32 %8 to i8
  %call11 = call signext i8 @out_of_bounds(i8 signext %conv10, i8 signext 2)
  %tobool12 = icmp ne i8 %call11, 0
  br i1 %tobool12, label %if.end17, label %if.then13

if.then13:                                        ; preds = %if.end9
  %9 = load i8*, i8** %board.addr, align 8
  %10 = load i32, i32* %index.addr, align 4
  %conv14 = trunc i32 %10 to i8
  %call15 = call signext i8 @shift(i8 signext %conv14, i8 signext 2)
  %conv16 = sext i8 %call15 to i32
  call void @fill_contiguous_space(i8* %9, i32 %conv16)
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end9
  %11 = load i32, i32* %index.addr, align 4
  %conv18 = trunc i32 %11 to i8
  %call19 = call signext i8 @out_of_bounds(i8 signext %conv18, i8 signext 4)
  %tobool20 = icmp ne i8 %call19, 0
  br i1 %tobool20, label %if.end25, label %if.then21

if.then21:                                        ; preds = %if.end17
  %12 = load i8*, i8** %board.addr, align 8
  %13 = load i32, i32* %index.addr, align 4
  %conv22 = trunc i32 %13 to i8
  %call23 = call signext i8 @shift(i8 signext %conv22, i8 signext 4)
  %conv24 = sext i8 %call23 to i32
  call void @fill_contiguous_space(i8* %12, i32 %conv24)
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end17
  %14 = load i32, i32* %index.addr, align 4
  %conv26 = trunc i32 %14 to i8
  %call27 = call signext i8 @out_of_bounds(i8 signext %conv26, i8 signext 6)
  %tobool28 = icmp ne i8 %call27, 0
  br i1 %tobool28, label %if.end33, label %if.then29

if.then29:                                        ; preds = %if.end25
  %15 = load i8*, i8** %board.addr, align 8
  %16 = load i32, i32* %index.addr, align 4
  %conv30 = trunc i32 %16 to i8
  %call31 = call signext i8 @shift(i8 signext %conv30, i8 signext 6)
  %conv32 = sext i8 %call31 to i32
  call void @fill_contiguous_space(i8* %15, i32 %conv32)
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %if.end25
  %17 = load i32, i32* %index.addr, align 4
  %conv34 = trunc i32 %17 to i8
  %call35 = call signext i8 @out_of_bounds(i8 signext %conv34, i8 signext 8)
  %tobool36 = icmp ne i8 %call35, 0
  br i1 %tobool36, label %if.end41, label %if.then37

if.then37:                                        ; preds = %if.end33
  %18 = load i8*, i8** %board.addr, align 8
  %19 = load i32, i32* %index.addr, align 4
  %conv38 = trunc i32 %19 to i8
  %call39 = call signext i8 @shift(i8 signext %conv38, i8 signext 8)
  %conv40 = sext i8 %call39 to i32
  call void @fill_contiguous_space(i8* %18, i32 %conv40)
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end33
  %20 = load i32, i32* %index.addr, align 4
  %conv42 = trunc i32 %20 to i8
  %call43 = call signext i8 @out_of_bounds(i8 signext %conv42, i8 signext 10)
  %tobool44 = icmp ne i8 %call43, 0
  br i1 %tobool44, label %if.end49, label %if.then45

if.then45:                                        ; preds = %if.end41
  %21 = load i8*, i8** %board.addr, align 8
  %22 = load i32, i32* %index.addr, align 4
  %conv46 = trunc i32 %22 to i8
  %call47 = call signext i8 @shift(i8 signext %conv46, i8 signext 10)
  %conv48 = sext i8 %call47 to i32
  call void @fill_contiguous_space(i8* %21, i32 %conv48)
  br label %if.end49

if.end49:                                         ; preds = %if.then, %if.then45, %if.end41
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @has_island(i8* %cell, i32 %piece) #0 {
entry:
  %retval = alloca i32, align 4
  %cell.addr = alloca i8*, align 8
  %piece.addr = alloca i32, align 4
  %temp_board = alloca [50 x i8], align 16
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  store i8* %cell, i8** %cell.addr, align 8
  store i32 %piece, i32* %piece.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* %temp_board, i64 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc8, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 5
  br i1 %cmp2, label %for.body3, label %for.end10

for.body3:                                        ; preds = %for.cond1
  %4 = load i8*, i8** %cell.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds i8, i8* %4, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %6 to i32
  %idxprom6 = sext i32 %conv to i64
  %arrayidx7 = getelementptr inbounds [50 x i8], [50 x i8]* %temp_board, i64 0, i64 %idxprom6
  store i8 1, i8* %arrayidx7, align 1
  br label %for.inc8

for.inc8:                                         ; preds = %for.body3
  %7 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond1, !llvm.loop !10

for.end10:                                        ; preds = %for.cond1
  store i32 49, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end10
  %8 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [50 x i8], [50 x i8]* %temp_board, i64 0, i64 %idxprom11
  %9 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %9 to i32
  %cmp14 = icmp eq i32 %conv13, 1
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %temp_board, i64 0, i64 0
  %11 = load i32, i32* %i, align 4
  call void @fill_contiguous_space(i8* %arraydecay, i32 %11)
  store i8 0, i8* %c, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %while.end
  %12 = load i32, i32* %i, align 4
  %cmp17 = icmp slt i32 %12, 50
  br i1 %cmp17, label %for.body19, label %for.end28

for.body19:                                       ; preds = %for.cond16
  %13 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [50 x i8], [50 x i8]* %temp_board, i64 0, i64 %idxprom20
  %14 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %14 to i32
  %cmp23 = icmp eq i32 %conv22, 0
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body19
  %15 = load i8, i8* %c, align 1
  %inc25 = add i8 %15, 1
  store i8 %inc25, i8* %c, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body19
  br label %for.inc26

for.inc26:                                        ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %16, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond16, !llvm.loop !12

for.end28:                                        ; preds = %for.cond16
  %17 = load i8, i8* %c, align 1
  %conv29 = sext i8 %17 to i32
  %cmp30 = icmp eq i32 %conv29, 0
  br i1 %cmp30, label %if.then51, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end28
  %18 = load i8, i8* %c, align 1
  %conv32 = sext i8 %18 to i32
  %cmp33 = icmp eq i32 %conv32, 5
  br i1 %cmp33, label %land.lhs.true, label %lor.lhs.false37

land.lhs.true:                                    ; preds = %lor.lhs.false
  %19 = load i32, i32* %piece.addr, align 4
  %cmp35 = icmp eq i32 %19, 8
  br i1 %cmp35, label %if.then51, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %land.lhs.true, %lor.lhs.false
  %20 = load i8, i8* %c, align 1
  %conv38 = sext i8 %20 to i32
  %cmp39 = icmp eq i32 %conv38, 40
  br i1 %cmp39, label %land.lhs.true41, label %lor.lhs.false44

land.lhs.true41:                                  ; preds = %lor.lhs.false37
  %21 = load i32, i32* %piece.addr, align 4
  %cmp42 = icmp eq i32 %21, 8
  br i1 %cmp42, label %if.then51, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %land.lhs.true41, %lor.lhs.false37
  %22 = load i8, i8* %c, align 1
  %conv45 = sext i8 %22 to i32
  %rem = srem i32 %conv45, 5
  %cmp46 = icmp eq i32 %rem, 0
  br i1 %cmp46, label %land.lhs.true48, label %if.else

land.lhs.true48:                                  ; preds = %lor.lhs.false44
  %23 = load i32, i32* %piece.addr, align 4
  %cmp49 = icmp eq i32 %23, 0
  br i1 %cmp49, label %if.then51, label %if.else

if.then51:                                        ; preds = %land.lhs.true48, %land.lhs.true41, %land.lhs.true, %for.end28
  store i32 0, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true48, %lor.lhs.false44
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then51
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_six_rotations(i8 signext %piece, i8 signext %index) #0 {
entry:
  %piece.addr = alloca i8, align 1
  %index.addr = alloca i8, align 1
  %rotation = alloca i8, align 1
  %cell = alloca [5 x i8], align 1
  %minimum = alloca i8, align 1
  %first_empty = alloca i8, align 1
  %piece_mask = alloca i64, align 8
  store i8 %piece, i8* %piece.addr, align 1
  store i8 %index, i8* %index.addr, align 1
  store i8 0, i8* %rotation, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8, i8* %rotation, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8, i8* %piece.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp ne i32 %conv2, 3
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %2 = load i8, i8* %rotation, align 1
  %conv5 = sext i8 %2 to i32
  %cmp6 = icmp slt i32 %conv5, 3
  br i1 %cmp6, label %if.then, label %if.end24

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %cell, i64 0, i64 0
  %3 = load i8, i8* %piece.addr, align 1
  %conv8 = sext i8 %3 to i32
  %4 = load i8, i8* %index.addr, align 1
  call void @calc_cell_indices(i8* %arraydecay, i32 %conv8, i8 signext %4)
  %arraydecay9 = getelementptr inbounds [5 x i8], [5 x i8]* %cell, i64 0, i64 0
  %5 = load i8, i8* %piece.addr, align 1
  %conv10 = sext i8 %5 to i32
  %call = call i32 @cells_fit_on_board(i8* %arraydecay9, i32 %conv10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %arraydecay11 = getelementptr inbounds [5 x i8], [5 x i8]* %cell, i64 0, i64 0
  %6 = load i8, i8* %piece.addr, align 1
  %conv12 = sext i8 %6 to i32
  %call13 = call i32 @has_island(i8* %arraydecay11, i32 %conv12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end, label %if.then15

if.then15:                                        ; preds = %land.lhs.true
  %arraydecay16 = getelementptr inbounds [5 x i8], [5 x i8]* %cell, i64 0, i64 0
  %call17 = call signext i8 @minimum_of_cells(i8* %arraydecay16)
  store i8 %call17, i8* %minimum, align 1
  %arraydecay18 = getelementptr inbounds [5 x i8], [5 x i8]* %cell, i64 0, i64 0
  %7 = load i8, i8* %minimum, align 1
  %call19 = call signext i8 @first_empty_cell(i8* %arraydecay18, i8 signext %7)
  store i8 %call19, i8* %first_empty, align 1
  %arraydecay20 = getelementptr inbounds [5 x i8], [5 x i8]* %cell, i64 0, i64 0
  %call21 = call i64 @bitmask_from_cells(i8* %arraydecay20)
  store i64 %call21, i64* %piece_mask, align 8
  %8 = load i8, i8* %piece.addr, align 1
  %conv22 = sext i8 %8 to i32
  %9 = load i8, i8* %minimum, align 1
  %conv23 = sext i8 %9 to i32
  %10 = load i8, i8* %first_empty, align 1
  %11 = load i64, i64* %piece_mask, align 8
  call void @record_piece(i32 %conv22, i32 %conv23, i8 signext %10, i64 %11)
  br label %if.end

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then
  br label %if.end24

if.end24:                                         ; preds = %if.end, %lor.lhs.false
  %12 = load i8, i8* %piece.addr, align 1
  %conv25 = sext i8 %12 to i32
  call void @rotate_piece(i32 %conv25)
  br label %for.inc

for.inc:                                          ; preds = %if.end24
  %13 = load i8, i8* %rotation, align 1
  %inc = add i8 %13, 1
  store i8 %inc, i8* %rotation, align 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_pieces() #0 {
entry:
  %piece = alloca i8, align 1
  %index = alloca i8, align 1
  store i8 0, i8* %piece, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i8, i8* %piece, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp slt i32 %conv, 10
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %index, align 1
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i8, i8* %index, align 1
  %conv3 = sext i8 %1 to i32
  %cmp4 = icmp slt i32 %conv3, 50
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond2
  %2 = load i8, i8* %piece, align 1
  %3 = load i8, i8* %index, align 1
  call void @calc_six_rotations(i8 signext %2, i8 signext %3)
  %4 = load i8, i8* %piece, align 1
  %conv7 = sext i8 %4 to i32
  call void @flip_piece(i32 %conv7)
  %5 = load i8, i8* %piece, align 1
  %6 = load i8, i8* %index, align 1
  call void @calc_six_rotations(i8 signext %5, i8 signext %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %7 = load i8, i8* %index, align 1
  %inc = add i8 %7, 1
  store i8 %inc, i8* %index, align 1
  br label %for.cond2, !llvm.loop !14

for.end:                                          ; preds = %for.cond2
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %8 = load i8, i8* %piece, align 1
  %inc9 = add i8 %8, 1
  store i8 %inc9, i8* %piece, align 1
  br label %for.cond, !llvm.loop !15

for.end10:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rows_bad(i8 signext %row1, i8 signext %row2, i32 %even) #0 {
entry:
  %retval = alloca i32, align 4
  %row1.addr = alloca i8, align 1
  %row2.addr = alloca i8, align 1
  %even.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %in_zeroes = alloca i32, align 4
  %group_okay = alloca i32, align 4
  %block = alloca i8, align 1
  %row2_shift = alloca i8, align 1
  store i8 %row1, i8* %row1.addr, align 1
  store i8 %row2, i8* %row2.addr, align 1
  store i32 %even, i32* %even.addr, align 4
  %0 = load i32, i32* %even.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %row2.addr, align 1
  %conv = sext i8 %1 to i32
  %shl = shl i32 %conv, 1
  %and = and i32 %shl, 31
  %or = or i32 %and, 1
  %conv1 = trunc i32 %or to i8
  store i8 %conv1, i8* %row2_shift, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load i8, i8* %row2.addr, align 1
  %conv2 = sext i8 %2 to i32
  %shr = ashr i32 %conv2, 1
  %or3 = or i32 %shr, 16
  %conv4 = trunc i32 %or3 to i8
  store i8 %conv4, i8* %row2_shift, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8, i8* %row1.addr, align 1
  %conv5 = sext i8 %3 to i32
  %4 = load i8, i8* %row2.addr, align 1
  %conv6 = sext i8 %4 to i32
  %xor = xor i32 %conv5, %conv6
  %5 = load i8, i8* %row2.addr, align 1
  %conv7 = sext i8 %5 to i32
  %and8 = and i32 %xor, %conv7
  %6 = load i8, i8* %row1.addr, align 1
  %conv9 = sext i8 %6 to i32
  %7 = load i8, i8* %row2_shift, align 1
  %conv10 = sext i8 %7 to i32
  %xor11 = xor i32 %conv9, %conv10
  %8 = load i8, i8* %row2_shift, align 1
  %conv12 = sext i8 %8 to i32
  %and13 = and i32 %xor11, %conv12
  %and14 = and i32 %and8, %and13
  %conv15 = trunc i32 %and14 to i8
  store i8 %conv15, i8* %block, align 1
  store i32 0, i32* %in_zeroes, align 4
  store i32 0, i32* %group_okay, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %9, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8, i8* %row1.addr, align 1
  %conv17 = sext i8 %10 to i32
  %11 = load i32, i32* %i, align 4
  %shl18 = shl i32 1, %11
  %and19 = and i32 %conv17, %shl18
  %tobool20 = icmp ne i32 %and19, 0
  br i1 %tobool20, label %if.then21, label %if.else28

if.then21:                                        ; preds = %for.body
  %12 = load i32, i32* %in_zeroes, align 4
  %tobool22 = icmp ne i32 %12, 0
  br i1 %tobool22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.then21
  %13 = load i32, i32* %group_okay, align 4
  %tobool24 = icmp ne i32 %13, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.then23
  store i32 1, i32* %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.then23
  store i32 0, i32* %in_zeroes, align 4
  store i32 0, i32* %group_okay, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then21
  br label %if.end38

if.else28:                                        ; preds = %for.body
  %14 = load i32, i32* %in_zeroes, align 4
  %tobool29 = icmp ne i32 %14, 0
  br i1 %tobool29, label %if.end31, label %if.then30

if.then30:                                        ; preds = %if.else28
  store i32 1, i32* %in_zeroes, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.else28
  %15 = load i8, i8* %block, align 1
  %conv32 = sext i8 %15 to i32
  %16 = load i32, i32* %i, align 4
  %shl33 = shl i32 1, %16
  %and34 = and i32 %conv32, %shl33
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.end37, label %if.then36

if.then36:                                        ; preds = %if.end31
  store i32 1, i32* %group_okay, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end31
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end27
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %in_zeroes, align 4
  %tobool39 = icmp ne i32 %18, 0
  br i1 %tobool39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %for.end
  %19 = load i32, i32* %group_okay, align 4
  %tobool41 = icmp ne i32 %19, 0
  %lnot = xor i1 %tobool41, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval, align 4
  br label %return

if.else42:                                        ; preds = %for.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else42, %if.then40, %if.then25
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @triple_is_okay(i8 signext %row1, i8 signext %row2, i8 signext %row3, i32 %even) #0 {
entry:
  %retval = alloca i32, align 4
  %row1.addr = alloca i8, align 1
  %row2.addr = alloca i8, align 1
  %row3.addr = alloca i8, align 1
  %even.addr = alloca i32, align 4
  store i8 %row1, i8* %row1.addr, align 1
  store i8 %row2, i8* %row2.addr, align 1
  store i8 %row3, i8* %row3.addr, align 1
  store i32 %even, i32* %even.addr, align 4
  %0 = load i32, i32* %even.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %row1.addr, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 3
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %2 = load i8, i8* %row2.addr, align 1
  %conv2 = sext i8 %2 to i32
  %cmp3 = icmp eq i32 %conv2, 11
  br i1 %cmp3, label %land.lhs.true5, label %lor.lhs.false

land.lhs.true5:                                   ; preds = %land.lhs.true
  %3 = load i8, i8* %row3.addr, align 1
  %conv6 = sext i8 %3 to i32
  %and = and i32 %conv6, 28
  %cmp7 = icmp eq i32 %and, 12
  br i1 %cmp7, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true5, %land.lhs.true, %if.then
  %4 = load i8, i8* %row1.addr, align 1
  %conv9 = sext i8 %4 to i32
  %cmp10 = icmp eq i32 %conv9, 1
  br i1 %cmp10, label %land.lhs.true12, label %lor.lhs.false20

land.lhs.true12:                                  ; preds = %lor.lhs.false
  %5 = load i8, i8* %row2.addr, align 1
  %conv13 = sext i8 %5 to i32
  %cmp14 = icmp eq i32 %conv13, 5
  br i1 %cmp14, label %land.lhs.true16, label %lor.lhs.false20

land.lhs.true16:                                  ; preds = %land.lhs.true12
  %6 = load i8, i8* %row3.addr, align 1
  %conv17 = sext i8 %6 to i32
  %cmp18 = icmp eq i32 %conv17, 6
  br i1 %cmp18, label %lor.end, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true16, %land.lhs.true12, %lor.lhs.false
  %7 = load i8, i8* %row1.addr, align 1
  %conv21 = sext i8 %7 to i32
  %cmp22 = icmp eq i32 %conv21, 25
  br i1 %cmp22, label %land.lhs.true24, label %lor.rhs

land.lhs.true24:                                  ; preds = %lor.lhs.false20
  %8 = load i8, i8* %row2.addr, align 1
  %conv25 = sext i8 %8 to i32
  %cmp26 = icmp eq i32 %conv25, 17
  br i1 %cmp26, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true24, %lor.lhs.false20
  %9 = load i8, i8* %row1.addr, align 1
  %conv28 = sext i8 %9 to i32
  %cmp29 = icmp eq i32 %conv28, 21
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %10 = load i8, i8* %row2.addr, align 1
  %conv31 = sext i8 %10 to i32
  %cmp32 = icmp eq i32 %conv31, 17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %11 = phi i1 [ false, %lor.rhs ], [ %cmp32, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true24, %land.lhs.true16, %land.lhs.true5
  %12 = phi i1 [ true, %land.lhs.true24 ], [ true, %land.lhs.true16 ], [ true, %land.lhs.true5 ], [ %11, %land.end ]
  %lor.ext = zext i1 %12 to i32
  store i32 %lor.ext, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %13 = load i8, i8* %row1.addr, align 1
  %conv34 = sext i8 %13 to i32
  %cmp35 = icmp eq i32 %conv34, 19
  br i1 %cmp35, label %land.lhs.true37, label %lor.rhs41

land.lhs.true37:                                  ; preds = %if.else
  %14 = load i8, i8* %row2.addr, align 1
  %conv38 = sext i8 %14 to i32
  %cmp39 = icmp eq i32 %conv38, 17
  br i1 %cmp39, label %lor.end50, label %lor.rhs41

lor.rhs41:                                        ; preds = %land.lhs.true37, %if.else
  %15 = load i8, i8* %row1.addr, align 1
  %conv42 = sext i8 %15 to i32
  %cmp43 = icmp eq i32 %conv42, 21
  br i1 %cmp43, label %land.rhs45, label %land.end49

land.rhs45:                                       ; preds = %lor.rhs41
  %16 = load i8, i8* %row2.addr, align 1
  %conv46 = sext i8 %16 to i32
  %cmp47 = icmp eq i32 %conv46, 17
  br label %land.end49

land.end49:                                       ; preds = %land.rhs45, %lor.rhs41
  %17 = phi i1 [ false, %lor.rhs41 ], [ %cmp47, %land.rhs45 ]
  br label %lor.end50

lor.end50:                                        ; preds = %land.end49, %land.lhs.true37
  %18 = phi i1 [ true, %land.lhs.true37 ], [ %17, %land.end49 ]
  %lor.ext51 = zext i1 %18 to i32
  store i32 %lor.ext51, i32* %retval, align 4
  br label %return

return:                                           ; preds = %lor.end50, %lor.end
  %19 = load i32, i32* %retval, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_rows() #0 {
entry:
  %row1 = alloca i32, align 4
  %row2 = alloca i32, align 4
  %row3 = alloca i32, align 4
  %result1 = alloca i32, align 4
  %result2 = alloca i32, align 4
  store i32 0, i32* %row1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32, i32* %row1, align 4
  %cmp = icmp slt i32 %0, 32
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %row2, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %row2, align 4
  %cmp2 = icmp slt i32 %1, 32
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %row1, align 4
  %conv = trunc i32 %2 to i8
  %3 = load i32, i32* %row2, align 4
  %conv4 = trunc i32 %3 to i8
  %call = call i32 @rows_bad(i8 signext %conv, i8 signext %conv4, i32 1)
  %4 = load i32, i32* %row1, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @bad_even_rows, i64 0, i64 %idxprom
  %5 = load i32, i32* %row2, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx, i64 0, i64 %idxprom5
  store i32 %call, i32* %arrayidx6, align 4
  %6 = load i32, i32* %row1, align 4
  %conv7 = trunc i32 %6 to i8
  %7 = load i32, i32* %row2, align 4
  %conv8 = trunc i32 %7 to i8
  %call9 = call i32 @rows_bad(i8 signext %conv7, i8 signext %conv8, i32 0)
  %8 = load i32, i32* %row1, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @bad_odd_rows, i64 0, i64 %idxprom10
  %9 = load i32, i32* %row2, align 4
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx11, i64 0, i64 %idxprom12
  store i32 %call9, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %10 = load i32, i32* %row2, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %row2, align 4
  br label %for.cond1, !llvm.loop !17

for.end:                                          ; preds = %for.cond1
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %11 = load i32, i32* %row1, align 4
  %inc15 = add nsw i32 %11, 1
  store i32 %inc15, i32* %row1, align 4
  br label %for.cond, !llvm.loop !18

for.end16:                                        ; preds = %for.cond
  store i32 0, i32* %row1, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc103, %for.end16
  %12 = load i32, i32* %row1, align 4
  %cmp18 = icmp slt i32 %12, 32
  br i1 %cmp18, label %for.body20, label %for.end105

for.body20:                                       ; preds = %for.cond17
  store i32 0, i32* %row2, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc100, %for.body20
  %13 = load i32, i32* %row2, align 4
  %cmp22 = icmp slt i32 %13, 32
  br i1 %cmp22, label %for.body24, label %for.end102

for.body24:                                       ; preds = %for.cond21
  store i32 0, i32* %row3, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc97, %for.body24
  %14 = load i32, i32* %row3, align 4
  %cmp26 = icmp slt i32 %14, 32
  br i1 %cmp26, label %for.body28, label %for.end99

for.body28:                                       ; preds = %for.cond25
  %15 = load i32, i32* %row1, align 4
  %idxprom29 = sext i32 %15 to i64
  %arrayidx30 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @bad_even_rows, i64 0, i64 %idxprom29
  %16 = load i32, i32* %row2, align 4
  %idxprom31 = sext i32 %16 to i64
  %arrayidx32 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx30, i64 0, i64 %idxprom31
  %17 = load i32, i32* %arrayidx32, align 4
  store i32 %17, i32* %result1, align 4
  %18 = load i32, i32* %row2, align 4
  %idxprom33 = sext i32 %18 to i64
  %arrayidx34 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @bad_odd_rows, i64 0, i64 %idxprom33
  %19 = load i32, i32* %row3, align 4
  %idxprom35 = sext i32 %19 to i64
  %arrayidx36 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx34, i64 0, i64 %idxprom35
  %20 = load i32, i32* %arrayidx36, align 4
  store i32 %20, i32* %result2, align 4
  %21 = load i32, i32* %result1, align 4
  %cmp37 = icmp eq i32 %21, 0
  br i1 %cmp37, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body28
  %22 = load i32, i32* %result2, align 4
  %cmp39 = icmp eq i32 %22, 1
  br i1 %cmp39, label %land.lhs.true41, label %if.else

land.lhs.true41:                                  ; preds = %land.lhs.true
  %23 = load i32, i32* %row1, align 4
  %conv42 = trunc i32 %23 to i8
  %24 = load i32, i32* %row2, align 4
  %conv43 = trunc i32 %24 to i8
  %25 = load i32, i32* %row3, align 4
  %conv44 = trunc i32 %25 to i8
  %call45 = call i32 @triple_is_okay(i8 signext %conv42, i8 signext %conv43, i8 signext %conv44, i32 1)
  %tobool = icmp ne i32 %call45, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true41
  %26 = load i32, i32* %row1, align 4
  %27 = load i32, i32* %row2, align 4
  %mul = mul nsw i32 %27, 32
  %add = add nsw i32 %26, %mul
  %28 = load i32, i32* %row3, align 4
  %mul46 = mul nsw i32 %28, 1024
  %add47 = add nsw i32 %add, %mul46
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds [32768 x i32], [32768 x i32]* @bad_even_triple, i64 0, i64 %idxprom48
  store i32 0, i32* %arrayidx49, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true41, %land.lhs.true, %for.body28
  %29 = load i32, i32* %result1, align 4
  %tobool50 = icmp ne i32 %29, 0
  br i1 %tobool50, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %30 = load i32, i32* %result2, align 4
  %tobool51 = icmp ne i32 %30, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else
  %31 = phi i1 [ true, %if.else ], [ %tobool51, %lor.rhs ]
  %lor.ext = zext i1 %31 to i32
  %32 = load i32, i32* %row1, align 4
  %33 = load i32, i32* %row2, align 4
  %mul52 = mul nsw i32 %33, 32
  %add53 = add nsw i32 %32, %mul52
  %34 = load i32, i32* %row3, align 4
  %mul54 = mul nsw i32 %34, 1024
  %add55 = add nsw i32 %add53, %mul54
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds [32768 x i32], [32768 x i32]* @bad_even_triple, i64 0, i64 %idxprom56
  store i32 %lor.ext, i32* %arrayidx57, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then
  %35 = load i32, i32* %row1, align 4
  %idxprom58 = sext i32 %35 to i64
  %arrayidx59 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @bad_odd_rows, i64 0, i64 %idxprom58
  %36 = load i32, i32* %row2, align 4
  %idxprom60 = sext i32 %36 to i64
  %arrayidx61 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx59, i64 0, i64 %idxprom60
  %37 = load i32, i32* %arrayidx61, align 4
  store i32 %37, i32* %result1, align 4
  %38 = load i32, i32* %row2, align 4
  %idxprom62 = sext i32 %38 to i64
  %arrayidx63 = getelementptr inbounds [32 x [32 x i32]], [32 x [32 x i32]]* @bad_even_rows, i64 0, i64 %idxprom62
  %39 = load i32, i32* %row3, align 4
  %idxprom64 = sext i32 %39 to i64
  %arrayidx65 = getelementptr inbounds [32 x i32], [32 x i32]* %arrayidx63, i64 0, i64 %idxprom64
  %40 = load i32, i32* %arrayidx65, align 4
  store i32 %40, i32* %result2, align 4
  %41 = load i32, i32* %result1, align 4
  %cmp66 = icmp eq i32 %41, 0
  br i1 %cmp66, label %land.lhs.true68, label %if.else84

land.lhs.true68:                                  ; preds = %if.end
  %42 = load i32, i32* %result2, align 4
  %cmp69 = icmp eq i32 %42, 1
  br i1 %cmp69, label %land.lhs.true71, label %if.else84

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %43 = load i32, i32* %row1, align 4
  %conv72 = trunc i32 %43 to i8
  %44 = load i32, i32* %row2, align 4
  %conv73 = trunc i32 %44 to i8
  %45 = load i32, i32* %row3, align 4
  %conv74 = trunc i32 %45 to i8
  %call75 = call i32 @triple_is_okay(i8 signext %conv72, i8 signext %conv73, i8 signext %conv74, i32 0)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then77, label %if.else84

if.then77:                                        ; preds = %land.lhs.true71
  %46 = load i32, i32* %row1, align 4
  %47 = load i32, i32* %row2, align 4
  %mul78 = mul nsw i32 %47, 32
  %add79 = add nsw i32 %46, %mul78
  %48 = load i32, i32* %row3, align 4
  %mul80 = mul nsw i32 %48, 1024
  %add81 = add nsw i32 %add79, %mul80
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds [32768 x i32], [32768 x i32]* @bad_odd_triple, i64 0, i64 %idxprom82
  store i32 0, i32* %arrayidx83, align 4
  br label %if.end96

if.else84:                                        ; preds = %land.lhs.true71, %land.lhs.true68, %if.end
  %49 = load i32, i32* %result1, align 4
  %tobool85 = icmp ne i32 %49, 0
  br i1 %tobool85, label %lor.end88, label %lor.rhs86

lor.rhs86:                                        ; preds = %if.else84
  %50 = load i32, i32* %result2, align 4
  %tobool87 = icmp ne i32 %50, 0
  br label %lor.end88

lor.end88:                                        ; preds = %lor.rhs86, %if.else84
  %51 = phi i1 [ true, %if.else84 ], [ %tobool87, %lor.rhs86 ]
  %lor.ext89 = zext i1 %51 to i32
  %52 = load i32, i32* %row1, align 4
  %53 = load i32, i32* %row2, align 4
  %mul90 = mul nsw i32 %53, 32
  %add91 = add nsw i32 %52, %mul90
  %54 = load i32, i32* %row3, align 4
  %mul92 = mul nsw i32 %54, 1024
  %add93 = add nsw i32 %add91, %mul92
  %idxprom94 = sext i32 %add93 to i64
  %arrayidx95 = getelementptr inbounds [32768 x i32], [32768 x i32]* @bad_odd_triple, i64 0, i64 %idxprom94
  store i32 %lor.ext89, i32* %arrayidx95, align 4
  br label %if.end96

if.end96:                                         ; preds = %lor.end88, %if.then77
  br label %for.inc97

for.inc97:                                        ; preds = %if.end96
  %55 = load i32, i32* %row3, align 4
  %inc98 = add nsw i32 %55, 1
  store i32 %inc98, i32* %row3, align 4
  br label %for.cond25, !llvm.loop !19

for.end99:                                        ; preds = %for.cond25
  br label %for.inc100

for.inc100:                                       ; preds = %for.end99
  %56 = load i32, i32* %row2, align 4
  %inc101 = add nsw i32 %56, 1
  store i32 %inc101, i32* %row2, align 4
  br label %for.cond21, !llvm.loop !20

for.end102:                                       ; preds = %for.cond21
  br label %for.inc103

for.inc103:                                       ; preds = %for.end102
  %57 = load i32, i32* %row1, align 4
  %inc104 = add nsw i32 %57, 1
  store i32 %inc104, i32* %row1, align 4
  br label %for.cond17, !llvm.loop !21

for.end105:                                       ; preds = %for.cond17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @boardHasIslands(i8 signext %cell) #0 {
entry:
  %retval = alloca i32, align 4
  %cell.addr = alloca i8, align 1
  %current_triple = alloca i32, align 4
  store i8 %cell, i8* %cell.addr, align 1
  %0 = load i8, i8* %cell.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 40
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @board, align 8
  %2 = load i8, i8* %cell.addr, align 1
  %conv2 = sext i8 %2 to i32
  %div = sdiv i32 %conv2, 5
  %mul = mul nsw i32 %div, 5
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %1, %sh_prom
  %and = and i64 %shr, 32767
  %conv3 = trunc i64 %and to i32
  store i32 %conv3, i32* %current_triple, align 4
  %3 = load i8, i8* %cell.addr, align 1
  %conv4 = sext i8 %3 to i32
  %div5 = sdiv i32 %conv4, 5
  %rem = srem i32 %div5, 2
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %4 = load i32, i32* %current_triple, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [32768 x i32], [32768 x i32]* @bad_odd_triple, i64 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end
  %6 = load i32, i32* %current_triple, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [32768 x i32], [32768 x i32]* @bad_even_triple, i64 0, i64 %idxprom7
  %7 = load i32, i32* %arrayidx8, align 4
  store i32 %7, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then6, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_solution() #0 {
entry:
  %sol_no = alloca i32, align 4
  %index = alloca i32, align 4
  %sol_mask = alloca i64, align 8
  store i32 0, i32* %sol_no, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, i32* %sol_no, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %sol_no, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i64], [10 x i64]* @sol_masks, i64 0, i64 %idxprom
  %2 = load i64, i64* %arrayidx, align 8
  store i64 %2, i64* %sol_mask, align 8
  store i32 0, i32* %index, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %3 = load i32, i32* %index, align 4
  %cmp2 = icmp slt i32 %3, 50
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i64, i64* %sol_mask, align 8
  %and = and i64 %4, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %5 = load i32, i32* %sol_no, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [10 x i8], [10 x i8]* @sol_nums, i64 0, i64 %idxprom4
  %6 = load i8, i8* %arrayidx5, align 1
  %7 = load i32, i32* @solution_count, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [2100 x [50 x i8]], [2100 x [50 x i8]]* @solutions, i64 0, i64 %idxprom6
  %8 = load i32, i32* %index, align 4
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [50 x i8], [50 x i8]* %arrayidx7, i64 0, i64 %idxprom8
  store i8 %6, i8* %arrayidx9, align 1
  %9 = load i32, i32* %sol_no, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [10 x i8], [10 x i8]* @sol_nums, i64 0, i64 %idxprom10
  %10 = load i8, i8* %arrayidx11, align 1
  %11 = load i32, i32* @solution_count, align 4
  %add = add nsw i32 %11, 1
  %idxprom12 = sext i32 %add to i64
  %arrayidx13 = getelementptr inbounds [2100 x [50 x i8]], [2100 x [50 x i8]]* @solutions, i64 0, i64 %idxprom12
  %12 = load i32, i32* %index, align 4
  %sub = sub nsw i32 49, %12
  %idxprom14 = sext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds [50 x i8], [50 x i8]* %arrayidx13, i64 0, i64 %idxprom14
  store i8 %10, i8* %arrayidx15, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  %13 = load i64, i64* %sol_mask, align 8
  %shr = lshr i64 %13, 1
  store i64 %shr, i64* %sol_mask, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %index, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond1, !llvm.loop !22

for.end:                                          ; preds = %for.cond1
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %15 = load i32, i32* %sol_no, align 4
  %inc17 = add nsw i32 %15, 1
  store i32 %inc17, i32* %sol_no, align 4
  br label %for.cond, !llvm.loop !23

for.end18:                                        ; preds = %for.cond
  %16 = load i32, i32* @solution_count, align 4
  %add19 = add nsw i32 %16, 2
  store i32 %add19, i32* @solution_count, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solve(i32 %depth, i32 %cell) #0 {
entry:
  %depth.addr = alloca i32, align 4
  %cell.addr = alloca i32, align 4
  %piece = alloca i32, align 4
  %rotation = alloca i32, align 4
  %max_rots = alloca i32, align 4
  %piece_mask = alloca i64*, align 8
  %piece_no_mask = alloca i16, align 2
  store i32 %depth, i32* %depth.addr, align 4
  store i32 %cell, i32* %cell.addr, align 4
  %0 = load i32, i32* @solution_count, align 4
  %1 = load i32, i32* @max_solutions, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end69

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i64, i64* @board, align 8
  %3 = load i32, i32* %cell.addr, align 4
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %2, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %cell.addr, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %cell.addr, align 4
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %piece, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc67, %while.end
  %5 = load i32, i32* %piece, align 4
  %cmp1 = icmp slt i32 %5, 10
  br i1 %cmp1, label %for.body, label %for.end69

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %piece, align 4
  %shl2 = shl i32 1, %6
  %conv = trunc i32 %shl2 to i16
  store i16 %conv, i16* %piece_no_mask, align 2
  %7 = load i16, i16* @avail, align 2
  %conv3 = sext i16 %7 to i32
  %8 = load i16, i16* %piece_no_mask, align 2
  %conv4 = sext i16 %8 to i32
  %and5 = and i32 %conv3, %conv4
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %for.body
  br label %for.inc67

if.end8:                                          ; preds = %for.body
  %9 = load i16, i16* %piece_no_mask, align 2
  %conv9 = sext i16 %9 to i32
  %10 = load i16, i16* @avail, align 2
  %conv10 = sext i16 %10 to i32
  %xor = xor i32 %conv10, %conv9
  %conv11 = trunc i32 %xor to i16
  store i16 %conv11, i16* @avail, align 2
  %11 = load i32, i32* %piece, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [10 x [50 x i32]], [10 x [50 x i32]]* @piece_counts, i64 0, i64 %idxprom
  %12 = load i32, i32* %cell.addr, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [50 x i32], [50 x i32]* %arrayidx, i64 0, i64 %idxprom12
  %13 = load i32, i32* %arrayidx13, align 4
  store i32 %13, i32* %max_rots, align 4
  %14 = load i32, i32* %piece, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [10 x [50 x [12 x i64]]], [10 x [50 x [12 x i64]]]* @pieces, i64 0, i64 %idxprom14
  %15 = load i32, i32* %cell.addr, align 4
  %idxprom16 = sext i32 %15 to i64
  %arrayidx17 = getelementptr inbounds [50 x [12 x i64]], [50 x [12 x i64]]* %arrayidx15, i64 0, i64 %idxprom16
  %arraydecay = getelementptr inbounds [12 x i64], [12 x i64]* %arrayidx17, i64 0, i64 0
  store i64* %arraydecay, i64** %piece_mask, align 8
  store i32 0, i32* %rotation, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %if.end8
  %16 = load i32, i32* %rotation, align 4
  %17 = load i32, i32* %max_rots, align 4
  %cmp19 = icmp slt i32 %16, %17
  br i1 %cmp19, label %for.body21, label %for.end

for.body21:                                       ; preds = %for.cond18
  %18 = load i64, i64* @board, align 8
  %19 = load i64*, i64** %piece_mask, align 8
  %20 = load i32, i32* %rotation, align 4
  %idx.ext = sext i32 %20 to i64
  %add.ptr = getelementptr inbounds i64, i64* %19, i64 %idx.ext
  %21 = load i64, i64* %add.ptr, align 8
  %and22 = and i64 %18, %21
  %tobool23 = icmp ne i64 %and22, 0
  br i1 %tobool23, label %if.end61, label %if.then24

if.then24:                                        ; preds = %for.body21
  %22 = load i32, i32* %piece, align 4
  %conv25 = trunc i32 %22 to i8
  %23 = load i32, i32* %depth.addr, align 4
  %idxprom26 = sext i32 %23 to i64
  %arrayidx27 = getelementptr inbounds [10 x i8], [10 x i8]* @sol_nums, i64 0, i64 %idxprom26
  store i8 %conv25, i8* %arrayidx27, align 1
  %24 = load i64*, i64** %piece_mask, align 8
  %25 = load i32, i32* %rotation, align 4
  %idx.ext28 = sext i32 %25 to i64
  %add.ptr29 = getelementptr inbounds i64, i64* %24, i64 %idx.ext28
  %26 = load i64, i64* %add.ptr29, align 8
  %27 = load i32, i32* %depth.addr, align 4
  %idxprom30 = sext i32 %27 to i64
  %arrayidx31 = getelementptr inbounds [10 x i64], [10 x i64]* @sol_masks, i64 0, i64 %idxprom30
  store i64 %26, i64* %arrayidx31, align 8
  %28 = load i32, i32* %depth.addr, align 4
  %cmp32 = icmp eq i32 %28, 9
  br i1 %cmp32, label %if.then34, label %if.end39

if.then34:                                        ; preds = %if.then24
  call void @record_solution()
  %29 = load i16, i16* %piece_no_mask, align 2
  %conv35 = sext i16 %29 to i32
  %30 = load i16, i16* @avail, align 2
  %conv36 = sext i16 %30 to i32
  %xor37 = xor i32 %conv36, %conv35
  %conv38 = trunc i32 %xor37 to i16
  store i16 %conv38, i16* @avail, align 2
  br label %for.end69

if.end39:                                         ; preds = %if.then24
  %31 = load i64*, i64** %piece_mask, align 8
  %32 = load i32, i32* %rotation, align 4
  %idx.ext40 = sext i32 %32 to i64
  %add.ptr41 = getelementptr inbounds i64, i64* %31, i64 %idx.ext40
  %33 = load i64, i64* %add.ptr41, align 8
  %34 = load i64, i64* @board, align 8
  %or = or i64 %34, %33
  store i64 %or, i64* @board, align 8
  %35 = load i32, i32* %piece, align 4
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds [10 x [50 x [12 x i8]]], [10 x [50 x [12 x i8]]]* @next_cell, i64 0, i64 %idxprom42
  %36 = load i32, i32* %cell.addr, align 4
  %idxprom44 = sext i32 %36 to i64
  %arrayidx45 = getelementptr inbounds [50 x [12 x i8]], [50 x [12 x i8]]* %arrayidx43, i64 0, i64 %idxprom44
  %37 = load i32, i32* %rotation, align 4
  %idxprom46 = sext i32 %37 to i64
  %arrayidx47 = getelementptr inbounds [12 x i8], [12 x i8]* %arrayidx45, i64 0, i64 %idxprom46
  %38 = load i8, i8* %arrayidx47, align 1
  %call = call i32 @boardHasIslands(i8 signext %38)
  %tobool48 = icmp ne i32 %call, 0
  br i1 %tobool48, label %if.end57, label %if.then49

if.then49:                                        ; preds = %if.end39
  %39 = load i32, i32* %depth.addr, align 4
  %add = add nsw i32 %39, 1
  %40 = load i32, i32* %piece, align 4
  %idxprom50 = sext i32 %40 to i64
  %arrayidx51 = getelementptr inbounds [10 x [50 x [12 x i8]]], [10 x [50 x [12 x i8]]]* @next_cell, i64 0, i64 %idxprom50
  %41 = load i32, i32* %cell.addr, align 4
  %idxprom52 = sext i32 %41 to i64
  %arrayidx53 = getelementptr inbounds [50 x [12 x i8]], [50 x [12 x i8]]* %arrayidx51, i64 0, i64 %idxprom52
  %42 = load i32, i32* %rotation, align 4
  %idxprom54 = sext i32 %42 to i64
  %arrayidx55 = getelementptr inbounds [12 x i8], [12 x i8]* %arrayidx53, i64 0, i64 %idxprom54
  %43 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %43 to i32
  call void @solve(i32 %add, i32 %conv56)
  br label %if.end57

if.end57:                                         ; preds = %if.then49, %if.end39
  %44 = load i64*, i64** %piece_mask, align 8
  %45 = load i32, i32* %rotation, align 4
  %idx.ext58 = sext i32 %45 to i64
  %add.ptr59 = getelementptr inbounds i64, i64* %44, i64 %idx.ext58
  %46 = load i64, i64* %add.ptr59, align 8
  %47 = load i64, i64* @board, align 8
  %xor60 = xor i64 %47, %46
  store i64 %xor60, i64* @board, align 8
  br label %if.end61

if.end61:                                         ; preds = %if.end57, %for.body21
  br label %for.inc

for.inc:                                          ; preds = %if.end61
  %48 = load i32, i32* %rotation, align 4
  %inc62 = add nsw i32 %48, 1
  store i32 %inc62, i32* %rotation, align 4
  br label %for.cond18, !llvm.loop !25

for.end:                                          ; preds = %for.cond18
  %49 = load i16, i16* %piece_no_mask, align 2
  %conv63 = sext i16 %49 to i32
  %50 = load i16, i16* @avail, align 2
  %conv64 = sext i16 %50 to i32
  %xor65 = xor i32 %conv64, %conv63
  %conv66 = trunc i32 %xor65 to i16
  store i16 %conv66, i16* @avail, align 2
  br label %for.inc67

for.inc67:                                        ; preds = %for.end, %if.then7
  %51 = load i32, i32* %piece, align 4
  %inc68 = add nsw i32 %51, 1
  store i32 %inc68, i32* %piece, align 4
  br label %for.cond, !llvm.loop !26

for.end69:                                        ; preds = %if.then, %if.then34, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solution_sort(i8* %elem1, i8* %elem2) #0 {
entry:
  %elem1.addr = alloca i8*, align 8
  %elem2.addr = alloca i8*, align 8
  %char1 = alloca i8*, align 8
  %char2 = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %elem1, i8** %elem1.addr, align 8
  store i8* %elem2, i8** %elem2.addr, align 8
  %0 = load i8*, i8** %elem1.addr, align 8
  store i8* %0, i8** %char1, align 8
  %1 = load i8*, i8** %elem2.addr, align 8
  store i8* %1, i8** %char2, align 8
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 50
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i8*, i8** %char1, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %6 = load i8*, i8** %char2, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %6, i64 %idxprom1
  %8 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %8 to i32
  %cmp4 = icmp eq i32 %conv, %conv3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond, !llvm.loop !27

while.end:                                        ; preds = %land.end
  %11 = load i8*, i8** %char1, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %11, i64 %idxprom6
  %13 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %13 to i32
  %14 = load i8*, i8** %char2, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %14, i64 %idxprom9
  %16 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %16 to i32
  %sub = sub nsw i32 %conv8, %conv11
  ret i32 %sub
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pretty(i8* %b) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %b, i8** %b.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %b.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %add = add nsw i32 %conv, 48
  %4 = load i8*, i8** %b.addr, align 8
  %5 = load i32, i32* %i, align 4
  %add1 = add nsw i32 %5, 1
  %idxprom2 = sext i32 %add1 to i64
  %arrayidx3 = getelementptr inbounds i8, i8* %4, i64 %idxprom2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %6 to i32
  %add5 = add nsw i32 %conv4, 48
  %7 = load i8*, i8** %b.addr, align 8
  %8 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %8, 2
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 %idxprom7
  %9 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %9 to i32
  %add10 = add nsw i32 %conv9, 48
  %10 = load i8*, i8** %b.addr, align 8
  %11 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %11, 3
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds i8, i8* %10, i64 %idxprom12
  %12 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %12 to i32
  %add15 = add nsw i32 %conv14, 48
  %13 = load i8*, i8** %b.addr, align 8
  %14 = load i32, i32* %i, align 4
  %add16 = add nsw i32 %14, 4
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds i8, i8* %13, i64 %idxprom17
  %15 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %15 to i32
  %add20 = add nsw i32 %conv19, 48
  %16 = load i8*, i8** %b.addr, align 8
  %17 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %17, 5
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds i8, i8* %16, i64 %idxprom22
  %18 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %18 to i32
  %add25 = add nsw i32 %conv24, 48
  %19 = load i8*, i8** %b.addr, align 8
  %20 = load i32, i32* %i, align 4
  %add26 = add nsw i32 %20, 6
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds i8, i8* %19, i64 %idxprom27
  %21 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %21 to i32
  %add30 = add nsw i32 %conv29, 48
  %22 = load i8*, i8** %b.addr, align 8
  %23 = load i32, i32* %i, align 4
  %add31 = add nsw i32 %23, 7
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds i8, i8* %22, i64 %idxprom32
  %24 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %24 to i32
  %add35 = add nsw i32 %conv34, 48
  %25 = load i8*, i8** %b.addr, align 8
  %26 = load i32, i32* %i, align 4
  %add36 = add nsw i32 %26, 8
  %idxprom37 = sext i32 %add36 to i64
  %arrayidx38 = getelementptr inbounds i8, i8* %25, i64 %idxprom37
  %27 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %27 to i32
  %add40 = add nsw i32 %conv39, 48
  %28 = load i8*, i8** %b.addr, align 8
  %29 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %29, 9
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds i8, i8* %28, i64 %idxprom42
  %30 = load i8, i8* %arrayidx43, align 1
  %conv44 = sext i8 %30 to i32
  %add45 = add nsw i32 %conv44, 48
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %add, i32 %add5, i32 %add10, i32 %add15, i32 %add20, i32 %add25, i32 %add30, i32 %add35, i32 %add40, i32 %add45)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %add46 = add nsw i32 %31, 10
  store i32 %add46, i32* %i, align 4
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #3
  store i32 %call, i32* @max_solutions, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @calc_pieces()
  call void @calc_rows()
  call void @solve(i32 0, i32 0)
  %3 = load i32, i32* @solution_count, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %3)
  %4 = load i32, i32* @solution_count, align 4
  %conv = sext i32 %4 to i64
  call void @qsort(i8* getelementptr inbounds ([2100 x [50 x i8]], [2100 x [50 x i8]]* @solutions, i32 0, i32 0, i32 0), i64 %conv, i64 50, i32 (i8*, i8*)* @solution_sort)
  call void @pretty(i8* getelementptr inbounds ([2100 x [50 x i8]], [2100 x [50 x i8]]* @solutions, i64 0, i64 0, i64 0))
  %5 = load i32, i32* @solution_count, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx2 = getelementptr inbounds [2100 x [50 x i8]], [2100 x [50 x i8]]* @solutions, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %arrayidx2, i64 0, i64 0
  call void @pretty(i8* %arraydecay)
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
