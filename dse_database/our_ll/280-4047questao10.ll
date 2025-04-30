; ModuleID = 'code/280-4047questao10.c'
source_filename = "code/280-4047questao10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@__const.main.array1 = private unnamed_addr constant [7 x i32] [i32 1, i32 30, i32 34, i32 80, i32 0, i32 1, i32 32], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_arr(i32* %arr, i32 %size, i32 %pares) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %pares.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %par = alloca i32, align 4
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %pares, i32* %pares.addr, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %idx, align 4
  %1 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %arr.addr, align 8
  %3 = load i32, i32* %idx, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp1 = icmp ne i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end17

if.then:                                          ; preds = %for.body
  %5 = load i32*, i32** %arr.addr, align 8
  %6 = load i32, i32* %idx, align 4
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom2
  %7 = load i32, i32* %arrayidx3, align 4
  %rem = srem i32 %7, 2
  %cmp4 = icmp eq i32 %rem, 0
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, i32* %par, align 4
  %8 = load i32, i32* %pares.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %9 = load i32, i32* %par, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %land.lhs.true
  %10 = load i32*, i32** %arr.addr, align 8
  %11 = load i32, i32* %idx, align 4
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds i32, i32* %10, i64 %idxprom7
  %12 = load i32, i32* %arrayidx8, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true, %if.then
  %13 = load i32, i32* %pares.addr, align 4
  %tobool9 = icmp ne i32 %13, 0
  br i1 %tobool9, label %if.end, label %land.lhs.true10

land.lhs.true10:                                  ; preds = %if.else
  %14 = load i32, i32* %par, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.end, label %if.then12

if.then12:                                        ; preds = %land.lhs.true10
  %15 = load i32*, i32** %arr.addr, align 8
  %16 = load i32, i32* %idx, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %15, i64 %idxprom13
  %17 = load i32, i32* %arrayidx14, align 4
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true10, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.then6
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %18 = load i32, i32* %idx, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %idx, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %array1 = alloca [7 x i32], align 16
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = bitcast [7 x i32]* %array1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x i32]* @__const.main.array1 to i8*), i64 28, i1 false)
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %array1, i64 0, i64 0
  %add.ptr = getelementptr inbounds i32, i32* %arraydecay, i64 1
  call void @print_arr(i32* %add.ptr, i32 5, i32 1)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
