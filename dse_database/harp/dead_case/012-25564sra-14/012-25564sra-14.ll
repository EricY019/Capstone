; ModuleID = 'code/012-25564sra-14.c'
source_filename = "code/012-25564sra-14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32, i32 }
%struct.Z = type { %struct.S, %struct.S }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_s() #0 {
entry:
  %retval = alloca %struct.S, align 4
  %i = getelementptr inbounds %struct.S, %struct.S* %retval, i32 0, i32 0
  store i32 5, i32* %i, align 4
  %j = getelementptr inbounds %struct.S, %struct.S* %retval, i32 0, i32 1
  store i32 6, i32* %j, align 4
  %0 = bitcast %struct.S* %retval to i64*
  %1 = load i64, i64* %0, align 4
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_d() #0 {
entry:
  %retval = alloca %struct.S, align 4
  %i = getelementptr inbounds %struct.S, %struct.S* %retval, i32 0, i32 0
  store i32 0, i32* %i, align 4
  %j = getelementptr inbounds %struct.S, %struct.S* %retval, i32 0, i32 1
  store i32 0, i32* %j, align 4
  %0 = bitcast %struct.S* %retval to i64*
  %1 = load i64, i64* %0, align 4
  ret i64 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_c() #0 {
entry:
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @my_nop(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo() #0 {
entry:
  %z = alloca %struct.Z, align 4
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %tmp = alloca %struct.S, align 4
  %tmp2 = alloca %struct.S, align 4
  %call = call i32 @get_c()
  store i32 %call, i32* %c, align 4
  %d = getelementptr inbounds %struct.Z, %struct.Z* %z, i32 0, i32 0
  %call1 = call i64 @get_d()
  %0 = bitcast %struct.S* %tmp to i64*
  store i64 %call1, i64* %0, align 4
  %1 = bitcast %struct.S* %d to i8*
  %2 = bitcast %struct.S* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 8, i1 false)
  %s = getelementptr inbounds %struct.Z, %struct.Z* %z, i32 0, i32 1
  %call3 = call i64 @get_s()
  %3 = bitcast %struct.S* %tmp2 to i64*
  store i64 %call3, i64* %3, align 4
  %4 = bitcast %struct.S* %s to i8*
  %5 = bitcast %struct.S* %tmp2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 %5, i64 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %s4 = getelementptr inbounds %struct.Z, %struct.Z* %z, i32 0, i32 1
  %i5 = getelementptr inbounds %struct.S, %struct.S* %s4, i32 0, i32 0
  %8 = load i32, i32* %i5, align 4
  %call6 = call i32 @my_nop(i32 %8)
  %s7 = getelementptr inbounds %struct.Z, %struct.Z* %z, i32 0, i32 1
  %i8 = getelementptr inbounds %struct.S, %struct.S* %s7, i32 0, i32 0
  store i32 %call6, i32* %i8, align 4
  %s9 = getelementptr inbounds %struct.Z, %struct.Z* %z, i32 0, i32 1
  %j = getelementptr inbounds %struct.S, %struct.S* %s9, i32 0, i32 1
  %9 = load i32, i32* %j, align 4
  %call10 = call i32 @my_nop(i32 %9)
  %s11 = getelementptr inbounds %struct.Z, %struct.Z* %z, i32 0, i32 1
  %j12 = getelementptr inbounds %struct.S, %struct.S* %s11, i32 0, i32 1
  store i32 %call10, i32* %j12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %s13 = getelementptr inbounds %struct.Z, %struct.Z* %z, i32 0, i32 1
  %i14 = getelementptr inbounds %struct.S, %struct.S* %s13, i32 0, i32 0
  %11 = load i32, i32* %i14, align 4
  %s15 = getelementptr inbounds %struct.Z, %struct.Z* %z, i32 0, i32 1
  %j16 = getelementptr inbounds %struct.S, %struct.S* %s15, i32 0, i32 1
  %12 = load i32, i32* %j16, align 4
  %add = add nsw i32 %11, %12
  ret i32 %add
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @foo()
  %cmp = icmp ne i32 %call, 11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #3
  unreachable

if.end:                                           ; preds = %entry
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
