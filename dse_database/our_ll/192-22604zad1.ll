; ModuleID = 'code/192-22604zad1.c'
source_filename = "code/192-22604zad1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sl = type { [30 x i8], %struct.sl* }

@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ghi\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pusta(%struct.sl* %lis) #0 {
entry:
  %retval = alloca i32, align 4
  %lis.addr = alloca %struct.sl*, align 8
  store %struct.sl* %lis, %struct.sl** %lis.addr, align 8
  %0 = load %struct.sl*, %struct.sl** %lis.addr, align 8
  %cmp = icmp eq %struct.sl* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pierwsze(%struct.sl* %lis) #0 {
entry:
  %lis.addr = alloca %struct.sl*, align 8
  store %struct.sl* %lis, %struct.sl** %lis.addr, align 8
  %0 = load %struct.sl*, %struct.sl** %lis.addr, align 8
  %slowo = getelementptr inbounds %struct.sl, %struct.sl* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %slowo, i64 0, i64 0
  ret i8* %arraydecay
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sl* @reszta(%struct.sl* %lis) #0 {
entry:
  %lis.addr = alloca %struct.sl*, align 8
  store %struct.sl* %lis, %struct.sl** %lis.addr, align 8
  %0 = load %struct.sl*, %struct.sl** %lis.addr, align 8
  %dalej = getelementptr inbounds %struct.sl, %struct.sl* %0, i32 0, i32 1
  %1 = load %struct.sl*, %struct.sl** %dalej, align 8
  ret %struct.sl* %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sl* @dolacz(i8* %slow, %struct.sl* %lis) #0 {
entry:
  %slow.addr = alloca i8*, align 8
  %lis.addr = alloca %struct.sl*, align 8
  %pom = alloca %struct.sl*, align 8
  store i8* %slow, i8** %slow.addr, align 8
  store %struct.sl* %lis, %struct.sl** %lis.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 40) #3
  %0 = bitcast i8* %call to %struct.sl*
  store %struct.sl* %0, %struct.sl** %pom, align 8
  %1 = load %struct.sl*, %struct.sl** %pom, align 8
  %slowo = getelementptr inbounds %struct.sl, %struct.sl* %1, i32 0, i32 0
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %slowo, i64 0, i64 0
  %2 = load i8*, i8** %slow.addr, align 8
  %call1 = call i8* @strcpy(i8* %arraydecay, i8* %2) #3
  %3 = load %struct.sl*, %struct.sl** %lis.addr, align 8
  %4 = load %struct.sl*, %struct.sl** %pom, align 8
  %dalej = getelementptr inbounds %struct.sl, %struct.sl* %4, i32 0, i32 1
  store %struct.sl* %3, %struct.sl** %dalej, align 8
  %5 = load %struct.sl*, %struct.sl** %pom, align 8
  ret %struct.sl* %5
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @druk(%struct.sl* %lis) #0 {
entry:
  %lis.addr = alloca %struct.sl*, align 8
  %wynik = alloca %struct.sl*, align 8
  store %struct.sl* %lis, %struct.sl** %lis.addr, align 8
  %0 = load %struct.sl*, %struct.sl** %lis.addr, align 8
  store %struct.sl* %0, %struct.sl** %wynik, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.sl*, %struct.sl** %wynik, align 8
  %cmp = icmp ne %struct.sl* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.sl*, %struct.sl** %wynik, align 8
  %slowo = getelementptr inbounds %struct.sl, %struct.sl* %2, i32 0, i32 0
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %slowo, i64 0, i64 0
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %arraydecay)
  %3 = load %struct.sl*, %struct.sl** %wynik, align 8
  %dalej = getelementptr inbounds %struct.sl, %struct.sl* %3, i32 0, i32 1
  %4 = load %struct.sl*, %struct.sl** %dalej, align 8
  store %struct.sl* %4, %struct.sl** %wynik, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sl* @odwroc(%struct.sl* %lis) #0 {
entry:
  %lis.addr = alloca %struct.sl*, align 8
  %pom = alloca %struct.sl*, align 8
  %slowo = alloca [30 x i8], align 16
  store %struct.sl* %lis, %struct.sl** %lis.addr, align 8
  store %struct.sl* null, %struct.sl** %pom, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.sl*, %struct.sl** %lis.addr, align 8
  %call = call i32 @pusta(%struct.sl* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %slowo, i64 0, i64 0
  %1 = load %struct.sl*, %struct.sl** %lis.addr, align 8
  %call1 = call i8* @pierwsze(%struct.sl* %1)
  %call2 = call i8* @strcpy(i8* %arraydecay, i8* %call1) #3
  %2 = load %struct.sl*, %struct.sl** %lis.addr, align 8
  %call3 = call %struct.sl* @reszta(%struct.sl* %2)
  store %struct.sl* %call3, %struct.sl** %lis.addr, align 8
  %arraydecay4 = getelementptr inbounds [30 x i8], [30 x i8]* %slowo, i64 0, i64 0
  %3 = load %struct.sl*, %struct.sl** %pom, align 8
  %call5 = call %struct.sl* @dolacz(i8* %arraydecay4, %struct.sl* %3)
  store %struct.sl* %call5, %struct.sl** %pom, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %4 = load %struct.sl*, %struct.sl** %pom, align 8
  ret %struct.sl* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %lis = alloca %struct.sl*, align 8
  store %struct.sl* null, %struct.sl** %lis, align 8
  %0 = load %struct.sl*, %struct.sl** %lis, align 8
  %call = call %struct.sl* @dolacz(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), %struct.sl* %0)
  %call1 = call %struct.sl* @dolacz(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %struct.sl* %call)
  %call2 = call %struct.sl* @dolacz(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.sl* %call1)
  store %struct.sl* %call2, %struct.sl** %lis, align 8
  %1 = load %struct.sl*, %struct.sl** %lis, align 8
  %call3 = call %struct.sl* @odwroc(%struct.sl* %1)
  call void @druk(%struct.sl* %call3)
  ret i32 0
}

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
