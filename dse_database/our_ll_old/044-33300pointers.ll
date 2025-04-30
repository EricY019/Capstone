; ModuleID = './code/044-33300pointers.c'
source_filename = "./code/044-33300pointers.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.A = private unnamed_addr constant [10 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Yep\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d [%p]\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %A = alloca [10 x i32], align 4
  %N = alloca i32, align 4
  %ptr_a = alloca ptr, align 8
  %p = alloca ptr, align 8
  %lol = alloca [10 x [9 x [8 x [7 x [6 x [5 x i32]]]]]], align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %A, ptr align 4 @__const.main.A, i64 40, i1 false)
  store ptr null, ptr %ptr_a, align 8
  store ptr %A, ptr %ptr_a, align 8
  %0 = load ptr, ptr %ptr_a, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %0)
  %1 = load ptr, ptr %ptr_a, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %ptr_a, align 8
  %2 = load ptr, ptr %ptr_a, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %2)
  %3 = load ptr, ptr %ptr_a, align 8
  %add.ptr = getelementptr inbounds i32, ptr %3, i64 4
  store ptr %add.ptr, ptr %ptr_a, align 8
  %4 = load ptr, ptr %ptr_a, align 8
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %4)
  %5 = load ptr, ptr %ptr_a, align 8
  %add.ptr3 = getelementptr inbounds i32, ptr %5, i64 -2
  store ptr %add.ptr3, ptr %ptr_a, align 8
  %6 = load ptr, ptr %ptr_a, align 8
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %6)
  %arrayidx = getelementptr inbounds [10 x i32], ptr %A, i64 0, i64 3
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %A, i64 0, i64 0
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arrayidx5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, ptr %N, align 4
  %7 = load i32, ptr %N, align 4
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %7)
  %arrayidx7 = getelementptr inbounds [10 x i32], ptr %A, i64 0, i64 0
  %arrayidx8 = getelementptr inbounds [10 x i32], ptr %A, i64 0, i64 3
  %sub.ptr.lhs.cast9 = ptrtoint ptr %arrayidx7 to i64
  %sub.ptr.rhs.cast10 = ptrtoint ptr %arrayidx8 to i64
  %sub.ptr.sub11 = sub i64 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10
  %sub.ptr.div12 = sdiv exact i64 %sub.ptr.sub11, 4
  %conv13 = trunc i64 %sub.ptr.div12 to i32
  store i32 %conv13, ptr %N, align 4
  %8 = load i32, ptr %N, align 4
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
  %9 = load ptr, ptr %ptr_a, align 8
  %arrayidx15 = getelementptr inbounds [10 x i32], ptr %A, i64 0, i64 2
  %cmp = icmp ugt ptr %9, %arrayidx15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call17 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store ptr %A, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load ptr, ptr %p, align 8
  %arrayidx18 = getelementptr inbounds [10 x i32], ptr %A, i64 0, i64 1000
  %cmp19 = icmp ule ptr %10, %arrayidx18
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %p, align 8
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %p, align 8
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %12, ptr noundef %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load ptr, ptr %p, align 8
  %incdec.ptr22 = getelementptr inbounds i32, ptr %14, i32 1
  store ptr %incdec.ptr22, ptr %p, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %arrayidx23 = getelementptr inbounds [10 x [9 x [8 x [7 x [6 x [5 x i32]]]]]], ptr %lol, i64 0, i64 0
  %arrayidx24 = getelementptr inbounds [9 x [8 x [7 x [6 x [5 x i32]]]]], ptr %arrayidx23, i64 0, i64 0
  %arrayidx25 = getelementptr inbounds [8 x [7 x [6 x [5 x i32]]]], ptr %arrayidx24, i64 0, i64 0
  %arrayidx26 = getelementptr inbounds [7 x [6 x [5 x i32]]], ptr %arrayidx25, i64 0, i64 0
  %arrayidx27 = getelementptr inbounds [6 x [5 x i32]], ptr %arrayidx26, i64 0, i64 0
  %arrayidx28 = getelementptr inbounds [5 x i32], ptr %arrayidx27, i64 0, i64 0
  store i32 1, ptr %arrayidx28, align 4
  %arrayidx29 = getelementptr inbounds [10 x [9 x [8 x [7 x [6 x [5 x i32]]]]]], ptr %lol, i64 0, i64 0
  %arrayidx30 = getelementptr inbounds [9 x [8 x [7 x [6 x [5 x i32]]]]], ptr %arrayidx29, i64 0, i64 0
  %arrayidx31 = getelementptr inbounds [8 x [7 x [6 x [5 x i32]]]], ptr %arrayidx30, i64 0, i64 0
  %arrayidx32 = getelementptr inbounds [7 x [6 x [5 x i32]]], ptr %arrayidx31, i64 0, i64 0
  %arrayidx33 = getelementptr inbounds [6 x [5 x i32]], ptr %arrayidx32, i64 0, i64 0
  %arrayidx34 = getelementptr inbounds [5 x i32], ptr %arrayidx33, i64 0, i64 0
  %15 = load i32, ptr %arrayidx34, align 4
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %15)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
