; ModuleID = 'code/029-2070120061031-1.c'
source_filename = "code/029-2070120061031-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nunmap = dso_local constant [3 x i8] c"\11\FF\01", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f(i16 signext %delta) #0 {
entry:
  %delta.addr = alloca i16, align 2
  %p0 = alloca i16, align 2
  %s = alloca i16, align 2
  store i16 %delta, i16* %delta.addr, align 2
  store i16 2, i16* %p0, align 2
  store i16 0, i16* %s, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16, i16* %s, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp slt i32 %conv, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, i16* %delta.addr, align 2
  %conv2 = sext i16 %1 to i32
  %2 = load i16, i16* %p0, align 2
  %conv3 = sext i16 %2 to i32
  %add = add nsw i32 %conv3, %conv2
  %conv4 = trunc i32 %add to i16
  store i16 %conv4, i16* %p0, align 2
  %3 = load i16, i16* %s, align 2
  %conv5 = sext i16 %3 to i32
  call void @ff(i32 %conv5)
  %4 = load i16, i16* %p0, align 2
  %idxprom = sext i16 %4 to i64
  %arrayidx = getelementptr inbounds [3 x i8], [3 x i8]* @nunmap, i64 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 17
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i16, i16* %s, align 2
  %inc = add i16 %6, 1
  store i16 %inc, i16* %s, align 2
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @f(i16 signext -1)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = !{i64 206}
!5 = !{i64 408}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
