; ModuleID = 'code/164-9034vector-subscript-2.c'
source_filename = "code/164-9034vector-subscript-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TV4 = type { <4 x i32> }

@val3 = dso_local global %struct.TV4 zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modify() #0 {
entry:
  %tmp = alloca %struct.TV4, align 16
  %call = call <4 x i32> @myfunc2(i32 1, i32 2, i32 3, i32 4)
  %coerce.dive = getelementptr inbounds %struct.TV4, %struct.TV4* %tmp, i32 0, i32 0
  store <4 x i32> %call, <4 x i32>* %coerce.dive, align 16
  %0 = bitcast %struct.TV4* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 bitcast (%struct.TV4* @val3 to i8*), i8* align 16 %0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal <4 x i32> @myfunc2(i32 %x, i32 %y, i32 %z, i32 %w) #0 {
entry:
  %retval = alloca %struct.TV4, align 16
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %z.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %z, i32* %z.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %v = getelementptr inbounds %struct.TV4, %struct.TV4* %retval, i32 0, i32 0
  %1 = load <4 x i32>, <4 x i32>* %v, align 16
  %vecins = insertelement <4 x i32> %1, i32 %0, i32 0
  store <4 x i32> %vecins, <4 x i32>* %v, align 16
  %2 = load i32, i32* %y.addr, align 4
  %v1 = getelementptr inbounds %struct.TV4, %struct.TV4* %retval, i32 0, i32 0
  %3 = load <4 x i32>, <4 x i32>* %v1, align 16
  %vecins2 = insertelement <4 x i32> %3, i32 %2, i32 1
  store <4 x i32> %vecins2, <4 x i32>* %v1, align 16
  %4 = load i32, i32* %z.addr, align 4
  %v3 = getelementptr inbounds %struct.TV4, %struct.TV4* %retval, i32 0, i32 0
  %5 = load <4 x i32>, <4 x i32>* %v3, align 16
  %vecins4 = insertelement <4 x i32> %5, i32 %4, i32 2
  store <4 x i32> %vecins4, <4 x i32>* %v3, align 16
  %6 = load i32, i32* %w.addr, align 4
  %v5 = getelementptr inbounds %struct.TV4, %struct.TV4* %retval, i32 0, i32 0
  %7 = load <4 x i32>, <4 x i32>* %v5, align 16
  %vecins6 = insertelement <4 x i32> %7, i32 %6, i32 3
  store <4 x i32> %vecins6, <4 x i32>* %v5, align 16
  %coerce.dive = getelementptr inbounds %struct.TV4, %struct.TV4* %retval, i32 0, i32 0
  %8 = load <4 x i32>, <4 x i32>* %coerce.dive, align 16
  ret <4 x i32> %8
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #2 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca [4 x i32], align 16
  %i = alloca i32, align 4
  %a1 = alloca <4 x i32>, align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @modify()
  %0 = load <4 x i32>, <4 x i32>* getelementptr inbounds (%struct.TV4, %struct.TV4* @val3, i32 0, i32 0), align 16
  %vecext = extractelement <4 x i32> %0, i32 0
  %cmp = icmp ne i32 %vecext, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @abort() #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load <4 x i32>, <4 x i32>* getelementptr inbounds (%struct.TV4, %struct.TV4* @val3, i32 0, i32 0), align 16
  %vecext1 = extractelement <4 x i32> %1, i32 1
  %cmp2 = icmp ne i32 %vecext1, 2
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @abort() #4
  unreachable

if.end4:                                          ; preds = %if.end
  %2 = load <4 x i32>, <4 x i32>* getelementptr inbounds (%struct.TV4, %struct.TV4* @val3, i32 0, i32 0), align 16
  %vecext5 = extractelement <4 x i32> %2, i32 2
  %cmp6 = icmp ne i32 %vecext5, 3
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @abort() #4
  unreachable

if.end8:                                          ; preds = %if.end4
  %3 = load <4 x i32>, <4 x i32>* getelementptr inbounds (%struct.TV4, %struct.TV4* @val3, i32 0, i32 0), align 16
  %vecext9 = extractelement <4 x i32> %3, i32 3
  %cmp10 = icmp ne i32 %vecext9, 4
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @abort() #4
  unreachable

if.end12:                                         ; preds = %if.end8
  %4 = load <4 x i32>, <4 x i32>* getelementptr inbounds (%struct.TV4, %struct.TV4* @val3, i32 0, i32 0), align 16
  store <4 x i32> %4, <4 x i32>* %a1, align 16
  %5 = load <4 x i32>, <4 x i32>* %a1, align 16
  %vecext13 = extractelement <4 x i32> %5, i32 0
  %cmp14 = icmp ne i32 %vecext13, 1
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end12
  call void @abort() #4
  unreachable

if.end16:                                         ; preds = %if.end12
  %6 = load <4 x i32>, <4 x i32>* %a1, align 16
  %vecext17 = extractelement <4 x i32> %6, i32 1
  %cmp18 = icmp ne i32 %vecext17, 2
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end16
  call void @abort() #4
  unreachable

if.end20:                                         ; preds = %if.end16
  %7 = load <4 x i32>, <4 x i32>* %a1, align 16
  %vecext21 = extractelement <4 x i32> %7, i32 2
  %cmp22 = icmp ne i32 %vecext21, 3
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @abort() #4
  unreachable

if.end24:                                         ; preds = %if.end20
  %8 = load <4 x i32>, <4 x i32>* %a1, align 16
  %vecext25 = extractelement <4 x i32> %8, i32 3
  %cmp26 = icmp ne i32 %vecext25, 4
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @abort() #4
  unreachable

if.end28:                                         ; preds = %if.end24
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 0
  %9 = bitcast i32* %arraydecay to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast (%struct.TV4* @val3 to i8*), i64 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end28
  %10 = load i32, i32* %i, align 4
  %cmp29 = icmp slt i32 %10, 4
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %a, i64 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx, align 4
  %13 = load i32, i32* %i, align 4
  %add = add nsw i32 %13, 1
  %cmp30 = icmp ne i32 %12, %add
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.body
  call void @abort() #4
  unreachable

if.end32:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
