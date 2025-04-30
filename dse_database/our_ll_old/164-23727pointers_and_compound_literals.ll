; ModuleID = './code/164-23727pointers_and_compound_literals.c'
source_filename = "./code/164-23727pointers_and_compound_literals.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.db = type { i32, i32 }

@constinit = private constant [10 x i32] [i32 10, i32 20, i32 30, i32 40, i32 50, i32 60, i32 70, i32 80, i32 90, i32 100], align 4
@.str = private unnamed_addr constant [5 x i8] c"%3d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"id: %d\09year: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %.compoundliteral = alloca [10 x i32], align 4
  %data = alloca ptr, align 8
  %.compoundliteral1 = alloca %struct.db, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.compoundliteral, ptr align 4 @constinit, i64 40, i1 false)
  %arraydecay = getelementptr inbounds [10 x i32], ptr %.compoundliteral, i64 0, i64 0
  store ptr %arraydecay, ptr %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %ptr, align 8
  %1 = load i32, ptr %0, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %ptr, align 8
  %3 = load i32, ptr %2, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  %4 = load ptr, ptr %ptr, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %ptr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %id = getelementptr inbounds %struct.db, ptr %.compoundliteral1, i32 0, i32 0
  store i32 1, ptr %id, align 4
  %year = getelementptr inbounds %struct.db, ptr %.compoundliteral1, i32 0, i32 1
  store i32 2016, ptr %year, align 4
  store ptr %.compoundliteral1, ptr %data, align 8
  %5 = load ptr, ptr %data, align 8
  %id2 = getelementptr inbounds %struct.db, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %id2, align 4
  %7 = load ptr, ptr %data, align 8
  %year3 = getelementptr inbounds %struct.db, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %year3, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6, i32 noundef %8)
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
