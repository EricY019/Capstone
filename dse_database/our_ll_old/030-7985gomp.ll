; ModuleID = './code/030-7985gomp.c'
source_filename = "./code/030-7985gomp.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [8 x i8] c"simd : \00", align 1
@__stdoutp = external global ptr, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"barrier : \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @simd()
  call void @barrier()
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @simd() #0 {
entry:
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %data = alloca ptr, align 8
  store i64 1073741824, ptr %len, align 8
  %0 = load i64, ptr %len, align 8
  %call = call ptr @malloc(i64 noundef %0) #3
  store ptr %call, ptr %data, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %1 = load ptr, ptr @__stdoutp, align 8
  %call2 = call i32 @fflush(ptr noundef %1)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8
  %3 = load i64, ptr %len, align 8
  %cmp = icmp ult i64 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %i, align 8
  %conv = trunc i64 %4 to i8
  %conv3 = sext i8 %conv to i32
  %rem = srem i32 %conv3, 256
  %conv4 = trunc i32 %rem to i8
  %5 = load ptr, ptr %data, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %6
  store i8 %conv4, ptr %arrayidx, align 1
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %8 = load ptr, ptr %data, align 8
  call void @free(ptr noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @barrier() #0 {
entry:
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %data = alloca ptr, align 8
  store i64 268435456, ptr %len, align 8
  %0 = load i64, ptr %len, align 8
  %call = call ptr @malloc(i64 noundef %0) #3
  store ptr %call, ptr %data, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %1 = load ptr, ptr @__stdoutp, align 8
  %call2 = call i32 @fflush(ptr noundef %1)
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %i, align 8
  %3 = load i64, ptr %len, align 8
  %div = udiv i64 %3, 2
  %cmp = icmp ult i64 %2, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %i, align 8
  %conv = trunc i64 %4 to i8
  %conv3 = sext i8 %conv to i32
  %rem = srem i32 %conv3, 256
  %conv4 = trunc i32 %rem to i8
  %5 = load ptr, ptr %data, align 8
  %6 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %6
  store i8 %conv4, ptr %arrayidx, align 1
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i64, ptr %i, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %8 = load i64, ptr %len, align 8
  %div5 = udiv i64 %8, 2
  store i64 %div5, ptr %i, align 8
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc15, %for.end
  %9 = load i64, ptr %i, align 8
  %10 = load i64, ptr %len, align 8
  %cmp7 = icmp ult i64 %9, %10
  br i1 %cmp7, label %for.body9, label %for.end17

for.body9:                                        ; preds = %for.cond6
  %11 = load i64, ptr %i, align 8
  %conv10 = trunc i64 %11 to i8
  %conv11 = sext i8 %conv10 to i32
  %rem12 = srem i32 %conv11, 256
  %conv13 = trunc i32 %rem12 to i8
  %12 = load ptr, ptr %data, align 8
  %13 = load i64, ptr %i, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 %13
  store i8 %conv13, ptr %arrayidx14, align 1
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !10
  br label %for.inc15

for.inc15:                                        ; preds = %for.body9
  %14 = load i64, ptr %i, align 8
  %inc16 = add i64 %14, 1
  store i64 %inc16, ptr %i, align 8
  br label %for.cond6, !llvm.loop !11

for.end17:                                        ; preds = %for.cond6
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %15 = load ptr, ptr %data, align 8
  call void @free(ptr noundef %15)
  ret void
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

declare i32 @fflush(ptr noundef) #2

declare void @free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{i64 251}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{i64 531}
!9 = distinct !{!9, !7}
!10 = !{i64 646}
!11 = distinct !{!11, !7}
