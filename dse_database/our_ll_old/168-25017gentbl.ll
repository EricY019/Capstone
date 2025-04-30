; ModuleID = './code/168-25017gentbl.c'
source_filename = "./code/168-25017gentbl.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [25 x i8] c"BYTE CharTable[256] =\0A{\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CT_DIGIT\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"CT_XDIGIT\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"CT_AF_LOW\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"CT_AF_UP\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"CT_SPACE\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"CT_ID_START\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"CT_IDENT\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c" // '%c' = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %has = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %has, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %1 = load i32, ptr %i, align 4
  %call2 = call i32 @isdigit(i32 noundef %1) #3
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %has, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %has, align 4
  %tobool3 = icmp ne i32 %2, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end7

if.end7:                                          ; preds = %if.end, %for.body
  %3 = load i32, ptr %i, align 4
  %call8 = call i32 @isxdigit(i32 noundef %3) #3
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then10, label %if.end17

if.then10:                                        ; preds = %if.end7
  %4 = load i32, ptr %has, align 4
  %inc11 = add nsw i32 %4, 1
  store i32 %inc11, ptr %has, align 4
  %tobool12 = icmp ne i32 %4, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then10
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then10
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.end7
  %5 = load i32, ptr %i, align 4
  %cmp18 = icmp sge i32 %5, 97
  br i1 %cmp18, label %land.lhs.true, label %if.end27

land.lhs.true:                                    ; preds = %if.end17
  %6 = load i32, ptr %i, align 4
  %cmp19 = icmp sle i32 %6, 102
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %land.lhs.true
  %7 = load i32, ptr %has, align 4
  %inc21 = add nsw i32 %7, 1
  store i32 %inc21, ptr %has, align 4
  %tobool22 = icmp ne i32 %7, 0
  br i1 %tobool22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.then20
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then20
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %land.lhs.true, %if.end17
  %8 = load i32, ptr %i, align 4
  %cmp28 = icmp sge i32 %8, 65
  br i1 %cmp28, label %land.lhs.true29, label %if.end38

land.lhs.true29:                                  ; preds = %if.end27
  %9 = load i32, ptr %i, align 4
  %cmp30 = icmp sle i32 %9, 70
  br i1 %cmp30, label %if.then31, label %if.end38

if.then31:                                        ; preds = %land.lhs.true29
  %10 = load i32, ptr %has, align 4
  %inc32 = add nsw i32 %10, 1
  store i32 %inc32, ptr %has, align 4
  %tobool33 = icmp ne i32 %10, 0
  br i1 %tobool33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.then31
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.then31
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %if.end38

if.end38:                                         ; preds = %if.end36, %land.lhs.true29, %if.end27
  %11 = load i32, ptr %i, align 4
  %call39 = call i32 @isspace(i32 noundef %11) #3
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then41, label %if.end48

if.then41:                                        ; preds = %if.end38
  %12 = load i32, ptr %has, align 4
  %inc42 = add nsw i32 %12, 1
  store i32 %inc42, ptr %has, align 4
  %tobool43 = icmp ne i32 %12, 0
  br i1 %tobool43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %if.then41
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %if.then41
  %call47 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end38
  %13 = load i32, ptr %i, align 4
  %call49 = call i32 @isalpha(i32 noundef %13) #3
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end48
  %14 = load i32, ptr %i, align 4
  %cmp51 = icmp eq i32 %14, 95
  br i1 %cmp51, label %if.then56, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false
  %15 = load i32, ptr %i, align 4
  %cmp53 = icmp eq i32 %15, 63
  br i1 %cmp53, label %if.then56, label %lor.lhs.false54

lor.lhs.false54:                                  ; preds = %lor.lhs.false52
  %16 = load i32, ptr %i, align 4
  %cmp55 = icmp eq i32 %16, 36
  br i1 %cmp55, label %if.then56, label %if.end63

if.then56:                                        ; preds = %lor.lhs.false54, %lor.lhs.false52, %lor.lhs.false, %if.end48
  %17 = load i32, ptr %has, align 4
  %inc57 = add nsw i32 %17, 1
  store i32 %inc57, ptr %has, align 4
  %tobool58 = icmp ne i32 %17, 0
  br i1 %tobool58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.then56
  %call60 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.then56
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str.8)
  br label %if.end63

if.end63:                                         ; preds = %if.end61, %lor.lhs.false54
  %18 = load i32, ptr %i, align 4
  %call64 = call i32 @isalnum(i32 noundef %18) #3
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then72, label %lor.lhs.false66

lor.lhs.false66:                                  ; preds = %if.end63
  %19 = load i32, ptr %i, align 4
  %cmp67 = icmp eq i32 %19, 95
  br i1 %cmp67, label %if.then72, label %lor.lhs.false68

lor.lhs.false68:                                  ; preds = %lor.lhs.false66
  %20 = load i32, ptr %i, align 4
  %cmp69 = icmp eq i32 %20, 63
  br i1 %cmp69, label %if.then72, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %lor.lhs.false68
  %21 = load i32, ptr %i, align 4
  %cmp71 = icmp eq i32 %21, 36
  br i1 %cmp71, label %if.then72, label %if.end79

if.then72:                                        ; preds = %lor.lhs.false70, %lor.lhs.false68, %lor.lhs.false66, %if.end63
  %22 = load i32, ptr %has, align 4
  %inc73 = add nsw i32 %22, 1
  store i32 %inc73, ptr %has, align 4
  %tobool74 = icmp ne i32 %22, 0
  br i1 %tobool74, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.then72
  %call76 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.then72
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.9)
  br label %if.end79

if.end79:                                         ; preds = %if.end77, %lor.lhs.false70
  %23 = load i32, ptr %has, align 4
  %tobool80 = icmp ne i32 %23, 0
  br i1 %tobool80, label %if.end83, label %if.then81

if.then81:                                        ; preds = %if.end79
  %call82 = call i32 (ptr, ...) @printf(ptr noundef @.str.10)
  br label %if.end83

if.end83:                                         ; preds = %if.then81, %if.end79
  %24 = load i32, ptr %i, align 4
  %cmp84 = icmp eq i32 %24, 255
  %25 = zext i1 %cmp84 to i64
  %cond = select i1 %cmp84, i32 32, i32 44
  %call85 = call i32 @putchar(i32 noundef %cond)
  %26 = load i32, ptr %i, align 4
  %cmp86 = icmp sgt i32 %26, 31
  br i1 %cmp86, label %land.lhs.true87, label %cond.false

land.lhs.true87:                                  ; preds = %if.end83
  %27 = load i32, ptr %i, align 4
  %cmp88 = icmp slt i32 %27, 128
  br i1 %cmp88, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true87
  %28 = load i32, ptr %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true87, %if.end83
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond89 = phi i32 [ %28, %cond.true ], [ 46, %cond.false ]
  %29 = load i32, ptr %i, align 4
  %call90 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i32 noundef %cond89, i32 noundef %29)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %30 = load i32, ptr %i, align 4
  %inc91 = add nsw i32 %30, 1
  store i32 %inc91, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call92 = call i32 (ptr, ...) @printf(ptr noundef @.str.12)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isdigit(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isxdigit(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isalpha(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @isalnum(i32 noundef) #2

declare i32 @putchar(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
