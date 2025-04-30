; ModuleID = './code/092-2040node_eraser.c'
source_filename = "./code/092-2040node_eraser.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { ptr, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @eraseNode(ptr noundef %n) #0 {
entry:
  %n.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  store ptr %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %n.addr, align 8
  %next = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %next, align 8
  store ptr %1, ptr %a, align 8
  %2 = load ptr, ptr %a, align 8
  %data = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %data, align 8
  %4 = load ptr, ptr %n.addr, align 8
  %data1 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  store i32 %3, ptr %data1, align 8
  %5 = load ptr, ptr %a, align 8
  %next2 = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %next2, align 8
  %7 = load ptr, ptr %n.addr, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 0
  store ptr %6, ptr %next3, align 8
  %8 = load ptr, ptr %a, align 8
  call void @free(ptr noundef %8)
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %root = alloca ptr, align 8
  %t = alloca ptr, align 8
  %i = alloca i32, align 4
  %counter = alloca i32, align 4
  %clear = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %root, align 8
  %0 = load ptr, ptr %root, align 8
  store ptr %0, ptr %t, align 8
  %call1 = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call1 to i32
  call void @srand(i32 noundef %conv)
  %call2 = call i32 @rand()
  %rem = srem i32 %call2, 10
  %1 = load ptr, ptr %t, align 8
  %data = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 1
  store i32 %rem, ptr %data, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %t, align 8
  %data4 = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %data4, align 8
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  %call6 = call ptr @malloc(i64 noundef 16) #3
  %5 = load ptr, ptr %t, align 8
  %next = getelementptr inbounds %struct.node, ptr %5, i32 0, i32 0
  store ptr %call6, ptr %next, align 8
  %6 = load ptr, ptr %t, align 8
  %next7 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %next7, align 8
  store ptr %7, ptr %t, align 8
  %call8 = call i32 @rand()
  %rem9 = srem i32 %call8, 10
  %8 = load ptr, ptr %t, align 8
  %data10 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 1
  store i32 %rem9, ptr %data10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %t, align 8
  %data11 = getelementptr inbounds %struct.node, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %data11, align 8
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11)
  %call13 = call i32 @putchar(i32 noundef 10)
  %12 = load ptr, ptr %root, align 8
  store ptr %12, ptr %t, align 8
  store i32 0, ptr %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end
  %13 = load ptr, ptr %t, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load i32, ptr %counter, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, ptr %counter, align 4
  %15 = load i32, ptr %counter, align 4
  %cmp15 = icmp eq i32 %15, 3
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %16 = load ptr, ptr %t, align 8
  call void @eraseNode(ptr noundef %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %17 = load ptr, ptr %t, align 8
  %next17 = getelementptr inbounds %struct.node, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %next17, align 8
  store ptr %18, ptr %t, align 8
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %19 = load ptr, ptr %root, align 8
  store ptr %19, ptr %t, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc29, %while.end
  %20 = load i32, ptr %i, align 4
  %cmp19 = icmp slt i32 %20, 9
  br i1 %cmp19, label %for.body21, label %for.end31

for.body21:                                       ; preds = %for.cond18
  %21 = load ptr, ptr %t, align 8
  store ptr %21, ptr %clear, align 8
  %22 = load ptr, ptr %t, align 8
  %data22 = getelementptr inbounds %struct.node, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %data22, align 8
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %23)
  %24 = load ptr, ptr %t, align 8
  %next24 = getelementptr inbounds %struct.node, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %next24, align 8
  %tobool25 = icmp ne ptr %25, null
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %for.body21
  %26 = load ptr, ptr %t, align 8
  %next27 = getelementptr inbounds %struct.node, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %next27, align 8
  store ptr %27, ptr %t, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %for.body21
  %28 = load ptr, ptr %clear, align 8
  call void @free(ptr noundef %28)
  br label %for.inc29

for.inc29:                                        ; preds = %if.end28
  %29 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %29, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond18, !llvm.loop !8

for.end31:                                        ; preds = %for.cond18
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @putchar(i32 noundef) #1

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
