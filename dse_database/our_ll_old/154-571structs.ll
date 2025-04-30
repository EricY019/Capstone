; ModuleID = './code/154-571structs.c'
source_filename = "./code/154-571structs.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.vec3 = type { double, double, double }
%struct.vec2 = type { double, double }

@.str = private unnamed_addr constant [29 x i8] c"-----Pass by value test-----\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Original 3 vector:\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Original 3 vector after modification:\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"New 3 vector after modification:\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"-----Pass by reference test-----\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Original 2 vector:\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Original 2 vector after modification:\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"3Vector : [%Lf, %Lf, %Lf]\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"2Vector : [%Lf, %Lf]\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca %struct.vec3, align 8
  %vprime = alloca %struct.vec3, align 8
  %w = alloca %struct.vec2, align 8
  %tmp = alloca %struct.vec3, align 8
  store i32 0, ptr %retval, align 4
  %x = getelementptr inbounds %struct.vec3, ptr %v, i32 0, i32 0
  store double 0.000000e+00, ptr %x, align 8
  %y = getelementptr inbounds %struct.vec3, ptr %v, i32 0, i32 1
  store double 0.000000e+00, ptr %y, align 8
  %z = getelementptr inbounds %struct.vec3, ptr %v, i32 0, i32 2
  store double 0.000000e+00, ptr %z, align 8
  %x1 = getelementptr inbounds %struct.vec2, ptr %w, i32 0, i32 0
  store double 0.000000e+00, ptr %x1, align 8
  %y2 = getelementptr inbounds %struct.vec2, ptr %w, i32 0, i32 1
  store double 0.000000e+00, ptr %y2, align 8
  %call = call i32 @puts(ptr noundef @.str)
  %call3 = call i32 @puts(ptr noundef @.str.1)
  %0 = load [3 x double], ptr %v, align 8
  call void @printVec3([3 x double] %0)
  %1 = load [3 x double], ptr %v, align 8
  %call4 = call %struct.vec3 @modifyVec3([3 x double] %1, double noundef 1.000000e+00, double noundef 2.000000e+00, double noundef 3.000000e+00)
  %2 = getelementptr inbounds %struct.vec3, ptr %tmp, i32 0, i32 0
  %3 = extractvalue %struct.vec3 %call4, 0
  store double %3, ptr %2, align 8
  %4 = getelementptr inbounds %struct.vec3, ptr %tmp, i32 0, i32 1
  %5 = extractvalue %struct.vec3 %call4, 1
  store double %5, ptr %4, align 8
  %6 = getelementptr inbounds %struct.vec3, ptr %tmp, i32 0, i32 2
  %7 = extractvalue %struct.vec3 %call4, 2
  store double %7, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %vprime, ptr align 8 %tmp, i64 24, i1 false)
  %call5 = call i32 @puts(ptr noundef @.str.2)
  %8 = load [3 x double], ptr %v, align 8
  call void @printVec3([3 x double] %8)
  %call6 = call i32 @puts(ptr noundef @.str.3)
  %9 = load [3 x double], ptr %vprime, align 8
  call void @printVec3([3 x double] %9)
  %call7 = call i32 @puts(ptr noundef @.str.4)
  %call8 = call i32 @puts(ptr noundef @.str.5)
  call void @printVec2(ptr noundef %w)
  call void @setVec2(ptr noundef %w, double noundef 1.000000e+00, double noundef 2.000000e+00)
  %call9 = call i32 @puts(ptr noundef @.str.6)
  call void @printVec2(ptr noundef %w)
  ret i32 0
}

declare i32 @puts(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printVec3([3 x double] %v.coerce) #0 {
entry:
  %v = alloca %struct.vec3, align 8
  store [3 x double] %v.coerce, ptr %v, align 8
  %x = getelementptr inbounds %struct.vec3, ptr %v, i32 0, i32 0
  %0 = load double, ptr %x, align 8
  %y = getelementptr inbounds %struct.vec3, ptr %v, i32 0, i32 1
  %1 = load double, ptr %y, align 8
  %z = getelementptr inbounds %struct.vec3, ptr %v, i32 0, i32 2
  %2 = load double, ptr %z, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.7, double noundef %0, double noundef %1, double noundef %2)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define %struct.vec3 @modifyVec3([3 x double] %v.coerce, double noundef %x, double noundef %y, double noundef %z) #0 {
entry:
  %retval = alloca %struct.vec3, align 8
  %v = alloca %struct.vec3, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %z.addr = alloca double, align 8
  store [3 x double] %v.coerce, ptr %v, align 8
  store double %x, ptr %x.addr, align 8
  store double %y, ptr %y.addr, align 8
  store double %z, ptr %z.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  %x1 = getelementptr inbounds %struct.vec3, ptr %v, i32 0, i32 0
  store double %0, ptr %x1, align 8
  %1 = load double, ptr %y.addr, align 8
  %y2 = getelementptr inbounds %struct.vec3, ptr %v, i32 0, i32 1
  store double %1, ptr %y2, align 8
  %2 = load double, ptr %z.addr, align 8
  %z3 = getelementptr inbounds %struct.vec3, ptr %v, i32 0, i32 2
  store double %2, ptr %z3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %v, i64 24, i1 false)
  %3 = load %struct.vec3, ptr %retval, align 8
  ret %struct.vec3 %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @printVec2(ptr noundef %wp) #0 {
entry:
  %wp.addr = alloca ptr, align 8
  store ptr %wp, ptr %wp.addr, align 8
  %0 = load ptr, ptr %wp.addr, align 8
  %x = getelementptr inbounds %struct.vec2, ptr %0, i32 0, i32 0
  %1 = load double, ptr %x, align 8
  %2 = load ptr, ptr %wp.addr, align 8
  %y = getelementptr inbounds %struct.vec2, ptr %2, i32 0, i32 1
  %3 = load double, ptr %y, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.8, double noundef %1, double noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @setVec2(ptr noundef %wp, double noundef %x, double noundef %y) #0 {
entry:
  %wp.addr = alloca ptr, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store ptr %wp, ptr %wp.addr, align 8
  store double %x, ptr %x.addr, align 8
  store double %y, ptr %y.addr, align 8
  %0 = load double, ptr %x.addr, align 8
  %1 = load ptr, ptr %wp.addr, align 8
  %x1 = getelementptr inbounds %struct.vec2, ptr %1, i32 0, i32 0
  store double %0, ptr %x1, align 8
  %2 = load double, ptr %y.addr, align 8
  %3 = load ptr, ptr %wp.addr, align 8
  %y2 = getelementptr inbounds %struct.vec2, ptr %3, i32 0, i32 1
  store double %2, ptr %y2, align 8
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
