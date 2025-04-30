; ModuleID = 'code/265-18503lst_no_head.c'
source_filename = "code/265-18503lst_no_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cel = type { i32, %struct.cel* }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Imprima2(%struct.cel* %lst) #0 {
entry:
  %lst.addr = alloca %struct.cel*, align 8
  %p = alloca %struct.cel*, align 8
  store %struct.cel* %lst, %struct.cel** %lst.addr, align 8
  %0 = load %struct.cel*, %struct.cel** %lst.addr, align 8
  store %struct.cel* %0, %struct.cel** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.cel*, %struct.cel** %p, align 8
  %cmp = icmp ne %struct.cel* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.cel*, %struct.cel** %p, align 8
  %conteudo = getelementptr inbounds %struct.cel, %struct.cel* %2, i32 0, i32 0
  %3 = load i32, i32* %conteudo, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.cel*, %struct.cel** %p, align 8
  %seg = getelementptr inbounds %struct.cel, %struct.cel* %4, i32 0, i32 1
  %5 = load %struct.cel*, %struct.cel** %seg, align 8
  store %struct.cel* %5, %struct.cel** %p, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Insere2(i32 %y, %struct.cel** %p) #0 {
entry:
  %y.addr = alloca i32, align 4
  %p.addr = alloca %struct.cel**, align 8
  %nova = alloca %struct.cel*, align 8
  store i32 %y, i32* %y.addr, align 4
  store %struct.cel** %p, %struct.cel*** %p.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.cel*
  store %struct.cel* %0, %struct.cel** %nova, align 8
  %1 = load i32, i32* %y.addr, align 4
  %2 = load %struct.cel*, %struct.cel** %nova, align 8
  %conteudo = getelementptr inbounds %struct.cel, %struct.cel* %2, i32 0, i32 0
  store i32 %1, i32* %conteudo, align 8
  %3 = load %struct.cel**, %struct.cel*** %p.addr, align 8
  %4 = load %struct.cel*, %struct.cel** %3, align 8
  %cmp = icmp eq %struct.cel* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.cel*, %struct.cel** %nova, align 8
  %6 = load %struct.cel**, %struct.cel*** %p.addr, align 8
  store %struct.cel* %5, %struct.cel** %6, align 8
  %7 = load %struct.cel*, %struct.cel** %nova, align 8
  %seg = getelementptr inbounds %struct.cel, %struct.cel* %7, i32 0, i32 1
  store %struct.cel* null, %struct.cel** %seg, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct.cel**, %struct.cel*** %p.addr, align 8
  %9 = load %struct.cel*, %struct.cel** %8, align 8
  %10 = load %struct.cel*, %struct.cel** %nova, align 8
  %seg1 = getelementptr inbounds %struct.cel, %struct.cel* %10, i32 0, i32 1
  store %struct.cel* %9, %struct.cel** %seg1, align 8
  %11 = load %struct.cel*, %struct.cel** %nova, align 8
  %12 = load %struct.cel**, %struct.cel*** %p.addr, align 8
  store %struct.cel* %11, %struct.cel** %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %lst = alloca %struct.cel*, align 8
  store i32 0, i32* %retval, align 4
  store %struct.cel* null, %struct.cel** %lst, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  call void @Insere2(i32 %1, %struct.cel** %lst)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %3 = load %struct.cel*, %struct.cel** %lst, align 8
  call void @Imprima2(%struct.cel* %3)
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

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
