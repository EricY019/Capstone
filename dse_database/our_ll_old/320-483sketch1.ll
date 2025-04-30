; ModuleID = './code/320-483sketch1.c'
source_filename = "./code/320-483sketch1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Node = type { i16, i32 }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @traverse(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %elem = alloca ptr, align 8
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %sum, align 4
  %1 = load ptr, ptr %list.addr, align 8
  store ptr %1, ptr %elem, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %2 = load ptr, ptr %elem, align 8
  %next = getelementptr inbounds %struct.Node, ptr %2, i32 0, i32 0
  %3 = load i16, ptr %next, align 4
  %conv = sext i16 %3 to i32
  %cmp1 = icmp sgt i32 %conv, 0
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %sum, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %sum, align 4
  %5 = load ptr, ptr %list.addr, align 8
  %6 = load ptr, ptr %elem, align 8
  %next3 = getelementptr inbounds %struct.Node, ptr %6, i32 0, i32 0
  %7 = load i16, ptr %next3, align 4
  %conv4 = sext i16 %7 to i32
  %idx.ext = sext i32 %conv4 to i64
  %add.ptr = getelementptr inbounds %struct.Node, ptr %5, i64 %idx.ext
  store ptr %add.ptr, ptr %elem, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %8 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %8, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %list = alloca ptr, align 8
  %elem = alloca ptr, align 8
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call ptr @calloc(i64 noundef 32768, i64 noundef 8) #2
  store ptr %call, ptr %list, align 8
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 32768
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %list, align 8
  %2 = load i32, ptr %i, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds %struct.Node, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %elem, align 8
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %elem, align 8
  %value = getelementptr inbounds %struct.Node, ptr %4, i32 0, i32 1
  store i32 %3, ptr %value, align 4
  %5 = load ptr, ptr %elem, align 8
  %add.ptr1 = getelementptr inbounds %struct.Node, ptr %5, i64 1
  %6 = load ptr, ptr %list, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %conv = trunc i64 %sub.ptr.div to i16
  %7 = load ptr, ptr %elem, align 8
  %next = getelementptr inbounds %struct.Node, ptr %7, i32 0, i32 0
  store i16 %conv, ptr %next, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %list, align 8
  call void @traverse(ptr noundef %9)
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0,1) }

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
