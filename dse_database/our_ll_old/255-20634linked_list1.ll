; ModuleID = './code/255-20634linked_list1.c'
source_filename = "./code/255-20634linked_list1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %rootnode = alloca ptr, align 8
  %nextnode = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %rootnode, align 8
  %0 = load ptr, ptr %rootnode, align 8
  %next = getelementptr inbounds %struct.node, ptr %0, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %1 = load ptr, ptr %rootnode, align 8
  %data = getelementptr inbounds %struct.node, ptr %1, i32 0, i32 0
  store i32 666, ptr %data, align 8
  %2 = load ptr, ptr %rootnode, align 8
  store ptr %2, ptr %nextnode, align 8
  %3 = load ptr, ptr %nextnode, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load ptr, ptr %nextnode, align 8
  %next1 = getelementptr inbounds %struct.node, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next1, align 8
  %cmp2 = icmp ne ptr %5, null
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %nextnode, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next3, align 8
  store ptr %7, ptr %nextnode, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %call4 = call ptr @malloc(i64 noundef 16) #3
  %8 = load ptr, ptr %nextnode, align 8
  %next5 = getelementptr inbounds %struct.node, ptr %8, i32 0, i32 1
  store ptr %call4, ptr %next5, align 8
  %9 = load ptr, ptr %nextnode, align 8
  %next6 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %next6, align 8
  store ptr %10, ptr %nextnode, align 8
  %11 = load ptr, ptr %nextnode, align 8
  %cmp7 = icmp eq ptr %11, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %12 = load ptr, ptr %nextnode, align 8
  %next11 = getelementptr inbounds %struct.node, ptr %12, i32 0, i32 1
  store ptr null, ptr %next11, align 8
  %13 = load ptr, ptr %nextnode, align 8
  %data12 = getelementptr inbounds %struct.node, ptr %13, i32 0, i32 0
  store i32 42, ptr %data12, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.then8
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

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
