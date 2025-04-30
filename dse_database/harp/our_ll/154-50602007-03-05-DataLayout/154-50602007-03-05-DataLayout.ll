; ModuleID = 'code/154-50602007-03-05-DataLayout.c'
source_filename = "code/154-50602007-03-05-DataLayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnode = type { i16, double, [3 x double], i32, i32, [3 x double], [3 x double], [3 x double], double, %struct.bnode*, %struct.bnode* }

@body = dso_local global %struct.bnode zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bnode* @ubody_alloc(i32 %p) #0 {
entry:
  %p.addr = alloca i32, align 4
  %tmp = alloca %struct.bnode*, align 8
  store i32 %p, i32* %p.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 144) #2
  %0 = bitcast i8* %call to %struct.bnode*
  store %struct.bnode* %0, %struct.bnode** %tmp, align 8
  %1 = load %struct.bnode*, %struct.bnode** %tmp, align 8
  %type = getelementptr inbounds %struct.bnode, %struct.bnode* %1, i32 0, i32 0
  store i16 1, i16* %type, align 8
  %2 = load i32, i32* %p.addr, align 4
  %3 = load %struct.bnode*, %struct.bnode** %tmp, align 8
  %proc = getelementptr inbounds %struct.bnode, %struct.bnode* %3, i32 0, i32 3
  store i32 %2, i32* %proc, align 8
  %4 = load %struct.bnode*, %struct.bnode** %tmp, align 8
  %proc_next = getelementptr inbounds %struct.bnode, %struct.bnode* %4, i32 0, i32 10
  store %struct.bnode* null, %struct.bnode** %proc_next, align 8
  %5 = load i32, i32* %p.addr, align 4
  %6 = load %struct.bnode*, %struct.bnode** %tmp, align 8
  %new_proc = getelementptr inbounds %struct.bnode, %struct.bnode* %6, i32 0, i32 4
  store i32 %5, i32* %new_proc, align 4
  %7 = load %struct.bnode*, %struct.bnode** %tmp, align 8
  ret %struct.bnode* %7
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %b = alloca %struct.bnode*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call %struct.bnode* @ubody_alloc(i32 17)
  store %struct.bnode* %call, %struct.bnode** %b, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
