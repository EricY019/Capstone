; ModuleID = './code/243-8539list1.c'
source_filename = "./code/243-8539list1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.point = type { i32, i32, ptr }

@__const.main.pt1 = private unnamed_addr constant %struct.point { i32 1, i32 2, ptr null }, align 8
@__const.main.pt2 = private unnamed_addr constant %struct.point { i32 -2, i32 3, ptr null }, align 8
@__const.main.pt3 = private unnamed_addr constant %struct.point { i32 5, i32 -4, ptr null }, align 8
@__const.main.pt4 = private unnamed_addr constant %struct.point { i32 9, i32 -9, ptr null }, align 8
@.str = private unnamed_addr constant [10 x i8] c"(%d, %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pt1 = alloca %struct.point, align 8
  %pt2 = alloca %struct.point, align 8
  %pt3 = alloca %struct.point, align 8
  %pt4 = alloca %struct.point, align 8
  %head = alloca ptr, align 8
  %tail = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pt1, ptr align 8 @__const.main.pt1, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pt2, ptr align 8 @__const.main.pt2, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pt3, ptr align 8 @__const.main.pt3, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pt4, ptr align 8 @__const.main.pt4, i64 16, i1 false)
  store ptr %pt1, ptr %head, align 8
  %next = getelementptr inbounds %struct.point, ptr %pt1, i32 0, i32 2
  store ptr %pt2, ptr %next, align 8
  %next1 = getelementptr inbounds %struct.point, ptr %pt2, i32 0, i32 2
  store ptr %pt3, ptr %next1, align 8
  call void @appendNode(ptr noundef %pt3, ptr noundef %pt4)
  %0 = load ptr, ptr %head, align 8
  call void @printPoints(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @appendNode(ptr noundef %src, ptr noundef %dst) #0 {
entry:
  %src.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  store ptr %src, ptr %src.addr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  %0 = load ptr, ptr %dst.addr, align 8
  %1 = load ptr, ptr %src.addr, align 8
  %next = getelementptr inbounds %struct.point, ptr %1, i32 0, i32 2
  store ptr %0, ptr %next, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printPoints(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %tail = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %tail, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %tail, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %tail, align 8
  %x = getelementptr inbounds %struct.point, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %x, align 8
  %4 = load ptr, ptr %tail, align 8
  %y = getelementptr inbounds %struct.point, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %y, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3, i32 noundef %5)
  %6 = load ptr, ptr %tail, align 8
  %next = getelementptr inbounds %struct.point, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %next, align 8
  store ptr %7, ptr %tail, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
