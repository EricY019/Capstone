; ModuleID = './code/232-5707ho_strncat.c'
source_filename = "./code/232-5707ho_strncat.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"aaa\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0123\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @ho_strncat(ptr noundef %s1, ptr noundef %s2, i32 noundef %n) #0 {
entry:
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %s1, ptr %s1.addr, align 8
  store ptr %s2, ptr %s2.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %s1.addr, align 8
  store ptr %0, ptr %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %s1.addr, align 8
  %2 = load i8, ptr %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %s1.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1
  store ptr %incdec.ptr, ptr %s1.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body6, %while.end
  %4 = load i32, ptr %n.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %n.addr, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %5 = load ptr, ptr %s2.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr3, ptr %s2.addr, align 8
  %6 = load i8, ptr %5, align 1
  %7 = load ptr, ptr %s1.addr, align 8
  %incdec.ptr4 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr4, ptr %s1.addr, align 8
  store i8 %6, ptr %7, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %8 = phi i1 [ false, %while.cond1 ], [ %cmp, %land.rhs ]
  br i1 %8, label %while.body6, label %while.end7

while.body6:                                      ; preds = %land.end
  br label %while.cond1, !llvm.loop !7

while.end7:                                       ; preds = %land.end
  %9 = load ptr, ptr %s1.addr, align 8
  store i8 0, ptr %9, align 1
  %10 = load ptr, ptr %s, align 8
  ret ptr %10
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %buf = alloca [128 x i8], align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.memset.p0.i64(ptr align 1 %buf, i8 0, i64 128, i1 false)
  %0 = getelementptr inbounds [128 x i8], ptr %buf, i32 0, i32 0
  store i8 48, ptr %0, align 1
  %1 = getelementptr inbounds [128 x i8], ptr %buf, i32 0, i32 1
  store i8 49, ptr %1, align 1
  %2 = getelementptr inbounds [128 x i8], ptr %buf, i32 0, i32 2
  store i8 50, ptr %2, align 1
  %3 = getelementptr inbounds [128 x i8], ptr %buf, i32 0, i32 3
  store i8 51, ptr %3, align 1
  %arrayidx = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0
  store i8 0, ptr %arrayidx, align 1
  %arraydecay = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0
  %call = call ptr @ho_strncat(ptr noundef %arraydecay, ptr noundef @.str.1, i32 noundef 2)
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %call)
  %arraydecay2 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0
  %call3 = call ptr @__strcpy_chk(ptr noundef %arraydecay2, ptr noundef @.str.2, i64 noundef 128) #4
  %arrayidx4 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0
  store i8 0, ptr %arrayidx4, align 1
  %arraydecay5 = getelementptr inbounds [128 x i8], ptr %buf, i64 0, i64 0
  %call6 = call ptr @__strncat_chk(ptr noundef %arraydecay5, ptr noundef @.str.1, i64 noundef 2, i64 noundef 128) #4
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %call6)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @__strcpy_chk(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind
declare ptr @__strncat_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }

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
