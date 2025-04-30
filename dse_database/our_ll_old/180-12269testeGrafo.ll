; ModuleID = './code/180-12269testeGrafo.c'
source_filename = "./code/180-12269testeGrafo.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [31 x i8] c"Matriz sem os valores do grafo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Matriz com os valores do grafo\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"\0AA primeira vez que cada v\C3\A9rtice \C3\A9 a origem (Dijkstra \C3\A9 usado)\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %v = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 2000, ptr %n, align 4
  %0 = load i32, ptr %n, align 4
  %conv = sext i32 %0 to i64
  %call = call ptr @calloc(i64 noundef %conv, i64 noundef 8) #3
  store ptr %call, ptr %v, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %n, align 4
  %conv2 = sext i32 %3 to i64
  %call3 = call ptr @calloc(i64 noundef %conv2, i64 noundef 4) #3
  %4 = load ptr, ptr %v, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  store ptr %call3, ptr %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc8, %for.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %n, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body7, label %for.end10

for.body7:                                        ; preds = %for.cond4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body7
  %9 = load i32, ptr %i, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr %i, align 4
  br label %for.cond4, !llvm.loop !7

for.end10:                                        ; preds = %for.cond4
  %call11 = call i32 @puts(ptr noundef @.str)
  store i32 0, ptr %i, align 4
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc29, %for.end10
  %10 = load i32, ptr %i, align 4
  %11 = load i32, ptr %n, align 4
  %cmp13 = icmp slt i32 %10, %11
  br i1 %cmp13, label %for.body15, label %for.end31

for.body15:                                       ; preds = %for.cond12
  store i32 0, ptr %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc25, %for.body15
  %12 = load i32, ptr %j, align 4
  %13 = load i32, ptr %n, align 4
  %cmp17 = icmp slt i32 %12, %13
  br i1 %cmp17, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond16
  %14 = load ptr, ptr %v, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds ptr, ptr %14, i64 %idxprom20
  %16 = load ptr, ptr %arrayidx21, align 8
  %17 = load i32, ptr %j, align 4
  %idxprom22 = sext i32 %17 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %16, i64 %idxprom22
  %18 = load i32, ptr %arrayidx23, align 4
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %18)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body19
  %19 = load i32, ptr %j, align 4
  %inc26 = add nsw i32 %19, 1
  store i32 %inc26, ptr %j, align 4
  br label %for.cond16, !llvm.loop !8

for.end27:                                        ; preds = %for.cond16
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc29

for.inc29:                                        ; preds = %for.end27
  %20 = load i32, ptr %i, align 4
  %inc30 = add nsw i32 %20, 1
  store i32 %inc30, ptr %i, align 4
  br label %for.cond12, !llvm.loop !9

for.end31:                                        ; preds = %for.cond12
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 0, ptr %i, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc49, %for.end31
  %21 = load i32, ptr %i, align 4
  %22 = load i32, ptr %n, align 4
  %cmp34 = icmp slt i32 %21, %22
  br i1 %cmp34, label %for.body36, label %for.end51

for.body36:                                       ; preds = %for.cond33
  store i32 0, ptr %j, align 4
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc46, %for.body36
  %23 = load i32, ptr %j, align 4
  %24 = load i32, ptr %n, align 4
  %cmp38 = icmp slt i32 %23, %24
  br i1 %cmp38, label %for.body40, label %for.end48

for.body40:                                       ; preds = %for.cond37
  %call41 = call i32 @rand()
  %rem = srem i32 %call41, 2000
  %25 = load ptr, ptr %v, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %26 to i64
  %arrayidx43 = getelementptr inbounds ptr, ptr %25, i64 %idxprom42
  %27 = load ptr, ptr %arrayidx43, align 8
  %28 = load i32, ptr %j, align 4
  %idxprom44 = sext i32 %28 to i64
  %arrayidx45 = getelementptr inbounds i32, ptr %27, i64 %idxprom44
  store i32 %rem, ptr %arrayidx45, align 4
  br label %for.inc46

for.inc46:                                        ; preds = %for.body40
  %29 = load i32, ptr %j, align 4
  %inc47 = add nsw i32 %29, 1
  store i32 %inc47, ptr %j, align 4
  br label %for.cond37, !llvm.loop !10

for.end48:                                        ; preds = %for.cond37
  br label %for.inc49

for.inc49:                                        ; preds = %for.end48
  %30 = load i32, ptr %i, align 4
  %inc50 = add nsw i32 %30, 1
  store i32 %inc50, ptr %i, align 4
  br label %for.cond33, !llvm.loop !11

for.end51:                                        ; preds = %for.cond33
  %call52 = call i32 @puts(ptr noundef @.str.4)
  store i32 0, ptr %i, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc70, %for.end51
  %31 = load i32, ptr %i, align 4
  %32 = load i32, ptr %n, align 4
  %cmp54 = icmp slt i32 %31, %32
  br i1 %cmp54, label %for.body56, label %for.end72

for.body56:                                       ; preds = %for.cond53
  store i32 0, ptr %j, align 4
  br label %for.cond57

for.cond57:                                       ; preds = %for.inc66, %for.body56
  %33 = load i32, ptr %j, align 4
  %34 = load i32, ptr %n, align 4
  %cmp58 = icmp slt i32 %33, %34
  br i1 %cmp58, label %for.body60, label %for.end68

for.body60:                                       ; preds = %for.cond57
  %35 = load ptr, ptr %v, align 8
  %36 = load i32, ptr %i, align 4
  %idxprom61 = sext i32 %36 to i64
  %arrayidx62 = getelementptr inbounds ptr, ptr %35, i64 %idxprom61
  %37 = load ptr, ptr %arrayidx62, align 8
  %38 = load i32, ptr %j, align 4
  %idxprom63 = sext i32 %38 to i64
  %arrayidx64 = getelementptr inbounds i32, ptr %37, i64 %idxprom63
  %39 = load i32, ptr %arrayidx64, align 4
  %call65 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %39)
  br label %for.inc66

for.inc66:                                        ; preds = %for.body60
  %40 = load i32, ptr %j, align 4
  %inc67 = add nsw i32 %40, 1
  store i32 %inc67, ptr %j, align 4
  br label %for.cond57, !llvm.loop !12

for.end68:                                        ; preds = %for.cond57
  %call69 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %for.inc70

for.inc70:                                        ; preds = %for.end68
  %41 = load i32, ptr %i, align 4
  %inc71 = add nsw i32 %41, 1
  store i32 %inc71, ptr %i, align 4
  br label %for.cond53, !llvm.loop !13

for.end72:                                        ; preds = %for.cond53
  %call73 = call i32 @puts(ptr noundef @.str.5)
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #1

declare i32 @puts(ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

declare i32 @rand() #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0,1) }

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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
