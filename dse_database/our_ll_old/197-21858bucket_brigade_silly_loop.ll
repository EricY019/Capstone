; ModuleID = './code/197-21858bucket_brigade_silly_loop.c'
source_filename = "./code/197-21858bucket_brigade_silly_loop.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.closure_t = type { ptr, i32, i32 }

@m = global i32 10, align 4
@closures = global [10 x %struct.closure_t] zeroinitializer, align 8
@c = global ptr @closures, align 8
@.str = private unnamed_addr constant [7 x i8] c"Done!\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @f(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %add = add nsw i32 %0, 1
  %rem = srem i32 %add, 10
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [10 x %struct.closure_t], ptr @closures, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr @c, align 8
  %1 = load i32, ptr %x.addr, align 4
  %cmp = icmp eq i32 %1, 9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @c, align 8
  %y1 = getelementptr inbounds %struct.closure_t, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %y1, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %y1, align 4
  %4 = load i32, ptr %y.addr, align 4
  %5 = load i32, ptr @m, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store ptr null, ptr @c, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end8

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %x.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [10 x %struct.closure_t], ptr @closures, i64 0, i64 %idxprom4
  %y6 = getelementptr inbounds %struct.closure_t, ptr %arrayidx5, i32 0, i32 2
  %7 = load i32, ptr %y6, align 4
  %8 = load ptr, ptr @c, align 8
  %y7 = getelementptr inbounds %struct.closure_t, ptr %8, i32 0, i32 2
  store i32 %7, ptr %y7, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i64 @atol(ptr noundef %2)
  %conv = trunc i64 %call to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 10, %cond.false ]
  store i32 %cond, ptr @m, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %3 = load i32, ptr %i, align 4
  %cmp1 = icmp ult i32 %3, 10
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %idxprom = zext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [10 x %struct.closure_t], ptr @closures, i64 0, i64 %idxprom
  %f = getelementptr inbounds %struct.closure_t, ptr %arrayidx3, i32 0, i32 0
  store ptr @f, ptr %f, align 8
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %i, align 4
  %idxprom4 = zext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [10 x %struct.closure_t], ptr @closures, i64 0, i64 %idxprom4
  %x = getelementptr inbounds %struct.closure_t, ptr %arrayidx5, i32 0, i32 1
  store i32 %5, ptr %x, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom6 = zext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [10 x %struct.closure_t], ptr @closures, i64 0, i64 %idxprom6
  %y = getelementptr inbounds %struct.closure_t, ptr %arrayidx7, i32 0, i32 2
  store i32 0, ptr %y, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end
  %9 = load ptr, ptr @c, align 8
  %tobool = icmp ne ptr %9, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr @c, align 8
  %f8 = getelementptr inbounds %struct.closure_t, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %f8, align 8
  %12 = load ptr, ptr @c, align 8
  %x9 = getelementptr inbounds %struct.closure_t, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %x9, align 8
  %14 = load ptr, ptr @c, align 8
  %y10 = getelementptr inbounds %struct.closure_t, ptr %14, i32 0, i32 2
  %15 = load i32, ptr %y10, align 4
  call void %11(i32 noundef %13, i32 noundef %15)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
}

declare i64 @atol(ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
