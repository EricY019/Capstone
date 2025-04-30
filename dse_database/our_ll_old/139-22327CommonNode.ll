; ModuleID = './code/139-22327CommonNode.c'
source_filename = "./code/139-22327CommonNode.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, i32, ptr }

@.str = private unnamed_addr constant [19 x i8] c"Common node found\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Common node NOT found\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @checkcommonnode(ptr noundef %h1, ptr noundef %h2) #0 {
entry:
  %h1.addr = alloca ptr, align 8
  %h2.addr = alloca ptr, align 8
  %flag = alloca i32, align 4
  store ptr %h1, ptr %h1.addr, align 8
  store ptr %h2, ptr %h2.addr, align 8
  store i32 0, ptr %flag, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %h1.addr, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %h1.addr, align 8
  %status = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  store i32 1, ptr %status, align 4
  %2 = load ptr, ptr %h1.addr, align 8
  %next = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %next, align 8
  store ptr %3, ptr %h1.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end, %while.end
  %4 = load ptr, ptr %h2.addr, align 8
  %cmp2 = icmp ne ptr %4, null
  br i1 %cmp2, label %while.body3, label %while.end8

while.body3:                                      ; preds = %while.cond1
  %5 = load ptr, ptr %h2.addr, align 8
  %status4 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %status4, align 4
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body3
  store i32 1, ptr %flag, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %7 = load ptr, ptr %h2.addr, align 8
  %data = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %data, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8)
  br label %if.end12

if.end:                                           ; preds = %while.body3
  %9 = load ptr, ptr %h2.addr, align 8
  %next7 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %next7, align 8
  store ptr %10, ptr %h2.addr, align 8
  br label %while.cond1, !llvm.loop !7

while.end8:                                       ; preds = %while.cond1
  %11 = load i32, ptr %flag, align 4
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %while.end8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end12

if.end12:                                         ; preds = %if.then, %if.then10, %while.end8
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head1 = alloca ptr, align 8
  %head2 = alloca ptr, align 8
  %new_node1 = alloca ptr, align 8
  %new_node2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %head1, align 8
  %0 = load ptr, ptr %head1, align 8
  %data = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 0
  store i32 5, ptr %data, align 8
  %1 = load ptr, ptr %head1, align 8
  %status = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  store i32 0, ptr %status, align 4
  %call1 = call ptr @malloc(i64 noundef 16) #3
  store ptr %call1, ptr %head2, align 8
  %2 = load ptr, ptr %head2, align 8
  %data2 = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 0
  store i32 3, ptr %data2, align 8
  %3 = load ptr, ptr %head2, align 8
  %status3 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  store i32 0, ptr %status3, align 4
  %call4 = call ptr @malloc(i64 noundef 16) #3
  store ptr %call4, ptr %new_node1, align 8
  %4 = load ptr, ptr %new_node1, align 8
  %data5 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 0
  store i32 10, ptr %data5, align 8
  %5 = load ptr, ptr %new_node1, align 8
  %status6 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 1
  store i32 0, ptr %status6, align 4
  %6 = load ptr, ptr %new_node1, align 8
  %7 = load ptr, ptr %head1, align 8
  %next = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 2
  store ptr %6, ptr %next, align 8
  %call7 = call ptr @malloc(i64 noundef 16) #3
  store ptr %call7, ptr %new_node2, align 8
  %8 = load ptr, ptr %new_node2, align 8
  %data8 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 0
  store i32 15, ptr %data8, align 8
  %9 = load ptr, ptr %new_node2, align 8
  %status9 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  store i32 0, ptr %status9, align 4
  %10 = load ptr, ptr %new_node2, align 8
  %next10 = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 2
  store ptr null, ptr %next10, align 8
  %11 = load ptr, ptr %new_node2, align 8
  %12 = load ptr, ptr %head1, align 8
  %next11 = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %next11, align 8
  %next12 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 2
  store ptr %11, ptr %next12, align 8
  %14 = load ptr, ptr %new_node2, align 8
  %15 = load ptr, ptr %head2, align 8
  %next13 = getelementptr inbounds %struct.node, ptr %15, i32 0, i32 2
  store ptr %14, ptr %next13, align 8
  %16 = load ptr, ptr %head1, align 8
  %17 = load ptr, ptr %head2, align 8
  call void @checkcommonnode(ptr noundef %16, ptr noundef %17)
  %18 = load ptr, ptr %head2, align 8
  %next14 = getelementptr inbounds %struct.node, ptr %18, i32 0, i32 2
  store ptr null, ptr %next14, align 8
  %19 = load ptr, ptr %head1, align 8
  %20 = load ptr, ptr %head2, align 8
  call void @checkcommonnode(ptr noundef %19, ptr noundef %20)
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
