; ModuleID = 'code/144-20927py-type.c'
source_filename = "code/144-20927py-type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s = type { i32, i32 }
%struct.SS = type { %union.anon, %union.anon.0 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }

@vec_data_1 = dso_local global %struct.s { i32 1, i32 1 }, align 4
@vec_data_2 = dso_local global %struct.s { i32 1, i32 2 }, align 4
@__const.main.ar = private unnamed_addr constant [2 x i32] [i32 1, i32 2], align 4
@ts = dso_local global %struct.s zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %ar = alloca [2 x i32], align 4
  %st = alloca %struct.s, align 4
  %ss = alloca %struct.SS, align 4
  %e = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [2 x i32]* %ar to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([2 x i32]* @__const.main.ar to i8*), i64 8, i1 false)
  %a = getelementptr inbounds %struct.s, %struct.s* %st, i32 0, i32 0
  store i32 3, i32* %a, align 4
  %b = getelementptr inbounds %struct.s, %struct.s* %st, i32 0, i32 1
  store i32 5, i32* %b, align 4
  store i32 1, i32* %e, align 4
  %1 = getelementptr inbounds %struct.SS, %struct.SS* %ss, i32 0, i32 0
  %x = bitcast %union.anon* %1 to i32*
  store i32 100, i32* %x, align 4
  %call = call i32 @a_function(i32 0, i8 signext 1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a_function(i32 %x, i8 signext %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i8, align 1
  store i32 %x, i32* %x.addr, align 4
  store i8 %y, i8* %y.addr, align 1
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i8, i8* %y.addr, align 1
  %conv = sext i8 %1 to i32
  %add = add nsw i32 %0, %conv
  ret i32 %add
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
