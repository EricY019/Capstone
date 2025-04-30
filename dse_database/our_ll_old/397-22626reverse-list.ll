; ModuleID = './code/397-22626reverse-list.c'
source_filename = "./code/397-22626reverse-list.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct._node_t = type { i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  store ptr null, ptr %n, align 8
  %0 = load ptr, ptr %list.addr, align 8
  store ptr %0, ptr %n, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %n, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %n, align 8
  %val = getelementptr inbounds %struct._node_t, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %val, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %n, align 8
  %next = getelementptr inbounds %struct._node_t, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr %n, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @reverse(ptr noundef %list) #0 {
entry:
  %list.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %next = alloca ptr, align 8
  %prev = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  store ptr null, ptr %n, align 8
  %0 = load ptr, ptr %list.addr, align 8
  store ptr %0, ptr %next, align 8
  store ptr null, ptr %prev, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr %next, align 8
  store ptr %1, ptr %n, align 8
  %2 = load ptr, ptr %n, align 8
  %next1 = getelementptr inbounds %struct._node_t, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %next1, align 8
  store ptr %3, ptr %next, align 8
  %4 = load ptr, ptr %prev, align 8
  %5 = load ptr, ptr %n, align 8
  %next2 = getelementptr inbounds %struct._node_t, ptr %5, i32 0, i32 1
  store ptr %4, ptr %next2, align 8
  %6 = load ptr, ptr %n, align 8
  store ptr %6, ptr %prev, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load ptr, ptr %next, align 8
  %cmp = icmp ne ptr %7, null
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !7

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %n, align 8
  ret ptr %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n1 = alloca ptr, align 8
  %n2 = alloca ptr, align 8
  %n3 = alloca ptr, align 8
  %n4 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %n1, align 8
  %0 = load ptr, ptr %n1, align 8
  %val = getelementptr inbounds %struct._node_t, ptr %0, i32 0, i32 0
  store i32 1, ptr %val, align 8
  %1 = load ptr, ptr %n1, align 8
  %next = getelementptr inbounds %struct._node_t, ptr %1, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %call1 = call ptr @malloc(i64 noundef 16) #3
  store ptr %call1, ptr %n2, align 8
  %2 = load ptr, ptr %n2, align 8
  %val2 = getelementptr inbounds %struct._node_t, ptr %2, i32 0, i32 0
  store i32 2, ptr %val2, align 8
  %3 = load ptr, ptr %n2, align 8
  %next3 = getelementptr inbounds %struct._node_t, ptr %3, i32 0, i32 1
  store ptr null, ptr %next3, align 8
  %4 = load ptr, ptr %n2, align 8
  %5 = load ptr, ptr %n1, align 8
  %next4 = getelementptr inbounds %struct._node_t, ptr %5, i32 0, i32 1
  store ptr %4, ptr %next4, align 8
  %call5 = call ptr @malloc(i64 noundef 16) #3
  store ptr %call5, ptr %n3, align 8
  %6 = load ptr, ptr %n3, align 8
  %val6 = getelementptr inbounds %struct._node_t, ptr %6, i32 0, i32 0
  store i32 3, ptr %val6, align 8
  %7 = load ptr, ptr %n3, align 8
  %next7 = getelementptr inbounds %struct._node_t, ptr %7, i32 0, i32 1
  store ptr null, ptr %next7, align 8
  %8 = load ptr, ptr %n3, align 8
  %9 = load ptr, ptr %n2, align 8
  %next8 = getelementptr inbounds %struct._node_t, ptr %9, i32 0, i32 1
  store ptr %8, ptr %next8, align 8
  %call9 = call ptr @malloc(i64 noundef 16) #3
  store ptr %call9, ptr %n4, align 8
  %10 = load ptr, ptr %n4, align 8
  %val10 = getelementptr inbounds %struct._node_t, ptr %10, i32 0, i32 0
  store i32 4, ptr %val10, align 8
  %11 = load ptr, ptr %n4, align 8
  %next11 = getelementptr inbounds %struct._node_t, ptr %11, i32 0, i32 1
  store ptr null, ptr %next11, align 8
  %12 = load ptr, ptr %n4, align 8
  %13 = load ptr, ptr %n3, align 8
  %next12 = getelementptr inbounds %struct._node_t, ptr %13, i32 0, i32 1
  store ptr %12, ptr %next12, align 8
  %14 = load ptr, ptr %n1, align 8
  call void @print(ptr noundef %14)
  %15 = load ptr, ptr %n1, align 8
  %call13 = call ptr @reverse(ptr noundef %15)
  store ptr %call13, ptr %n1, align 8
  %16 = load ptr, ptr %n1, align 8
  call void @print(ptr noundef %16)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

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
