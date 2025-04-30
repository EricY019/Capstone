; ModuleID = './code/271-30182circularlinked.c'
source_filename = "./code/271-30182circularlinked.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@i = global i32 0, align 4
@top = global ptr null, align 8
@node = global ptr null, align 8
@head = global ptr null, align 8
@ptr = global ptr null, align 8
@.str = private unnamed_addr constant [24 x i8] c"this node contains: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"End of list\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @init() #0 {
entry:
  store ptr null, ptr @top, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insert(i32 noundef %value) #0 {
entry:
  %value.addr = alloca i32, align 4
  store i32 %value, ptr %value.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr @node, align 8
  %0 = load i32, ptr %value.addr, align 4
  %1 = load ptr, ptr @node, align 8
  %value1 = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  store i32 %0, ptr %value1, align 8
  %2 = load ptr, ptr @node, align 8
  %link = getelementptr inbounds %struct.node, ptr %2, i32 0, i32 1
  store ptr null, ptr %link, align 8
  %3 = load ptr, ptr @top, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr @node, align 8
  store ptr %4, ptr @top, align 8
  %5 = load ptr, ptr @top, align 8
  store ptr %5, ptr @head, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr @node, align 8
  %7 = load ptr, ptr @top, align 8
  %link2 = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 1
  store ptr %6, ptr %link2, align 8
  %8 = load ptr, ptr @head, align 8
  %9 = load ptr, ptr @node, align 8
  %link3 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  store ptr %8, ptr %link3, align 8
  %10 = load ptr, ptr @node, align 8
  store ptr %10, ptr @top, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @display() #0 {
entry:
  %0 = load ptr, ptr @head, align 8
  store ptr %0, ptr @ptr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load ptr, ptr @ptr, align 8
  %value = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %value, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  %3 = load ptr, ptr @ptr, align 8
  %link = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %link, align 8
  store ptr %4, ptr @ptr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %5 = load ptr, ptr @ptr, align 8
  %6 = load ptr, ptr @head, align 8
  %cmp = icmp ne ptr %5, %6
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @init()
  call void @insert(i32 noundef 1)
  call void @insert(i32 noundef 2)
  call void @insert(i32 noundef 3)
  call void @insert(i32 noundef 4)
  call void @insert(i32 noundef 5)
  call void @insert(i32 noundef 6)
  call void @display()
  ret i32 0
}

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
