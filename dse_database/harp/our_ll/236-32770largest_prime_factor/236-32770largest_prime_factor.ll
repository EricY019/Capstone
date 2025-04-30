; ModuleID = 'code/236-32770largest_prime_factor.c'
source_filename = "code/236-32770largest_prime_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, i32 }

@N = dso_local global i64 600851475143, align 8
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @next_prime(%struct.node* %primes, i32 %n) #0 {
entry:
  %primes.addr = alloca %struct.node*, align 8
  %n.addr = alloca i32, align 4
  %found = alloca i8, align 1
  %aux = alloca %struct.node*, align 8
  store %struct.node* %primes, %struct.node** %primes.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i8 0, i8* %found, align 1
  %0 = load %struct.node*, %struct.node** %primes.addr, align 8
  store %struct.node* %0, %struct.node** %aux, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %1 = load i8, i8* %found, align 1
  %tobool = icmp ne i8 %1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %n.addr, align 4
  %3 = load %struct.node*, %struct.node** %aux, align 8
  %val = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load i32, i32* %val, align 8
  %rem = srem i32 %2, %4
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %n.addr, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %n.addr, align 4
  %6 = load %struct.node*, %struct.node** %primes.addr, align 8
  store %struct.node* %6, %struct.node** %aux, align 8
  br label %if.end10

if.else:                                          ; preds = %while.body
  %7 = load %struct.node*, %struct.node** %aux, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  %8 = load %struct.node*, %struct.node** %next, align 8
  %cmp1 = icmp eq %struct.node* %8, null
  br i1 %cmp1, label %if.then2, label %if.else8

if.then2:                                         ; preds = %if.else
  store i8 1, i8* %found, align 1
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %9 = bitcast i8* %call to %struct.node*
  %10 = load %struct.node*, %struct.node** %aux, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  store %struct.node* %9, %struct.node** %next3, align 8
  %11 = load i32, i32* %n.addr, align 4
  %12 = load %struct.node*, %struct.node** %aux, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 0
  %13 = load %struct.node*, %struct.node** %next4, align 8
  %val5 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 1
  store i32 %11, i32* %val5, align 8
  %14 = load %struct.node*, %struct.node** %aux, align 8
  %next6 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %15 = load %struct.node*, %struct.node** %next6, align 8
  %next7 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  store %struct.node* null, %struct.node** %next7, align 8
  br label %if.end

if.else8:                                         ; preds = %if.else
  %16 = load %struct.node*, %struct.node** %aux, align 8
  %next9 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %17 = load %struct.node*, %struct.node** %next9, align 8
  store %struct.node* %17, %struct.node** %aux, align 8
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then2
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %primes = alloca %struct.node*, align 8
  store i32 0, i32* %retval, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.node*
  store %struct.node* %0, %struct.node** %primes, align 8
  %1 = load %struct.node*, %struct.node** %primes, align 8
  %val = getelementptr inbounds %struct.node, %struct.node* %1, i32 0, i32 1
  store i32 2, i32* %val, align 8
  %2 = load %struct.node*, %struct.node** %primes, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %2, i32 0, i32 0
  store %struct.node* null, %struct.node** %next, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i64, i64* @N, align 8
  %cmp = icmp sgt i64 %3, 1
  br i1 %cmp, label %while.body, label %while.end12

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body5, %while.body
  %4 = load i64, i64* @N, align 8
  %5 = load %struct.node*, %struct.node** %primes, align 8
  %val2 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 1
  %6 = load i32, i32* %val2, align 8
  %conv = sext i32 %6 to i64
  %rem = srem i64 %4, %conv
  %cmp3 = icmp eq i64 %rem, 0
  br i1 %cmp3, label %while.body5, label %while.end

while.body5:                                      ; preds = %while.cond1
  %7 = load %struct.node*, %struct.node** %primes, align 8
  %val6 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 1
  %8 = load i32, i32* %val6, align 8
  %conv7 = sext i32 %8 to i64
  %9 = load i64, i64* @N, align 8
  %div = sdiv i64 %9, %conv7
  store i64 %div, i64* @N, align 8
  br label %while.cond1, !llvm.loop !6

while.end:                                        ; preds = %while.cond1
  %10 = load i64, i64* @N, align 8
  %cmp8 = icmp sgt i64 %10, 1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %11 = load %struct.node*, %struct.node** %primes, align 8
  %12 = load %struct.node*, %struct.node** %primes, align 8
  %val10 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 1
  %13 = load i32, i32* %val10, align 8
  call void @next_prime(%struct.node* %11, i32 %13)
  %14 = load %struct.node*, %struct.node** %primes, align 8
  %next11 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %15 = load %struct.node*, %struct.node** %next11, align 8
  store %struct.node* %15, %struct.node** %primes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %while.cond, !llvm.loop !7

while.end12:                                      ; preds = %while.cond
  %16 = load %struct.node*, %struct.node** %primes, align 8
  %val13 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 1
  %17 = load i32, i32* %val13, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

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
!7 = distinct !{!7, !5}
