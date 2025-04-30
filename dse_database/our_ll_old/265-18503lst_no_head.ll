; ModuleID = './code/265-18503lst_no_head.c'
source_filename = "./code/265-18503lst_no_head.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.cel = type { i32, ptr }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @Imprima2(ptr noundef %lst) #0 {
entry:
  %lst.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %lst, ptr %lst.addr, align 8
  %0 = load ptr, ptr %lst.addr, align 8
  store ptr %0, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8
  %conteudo = getelementptr inbounds %struct.cel, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %conteudo, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %p, align 8
  %seg = getelementptr inbounds %struct.cel, ptr %4, i32 0, i32 1
  %5 = load ptr, ptr %seg, align 8
  store ptr %5, ptr %p, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @Insere2(i32 noundef %y, ptr noundef %p) #0 {
entry:
  %y.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %nova = alloca ptr, align 8
  store i32 %y, ptr %y.addr, align 4
  store ptr %p, ptr %p.addr, align 8
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %nova, align 8
  %0 = load i32, ptr %y.addr, align 4
  %1 = load ptr, ptr %nova, align 8
  %conteudo = getelementptr inbounds %struct.cel, ptr %1, i32 0, i32 0
  store i32 %0, ptr %conteudo, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %3 = load ptr, ptr %2, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %nova, align 8
  %5 = load ptr, ptr %p.addr, align 8
  store ptr %4, ptr %5, align 8
  %6 = load ptr, ptr %nova, align 8
  %seg = getelementptr inbounds %struct.cel, ptr %6, i32 0, i32 1
  store ptr null, ptr %seg, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %p.addr, align 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %nova, align 8
  %seg1 = getelementptr inbounds %struct.cel, ptr %9, i32 0, i32 1
  store ptr %8, ptr %seg1, align 8
  %10 = load ptr, ptr %nova, align 8
  %11 = load ptr, ptr %p.addr, align 8
  store ptr %10, ptr %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %lst = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store ptr null, ptr %lst, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  call void @Insere2(i32 noundef %1, ptr noundef %lst)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %3 = load ptr, ptr %lst, align 8
  call void @Imprima2(ptr noundef %3)
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

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
