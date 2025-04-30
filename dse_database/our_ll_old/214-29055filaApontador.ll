; ModuleID = './code/214-29055filaApontador.c'
source_filename = "./code/214-29055filaApontador.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.fila = type { ptr, ptr }
%struct.listasimples = type { i32, ptr }

@.str = private unnamed_addr constant [16 x i8] c"desempilhei %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %topo = alloca %struct.fila, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @inicializar(ptr noundef %topo)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %call = call zeroext i1 @enfileira(ptr noundef %topo, i32 noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc6, %for.end
  %3 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %3, 11
  br i1 %cmp2, label %for.body3, label %for.end8

for.body3:                                        ; preds = %for.cond1
  %call4 = call zeroext i1 @desenfileira(ptr noundef %topo, ptr noundef %x)
  %4 = load i32, ptr %x, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  br label %for.inc6

for.inc6:                                         ; preds = %for.body3
  %5 = load i32, ptr %i, align 4
  %inc7 = add nsw i32 %5, 1
  store i32 %inc7, ptr %i, align 4
  br label %for.cond1, !llvm.loop !7

for.end8:                                         ; preds = %for.cond1
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @inicializar(ptr noundef %l) #0 {
entry:
  %l.addr = alloca ptr, align 8
  store ptr %l, ptr %l.addr, align 8
  %0 = load ptr, ptr %l.addr, align 8
  %inicio = getelementptr inbounds %struct.fila, ptr %0, i32 0, i32 0
  store ptr null, ptr %inicio, align 8
  %1 = load ptr, ptr %l.addr, align 8
  %fim = getelementptr inbounds %struct.fila, ptr %1, i32 0, i32 1
  store ptr null, ptr %fim, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i1 @enfileira(ptr noundef %l, i32 noundef %x) #0 {
entry:
  %retval = alloca i1, align 1
  %l.addr = alloca ptr, align 8
  %x.addr = alloca i32, align 4
  %novo = alloca ptr, align 8
  store ptr %l, ptr %l.addr, align 8
  store i32 %x, ptr %x.addr, align 4
  %call = call ptr @malloc(i64 noundef 16) #3
  store ptr %call, ptr %novo, align 8
  %tobool = icmp ne ptr %call, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, ptr %x.addr, align 4
  %1 = load ptr, ptr %novo, align 8
  %chave = getelementptr inbounds %struct.listasimples, ptr %1, i32 0, i32 0
  store i32 %0, ptr %chave, align 8
  %2 = load ptr, ptr %novo, align 8
  %prox = getelementptr inbounds %struct.listasimples, ptr %2, i32 0, i32 1
  store ptr null, ptr %prox, align 8
  %3 = load ptr, ptr %l.addr, align 8
  %fim = getelementptr inbounds %struct.fila, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %fim, align 8
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %novo, align 8
  %6 = load ptr, ptr %l.addr, align 8
  %fim3 = getelementptr inbounds %struct.fila, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %fim3, align 8
  %prox4 = getelementptr inbounds %struct.listasimples, ptr %7, i32 0, i32 1
  store ptr %5, ptr %prox4, align 8
  br label %if.end5

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %novo, align 8
  %9 = load ptr, ptr %l.addr, align 8
  %inicio = getelementptr inbounds %struct.fila, ptr %9, i32 0, i32 0
  store ptr %8, ptr %inicio, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %10 = load ptr, ptr %novo, align 8
  %11 = load ptr, ptr %l.addr, align 8
  %fim6 = getelementptr inbounds %struct.fila, ptr %11, i32 0, i32 1
  store ptr %10, ptr %fim6, align 8
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %12 = load i1, ptr %retval, align 1
  ret i1 %12
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i1 @desenfileira(ptr noundef %l, ptr noundef %x) #0 {
entry:
  %retval = alloca i1, align 1
  %l.addr = alloca ptr, align 8
  %x.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %l, ptr %l.addr, align 8
  store ptr %x, ptr %x.addr, align 8
  %0 = load ptr, ptr %l.addr, align 8
  %inicio = getelementptr inbounds %struct.fila, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %inicio, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %l.addr, align 8
  %inicio1 = getelementptr inbounds %struct.fila, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %inicio1, align 8
  store ptr %3, ptr %p, align 8
  %4 = load ptr, ptr %p, align 8
  %chave = getelementptr inbounds %struct.listasimples, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %chave, align 8
  %6 = load ptr, ptr %x.addr, align 8
  store i32 %5, ptr %6, align 4
  %7 = load ptr, ptr %p, align 8
  %prox = getelementptr inbounds %struct.listasimples, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %prox, align 8
  %9 = load ptr, ptr %l.addr, align 8
  %inicio2 = getelementptr inbounds %struct.fila, ptr %9, i32 0, i32 0
  store ptr %8, ptr %inicio2, align 8
  %10 = load ptr, ptr %p, align 8
  call void @free(ptr noundef %10)
  store i1 true, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i1, ptr %retval, align 1
  ret i1 %11
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #2

declare void @free(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
