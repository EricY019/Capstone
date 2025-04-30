; ModuleID = './code/316-21581exce7.c'
source_filename = "./code/316-21581exce7.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.array = private unnamed_addr constant [16 x i32] [i32 34, i32 -5, i32 6, i32 0, i32 12, i32 100, i32 56, i32 22, i32 44, i32 -3, i32 -9, i32 12, i32 17, i32 22, i32 6, i32 11], align 4
@.str = private unnamed_addr constant [28 x i8] c"The array before the sort:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%i \00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"\0A\0AThe array after the sort:\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sort(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %aptr1 = alloca ptr, align 8
  %aptr2 = alloca ptr, align 8
  %temp = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  store i32 %n, ptr %n.addr, align 4
  %0 = load ptr, ptr %a.addr, align 8
  store ptr %0, ptr %aptr1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %1 = load ptr, ptr %aptr1, align 8
  %2 = load ptr, ptr %a.addr, align 8
  %3 = load i32, ptr %n.addr, align 4
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %idx.ext
  %add.ptr1 = getelementptr inbounds i32, ptr %add.ptr, i64 -1
  %cmp = icmp ult ptr %1, %add.ptr1
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %aptr1, align 8
  %add.ptr2 = getelementptr inbounds i32, ptr %4, i64 1
  store ptr %add.ptr2, ptr %aptr2, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %5 = load ptr, ptr %aptr2, align 8
  %6 = load ptr, ptr %a.addr, align 8
  %7 = load i32, ptr %n.addr, align 4
  %idx.ext4 = sext i32 %7 to i64
  %add.ptr5 = getelementptr inbounds i32, ptr %6, i64 %idx.ext4
  %cmp6 = icmp ult ptr %5, %add.ptr5
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond3
  %8 = load ptr, ptr %aptr1, align 8
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %aptr2, align 8
  %11 = load i32, ptr %10, align 4
  %cmp8 = icmp sgt i32 %9, %11
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %12 = load ptr, ptr %aptr1, align 8
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %temp, align 4
  %14 = load ptr, ptr %aptr2, align 8
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %aptr1, align 8
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %temp, align 4
  %18 = load ptr, ptr %aptr2, align 8
  store i32 %17, ptr %18, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load ptr, ptr %aptr2, align 8
  %incdec.ptr = getelementptr inbounds i32, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %aptr2, align 8
  br label %for.cond3, !llvm.loop !5

for.end:                                          ; preds = %for.cond3
  br label %for.inc9

for.inc9:                                         ; preds = %for.end
  %20 = load ptr, ptr %aptr1, align 8
  %incdec.ptr10 = getelementptr inbounds i32, ptr %20, i32 1
  store ptr %incdec.ptr10, ptr %aptr1, align 8
  br label %for.cond, !llvm.loop !7

for.end11:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %array = alloca [16 x i32], align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %array, ptr align 4 @__const.main.array, i64 64, i1 false)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %array, i64 0, i64 %idxprom
  %2 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [16 x i32], ptr %array, i64 0, i64 0
  call void @sort(ptr noundef %arraydecay, i32 noundef 16)
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  store i32 0, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc9, %for.end
  %4 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %4, 16
  br i1 %cmp4, label %for.body5, label %for.end11

for.body5:                                        ; preds = %for.cond3
  %5 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [16 x i32], ptr %array, i64 0, i64 %idxprom6
  %6 = load i32, ptr %arrayidx7, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body5
  %7 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %7, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond3, !llvm.loop !9

for.end11:                                        ; preds = %for.cond3
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
