; ModuleID = 'code/214-29055filaApontador.c'
source_filename = "code/214-29055filaApontador.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fila = type { %struct.listasimples*, %struct.listasimples* }
%struct.listasimples = type { i32, %struct.listasimples* }

@.str = private unnamed_addr constant [16 x i8] c"desempilhei %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %topo = alloca %struct.fila, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @inicializar(%struct.fila* %topo)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call zeroext i1 @enfileira(%struct.fila* %topo, i32 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %3, 11
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %call4 = call zeroext i1 @desenfileira(%struct.fila* %topo, i32* %x)
  %4 = load i32, i32* %x, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %4)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %5 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond1, !llvm.loop !6

for.end8:                                         ; preds = %for.cond1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inicializar(%struct.fila* %l) #0 {
entry:
  %l.addr = alloca %struct.fila*, align 8
  store %struct.fila* %l, %struct.fila** %l.addr, align 8
  %0 = load %struct.fila*, %struct.fila** %l.addr, align 8
  %inicio = getelementptr inbounds %struct.fila, %struct.fila* %0, i32 0, i32 0
  store %struct.listasimples* null, %struct.listasimples** %inicio, align 8
  %1 = load %struct.fila*, %struct.fila** %l.addr, align 8
  %fim = getelementptr inbounds %struct.fila, %struct.fila* %1, i32 0, i32 1
  store %struct.listasimples* null, %struct.listasimples** %fim, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @enfileira(%struct.fila* %l, i32 %x) #0 {
entry:
  %retval = alloca i1, align 1
  %l.addr = alloca %struct.fila*, align 8
  %x.addr = alloca i32, align 4
  %novo = alloca %struct.listasimples*, align 8
  store %struct.fila* %l, %struct.fila** %l.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.listasimples*
  store %struct.listasimples* %0, %struct.listasimples** %novo, align 8
  %tobool = icmp ne %struct.listasimples* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %2 = load %struct.listasimples*, %struct.listasimples** %novo, align 8
  %chave = getelementptr inbounds %struct.listasimples, %struct.listasimples* %2, i32 0, i32 0
  store i32 %1, i32* %chave, align 8
  %3 = load %struct.listasimples*, %struct.listasimples** %novo, align 8
  %prox = getelementptr inbounds %struct.listasimples, %struct.listasimples* %3, i32 0, i32 1
  store %struct.listasimples* null, %struct.listasimples** %prox, align 8
  %4 = load %struct.fila*, %struct.fila** %l.addr, align 8
  %fim = getelementptr inbounds %struct.fila, %struct.fila* %4, i32 0, i32 1
  %5 = load %struct.listasimples*, %struct.listasimples** %fim, align 8
  %tobool1 = icmp ne %struct.listasimples* %5, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = load %struct.listasimples*, %struct.listasimples** %novo, align 8
  %7 = load %struct.fila*, %struct.fila** %l.addr, align 8
  %fim3 = getelementptr inbounds %struct.fila, %struct.fila* %7, i32 0, i32 1
  %8 = load %struct.listasimples*, %struct.listasimples** %fim3, align 8
  %prox4 = getelementptr inbounds %struct.listasimples, %struct.listasimples* %8, i32 0, i32 1
  store %struct.listasimples* %6, %struct.listasimples** %prox4, align 8
  br label %if.end5

if.else:                                          ; preds = %if.end
  %9 = load %struct.listasimples*, %struct.listasimples** %novo, align 8
  %10 = load %struct.fila*, %struct.fila** %l.addr, align 8
  %inicio = getelementptr inbounds %struct.fila, %struct.fila* %10, i32 0, i32 0
  store %struct.listasimples* %9, %struct.listasimples** %inicio, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %11 = load %struct.listasimples*, %struct.listasimples** %novo, align 8
  %12 = load %struct.fila*, %struct.fila** %l.addr, align 8
  %fim6 = getelementptr inbounds %struct.fila, %struct.fila* %12, i32 0, i32 1
  store %struct.listasimples* %11, %struct.listasimples** %fim6, align 8
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %13 = load i1, i1* %retval, align 1
  ret i1 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @desenfileira(%struct.fila* %l, i32* %x) #0 {
entry:
  %retval = alloca i1, align 1
  %l.addr = alloca %struct.fila*, align 8
  %x.addr = alloca i32*, align 8
  %p = alloca %struct.listasimples*, align 8
  store %struct.fila* %l, %struct.fila** %l.addr, align 8
  store i32* %x, i32** %x.addr, align 8
  %0 = load %struct.fila*, %struct.fila** %l.addr, align 8
  %inicio = getelementptr inbounds %struct.fila, %struct.fila* %0, i32 0, i32 0
  %1 = load %struct.listasimples*, %struct.listasimples** %inicio, align 8
  %tobool = icmp ne %struct.listasimples* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fila*, %struct.fila** %l.addr, align 8
  %inicio1 = getelementptr inbounds %struct.fila, %struct.fila* %2, i32 0, i32 0
  %3 = load %struct.listasimples*, %struct.listasimples** %inicio1, align 8
  store %struct.listasimples* %3, %struct.listasimples** %p, align 8
  %4 = load %struct.listasimples*, %struct.listasimples** %p, align 8
  %chave = getelementptr inbounds %struct.listasimples, %struct.listasimples* %4, i32 0, i32 0
  %5 = load i32, i32* %chave, align 8
  %6 = load i32*, i32** %x.addr, align 8
  store i32 %5, i32* %6, align 4
  %7 = load %struct.listasimples*, %struct.listasimples** %p, align 8
  %prox = getelementptr inbounds %struct.listasimples, %struct.listasimples* %7, i32 0, i32 1
  %8 = load %struct.listasimples*, %struct.listasimples** %prox, align 8
  %9 = load %struct.fila*, %struct.fila** %l.addr, align 8
  %inicio2 = getelementptr inbounds %struct.fila, %struct.fila* %9, i32 0, i32 0
  store %struct.listasimples* %8, %struct.listasimples** %inicio2, align 8
  %10 = load %struct.listasimples*, %struct.listasimples** %p, align 8
  %11 = bitcast %struct.listasimples* %10 to i8*
  call void @free(i8* %11) #3
  store i1 true, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i1, i1* %retval, align 1
  ret i1 %12
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

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
!6 = distinct !{!6, !5}
