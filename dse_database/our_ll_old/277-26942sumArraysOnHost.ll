; ModuleID = './code/277-26942sumArraysOnHost.c'
source_filename = "./code/277-26942sumArraysOnHost.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sumArraysOnHost(ptr noundef %A, ptr noundef %B, ptr noundef %C, i32 noundef %N) #0 {
entry:
  %A.addr = alloca ptr, align 8
  %B.addr = alloca ptr, align 8
  %C.addr = alloca ptr, align 8
  %N.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  store ptr %A, ptr %A.addr, align 8
  store ptr %B, ptr %B.addr, align 8
  store ptr %C, ptr %C.addr, align 8
  store i32 %N, ptr %N.addr, align 4
  store i32 0, ptr %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %idx, align 4
  %1 = load i32, ptr %N.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %A.addr, align 8
  %3 = load i32, ptr %idx, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, ptr %2, i64 %idxprom
  %4 = load float, ptr %arrayidx, align 4
  %5 = load ptr, ptr %B.addr, align 8
  %6 = load i32, ptr %idx, align 4
  %idxprom1 = sext i32 %6 to i64
  %arrayidx2 = getelementptr inbounds float, ptr %5, i64 %idxprom1
  %7 = load float, ptr %arrayidx2, align 4
  %add = fadd float %4, %7
  %8 = load ptr, ptr %C.addr, align 8
  %9 = load i32, ptr %idx, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds float, ptr %8, i64 %idxprom3
  store float %add, ptr %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, ptr %idx, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %idx, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @initialData(ptr noundef %ip, i32 noundef %size) #0 {
entry:
  %ip.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %t = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %ip, ptr %ip.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  %call = call i64 @time(ptr noundef %t)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @rand()
  %and = and i32 %call2, 255
  %conv3 = sitofp i32 %and to float
  %div = fdiv float %conv3, 1.000000e+01
  %2 = load ptr, ptr %ip.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds float, ptr %2, i64 %idxprom
  store float %div, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %nElem = alloca i32, align 4
  %nBytes = alloca i64, align 8
  %h_A = alloca ptr, align 8
  %h_B = alloca ptr, align 8
  %h_C = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 1024, ptr %nElem, align 4
  %0 = load i32, ptr %nElem, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  store i64 %mul, ptr %nBytes, align 8
  %1 = load i64, ptr %nBytes, align 8
  %call = call ptr @malloc(i64 noundef %1) #3
  store ptr %call, ptr %h_A, align 8
  %2 = load i64, ptr %nBytes, align 8
  %call1 = call ptr @malloc(i64 noundef %2) #3
  store ptr %call1, ptr %h_B, align 8
  %3 = load i64, ptr %nBytes, align 8
  %call2 = call ptr @malloc(i64 noundef %3) #3
  store ptr %call2, ptr %h_C, align 8
  %4 = load ptr, ptr %h_A, align 8
  %5 = load i32, ptr %nElem, align 4
  call void @initialData(ptr noundef %4, i32 noundef %5)
  %6 = load ptr, ptr %h_B, align 8
  %7 = load i32, ptr %nElem, align 4
  call void @initialData(ptr noundef %6, i32 noundef %7)
  %8 = load ptr, ptr %h_A, align 8
  %9 = load ptr, ptr %h_B, align 8
  %10 = load ptr, ptr %h_C, align 8
  %11 = load i32, ptr %nElem, align 4
  call void @sumArraysOnHost(ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11)
  %12 = load ptr, ptr %h_A, align 8
  call void @free(ptr noundef %12)
  %13 = load ptr, ptr %h_B, align 8
  call void @free(ptr noundef %13)
  %14 = load ptr, ptr %h_C, align 8
  call void @free(ptr noundef %14)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare void @free(ptr noundef) #1

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
