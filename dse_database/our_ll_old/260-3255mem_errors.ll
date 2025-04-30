; ModuleID = './code/260-3255mem_errors.c'
source_filename = "./code/260-3255mem_errors.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @free_anything(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  call void @free(ptr noundef %0)
  ret void
}

declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @read_element(ptr noundef %array, i32 noundef %index) #0 {
entry:
  %array.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store ptr %array, ptr %array.addr, align 8
  store i32 %index, ptr %index.addr, align 4
  %0 = load ptr, ptr %array.addr, align 8
  %1 = load i32, ptr %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %x, align 4
  %3 = load i32, ptr %x, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %free_twice = alloca ptr, align 8
  %use_after_free = alloca ptr, align 8
  %never_free = alloca ptr, align 8
  %array1 = alloca [100 x i32], align 4
  %array2 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 4) #3
  store ptr %call, ptr %free_twice, align 8
  %call1 = call ptr @malloc(i64 noundef 4) #3
  store ptr %call1, ptr %use_after_free, align 8
  %call2 = call ptr @malloc(i64 noundef 4) #3
  store ptr %call2, ptr %never_free, align 8
  %call3 = call ptr @malloc(i64 noundef 400) #3
  store ptr %call3, ptr %array2, align 8
  %arraydecay = getelementptr inbounds [100 x i32], ptr %array1, i64 0, i64 0
  %call4 = call i32 @read_element(ptr noundef %arraydecay, i32 noundef 0)
  %arraydecay5 = getelementptr inbounds [100 x i32], ptr %array1, i64 0, i64 0
  %call6 = call i32 @read_element(ptr noundef %arraydecay5, i32 noundef 99)
  %0 = load ptr, ptr %array2, align 8
  %call7 = call i32 @read_element(ptr noundef %0, i32 noundef 0)
  %1 = load ptr, ptr %array2, align 8
  %call8 = call i32 @read_element(ptr noundef %1, i32 noundef 99)
  %2 = load ptr, ptr %use_after_free, align 8
  store i32 17, ptr %2, align 4
  %3 = load ptr, ptr %use_after_free, align 8
  call void @free(ptr noundef %3)
  %4 = load ptr, ptr %never_free, align 8
  store i32 17, ptr %4, align 4
  %5 = load ptr, ptr %never_free, align 8
  call void @free(ptr noundef %5)
  %6 = load ptr, ptr %array2, align 8
  call void @free(ptr noundef %6)
  %7 = load ptr, ptr %free_twice, align 8
  call void @free(ptr noundef %7)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

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
