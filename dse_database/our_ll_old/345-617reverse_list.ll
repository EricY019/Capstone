; ModuleID = './code/345-617reverse_list.c'
source_filename = "./code/345-617reverse_list.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.list = type { i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__const.main.d = private unnamed_addr constant %struct.list { i32 1, ptr null }, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @print_list(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %head.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %head.addr, align 8
  %value = getelementptr inbounds %struct.list, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %value, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %3 = load ptr, ptr %head.addr, align 8
  %next = getelementptr inbounds %struct.list, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %head.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @reverse(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %new_root = alloca ptr, align 8
  %next = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store ptr null, ptr %new_root, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %head.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %head.addr, align 8
  %next1 = getelementptr inbounds %struct.list, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %next1, align 8
  store ptr %2, ptr %next, align 8
  %3 = load ptr, ptr %new_root, align 8
  %4 = load ptr, ptr %head.addr, align 8
  %next2 = getelementptr inbounds %struct.list, ptr %4, i32 0, i32 1
  store ptr %3, ptr %next2, align 8
  %5 = load ptr, ptr %head.addr, align 8
  store ptr %5, ptr %new_root, align 8
  %6 = load ptr, ptr %next, align 8
  store ptr %6, ptr %head.addr, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %7 = load ptr, ptr %new_root, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %d = alloca %struct.list, align 8
  %c = alloca %struct.list, align 8
  %b = alloca %struct.list, align 8
  %a = alloca %struct.list, align 8
  %head = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %d, ptr align 8 @__const.main.d, i64 16, i1 false)
  %value = getelementptr inbounds %struct.list, ptr %c, i32 0, i32 0
  store i32 2, ptr %value, align 8
  %next = getelementptr inbounds %struct.list, ptr %c, i32 0, i32 1
  store ptr %d, ptr %next, align 8
  %value1 = getelementptr inbounds %struct.list, ptr %b, i32 0, i32 0
  store i32 3, ptr %value1, align 8
  %next2 = getelementptr inbounds %struct.list, ptr %b, i32 0, i32 1
  store ptr %c, ptr %next2, align 8
  %value3 = getelementptr inbounds %struct.list, ptr %a, i32 0, i32 0
  store i32 4, ptr %value3, align 8
  %next4 = getelementptr inbounds %struct.list, ptr %a, i32 0, i32 1
  store ptr %b, ptr %next4, align 8
  store ptr %a, ptr %head, align 8
  %0 = load ptr, ptr %head, align 8
  call void @print_list(ptr noundef %0)
  %1 = load ptr, ptr %head, align 8
  %call = call ptr @reverse(ptr noundef %1)
  store ptr %call, ptr %head, align 8
  %2 = load ptr, ptr %head, align 8
  call void @print_list(ptr noundef %2)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
