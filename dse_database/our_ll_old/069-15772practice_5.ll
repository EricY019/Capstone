; ModuleID = './code/069-15772practice_5.c'
source_filename = "./code/069-15772practice_5.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node_struct = type { i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %list = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %list, align 8
  store ptr null, ptr %tmp, align 8
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %tmp, align 8
  %0 = load ptr, ptr %tmp, align 8
  %data = getelementptr inbounds %struct.node_struct, ptr %0, i32 0, i32 0
  store i32 10, ptr %data, align 8
  %1 = load ptr, ptr %list, align 8
  %2 = load ptr, ptr %tmp, align 8
  %next = getelementptr inbounds %struct.node_struct, ptr %2, i32 0, i32 1
  store ptr %1, ptr %next, align 8
  %3 = load ptr, ptr %tmp, align 8
  store ptr %3, ptr %list, align 8
  %call1 = call ptr @malloc(i64 noundef 16) #3
  store ptr %call1, ptr %tmp, align 8
  %4 = load ptr, ptr %tmp, align 8
  %data2 = getelementptr inbounds %struct.node_struct, ptr %4, i32 0, i32 0
  store i32 20, ptr %data2, align 8
  %5 = load ptr, ptr %list, align 8
  %6 = load ptr, ptr %tmp, align 8
  %next3 = getelementptr inbounds %struct.node_struct, ptr %6, i32 0, i32 1
  store ptr %5, ptr %next3, align 8
  %7 = load ptr, ptr %tmp, align 8
  store ptr %7, ptr %list, align 8
  %call4 = call ptr @malloc(i64 noundef 16) #3
  store ptr %call4, ptr %tmp, align 8
  %8 = load ptr, ptr %tmp, align 8
  %data5 = getelementptr inbounds %struct.node_struct, ptr %8, i32 0, i32 0
  store i32 33, ptr %data5, align 8
  %9 = load ptr, ptr %list, align 8
  %10 = load ptr, ptr %tmp, align 8
  %next6 = getelementptr inbounds %struct.node_struct, ptr %10, i32 0, i32 1
  store ptr %9, ptr %next6, align 8
  %11 = load ptr, ptr %tmp, align 8
  store ptr %11, ptr %list, align 8
  %12 = load ptr, ptr %list, align 8
  call void @PrintList(ptr noundef %12)
  %13 = load ptr, ptr %list, align 8
  call void @FreeNodes(ptr noundef %13)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @PrintList(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %tmp, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %tmp, align 8
  %data = getelementptr inbounds %struct.node_struct, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %data, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  %4 = load ptr, ptr %tmp, align 8
  %next = getelementptr inbounds %struct.node_struct, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next, align 8
  store ptr %5, ptr %tmp, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @FreeNodes(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store ptr null, ptr %tmp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %head.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %head.addr, align 8
  store ptr %1, ptr %tmp, align 8
  %2 = load ptr, ptr %head.addr, align 8
  %next = getelementptr inbounds %struct.node_struct, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %next, align 8
  store ptr %3, ptr %head.addr, align 8
  %4 = load ptr, ptr %tmp, align 8
  call void @free(ptr noundef %4)
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @free(ptr noundef) #2

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
