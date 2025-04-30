; ModuleID = './code/028-17195main.c'
source_filename = "./code/028-17195main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.ds = type { ptr, i32 }

@.str = private unnamed_addr constant [12 x i8] c"head list:\0A\00", align 1
@head = global [16 x %struct.ds] zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%8d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @pr_head() #0 {
entry:
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.ds, ptr @head, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8
  %x = getelementptr inbounds %struct.ds, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %x, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4)
  %5 = load ptr, ptr %p, align 8
  %next = getelementptr inbounds %struct.ds, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %next, align 8
  store ptr %6, ptr %p, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @get_int() #0 {
entry:
  %call = call i64 @random()
  %and = and i64 %call, 65535
  %conv = trunc i64 %and to i32
  ret i32 %conv
}

declare i64 @random() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @list_add_tail(i32 noundef %offset, i32 noundef %x) #0 {
entry:
  %offset.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %l = alloca ptr, align 8
  store i32 %offset, ptr %offset.addr, align 4
  store i32 %x, ptr %x.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %p, align 8
  %0 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds %struct.ds, ptr @head, i64 %idx.ext
  store ptr %add.ptr, ptr %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %l, align 8
  %next = getelementptr inbounds %struct.ds, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %next, align 8
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %l, align 8
  %next3 = getelementptr inbounds %struct.ds, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %next3, align 8
  store ptr %5, ptr %l, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %6 = load i32, ptr %x.addr, align 4
  %7 = load ptr, ptr %p, align 8
  %x4 = getelementptr inbounds %struct.ds, ptr %7, i32 0, i32 1
  store i32 %6, ptr %x4, align 8
  %8 = load ptr, ptr %p, align 8
  %next5 = getelementptr inbounds %struct.ds, ptr %8, i32 0, i32 0
  store ptr null, ptr %next5, align 8
  %9 = load ptr, ptr %p, align 8
  %10 = load ptr, ptr %l, align 8
  %next6 = getelementptr inbounds %struct.ds, ptr %10, i32 0, i32 0
  store ptr %9, ptr %next6, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @list_del(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x4 = alloca i32, align 4
  %j5 = alloca i32, align 4
  %p = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %mask = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [16 x %struct.ds], ptr @head, i64 0, i64 %idxprom
  %x = getelementptr inbounds %struct.ds, ptr %arrayidx, i32 0, i32 1
  store i32 %1, ptr %x, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %4, 16
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %call = call i32 @get_int()
  store i32 %call, ptr %x4, align 4
  %5 = load i32, ptr %x4, align 4
  %and = and i32 %5, 15
  store i32 %and, ptr %j5, align 4
  %6 = load i32, ptr %j5, align 4
  %7 = load i32, ptr %x4, align 4
  call void @list_add_tail(i32 noundef %6, i32 noundef %7)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %8 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond1, !llvm.loop !10

for.end8:                                         ; preds = %for.cond1
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc18, %for.end8
  %9 = load i32, ptr %i, align 4
  %cmp10 = icmp slt i32 %9, 16
  br i1 %cmp10, label %for.body11, label %for.end20

for.body11:                                       ; preds = %for.cond9
  %10 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds %struct.ds, ptr @head, i64 %idx.ext
  store ptr %add.ptr, ptr %p, align 8
  %11 = load ptr, ptr @head, align 8
  store ptr %11, ptr %pp, align 8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc16, %for.body11
  %12 = load ptr, ptr %pp, align 8
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %for.body13, label %for.end17

for.body13:                                       ; preds = %for.cond12
  %13 = load ptr, ptr %pp, align 8
  %x14 = getelementptr inbounds %struct.ds, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %x14, align 8
  %and15 = and i32 %14, 240
  %shr = ashr i32 %and15, 4
  store i32 %shr, ptr %mask, align 4
  %15 = load ptr, ptr %pp, align 8
  call void @list_del(ptr noundef %15)
  br label %for.inc16

for.inc16:                                        ; preds = %for.body13
  %16 = load ptr, ptr %pp, align 8
  %next = getelementptr inbounds %struct.ds, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %next, align 8
  store ptr %17, ptr %pp, align 8
  br label %for.cond12, !llvm.loop !11

for.end17:                                        ; preds = %for.cond12
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %18 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %18, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond9, !llvm.loop !12

for.end20:                                        ; preds = %for.cond9
  call void @pr_head()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
