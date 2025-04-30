; ModuleID = 'code/035-3150801.c'
source_filename = "code/035-3150801.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_attr_t = type { i64, [48 x i8] }

@.str = private unnamed_addr constant [23 x i8] c"Thread desordenada %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Thread %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @desordenado(i8* %valor) #0 {
entry:
  %valor.addr = alloca i8*, align 8
  store i8* %valor, i8** %valor.addr, align 8
  %0 = load i8*, i8** %valor.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %2)
  ret i8* null
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @criar_threads_de_qualquer_forma() #0 {
entry:
  %thrs = alloca [10 x i64], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i64], [10 x i64]* %thrs, i64 0, i64 %idxprom
  %2 = bitcast i32* %i to i8*
  %call = call i32 @pthread_create(i64* %arrayidx, %union.pthread_attr_t* null, i8* (i8*)* @desordenado, i8* %2) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @criar_threads_de_forma_ordenada(i8* %quantidade) #0 {
entry:
  %retval = alloca i8*, align 8
  %quantidade.addr = alloca i8*, align 8
  %valor = alloca i32, align 4
  %thr = alloca i64, align 8
  store i8* %quantidade, i8** %quantidade.addr, align 8
  %0 = load i8*, i8** %quantidade.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %valor, align 4
  %3 = load i32, i32* %valor, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %4 = load i32, i32* %valor, align 4
  %cmp = icmp eq i32 %4, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %valor, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %valor, align 4
  %6 = bitcast i32* %valor to i8*
  %call1 = call i32 @pthread_create(i64* %thr, %union.pthread_attr_t* null, i8* (i8*)* @criar_threads_de_forma_ordenada, i8* %6) #3
  %7 = load i64, i64* %thr, align 8
  %call2 = call i32 @pthread_join(i64 %7, i8** null)
  store i8* null, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load i8*, i8** %retval, align 8
  ret i8* %8
}

declare dso_local i32 @pthread_join(i64, i8**) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 1, i32* %min, align 4
  call void @criar_threads_de_qualquer_forma()
  %call = call i32 @sleep(i32 1)
  %0 = bitcast i32* %min to i8*
  %call1 = call i8* @criar_threads_de_forma_ordenada(i8* %0)
  ret i32 0
}

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
