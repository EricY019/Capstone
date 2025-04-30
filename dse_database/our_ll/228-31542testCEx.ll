; ModuleID = 'code/228-31542testCEx.c'
source_filename = "code/228-31542testCEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listnode_ = type { i32, %struct.listnode_* }

@__const.main.s = private unnamed_addr constant [9 x i8] c"analysis\00", align 1
@__const.main.v = private unnamed_addr constant [5 x i32] [i32 1, i32 6, i32 -3, i32 6, i32 0], align 16
@.str = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" == quad ==> \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Durchschnitt %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @counta(i8* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sumArray(i32* %values, i64 %count) #0 {
entry:
  %retval = alloca i32, align 4
  %values.addr = alloca i32*, align 8
  %count.addr = alloca i64, align 8
  store i32* %values, i32** %values.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @applyFkt(i32* %values, i64 %count, i32 (i32)* %fkt) #0 {
entry:
  %values.addr = alloca i32*, align 8
  %count.addr = alloca i64, align 8
  %fkt.addr = alloca i32 (i32)*, align 8
  store i32* %values, i32** %values.addr, align 8
  store i64 %count, i64* %count.addr, align 8
  store i32 (i32)* %fkt, i32 (i32)** %fkt.addr, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @countAFile(i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i32, i32* %retval, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @avgList(%struct.listnode_* %head) #0 {
entry:
  %retval = alloca double, align 8
  %head.addr = alloca %struct.listnode_*, align 8
  store %struct.listnode_* %head, %struct.listnode_** %head.addr, align 8
  %0 = load double, double* %retval, align 8
  ret double %0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.listnode_* @addFront(%struct.listnode_* %head, i32 %item) #0 {
entry:
  %head.addr = alloca %struct.listnode_*, align 8
  %item.addr = alloca i32, align 4
  %newHead = alloca %struct.listnode_*, align 8
  store %struct.listnode_* %head, %struct.listnode_** %head.addr, align 8
  store i32 %item, i32* %item.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.listnode_*
  store %struct.listnode_* %0, %struct.listnode_** %newHead, align 8
  %1 = load %struct.listnode_*, %struct.listnode_** %head.addr, align 8
  %2 = load %struct.listnode_*, %struct.listnode_** %newHead, align 8
  %next = getelementptr inbounds %struct.listnode_, %struct.listnode_* %2, i32 0, i32 1
  store %struct.listnode_* %1, %struct.listnode_** %next, align 8
  %3 = load i32, i32* %item.addr, align 4
  %4 = load %struct.listnode_*, %struct.listnode_** %newHead, align 8
  %data = getelementptr inbounds %struct.listnode_, %struct.listnode_* %4, i32 0, i32 0
  store i32 %3, i32* %data, align 8
  %5 = load %struct.listnode_*, %struct.listnode_** %newHead, align 8
  ret %struct.listnode_* %5
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freeList(%struct.listnode_* %head) #0 {
entry:
  %head.addr = alloca %struct.listnode_*, align 8
  store %struct.listnode_* %head, %struct.listnode_** %head.addr, align 8
  %0 = load %struct.listnode_*, %struct.listnode_** %head.addr, align 8
  %cmp = icmp eq %struct.listnode_* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.listnode_*, %struct.listnode_** %head.addr, align 8
  %next = getelementptr inbounds %struct.listnode_, %struct.listnode_* %1, i32 0, i32 1
  %2 = load %struct.listnode_*, %struct.listnode_** %next, align 8
  call void @freeList(%struct.listnode_* %2)
  %3 = load %struct.listnode_*, %struct.listnode_** %head.addr, align 8
  %4 = bitcast %struct.listnode_* %3 to i8*
  call void @free(i8* %4) #4
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quad(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %1 = load i32, i32* %x.addr, align 4
  %mul = mul nsw i32 %0, %1
  ret i32 %mul
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [9 x i8], align 1
  %v = alloca [5 x i32], align 16
  %i = alloca i32, align 4
  %head = alloca %struct.listnode_*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast [9 x i8]* %s to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.main.s, i32 0, i32 0), i64 9, i1 false)
  %1 = bitcast [5 x i32]* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([5 x i32]* @__const.main.v to i8*), i64 20, i1 false)
  store i32 0, i32* %i, align 4
  store %struct.listnode_* null, %struct.listnode_** %head, align 8
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [9 x i8], [9 x i8]* %s, i64 0, i64 0
  %call = call i32 @counta(i8* %arraydecay1)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %arraydecay, i32 %call)
  %arraydecay3 = getelementptr inbounds [5 x i32], [5 x i32]* %v, i64 0, i64 0
  %call4 = call i32 @sumArray(i32* %arraydecay3, i64 5)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 10, i32 %call4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %cmp = icmp ult i64 %conv, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %v, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %arraydecay9 = getelementptr inbounds [5 x i32], [5 x i32]* %v, i64 0, i64 0
  call void @applyFkt(i32* %arraydecay9, i64 5, i32 (i32)* @quad)
  store i32 0, i32* %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc18, %for.end
  %6 = load i32, i32* %i, align 4
  %conv11 = sext i32 %6 to i64
  %cmp12 = icmp ult i64 %conv11, 5
  br i1 %cmp12, label %for.body14, label %for.end20

for.body14:                                       ; preds = %for.cond10
  %7 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %7 to i64
  %arrayidx16 = getelementptr inbounds [5 x i32], [5 x i32]* %v, i64 0, i64 %idxprom15
  %8 = load i32, i32* %arrayidx16, align 4
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  br label %for.inc18

for.inc18:                                        ; preds = %for.body14
  %9 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %9, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond10, !llvm.loop !6

for.end20:                                        ; preds = %for.cond10
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc30, %for.end20
  %10 = load i32, i32* %i, align 4
  %conv23 = sext i32 %10 to i64
  %cmp24 = icmp ult i64 %conv23, 5
  br i1 %cmp24, label %for.body26, label %for.end32

for.body26:                                       ; preds = %for.cond22
  %11 = load %struct.listnode_*, %struct.listnode_** %head, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %12 to i64
  %arrayidx28 = getelementptr inbounds [5 x i32], [5 x i32]* %v, i64 0, i64 %idxprom27
  %13 = load i32, i32* %arrayidx28, align 4
  %call29 = call %struct.listnode_* @addFront(%struct.listnode_* %11, i32 %13)
  store %struct.listnode_* %call29, %struct.listnode_** %head, align 8
  br label %for.inc30

for.inc30:                                        ; preds = %for.body26
  %14 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %14, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond22, !llvm.loop !7

for.end32:                                        ; preds = %for.cond22
  %15 = load %struct.listnode_*, %struct.listnode_** %head, align 8
  %call33 = call double @avgList(%struct.listnode_* %15)
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), double %call33)
  %16 = load %struct.listnode_*, %struct.listnode_** %head, align 8
  call void @freeList(%struct.listnode_* %16)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
