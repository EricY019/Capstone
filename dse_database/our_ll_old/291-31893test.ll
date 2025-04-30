; ModuleID = './code/291-31893test.c'
source_filename = "./code/291-31893test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.element = type { ptr, [15 x i32] }

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %size = alloca i64, align 8
  %temp = alloca ptr, align 8
  %list = alloca ptr, align 8
  %stopstring = alloca ptr, align 8
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
  %call = call i64 @strtol(ptr noundef %2, ptr noundef %stopstring, i32 noundef 16)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 4194304, %cond.false ]
  store i64 %cond, ptr %size, align 8
  %3 = load i64, ptr %size, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %3)
  %4 = load i64, ptr %size, align 8
  %call2 = call ptr @calloc(i64 noundef %4, i64 noundef 72) #3
  store ptr %call2, ptr %list, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %5 = load i64, ptr %i, align 8
  %6 = load i64, ptr %size, align 8
  %cmp3 = icmp slt i64 %5, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, ptr %i, align 8
  %8 = load i64, ptr %size, align 8
  %sub = sub nsw i64 %8, 1
  %cmp4 = icmp eq i64 %7, %sub
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %list, align 8
  %arrayidx5 = getelementptr inbounds %struct.element, ptr %9, i64 0
  %10 = load ptr, ptr %list, align 8
  %11 = load i64, ptr %i, align 8
  %arrayidx6 = getelementptr inbounds %struct.element, ptr %10, i64 %11
  %next = getelementptr inbounds %struct.element, ptr %arrayidx6, i32 0, i32 0
  store ptr %arrayidx5, ptr %next, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %12 = load ptr, ptr %list, align 8
  %13 = load i64, ptr %i, align 8
  %add = add nsw i64 %13, 1
  %arrayidx7 = getelementptr inbounds %struct.element, ptr %12, i64 %add
  %14 = load ptr, ptr %list, align 8
  %15 = load i64, ptr %i, align 8
  %arrayidx8 = getelementptr inbounds %struct.element, ptr %14, i64 %15
  %next9 = getelementptr inbounds %struct.element, ptr %arrayidx8, i32 0, i32 0
  store ptr %arrayidx7, ptr %next9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i64, ptr %i, align 8
  %inc = add nsw i64 %16, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %list, align 8
  %arrayidx10 = getelementptr inbounds %struct.element, ptr %17, i64 0
  store ptr %arrayidx10, ptr %temp, align 8
  store i64 0, ptr %i, align 8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc15, %for.end
  %18 = load i64, ptr %i, align 8
  %19 = load i64, ptr %size, align 8
  %cmp12 = icmp slt i64 %18, %19
  br i1 %cmp12, label %for.body13, label %for.end17

for.body13:                                       ; preds = %for.cond11
  %20 = load ptr, ptr %temp, align 8
  %next14 = getelementptr inbounds %struct.element, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %next14, align 8
  store ptr %21, ptr %temp, align 8
  br label %for.inc15

for.inc15:                                        ; preds = %for.body13
  %22 = load i64, ptr %i, align 8
  %inc16 = add nsw i64 %22, 1
  store i64 %inc16, ptr %i, align 8
  br label %for.cond11, !llvm.loop !7

for.end17:                                        ; preds = %for.cond11
  ret i32 0
}

declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0,1) }

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
