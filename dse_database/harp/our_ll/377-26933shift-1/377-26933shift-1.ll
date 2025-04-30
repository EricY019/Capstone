; ModuleID = 'code/377-26933shift-1.c'
source_filename = "code/377-26933shift-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i64 }

@__const.main.s = private unnamed_addr constant %struct.s { i64 400 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca %struct.s, align 8
  %culli = alloca i64, align 8
  %vi = alloca i32, align 4
  %shiftcount = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %a, align 4
  %0 = bitcast %struct.s* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.s* @__const.main.s to i8*), i64 8, i1 false)
  store i64 42, i64* %culli, align 8
  store volatile i32 370, i32* %vi, align 4
  store volatile i32 153, i32* %shiftcount, align 4
  %1 = load i32, i32* %a, align 4
  %shl = shl i32 %1, 152
  store i32 %shl, i32* %a, align 4
  %2 = load volatile i32, i32* %shiftcount, align 4
  %shl1 = shl i32 1, %2
  %3 = load volatile i32, i32* %vi, align 4
  %inc = add nsw i32 %3, 1
  store volatile i32 %inc, i32* %vi, align 4
  %shl2 = shl i32 1, %3
  %a3 = getelementptr inbounds %struct.s, %struct.s* %s, i32 0, i32 0
  %4 = load i64, i64* %a3, align 8
  %add = add nsw i64 %4, 2
  %shl4 = shl i64 1, %add
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
