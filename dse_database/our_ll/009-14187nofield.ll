; ModuleID = 'code/009-14187nofield.c'
source_filename = "code/009-14187nofield.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.empty = type {}
%union.empty_union = type {}
%struct.not_empty = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca %struct.empty, align 1
  %u = alloca %union.empty_union, align 1
  %n = alloca %struct.not_empty, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.empty* %e to i8*
  %1 = bitcast %struct.not_empty* %n to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false)
  %2 = bitcast %struct.empty* %e to i8*
  %e1 = getelementptr inbounds %struct.not_empty, %struct.not_empty* %n, i32 0, i32 0
  store i8* %2, i8** %e1, align 8
  %3 = bitcast %union.empty_union* %u to i8*
  %u2 = getelementptr inbounds %struct.not_empty, %struct.not_empty* %n, i32 0, i32 1
  store i8* %3, i8** %u2, align 8
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
