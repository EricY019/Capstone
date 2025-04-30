; ModuleID = './code/161-3857strncpy.c'
source_filename = "./code/161-3857strncpy.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.buf = private unnamed_addr constant [64 x i8] c"abcdefghijklmnopqrstuvwxyz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [11 x i8] c"helloworld\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @strncpy(ptr noundef %dst, ptr noundef %src, i64 noundef %n) #0 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %d = alloca ptr, align 8
  store ptr %dst, ptr %dst.addr, align 8
  store ptr %src, ptr %src.addr, align 8
  store i64 %n, ptr %n.addr, align 8
  %0 = load ptr, ptr %dst.addr, align 8
  store ptr %0, ptr %d, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, ptr %n.addr, align 8
  %cmp = icmp ne i64 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load ptr, ptr %src.addr, align 8
  %3 = load i8, ptr %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %src.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %src.addr, align 8
  %6 = load i8, ptr %5, align 1
  %7 = load ptr, ptr %dst.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, ptr %7, i32 1
  store ptr %incdec.ptr3, ptr %dst.addr, align 8
  store i8 %6, ptr %7, align 1
  %8 = load i64, ptr %n.addr, align 8
  %dec = add i64 %8, -1
  store i64 %dec, ptr %n.addr, align 8
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  br label %while.cond4

while.cond4:                                      ; preds = %while.body7, %while.end
  %9 = load i64, ptr %n.addr, align 8
  %cmp5 = icmp ne i64 %9, 0
  br i1 %cmp5, label %while.body7, label %while.end10

while.body7:                                      ; preds = %while.cond4
  %10 = load ptr, ptr %dst.addr, align 8
  %incdec.ptr8 = getelementptr inbounds i8, ptr %10, i32 1
  store ptr %incdec.ptr8, ptr %dst.addr, align 8
  store i8 0, ptr %10, align 1
  %11 = load i64, ptr %n.addr, align 8
  %dec9 = add i64 %11, -1
  store i64 %dec9, ptr %n.addr, align 8
  br label %while.cond4, !llvm.loop !7

while.end10:                                      ; preds = %while.cond4
  %12 = load ptr, ptr %d, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %buf = alloca [64 x i8], align 1
  %src = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %buf, ptr align 1 @__const.main.buf, i64 64, i1 false)
  store ptr @.str, ptr %src, align 8
  %arraydecay = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %0 = load ptr, ptr %src, align 8
  %call = call ptr @strncpy(ptr noundef %arraydecay, ptr noundef %0, i64 noundef 0) #2
  %arraydecay1 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %1 = load ptr, ptr %src, align 8
  %call2 = call ptr @strncpy(ptr noundef %arraydecay1, ptr noundef %1, i64 noundef 5) #2
  %arraydecay3 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %2 = load ptr, ptr %src, align 8
  %call4 = call ptr @strncpy(ptr noundef %arraydecay3, ptr noundef %2, i64 noundef 10) #2
  %arraydecay5 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %3 = load ptr, ptr %src, align 8
  %call6 = call ptr @strncpy(ptr noundef %arraydecay5, ptr noundef %3, i64 noundef 11) #2
  %arraydecay7 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %4 = load ptr, ptr %src, align 8
  %call8 = call ptr @strncpy(ptr noundef %arraydecay7, ptr noundef %4, i64 noundef 12) #2
  %arraydecay9 = getelementptr inbounds [64 x i8], ptr %buf, i64 0, i64 0
  %5 = load ptr, ptr %src, align 8
  %call10 = call ptr @strncpy(ptr noundef %arraydecay9, ptr noundef %5, i64 noundef 20) #2
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

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
