; ModuleID = './code/299-19015Length_of_Linked_List.c'
source_filename = "./code/299-19015Length_of_Linked_List.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.Node = type { i8, ptr }

@.str = private unnamed_addr constant [38 x i8] c"Currently Length of Linkedlist is: %d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\0A Currently Length of Linkedlist is: %d\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @pushing_data_to_LL(ptr noundef %headPointer, i8 noundef signext %newData) #0 {
entry:
  %headPointer.addr = alloca ptr, align 8
  %newData.addr = alloca i8, align 1
  %newNode = alloca ptr, align 8
  store ptr %headPointer, ptr %headPointer.addr, align 8
  store i8 %newData, ptr %newData.addr, align 1
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %newNode, align 8
  %0 = load i8, ptr %newData.addr, align 1
  %1 = load ptr, ptr %newNode, align 8
  %data = getelementptr inbounds %struct.Node, ptr %1, i32 0, i32 0
  store i8 %0, ptr %data, align 8
  %2 = load ptr, ptr %headPointer.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %newNode, align 8
  %next = getelementptr inbounds %struct.Node, ptr %4, i32 0, i32 1
  store ptr %3, ptr %next, align 8
  %5 = load ptr, ptr %newNode, align 8
  %6 = load ptr, ptr %headPointer.addr, align 8
  store ptr %5, ptr %6, align 8
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @gettingLength(ptr noundef %head) #0 {
entry:
  %head.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %current = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  store i32 0, ptr %count, align 4
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %current, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %count, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %count, align 4
  %3 = load ptr, ptr %current, align 8
  %next = getelementptr inbounds %struct.Node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  store ptr %4, ptr %current, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %count, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %head, align 8
  %0 = load ptr, ptr %head, align 8
  %call = call i32 @gettingLength(ptr noundef %0)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %call)
  call void @pushing_data_to_LL(ptr noundef %head, i8 noundef signext 71)
  call void @pushing_data_to_LL(ptr noundef %head, i8 noundef signext 83)
  call void @pushing_data_to_LL(ptr noundef %head, i8 noundef signext 83)
  call void @pushing_data_to_LL(ptr noundef %head, i8 noundef signext 79)
  call void @pushing_data_to_LL(ptr noundef %head, i8 noundef signext 67)
  %1 = load ptr, ptr %head, align 8
  %call2 = call i32 @gettingLength(ptr noundef %1)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call2)
  call void @pushing_data_to_LL(ptr noundef %head, i8 noundef signext 45)
  %2 = load ptr, ptr %head, align 8
  %call4 = call i32 @gettingLength(ptr noundef %2)
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call4)
  call void @pushing_data_to_LL(ptr noundef %head, i8 noundef signext 50)
  call void @pushing_data_to_LL(ptr noundef %head, i8 noundef signext 48)
  call void @pushing_data_to_LL(ptr noundef %head, i8 noundef signext 50)
  call void @pushing_data_to_LL(ptr noundef %head, i8 noundef signext 48)
  %3 = load ptr, ptr %head, align 8
  %call6 = call i32 @gettingLength(ptr noundef %3)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call6)
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
