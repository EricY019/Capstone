; ModuleID = './code/097-13617big_blocks_freed_list.c'
source_filename = "./code/097-13617big_blocks_freed_list.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %semi_big = alloca ptr, align 8
  %big = alloca ptr, align 8
  %small = alloca ptr, align 8
  %other_small = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store ptr null, ptr %semi_big, align 8
  store ptr null, ptr %big, align 8
  store ptr null, ptr %small, align 8
  store ptr null, ptr %other_small, align 8
  %call = call ptr @malloc(i64 noundef 900000) #3
  store ptr %call, ptr %semi_big, align 8
  %call1 = call ptr @malloc(i64 noundef 1000001) #3
  store ptr %call1, ptr %big, align 8
  %0 = load ptr, ptr %semi_big, align 8
  call void @free(ptr noundef %0)
  %1 = load ptr, ptr %big, align 8
  call void @free(ptr noundef %1)
  %2 = load ptr, ptr %big, align 8
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 1000
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @jumped()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %semi_big, align 8
  %arrayidx3 = getelementptr inbounds i8, ptr %4, i64 1000
  %5 = load i8, ptr %arrayidx3, align 1
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp sgt i32 %conv4, 0
  br i1 %cmp5, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @jumped()
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end
  %call9 = call ptr @malloc(i64 noundef 10000) #3
  store ptr %call9, ptr %small, align 8
  %6 = load ptr, ptr %small, align 8
  call void @free(ptr noundef %6)
  %7 = load ptr, ptr %big, align 8
  %arrayidx10 = getelementptr inbounds i8, ptr %7, i64 2000
  %8 = load i8, ptr %arrayidx10, align 1
  %conv11 = sext i8 %8 to i32
  %cmp12 = icmp sgt i32 %conv11, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end8
  call void @jumped()
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end8
  %9 = load ptr, ptr %semi_big, align 8
  %arrayidx16 = getelementptr inbounds i8, ptr %9, i64 2000
  %10 = load i8, ptr %arrayidx16, align 1
  %conv17 = sext i8 %10 to i32
  %cmp18 = icmp sgt i32 %conv17, 0
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end15
  call void @jumped()
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end15
  store ptr null, ptr %big, align 8
  %call22 = call ptr @malloc(i64 noundef 1000001) #3
  store ptr %call22, ptr %big, align 8
  %11 = load ptr, ptr %big, align 8
  call void @free(ptr noundef %11)
  %12 = load ptr, ptr %small, align 8
  %arrayidx23 = getelementptr inbounds i8, ptr %12, i64 10
  %13 = load i8, ptr %arrayidx23, align 1
  %conv24 = sext i8 %13 to i32
  %cmp25 = icmp sgt i32 %conv24, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end21
  call void @jumped()
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end21
  %14 = load ptr, ptr %big, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %14, i64 10
  %15 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %15 to i32
  %cmp31 = icmp sgt i32 %conv30, 0
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.end28
  call void @jumped()
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end28
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc43, %if.end34
  %16 = load i32, ptr %i, align 4
  %cmp35 = icmp slt i32 %16, 100
  br i1 %cmp35, label %for.body, label %for.end45

for.body:                                         ; preds = %for.cond
  %call37 = call ptr @malloc(i64 noundef 10000) #3
  store ptr %call37, ptr %other_small, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc, %for.body
  %17 = load i32, ptr %j, align 4
  %cmp39 = icmp slt i32 %17, 10000
  br i1 %cmp39, label %for.body41, label %for.end

for.body41:                                       ; preds = %for.cond38
  %18 = load ptr, ptr %other_small, align 8
  %19 = load i32, ptr %j, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx42 = getelementptr inbounds i8, ptr %18, i64 %idxprom
  store i8 1, ptr %arrayidx42, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body41
  %20 = load i32, ptr %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond38, !llvm.loop !5

for.end:                                          ; preds = %for.cond38
  br label %for.inc43

for.inc43:                                        ; preds = %for.end
  %21 = load i32, ptr %i, align 4
  %inc44 = add nsw i32 %21, 1
  store i32 %inc44, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end45:                                        ; preds = %for.cond
  %22 = load ptr, ptr %small, align 8
  %arrayidx46 = getelementptr inbounds i8, ptr %22, i64 10
  %23 = load i8, ptr %arrayidx46, align 1
  %conv47 = sext i8 %23 to i32
  %cmp48 = icmp sgt i32 %conv47, 0
  br i1 %cmp48, label %if.then50, label %if.end51

if.then50:                                        ; preds = %for.end45
  call void @jumped()
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %for.end45
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @jumped() #0 {
entry:
  ret void
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
!7 = distinct !{!7, !6}
