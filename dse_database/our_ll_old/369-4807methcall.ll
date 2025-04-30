; ModuleID = './code/369-4807methcall.c'
source_filename = "./code/369-4807methcall.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Toggle = type { i8, ptr, ptr }
%struct.NthToggle = type { i8, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"true\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"false\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define signext i8 @toggle_value(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %state = getelementptr inbounds %struct.Toggle, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %state, align 8
  ret i8 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @toggle_activate(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %state = getelementptr inbounds %struct.Toggle, ptr %0, i32 0, i32 0
  %1 = load i8, ptr %state, align 8
  %tobool = icmp ne i8 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %2 = load ptr, ptr %this.addr, align 8
  %state1 = getelementptr inbounds %struct.Toggle, ptr %2, i32 0, i32 0
  store i8 %conv, ptr %state1, align 8
  %3 = load ptr, ptr %this.addr, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @init_Toggle(ptr noundef %this, i8 noundef signext %start_state) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %start_state.addr = alloca i8, align 1
  store ptr %this, ptr %this.addr, align 8
  store i8 %start_state, ptr %start_state.addr, align 1
  %0 = load i8, ptr %start_state.addr, align 1
  %1 = load ptr, ptr %this.addr, align 8
  %state = getelementptr inbounds %struct.Toggle, ptr %1, i32 0, i32 0
  store i8 %0, ptr %state, align 8
  %2 = load ptr, ptr %this.addr, align 8
  %value = getelementptr inbounds %struct.Toggle, ptr %2, i32 0, i32 1
  store ptr @toggle_value, ptr %value, align 8
  %3 = load ptr, ptr %this.addr, align 8
  %activate = getelementptr inbounds %struct.Toggle, ptr %3, i32 0, i32 2
  store ptr @toggle_activate, ptr %activate, align 8
  %4 = load ptr, ptr %this.addr, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @new_Toggle(i8 noundef signext %start_state) #0 {
entry:
  %start_state.addr = alloca i8, align 1
  %this = alloca ptr, align 8
  store i8 %start_state, ptr %start_state.addr, align 1
  %call = call ptr @malloc(i64 noundef 24) #3
  store ptr %call, ptr %this, align 8
  %0 = load ptr, ptr %this, align 8
  %1 = load i8, ptr %start_state.addr, align 1
  %call1 = call ptr @init_Toggle(ptr noundef %0, i8 noundef signext %1)
  ret ptr %call1
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @nth_toggle_activate(ptr noundef %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %counter = getelementptr inbounds %struct.NthToggle, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %counter, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %counter, align 4
  %2 = load ptr, ptr %this.addr, align 8
  %count_max = getelementptr inbounds %struct.NthToggle, ptr %2, i32 0, i32 3
  %3 = load i32, ptr %count_max, align 8
  %cmp = icmp sge i32 %inc, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %this.addr, align 8
  %state = getelementptr inbounds %struct.NthToggle, ptr %4, i32 0, i32 0
  %5 = load i8, ptr %state, align 8
  %tobool = icmp ne i8 %5, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %6 = load ptr, ptr %this.addr, align 8
  %state1 = getelementptr inbounds %struct.NthToggle, ptr %6, i32 0, i32 0
  store i8 %conv, ptr %state1, align 8
  %7 = load ptr, ptr %this.addr, align 8
  %counter2 = getelementptr inbounds %struct.NthToggle, ptr %7, i32 0, i32 4
  store i32 0, ptr %counter2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %this.addr, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @init_NthToggle(ptr noundef %this, i32 noundef %max_count) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %max_count.addr = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  store i32 %max_count, ptr %max_count.addr, align 4
  %0 = load i32, ptr %max_count.addr, align 4
  %1 = load ptr, ptr %this.addr, align 8
  %count_max = getelementptr inbounds %struct.NthToggle, ptr %1, i32 0, i32 3
  store i32 %0, ptr %count_max, align 8
  %2 = load ptr, ptr %this.addr, align 8
  %counter = getelementptr inbounds %struct.NthToggle, ptr %2, i32 0, i32 4
  store i32 0, ptr %counter, align 4
  %3 = load ptr, ptr %this.addr, align 8
  %activate = getelementptr inbounds %struct.NthToggle, ptr %3, i32 0, i32 2
  store ptr @nth_toggle_activate, ptr %activate, align 8
  %4 = load ptr, ptr %this.addr, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @new_NthToggle(i8 noundef signext %start_state, i32 noundef %max_count) #0 {
entry:
  %start_state.addr = alloca i8, align 1
  %max_count.addr = alloca i32, align 4
  %this = alloca ptr, align 8
  store i8 %start_state, ptr %start_state.addr, align 1
  store i32 %max_count, ptr %max_count.addr, align 4
  %call = call ptr @malloc(i64 noundef 32) #3
  store ptr %call, ptr %this, align 8
  %0 = load ptr, ptr %this, align 8
  %1 = load i8, ptr %start_state.addr, align 1
  %call1 = call ptr @init_Toggle(ptr noundef %0, i8 noundef signext %1)
  store ptr %call1, ptr %this, align 8
  %2 = load ptr, ptr %this, align 8
  %3 = load i32, ptr %max_count.addr, align 4
  %call2 = call ptr @init_NthToggle(ptr noundef %2, i32 noundef %3)
  ret ptr %call2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %tog = alloca ptr, align 8
  %ntog = alloca ptr, align 8
  %val = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @atoi(ptr noundef %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 50000000, %cond.false ]
  store i32 %cond, ptr %n, align 4
  store i8 1, ptr %val, align 1
  %call1 = call ptr @new_Toggle(i8 noundef signext 1)
  store ptr %call1, ptr %tog, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %n, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %tog, align 8
  %activate = getelementptr inbounds %struct.Toggle, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %activate, align 8
  %7 = load ptr, ptr %tog, align 8
  %call3 = call ptr %6(ptr noundef %7)
  %value = getelementptr inbounds %struct.Toggle, ptr %call3, i32 0, i32 1
  %8 = load ptr, ptr %value, align 8
  %9 = load ptr, ptr %tog, align 8
  %call4 = call signext i8 %8(ptr noundef %9)
  store i8 %call4, ptr %val, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %11 = load i8, ptr %val, align 1
  %conv = sext i8 %11 to i32
  %tobool = icmp ne i32 %conv, 0
  %12 = zext i1 %tobool to i64
  %cond5 = select i1 %tobool, ptr @.str, ptr @.str.1
  %call6 = call i32 @puts(ptr noundef %cond5)
  %13 = load ptr, ptr %tog, align 8
  call void @free(ptr noundef %13)
  store i8 1, ptr %val, align 1
  %14 = load i8, ptr %val, align 1
  %call7 = call ptr @new_NthToggle(i8 noundef signext %14, i32 noundef 3)
  store ptr %call7, ptr %ntog, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc16, %for.end
  %15 = load i32, ptr %i, align 4
  %16 = load i32, ptr %n, align 4
  %cmp9 = icmp slt i32 %15, %16
  br i1 %cmp9, label %for.body11, label %for.end18

for.body11:                                       ; preds = %for.cond8
  %17 = load ptr, ptr %ntog, align 8
  %activate12 = getelementptr inbounds %struct.NthToggle, ptr %17, i32 0, i32 2
  %18 = load ptr, ptr %activate12, align 8
  %19 = load ptr, ptr %ntog, align 8
  %call13 = call ptr %18(ptr noundef %19)
  %value14 = getelementptr inbounds %struct.Toggle, ptr %call13, i32 0, i32 1
  %20 = load ptr, ptr %value14, align 8
  %21 = load ptr, ptr %ntog, align 8
  %call15 = call signext i8 %20(ptr noundef %21)
  store i8 %call15, ptr %val, align 1
  br label %for.inc16

for.inc16:                                        ; preds = %for.body11
  %22 = load i32, ptr %i, align 4
  %inc17 = add nsw i32 %22, 1
  store i32 %inc17, ptr %i, align 4
  br label %for.cond8, !llvm.loop !7

for.end18:                                        ; preds = %for.cond8
  %23 = load i8, ptr %val, align 1
  %conv19 = sext i8 %23 to i32
  %tobool20 = icmp ne i32 %conv19, 0
  %24 = zext i1 %tobool20 to i64
  %cond21 = select i1 %tobool20, ptr @.str, ptr @.str.1
  %call22 = call i32 @puts(ptr noundef %cond21)
  %25 = load ptr, ptr %ntog, align 8
  call void @free(ptr noundef %25)
  ret i32 0
}

declare i32 @atoi(ptr noundef) #2

declare i32 @puts(ptr noundef) #2

declare void @free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

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
