; ModuleID = './code/294-4547recipe-576772.c'
source_filename = "./code/294-4547recipe-576772.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.ilist = type { i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @createNode(ptr noundef %node, i32 noundef %elem) #0 {
entry:
  %node.addr = alloca ptr, align 8
  %elem.addr = alloca i32, align 4
  %temp = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  store i32 %elem, ptr %elem.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %temp, align 8
  %0 = load i32, ptr %elem.addr, align 4
  %1 = load ptr, ptr %temp, align 8
  %elem1 = getelementptr inbounds %struct.ilist, ptr %1, i32 0, i32 0
  store i32 %0, ptr %elem1, align 8
  %2 = load ptr, ptr %temp, align 8
  %next = getelementptr inbounds %struct.ilist, ptr %2, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %3 = load ptr, ptr %temp, align 8
  %4 = load ptr, ptr %node.addr, align 8
  store ptr %3, ptr %4, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %list = alloca ptr, align 8
  %visitor = alloca ptr, align 8
  %i = alloca i32, align 4
  %temp = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %list, align 8
  store ptr null, ptr %visitor, align 8
  store i32 7, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %list, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i32, ptr %i, align 4
  call void @createNode(ptr noundef %list, i32 noundef %2)
  %3 = load ptr, ptr %list, align 8
  store ptr %3, ptr %visitor, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  store ptr null, ptr %temp, align 8
  %4 = load i32, ptr %i, align 4
  call void @createNode(ptr noundef %temp, i32 noundef %4)
  %5 = load ptr, ptr %temp, align 8
  %6 = load ptr, ptr %list, align 8
  %next = getelementptr inbounds %struct.ilist, ptr %6, i32 0, i32 1
  store ptr %5, ptr %next, align 8
  %7 = load ptr, ptr %temp, align 8
  store ptr %7, ptr %list, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %i, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %while.end
  %9 = load ptr, ptr %visitor, align 8
  %cmp3 = icmp ne ptr %9, null
  br i1 %cmp3, label %while.body4, label %while.end6

while.body4:                                      ; preds = %while.cond2
  %10 = load ptr, ptr %visitor, align 8
  %elem = getelementptr inbounds %struct.ilist, ptr %10, i32 0, i32 0
  %11 = load i32, ptr %elem, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11)
  %12 = load ptr, ptr %visitor, align 8
  %next5 = getelementptr inbounds %struct.ilist, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %next5, align 8
  store ptr %13, ptr %visitor, align 8
  br label %while.cond2, !llvm.loop !7

while.end6:                                       ; preds = %while.cond2
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

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
