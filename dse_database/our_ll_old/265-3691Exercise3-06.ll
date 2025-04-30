; ModuleID = './code/265-3691Exercise3-06.c'
source_filename = "./code/265-3691Exercise3-06.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [100 x i8], align 1
  %space = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 12, ptr %space, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 2147483647)
  %arraydecay = getelementptr inbounds [100 x i8], ptr %s, i64 0, i64 0
  %0 = load i32, ptr %space, align 4
  call void @itoa(i32 noundef 2147483647, ptr noundef %arraydecay, i32 noundef %0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef -2147483648)
  %arraydecay2 = getelementptr inbounds [100 x i8], ptr %s, i64 0, i64 0
  %1 = load i32, ptr %space, align 4
  call void @itoa(i32 noundef -2147483648, ptr noundef %arraydecay2, i32 noundef %1)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @itoa(i32 noundef %n, ptr noundef %s, i32 noundef %b) #0 {
entry:
  %n.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %b.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %sign = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %n.addr, align 4
  store i32 %0, ptr %sign, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4
  %cmp1 = icmp ne i32 %1, -2147483648
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load i32, ptr %n.addr, align 4
  %sub = sub nsw i32 0, %2
  store i32 %sub, ptr %n.addr, align 4
  br label %if.end6

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load i32, ptr %n.addr, align 4
  %cmp2 = icmp eq i32 %3, -2147483648
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.else
  %4 = load i32, ptr %n.addr, align 4
  %sub4 = sub nsw i32 0, %4
  %sub5 = sub nsw i32 %sub4, 1
  store i32 %sub5, ptr %n.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  store i32 0, ptr %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end6
  %5 = load i32, ptr %n.addr, align 4
  %rem = srem i32 %5, 10
  %add = add nsw i32 %rem, 48
  %conv = trunc i32 %add to i8
  %6 = load ptr, ptr %s.addr, align 8
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %6, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = load i32, ptr %n.addr, align 4
  %div = sdiv i32 %8, 10
  store i32 %div, ptr %n.addr, align 4
  %cmp7 = icmp sgt i32 %div, 0
  br i1 %cmp7, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  %9 = load i32, ptr %sign, align 4
  %cmp9 = icmp eq i32 %9, -2147483648
  br i1 %cmp9, label %if.then11, label %if.end17

if.then11:                                        ; preds = %do.end
  %10 = load ptr, ptr %s.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, ptr %10, i64 0
  %11 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %11 to i32
  %add14 = add nsw i32 %conv13, 1
  %conv15 = trunc i32 %add14 to i8
  %12 = load ptr, ptr %s.addr, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %12, i64 0
  store i8 %conv15, ptr %arrayidx16, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %do.end
  %13 = load i32, ptr %sign, align 4
  %cmp18 = icmp slt i32 %13, 0
  br i1 %cmp18, label %if.then20, label %if.else28

if.then20:                                        ; preds = %if.end17
  %14 = load ptr, ptr %s.addr, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %15 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %14, i64 %idxprom21
  store i8 45, ptr %arrayidx22, align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then20
  %16 = load i32, ptr %i, align 4
  %inc23 = add nsw i32 %16, 1
  store i32 %inc23, ptr %i, align 4
  %17 = load i32, ptr %b.addr, align 4
  %cmp24 = icmp slt i32 %16, %17
  br i1 %cmp24, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load ptr, ptr %s.addr, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds i8, ptr %18, i64 %idxprom26
  store i8 32, ptr %arrayidx27, align 1
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  br label %if.end37

if.else28:                                        ; preds = %if.end17
  br label %while.cond29

while.cond29:                                     ; preds = %while.body32, %if.else28
  %20 = load i32, ptr %i, align 4
  %21 = load i32, ptr %b.addr, align 4
  %cmp30 = icmp slt i32 %20, %21
  br i1 %cmp30, label %while.body32, label %while.end36

while.body32:                                     ; preds = %while.cond29
  %22 = load ptr, ptr %s.addr, align 8
  %23 = load i32, ptr %i, align 4
  %inc33 = add nsw i32 %23, 1
  store i32 %inc33, ptr %i, align 4
  %idxprom34 = sext i32 %23 to i64
  %arrayidx35 = getelementptr inbounds i8, ptr %22, i64 %idxprom34
  store i8 32, ptr %arrayidx35, align 1
  br label %while.cond29, !llvm.loop !8

while.end36:                                      ; preds = %while.cond29
  br label %if.end37

if.end37:                                         ; preds = %while.end36, %while.end
  %24 = load ptr, ptr %s.addr, align 8
  %25 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %25 to i64
  %arrayidx39 = getelementptr inbounds i8, ptr %24, i64 %idxprom38
  store i8 0, ptr %arrayidx39, align 1
  %26 = load ptr, ptr %s.addr, align 8
  call void @reverse(ptr noundef %26)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end37
  %27 = load i32, ptr %i, align 4
  %conv40 = sext i32 %27 to i64
  %28 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %28) #3
  %cmp41 = icmp ult i64 %conv40, %call
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load ptr, ptr %s.addr, align 8
  %30 = load i32, ptr %i, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds i8, ptr %29, i64 %idxprom43
  %31 = load i8, ptr %arrayidx44, align 1
  %conv45 = sext i8 %31 to i32
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv45)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %i, align 4
  %inc47 = add nsw i32 %32, 1
  store i32 %inc47, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %33 = load ptr, ptr %s.addr, align 8
  %call48 = call i64 @strlen(ptr noundef %33) #3
  %conv49 = trunc i64 %call48 to i32
  store i32 %conv49, ptr %i, align 4
  %tobool = icmp ne i32 %conv49, 0
  br i1 %tobool, label %if.then50, label %if.end52

if.then50:                                        ; preds = %for.end
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %for.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @reverse(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr %s.addr, align 8
  %call = call i64 @strlen(ptr noundef %0) #3
  %sub = sub i64 %call, 1
  %conv = trunc i64 %sub to i32
  store i32 %conv, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %j, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %s.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom
  %5 = load i8, ptr %arrayidx, align 1
  %conv2 = sext i8 %5 to i32
  store i32 %conv2, ptr %c, align 4
  %6 = load ptr, ptr %s.addr, align 8
  %7 = load i32, ptr %j, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds i8, ptr %6, i64 %idxprom3
  %8 = load i8, ptr %arrayidx4, align 1
  %9 = load ptr, ptr %s.addr, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds i8, ptr %9, i64 %idxprom5
  store i8 %8, ptr %arrayidx6, align 1
  %11 = load i32, ptr %c, align 4
  %conv7 = trunc i32 %11 to i8
  %12 = load ptr, ptr %s.addr, align 8
  %13 = load i32, ptr %j, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds i8, ptr %12, i64 %idxprom8
  store i8 %conv7, ptr %arrayidx9, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %i, align 4
  %15 = load i32, ptr %j, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %j, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
