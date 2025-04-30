; ModuleID = './code/144-20927py-type.c'
source_filename = "./code/144-20927py-type.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.s = type { i32, i32 }
%struct.SS = type { %union.anon, %union.anon.0 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }

@vec_data_1 = global %struct.s { i32 1, i32 1 }, align 4
@vec_data_2 = global %struct.s { i32 1, i32 2 }, align 4
@__const.main.ar = private unnamed_addr constant [2 x i32] [i32 1, i32 2], align 4
@ts = global %struct.s zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ar = alloca [2 x i32], align 4
  %st = alloca %struct.s, align 4
  %ss = alloca %struct.SS, align 4
  %e = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %ar, ptr align 4 @__const.main.ar, i64 8, i1 false)
  %a = getelementptr inbounds %struct.s, ptr %st, i32 0, i32 0
  store i32 3, ptr %a, align 4
  %b = getelementptr inbounds %struct.s, ptr %st, i32 0, i32 1
  store i32 5, ptr %b, align 4
  store i32 1, ptr %e, align 4
  %0 = getelementptr inbounds %struct.SS, ptr %ss, i32 0, i32 0
  store i32 100, ptr %0, align 4
  %call = call i32 @a_function(i32 noundef 0, i8 noundef signext 1)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal i32 @a_function(i32 noundef %x, i8 noundef signext %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i8, align 1
  store i32 %x, ptr %x.addr, align 4
  store i8 %y, ptr %y.addr, align 1
  %0 = load i32, ptr %x.addr, align 4
  %1 = load i8, ptr %y.addr, align 1
  %conv = sext i8 %1 to i32
  %add = add nsw i32 %0, %conv
  ret i32 %add
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
