; ModuleID = 'code/328-27095pr57344-4.c'
source_filename = "code/328-27095pr57344-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [15 x i8], i8 }

@__const.main.t = private unnamed_addr constant { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -16, i8 15, i8 25, i8 42, i8 59, i8 76, i8 -35, i8 1, i8 0 }, align 1
@s = dso_local global [2 x %struct.S] zeroinitializer, align 16
@i = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %cmp = icmp ne i64 %0, -1220975898975746
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca %struct.S, align 1
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.S* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ({ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }* @__const.main.t, i32 0, i32 0), i64 16, i1 false)
  %1 = bitcast %struct.S* %t to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @s, i64 0, i64 1, i32 0, i32 0), i8* align 1 %1, i64 16, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* @i, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %bf.load = load i120, i120* bitcast (%struct.S* getelementptr inbounds ([2 x %struct.S], [2 x %struct.S]* @s, i64 0, i64 1) to i120*), align 16
  %bf.shl = shl i120 %bf.load, 7
  %bf.ashr = ashr i120 %bf.shl, 66
  %bf.cast = trunc i120 %bf.ashr to i64
  call void @foo(i64 %bf.cast)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* @i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 295}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
