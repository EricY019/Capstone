; ModuleID = 'code/170-33980pr39339.c'
source_filename = "code/170-33980pr39339.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.E = type { i64, i64, %struct.C }
%struct.C = type { i32, %struct.D }
%struct.D = type { i32 }
%struct.B = type { %struct.A*, i8 }
%struct.A = type { %struct.C*, i32 }

@__const.main.e = private unnamed_addr constant { i64, i64, { i32, { i8, i8, i8, i8 } } } { i64 5, i64 0, { i32, { i8, i8, i8, i8 } } { i32 6, { i8, i8, i8, i8 } { i8 -1, i8 -1, i8 127, i8 85 } } }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(%struct.E* %screen, i32 %c, i32 %columns, %struct.B* %row) #0 {
entry:
  %screen.addr = alloca %struct.E*, align 8
  %c.addr = alloca i32, align 4
  %columns.addr = alloca i32, align 4
  %row.addr = alloca %struct.B*, align 8
  %attr = alloca %struct.D, align 4
  %col = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct.E* %screen, %struct.E** %screen.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  store i32 %columns, i32* %columns.addr, align 4
  store %struct.B* %row, %struct.B** %row.addr, align 8
  %0 = load %struct.E*, %struct.E** %screen.addr, align 8
  %col1 = getelementptr inbounds %struct.E, %struct.E* %0, i32 0, i32 1
  %1 = load i64, i64* %col1, align 8
  store i64 %1, i64* %col, align 8
  %2 = load %struct.E*, %struct.E** %screen.addr, align 8
  %defaults = getelementptr inbounds %struct.E, %struct.E* %2, i32 0, i32 2
  %attr2 = getelementptr inbounds %struct.C, %struct.C* %defaults, i32 0, i32 1
  %3 = bitcast %struct.D* %attr to i8*
  %4 = bitcast %struct.D* %attr2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 4, i1 false)
  %5 = load i32, i32* %columns.addr, align 4
  %6 = bitcast %struct.D* %attr to i32*
  %bf.load = load i32, i32* %6, align 4
  %bf.value = and i32 %5, 15
  %bf.clear = and i32 %bf.load, -16
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %6, align 4
  %7 = load i32, i32* %c.addr, align 4
  %8 = load %struct.B*, %struct.B** %row.addr, align 8
  %cells = getelementptr inbounds %struct.B, %struct.B* %8, i32 0, i32 0
  %9 = load %struct.A*, %struct.A** %cells, align 8
  %data = getelementptr inbounds %struct.A, %struct.A* %9, i32 0, i32 0
  %10 = load %struct.C*, %struct.C** %data, align 8
  %11 = load i64, i64* %col, align 8
  %arrayidx = getelementptr inbounds %struct.C, %struct.C* %10, i64 %11
  %c3 = getelementptr inbounds %struct.C, %struct.C* %arrayidx, i32 0, i32 0
  store i32 %7, i32* %c3, align 4
  %12 = load %struct.B*, %struct.B** %row.addr, align 8
  %cells4 = getelementptr inbounds %struct.B, %struct.B* %12, i32 0, i32 0
  %13 = load %struct.A*, %struct.A** %cells4, align 8
  %data5 = getelementptr inbounds %struct.A, %struct.A* %13, i32 0, i32 0
  %14 = load %struct.C*, %struct.C** %data5, align 8
  %15 = load i64, i64* %col, align 8
  %arrayidx6 = getelementptr inbounds %struct.C, %struct.C* %14, i64 %15
  %attr7 = getelementptr inbounds %struct.C, %struct.C* %arrayidx6, i32 0, i32 1
  %16 = bitcast %struct.D* %attr7 to i8*
  %17 = bitcast %struct.D* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load i64, i64* %col, align 8
  %inc = add nsw i64 %18, 1
  store i64 %inc, i64* %col, align 8
  %19 = bitcast %struct.D* %attr to i32*
  %bf.load8 = load i32, i32* %19, align 4
  %bf.clear9 = and i32 %bf.load8, -4194305
  %bf.set10 = or i32 %bf.clear9, 4194304
  store i32 %bf.set10, i32* %19, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %columns.addr, align 4
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %c.addr, align 4
  %23 = load %struct.B*, %struct.B** %row.addr, align 8
  %cells11 = getelementptr inbounds %struct.B, %struct.B* %23, i32 0, i32 0
  %24 = load %struct.A*, %struct.A** %cells11, align 8
  %data12 = getelementptr inbounds %struct.A, %struct.A* %24, i32 0, i32 0
  %25 = load %struct.C*, %struct.C** %data12, align 8
  %26 = load i64, i64* %col, align 8
  %arrayidx13 = getelementptr inbounds %struct.C, %struct.C* %25, i64 %26
  %c14 = getelementptr inbounds %struct.C, %struct.C* %arrayidx13, i32 0, i32 0
  store i32 %22, i32* %c14, align 4
  %27 = load %struct.B*, %struct.B** %row.addr, align 8
  %cells15 = getelementptr inbounds %struct.B, %struct.B* %27, i32 0, i32 0
  %28 = load %struct.A*, %struct.A** %cells15, align 8
  %data16 = getelementptr inbounds %struct.A, %struct.A* %28, i32 0, i32 0
  %29 = load %struct.C*, %struct.C** %data16, align 8
  %30 = load i64, i64* %col, align 8
  %arrayidx17 = getelementptr inbounds %struct.C, %struct.C* %29, i64 %30
  %attr18 = getelementptr inbounds %struct.C, %struct.C* %arrayidx17, i32 0, i32 1
  %31 = bitcast %struct.D* %attr18 to i8*
  %32 = bitcast %struct.D* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load i64, i64* %col, align 8
  %inc19 = add nsw i64 %33, 1
  store i64 %inc19, i64* %col, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %34, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %e = alloca %struct.E, align 8
  %c = alloca [4 x %struct.C], align 16
  %a = alloca %struct.A, align 8
  %b = alloca %struct.B, align 8
  %d = alloca %struct.D, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.E* %e to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast ({ i64, i64, { i32, { i8, i8, i8, i8 } } }* @__const.main.e to i8*), i64 24, i1 false)
  %data = getelementptr inbounds %struct.A, %struct.A* %a, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x %struct.C], [4 x %struct.C]* %c, i64 0, i64 0
  store %struct.C* %arraydecay, %struct.C** %data, align 8
  %len = getelementptr inbounds %struct.A, %struct.A* %a, i32 0, i32 1
  store i32 4, i32* %len, align 8
  %cells = getelementptr inbounds %struct.B, %struct.B* %b, i32 0, i32 0
  store %struct.A* %a, %struct.A** %cells, align 8
  %soft_wrapped = getelementptr inbounds %struct.B, %struct.B* %b, i32 0, i32 1
  %bf.load = load i8, i8* %soft_wrapped, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %soft_wrapped, align 8
  %1 = bitcast [4 x %struct.C]* %c to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 32, i1 false)
  call void @foo(%struct.E* %e, i32 65, i32 2, %struct.B* %b)
  %defaults = getelementptr inbounds %struct.E, %struct.E* %e, i32 0, i32 2
  %attr = getelementptr inbounds %struct.C, %struct.C* %defaults, i32 0, i32 1
  %2 = bitcast %struct.D* %d to i8*
  %3 = bitcast %struct.D* %attr to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 %3, i64 4, i1 false)
  %4 = bitcast %struct.D* %d to i32*
  %bf.load1 = load i32, i32* %4, align 4
  %bf.clear2 = and i32 %bf.load1, -16
  %bf.set3 = or i32 %bf.clear2, 2
  store i32 %bf.set3, i32* %4, align 4
  %5 = bitcast %struct.D* %d to i8*
  %arrayidx = getelementptr inbounds [4 x %struct.C], [4 x %struct.C]* %c, i64 0, i64 0
  %attr4 = getelementptr inbounds %struct.C, %struct.C* %arrayidx, i32 0, i32 1
  %6 = bitcast %struct.D* %attr4 to i8*
  %call = call i32 @memcmp(i8* %5, i8* %6, i64 4) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #6
  unreachable

if.end:                                           ; preds = %entry
  %7 = bitcast %struct.D* %d to i32*
  %bf.load5 = load i32, i32* %7, align 4
  %bf.clear6 = and i32 %bf.load5, -4194305
  %bf.set7 = or i32 %bf.clear6, 4194304
  store i32 %bf.set7, i32* %7, align 4
  %8 = bitcast %struct.D* %d to i8*
  %arrayidx8 = getelementptr inbounds [4 x %struct.C], [4 x %struct.C]* %c, i64 0, i64 1
  %attr9 = getelementptr inbounds %struct.C, %struct.C* %arrayidx8, i32 0, i32 1
  %9 = bitcast %struct.D* %attr9 to i8*
  %call10 = call i32 @memcmp(i8* %8, i8* %9, i64 4) #5
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  call void @abort() #6
  unreachable

if.end13:                                         ; preds = %if.end
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
