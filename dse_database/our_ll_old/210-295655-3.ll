; ModuleID = './code/210-295655-3.c'
source_filename = "./code/210-295655-3.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [8 x i8] c"sabonis\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %s = alloca [100 x i8], align 1
  %t = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %s, i8 0, i64 100, i1 false)
  %0 = getelementptr inbounds [100 x i8], ptr %s, i32 0, i32 0
  store i8 102, ptr %0, align 1
  %1 = getelementptr inbounds [100 x i8], ptr %s, i32 0, i32 1
  store i8 117, ptr %1, align 1
  %2 = getelementptr inbounds [100 x i8], ptr %s, i32 0, i32 2
  store i8 99, ptr %2, align 1
  %3 = getelementptr inbounds [100 x i8], ptr %s, i32 0, i32 3
  store i8 107, ptr %3, align 1
  store ptr @.str, ptr %t, align 8
  %arraydecay = getelementptr inbounds [100 x i8], ptr %s, i64 0, i64 0
  %4 = load ptr, ptr %t, align 8
  call void @strcat2(ptr noundef %arraydecay, ptr noundef %4)
  %arraydecay1 = getelementptr inbounds [100 x i8], ptr %s, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1, ptr noundef %arraydecay1)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @strcat2(ptr noundef %s, ptr noundef %t) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %t.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  store ptr %t, ptr %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 8
  %1 = load i8, ptr %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body5, %while.end
  %3 = load ptr, ptr %t.addr, align 8
  %incdec.ptr2 = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr2, ptr %t.addr, align 8
  %4 = load i8, ptr %3, align 1
  %5 = load ptr, ptr %s.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr3, ptr %s.addr, align 8
  store i8 %4, ptr %5, align 1
  %tobool4 = icmp ne i8 %4, 0
  br i1 %tobool4, label %while.body5, label %while.end6

while.body5:                                      ; preds = %while.cond1
  br label %while.cond1, !llvm.loop !7

while.end6:                                       ; preds = %while.cond1
  %6 = load ptr, ptr %s.addr, align 8
  store i8 0, ptr %6, align 1
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
