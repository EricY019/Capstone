; ModuleID = './code/369-15663leaks.c'
source_filename = "./code/369-15663leaks.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.list = type { ptr }

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca ptr, align 8
  %head = alloca ptr, align 8
  %current = alloca ptr, align 8
  %a = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 4) #3
  store ptr %call, ptr %i, align 8
  %call1 = call ptr @malloc(i64 noundef 4) #3
  store ptr %call1, ptr %i, align 8
  %0 = load ptr, ptr %i, align 8
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 1
  store i32 1, ptr %arrayidx, align 4
  %call2 = call ptr @malloc(i64 noundef 1) #3
  store ptr %call2, ptr %a, align 8
  %1 = load ptr, ptr %a, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 97, ptr %arrayidx3, align 1
  %call4 = call ptr @malloc(i64 noundef 8) #3
  store ptr %call4, ptr %head, align 8
  store ptr %call4, ptr %current, align 8
  %2 = load ptr, ptr %i, align 8
  store i32 0, ptr %2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %i, align 8
  %4 = load i32, ptr %3, align 4
  %cmp = icmp slt i32 %4, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call ptr @malloc(i64 noundef 8) #3
  %5 = load ptr, ptr %current, align 8
  %next = getelementptr inbounds %struct.list, ptr %5, i32 0, i32 0
  store ptr %call5, ptr %next, align 8
  %6 = load ptr, ptr %current, align 8
  %next6 = getelementptr inbounds %struct.list, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %next6, align 8
  store ptr %7, ptr %current, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load ptr, ptr %i, align 8
  %9 = load i32, ptr %8, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %8, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %current, align 8
  %next7 = getelementptr inbounds %struct.list, ptr %10, i32 0, i32 0
  store ptr null, ptr %next7, align 8
  %11 = load ptr, ptr %i, align 8
  store i32 0, ptr %11, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc12, %for.end
  %12 = load ptr, ptr %i, align 8
  %13 = load i32, ptr %12, align 4
  %cmp9 = icmp slt i32 %13, 2
  br i1 %cmp9, label %for.body10, label %for.end14

for.body10:                                       ; preds = %for.cond8
  %14 = load ptr, ptr %head, align 8
  %next11 = getelementptr inbounds %struct.list, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %next11, align 8
  store ptr %15, ptr %head, align 8
  br label %for.inc12

for.inc12:                                        ; preds = %for.body10
  %16 = load ptr, ptr %i, align 8
  %17 = load i32, ptr %16, align 4
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, ptr %16, align 4
  br label %for.cond8, !llvm.loop !7

for.end14:                                        ; preds = %for.cond8
  store ptr null, ptr %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end14
  %18 = load ptr, ptr %head, align 8
  %tobool = icmp ne ptr %18, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load ptr, ptr %head, align 8
  %next15 = getelementptr inbounds %struct.list, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %next15, align 8
  store ptr %20, ptr %current, align 8
  %21 = load ptr, ptr %head, align 8
  call void @free(ptr noundef %21)
  %22 = load ptr, ptr %current, align 8
  store ptr %22, ptr %head, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare void @free(ptr noundef) #2

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
!8 = distinct !{!8, !6}
