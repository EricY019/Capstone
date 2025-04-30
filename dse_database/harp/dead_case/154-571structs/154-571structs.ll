; ModuleID = 'code/154-571structs.c'
source_filename = "code/154-571structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec3 = type { x86_fp80, x86_fp80, x86_fp80 }
%struct.vec2 = type { x86_fp80, x86_fp80 }

@.str = private unnamed_addr constant [29 x i8] c"-----Pass by value test-----\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Original 3 vector:\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Original 3 vector after modification:\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"New 3 vector after modification:\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"-----Pass by reference test-----\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Original 2 vector:\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Original 2 vector after modification:\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"3Vector : [%Lf, %Lf, %Lf]\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"2Vector : [%Lf, %Lf]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca %struct.vec3, align 16
  %vprime = alloca %struct.vec3, align 16
  %w = alloca %struct.vec2, align 16
  %tmp = alloca %struct.vec3, align 16
  store i32 0, i32* %retval, align 4
  %x = getelementptr inbounds %struct.vec3, %struct.vec3* %v, i32 0, i32 0
  store x86_fp80 0xK00000000000000000000, x86_fp80* %x, align 16
  %y = getelementptr inbounds %struct.vec3, %struct.vec3* %v, i32 0, i32 1
  store x86_fp80 0xK00000000000000000000, x86_fp80* %y, align 16
  %z = getelementptr inbounds %struct.vec3, %struct.vec3* %v, i32 0, i32 2
  store x86_fp80 0xK00000000000000000000, x86_fp80* %z, align 16
  %x1 = getelementptr inbounds %struct.vec2, %struct.vec2* %w, i32 0, i32 0
  store x86_fp80 0xK00000000000000000000, x86_fp80* %x1, align 16
  %y2 = getelementptr inbounds %struct.vec2, %struct.vec2* %w, i32 0, i32 1
  store x86_fp80 0xK00000000000000000000, x86_fp80* %y2, align 16
  %call = call i32 @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %call3 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  call void @printVec3(%struct.vec3* byval(%struct.vec3) align 16 %v)
  call void @modifyVec3(%struct.vec3* sret(%struct.vec3) align 16 %tmp, %struct.vec3* byval(%struct.vec3) align 16 %v, x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xK40008000000000000000, x86_fp80 0xK4000C000000000000000)
  %0 = bitcast %struct.vec3* %vprime to i8*
  %1 = bitcast %struct.vec3* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 %1, i64 48, i1 false)
  %call4 = call i32 @puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  call void @printVec3(%struct.vec3* byval(%struct.vec3) align 16 %v)
  %call5 = call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  call void @printVec3(%struct.vec3* byval(%struct.vec3) align 16 %vprime)
  %call6 = call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %call7 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  call void @printVec2(%struct.vec2* %w)
  call void @setVec2(%struct.vec2* %w, x86_fp80 0xK3FFF8000000000000000, x86_fp80 0xK40008000000000000000)
  %call8 = call i32 @puts(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  call void @printVec2(%struct.vec2* %w)
  ret i32 0
}

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printVec3(%struct.vec3* byval(%struct.vec3) align 16 %v) #0 {
entry:
  %x = getelementptr inbounds %struct.vec3, %struct.vec3* %v, i32 0, i32 0
  %0 = load x86_fp80, x86_fp80* %x, align 16
  %y = getelementptr inbounds %struct.vec3, %struct.vec3* %v, i32 0, i32 1
  %1 = load x86_fp80, x86_fp80* %y, align 16
  %z = getelementptr inbounds %struct.vec3, %struct.vec3* %v, i32 0, i32 2
  %2 = load x86_fp80, x86_fp80* %z, align 16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), x86_fp80 %0, x86_fp80 %1, x86_fp80 %2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modifyVec3(%struct.vec3* noalias sret(%struct.vec3) align 16 %agg.result, %struct.vec3* byval(%struct.vec3) align 16 %v, x86_fp80 %x, x86_fp80 %y, x86_fp80 %z) #0 {
entry:
  %x.addr = alloca x86_fp80, align 16
  %y.addr = alloca x86_fp80, align 16
  %z.addr = alloca x86_fp80, align 16
  store x86_fp80 %x, x86_fp80* %x.addr, align 16
  store x86_fp80 %y, x86_fp80* %y.addr, align 16
  store x86_fp80 %z, x86_fp80* %z.addr, align 16
  %0 = load x86_fp80, x86_fp80* %x.addr, align 16
  %x1 = getelementptr inbounds %struct.vec3, %struct.vec3* %v, i32 0, i32 0
  store x86_fp80 %0, x86_fp80* %x1, align 16
  %1 = load x86_fp80, x86_fp80* %y.addr, align 16
  %y2 = getelementptr inbounds %struct.vec3, %struct.vec3* %v, i32 0, i32 1
  store x86_fp80 %1, x86_fp80* %y2, align 16
  %2 = load x86_fp80, x86_fp80* %z.addr, align 16
  %z3 = getelementptr inbounds %struct.vec3, %struct.vec3* %v, i32 0, i32 2
  store x86_fp80 %2, x86_fp80* %z3, align 16
  %3 = bitcast %struct.vec3* %agg.result to i8*
  %4 = bitcast %struct.vec3* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 %4, i64 48, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printVec2(%struct.vec2* %wp) #0 {
entry:
  %wp.addr = alloca %struct.vec2*, align 8
  store %struct.vec2* %wp, %struct.vec2** %wp.addr, align 8
  %0 = load %struct.vec2*, %struct.vec2** %wp.addr, align 8
  %x = getelementptr inbounds %struct.vec2, %struct.vec2* %0, i32 0, i32 0
  %1 = load x86_fp80, x86_fp80* %x, align 16
  %2 = load %struct.vec2*, %struct.vec2** %wp.addr, align 8
  %y = getelementptr inbounds %struct.vec2, %struct.vec2* %2, i32 0, i32 1
  %3 = load x86_fp80, x86_fp80* %y, align 16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), x86_fp80 %1, x86_fp80 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setVec2(%struct.vec2* %wp, x86_fp80 %x, x86_fp80 %y) #0 {
entry:
  %wp.addr = alloca %struct.vec2*, align 8
  %x.addr = alloca x86_fp80, align 16
  %y.addr = alloca x86_fp80, align 16
  store %struct.vec2* %wp, %struct.vec2** %wp.addr, align 8
  store x86_fp80 %x, x86_fp80* %x.addr, align 16
  store x86_fp80 %y, x86_fp80* %y.addr, align 16
  %0 = load x86_fp80, x86_fp80* %x.addr, align 16
  %1 = load %struct.vec2*, %struct.vec2** %wp.addr, align 8
  %x1 = getelementptr inbounds %struct.vec2, %struct.vec2* %1, i32 0, i32 0
  store x86_fp80 %0, x86_fp80* %x1, align 16
  %2 = load x86_fp80, x86_fp80* %y.addr, align 16
  %3 = load %struct.vec2*, %struct.vec2** %wp.addr, align 8
  %y2 = getelementptr inbounds %struct.vec2, %struct.vec2* %3, i32 0, i32 1
  store x86_fp80 %2, x86_fp80* %y2, align 16
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
