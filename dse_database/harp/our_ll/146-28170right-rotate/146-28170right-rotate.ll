; ModuleID = 'code/146-28170right-rotate.c'
source_filename = "code/146-28170right-rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"the bit string of ~0 is %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"the bit string of a is %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"the bit string of b is %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"rightrot(a, 3) is: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getbitstr(i32 %x) #0 {
entry:
  %x.addr = alloca i32, align 4
  %cursor = alloca i32, align 4
  %length = alloca i32, align 4
  %bits = alloca i8*, align 8
  store i32 %x, i32* %x.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 64) #3
  store i8* %call, i8** %bits, align 8
  store i32 31, i32* %length, align 4
  store i32 0, i32* %cursor, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %cursor, align 4
  %1 = load i32, i32* %length, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x.addr, align 4
  %3 = load i32, i32* %length, align 4
  %4 = load i32, i32* %cursor, align 4
  %sub = sub nsw i32 %3, %4
  %shl = shl i32 1, %sub
  %and = and i32 %2, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load i8*, i8** %bits, align 8
  %6 = load i32, i32* %cursor, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  store i8 49, i8* %arrayidx, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %7 = load i8*, i8** %bits, align 8
  %8 = load i32, i32* %cursor, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %idxprom1
  store i8 48, i8* %arrayidx2, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %cursor, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %cursor, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %10 = load i8*, i8** %bits, align 8
  %11 = load i32, i32* %cursor, align 4
  %idxprom3 = sext i32 %11 to i64
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom3
  store i8 0, i8* %arrayidx4, align 1
  %12 = load i8*, i8** %bits, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rightrot(i32 %x, i32 %n) #0 {
entry:
  %x.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %shl = shl i32 -1, %0
  %1 = load i32, i32* %x.addr, align 4
  %or = or i32 %shl, %1
  %2 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %2 to i64
  %sub = sub i64 32, %conv
  %sh_prom = trunc i64 %sub to i32
  %shl1 = shl i32 %or, %sh_prom
  %3 = load i32, i32* %x.addr, align 4
  %4 = load i32, i32* %n.addr, align 4
  %shr = lshr i32 %3, %4
  %or2 = or i32 %shl1, %shr
  ret i32 %or2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rightrot2(i32 %x, i32 %n) #0 {
entry:
  %x.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %x.addr, align 4
  %and = and i32 %1, 1
  %cmp1 = icmp eq i32 %and, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %2 = load i32, i32* %x.addr, align 4
  %shr = lshr i32 %2, 1
  %or = or i32 %shr, -2147483648
  store i32 %or, i32* %x.addr, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %3 = load i32, i32* %x.addr, align 4
  %shr2 = lshr i32 %3, 1
  store i32 %shr2, i32* %x.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %x.addr, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %r = alloca i8*, align 8
  %s = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 85, i32* %a, align 4
  store i32 0, i32* %b, align 4
  %0 = load i32, i32* %a, align 4
  %call = call i8* @getbitstr(i32 %0)
  store i8* %call, i8** %p, align 8
  %call1 = call i8* @getbitstr(i32 -1)
  store i8* %call1, i8** %q, align 8
  %1 = load i32, i32* %b, align 4
  %call2 = call i8* @getbitstr(i32 %1)
  store i8* %call2, i8** %r, align 8
  %2 = load i32, i32* %a, align 4
  %call3 = call i32 @rightrot(i32 %2, i32 3)
  %call4 = call i8* @getbitstr(i32 %call3)
  store i8* %call4, i8** %s, align 8
  %3 = load i8*, i8** %q, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %3)
  %4 = load i8*, i8** %p, align 8
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %4)
  %5 = load i8*, i8** %r, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %5)
  %6 = load i8*, i8** %s, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %6)
  %7 = load i8*, i8** %p, align 8
  call void @free(i8* %7) #3
  %8 = load i8*, i8** %q, align 8
  call void @free(i8* %8) #3
  %9 = load i8*, i8** %r, align 8
  call void @free(i8* %9) #3
  %10 = load i8*, i8** %s, align 8
  call void @free(i8* %10) #3
  store i8* null, i8** %p, align 8
  store i8* null, i8** %q, align 8
  store i8* null, i8** %r, align 8
  store i8* null, i8** %s, align 8
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
