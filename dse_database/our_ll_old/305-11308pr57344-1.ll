; ModuleID = './code/305-11308pr57344-1.c'
source_filename = "./code/305-11308pr57344-1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.S = type { [5 x i8], i8, [2 x i8] }

@__const.main.t = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, [2 x i8] } { i8 0, i8 56, i8 -99, i8 -1, i8 1, i8 0, [2 x i8] undef }, align 1
@s = global [2 x %struct.S] zeroinitializer, align 1
@i = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @foo(i32 noundef %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  %0 = load i32, ptr %x.addr, align 4
  %cmp = icmp ne i32 %0, -3161
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory}"() #4, !srcloc !5
  ret void
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.S, align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %t, ptr align 1 @__const.main.t, i64 8, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 getelementptr inbounds ([2 x %struct.S], ptr @s, i64 0, i64 1), ptr align 1 %t, i64 8, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr @i, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %bf.load = load i40, ptr getelementptr inbounds ([2 x %struct.S], ptr @s, i64 0, i64 1), align 1
  %bf.shl = shl i40 %bf.load, 7
  %bf.ashr = ashr i40 %bf.shl, 18
  %bf.cast = trunc i40 %bf.ashr to i32
  call void @foo(i32 noundef %bf.cast)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr @i, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = !{i64 328}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
