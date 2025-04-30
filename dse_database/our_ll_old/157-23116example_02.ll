; ModuleID = './code/157-23116example_02.c'
source_filename = "./code/157-23116example_02.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Please input your choices (1-5):\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Menu\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"1. Input the student's names and scores\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"2. Search scores of some students\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"3. Modify scores of some students\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"4. List all students' scores\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"3. Quit the system\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_menu_item(ptr noundef %menu_text, i32 noundef %align, i32 noundef %new_line) #0 {
entry:
  %menu_text.addr = alloca ptr, align 8
  %align.addr = alloca i32, align 4
  %new_line.addr = alloca i32, align 4
  %text_len = alloca i32, align 4
  %prefix_num = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %menu_text, ptr %menu_text.addr, align 8
  store i32 %align, ptr %align.addr, align 4
  store i32 %new_line, ptr %new_line.addr, align 4
  %0 = load ptr, ptr %menu_text.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #3
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %text_len, align 4
  %1 = load i32, ptr %text_len, align 4
  %sub = sub nsw i32 40, %1
  %div = sdiv i32 %sub, 2
  store i32 %div, ptr %prefix_num, align 4
  %2 = load i32, ptr %align.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %prefix_num, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call i32 @putchar(i32 noundef 32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %6 = load ptr, ptr %menu_text.addr, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %6)
  store i32 0, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc11, %if.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %prefix_num, align 4
  %cmp7 = icmp slt i32 %7, %8
  br i1 %cmp7, label %for.body9, label %for.end13

for.body9:                                        ; preds = %for.cond6
  %call10 = call i32 @putchar(i32 noundef 32)
  br label %for.inc11

for.inc11:                                        ; preds = %for.body9
  %9 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %9, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond6, !llvm.loop !7

for.end13:                                        ; preds = %for.cond6
  %10 = load i32, ptr %new_line.addr, align 4
  %cmp14 = icmp eq i32 %10, 1
  br i1 %cmp14, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.end13
  %call17 = call i32 @putchar(i32 noundef 10)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end13
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #1

declare i32 @putchar(i32 noundef) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_seperator_line() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 40
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @putchar(i32 noundef 61)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @putchar(i32 noundef 10)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_menu_choice() #0 {
entry:
  call void @print_menu_item(ptr noundef @.str.1, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_menu() #0 {
entry:
  call void @print_menu_item(ptr noundef @.str.2, i32 noundef 1, i32 noundef 1)
  call void @print_seperator_line()
  call void @print_menu_item(ptr noundef @.str.3, i32 noundef 0, i32 noundef 1)
  call void @print_menu_item(ptr noundef @.str.4, i32 noundef 0, i32 noundef 1)
  call void @print_menu_item(ptr noundef @.str.5, i32 noundef 0, i32 noundef 1)
  call void @print_menu_item(ptr noundef @.str.6, i32 noundef 0, i32 noundef 1)
  call void @print_menu_item(ptr noundef @.str.7, i32 noundef 0, i32 noundef 1)
  call void @print_seperator_line()
  call void @print_menu_choice()
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @print_menu()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

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
