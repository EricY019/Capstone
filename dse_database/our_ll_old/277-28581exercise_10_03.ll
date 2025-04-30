; ModuleID = './code/277-28581exercise_10_03.c'
source_filename = "./code/277-28581exercise_10_03.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.entry = type { i32, ptr }

@.str = private unnamed_addr constant [48 x i8] c"Values in the list before insert of new entry: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Values in the list after insert of new entry: \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @insertEntry(ptr noundef %newEntry, ptr noundef %existingEntry) #0 {
entry:
  %newEntry.addr = alloca ptr, align 8
  %existingEntry.addr = alloca ptr, align 8
  store ptr %newEntry, ptr %newEntry.addr, align 8
  store ptr %existingEntry, ptr %existingEntry.addr, align 8
  %0 = load ptr, ptr %existingEntry.addr, align 8
  %next = getelementptr inbounds %struct.entry, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %next, align 8
  %2 = load ptr, ptr %newEntry.addr, align 8
  %next1 = getelementptr inbounds %struct.entry, ptr %2, i32 0, i32 1
  store ptr %1, ptr %next1, align 8
  %3 = load ptr, ptr %newEntry.addr, align 8
  %4 = load ptr, ptr %existingEntry.addr, align 8
  %next2 = getelementptr inbounds %struct.entry, ptr %4, i32 0, i32 1
  store ptr %3, ptr %next2, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %head = alloca %struct.entry, align 8
  %n1 = alloca %struct.entry, align 8
  %n2 = alloca %struct.entry, align 8
  %nE = alloca %struct.entry, align 8
  %listPointer = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %next = getelementptr inbounds %struct.entry, ptr %head, i32 0, i32 1
  store ptr %n1, ptr %next, align 8
  %value = getelementptr inbounds %struct.entry, ptr %n1, i32 0, i32 0
  store i32 100, ptr %value, align 8
  %next1 = getelementptr inbounds %struct.entry, ptr %n1, i32 0, i32 1
  store ptr %n2, ptr %next1, align 8
  %value2 = getelementptr inbounds %struct.entry, ptr %n2, i32 0, i32 0
  store i32 200, ptr %value2, align 8
  %next3 = getelementptr inbounds %struct.entry, ptr %n2, i32 0, i32 1
  store ptr null, ptr %next3, align 8
  %next4 = getelementptr inbounds %struct.entry, ptr %head, i32 0, i32 1
  %0 = load ptr, ptr %next4, align 8
  store ptr %0, ptr %listPointer, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %listPointer, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %listPointer, align 8
  %value5 = getelementptr inbounds %struct.entry, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %value5, align 8
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  %4 = load ptr, ptr %listPointer, align 8
  %next7 = getelementptr inbounds %struct.entry, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %next7, align 8
  store ptr %5, ptr %listPointer, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %value9 = getelementptr inbounds %struct.entry, ptr %nE, i32 0, i32 0
  store i32 50, ptr %value9, align 8
  call void @insertEntry(ptr noundef %nE, ptr noundef %head)
  %next10 = getelementptr inbounds %struct.entry, ptr %head, i32 0, i32 1
  %6 = load ptr, ptr %next10, align 8
  store ptr %6, ptr %listPointer, align 8
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %while.cond12

while.cond12:                                     ; preds = %while.body14, %while.end
  %7 = load ptr, ptr %listPointer, align 8
  %cmp13 = icmp ne ptr %7, null
  br i1 %cmp13, label %while.body14, label %while.end18

while.body14:                                     ; preds = %while.cond12
  %8 = load ptr, ptr %listPointer, align 8
  %value15 = getelementptr inbounds %struct.entry, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %value15, align 8
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9)
  %10 = load ptr, ptr %listPointer, align 8
  %next17 = getelementptr inbounds %struct.entry, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %next17, align 8
  store ptr %11, ptr %listPointer, align 8
  br label %while.cond12, !llvm.loop !7

while.end18:                                      ; preds = %while.cond12
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
