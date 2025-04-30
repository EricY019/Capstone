; ModuleID = './code/371-23398knr_strcpy.c'
source_filename = "./code/371-23398knr_strcpy.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__const.main.source = private unnamed_addr constant [55 x i8] c"Pouvez vous me dire quelle e la correct pronontiation?\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %source = alloca [55 x i8], align 1
  %dest = alloca [0 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %ret, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %source, ptr align 1 @__const.main.source, i64 55, i1 false)
  %arraydecay = getelementptr inbounds [0 x i8], ptr %dest, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [55 x i8], ptr %source, i64 0, i64 0
  call void @strcpy(ptr noundef %arraydecay, ptr noundef %arraydecay1)
  %arraydecay2 = getelementptr inbounds [0 x i8], ptr %dest, i64 0, i64 0
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %arraydecay2)
  %0 = load i32, ptr %ret, align 4
  ret i32 %0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @strcpy(ptr noundef %dest, ptr noundef %source) #0 {
entry:
  %dest.addr = alloca ptr, align 8
  %source.addr = alloca ptr, align 8
  store ptr %dest, ptr %dest.addr, align 8
  store ptr %source, ptr %source.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %source.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %source.addr, align 8
  %1 = load i8, ptr %0, align 1
  %2 = load ptr, ptr %dest.addr, align 8
  %incdec.ptr1 = getelementptr inbounds i8, ptr %2, i32 1
  store ptr %incdec.ptr1, ptr %dest.addr, align 8
  store i8 %1, ptr %2, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  ret void
}

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
