; ModuleID = 'code/327-26416gdb1090.c'
source_filename = "code/327-26416gdb1090.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_2_by_4 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @marker(i64 %s_whatever.coerce) #0 {
entry:
  %s_whatever = alloca %struct.s_2_by_4, align 4
  %0 = bitcast %struct.s_2_by_4* %s_whatever to i64*
  store i64 %s_whatever.coerce, i64* %0, align 4
  %1 = bitcast %struct.s_2_by_4* %s_whatever to i8*
  %2 = bitcast %struct.s_2_by_4* %s_whatever to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 {
entry:
  %s24 = alloca %struct.s_2_by_4, align 4
  %field_0 = getelementptr inbounds %struct.s_2_by_4, %struct.s_2_by_4* %s24, i32 0, i32 0
  store i32 1170, i32* %field_0, align 4
  %field_1 = getelementptr inbounds %struct.s_2_by_4, %struct.s_2_by_4* %s24, i32 0, i32 1
  store i32 64701, i32* %field_1, align 4
  %0 = bitcast %struct.s_2_by_4* %s24 to i64*
  %1 = load i64, i64* %0, align 4
  call void @marker(i64 %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  call void @foo()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
