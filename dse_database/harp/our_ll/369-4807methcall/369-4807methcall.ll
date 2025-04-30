; ModuleID = 'code/369-4807methcall.c'
source_filename = "code/369-4807methcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Toggle = type { i8, {}*, %struct.Toggle* (%struct.Toggle*)* }
%struct.NthToggle = type { i8, i8 (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)*, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"true\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"false\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @toggle_value(%struct.Toggle* %this) #0 {
entry:
  %this.addr = alloca %struct.Toggle*, align 8
  store %struct.Toggle* %this, %struct.Toggle** %this.addr, align 8
  %0 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  %state = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i32 0, i32 0
  %1 = load i8, i8* %state, align 8
  ret i8 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Toggle* @toggle_activate(%struct.Toggle* %this) #0 {
entry:
  %this.addr = alloca %struct.Toggle*, align 8
  store %struct.Toggle* %this, %struct.Toggle** %this.addr, align 8
  %0 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  %state = getelementptr inbounds %struct.Toggle, %struct.Toggle* %0, i32 0, i32 0
  %1 = load i8, i8* %state, align 8
  %tobool = icmp ne i8 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %2 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  %state1 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %2, i32 0, i32 0
  store i8 %conv, i8* %state1, align 8
  %3 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  ret %struct.Toggle* %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Toggle* @init_Toggle(%struct.Toggle* %this, i8 signext %start_state) #0 {
entry:
  %this.addr = alloca %struct.Toggle*, align 8
  %start_state.addr = alloca i8, align 1
  store %struct.Toggle* %this, %struct.Toggle** %this.addr, align 8
  store i8 %start_state, i8* %start_state.addr, align 1
  %0 = load i8, i8* %start_state.addr, align 1
  %1 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  %state = getelementptr inbounds %struct.Toggle, %struct.Toggle* %1, i32 0, i32 0
  store i8 %0, i8* %state, align 8
  %2 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  %value = getelementptr inbounds %struct.Toggle, %struct.Toggle* %2, i32 0, i32 1
  %value1 = bitcast {}** %value to i8 (%struct.Toggle*)**
  store i8 (%struct.Toggle*)* @toggle_value, i8 (%struct.Toggle*)** %value1, align 8
  %3 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  %activate = getelementptr inbounds %struct.Toggle, %struct.Toggle* %3, i32 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* @toggle_activate, %struct.Toggle* (%struct.Toggle*)** %activate, align 8
  %4 = load %struct.Toggle*, %struct.Toggle** %this.addr, align 8
  ret %struct.Toggle* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Toggle* @new_Toggle(i8 signext %start_state) #0 {
entry:
  %start_state.addr = alloca i8, align 1
  %this = alloca %struct.Toggle*, align 8
  store i8 %start_state, i8* %start_state.addr, align 1
  %call = call noalias align 16 i8* @malloc(i64 24) #4
  %0 = bitcast i8* %call to %struct.Toggle*
  store %struct.Toggle* %0, %struct.Toggle** %this, align 8
  %1 = load %struct.Toggle*, %struct.Toggle** %this, align 8
  %2 = load i8, i8* %start_state.addr, align 1
  %call1 = call %struct.Toggle* @init_Toggle(%struct.Toggle* %1, i8 signext %2)
  ret %struct.Toggle* %call1
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.NthToggle* @nth_toggle_activate(%struct.NthToggle* %this) #0 {
entry:
  %this.addr = alloca %struct.NthToggle*, align 8
  store %struct.NthToggle* %this, %struct.NthToggle** %this.addr, align 8
  %0 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %counter = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %0, i32 0, i32 4
  %1 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %counter, align 4
  %2 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %count_max = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %2, i32 0, i32 3
  %3 = load i32, i32* %count_max, align 8
  %cmp = icmp sge i32 %inc, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %state = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %4, i32 0, i32 0
  %5 = load i8, i8* %state, align 8
  %tobool = icmp ne i8 %5, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %conv = trunc i32 %lnot.ext to i8
  %6 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %state1 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %6, i32 0, i32 0
  store i8 %conv, i8* %state1, align 8
  %7 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %counter2 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %7, i32 0, i32 4
  store i32 0, i32* %counter2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  ret %struct.NthToggle* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.NthToggle* @init_NthToggle(%struct.NthToggle* %this, i32 %max_count) #0 {
entry:
  %this.addr = alloca %struct.NthToggle*, align 8
  %max_count.addr = alloca i32, align 4
  store %struct.NthToggle* %this, %struct.NthToggle** %this.addr, align 8
  store i32 %max_count, i32* %max_count.addr, align 4
  %0 = load i32, i32* %max_count.addr, align 4
  %1 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %count_max = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %1, i32 0, i32 3
  store i32 %0, i32* %count_max, align 8
  %2 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %counter = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %2, i32 0, i32 4
  store i32 0, i32* %counter, align 4
  %3 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  %activate = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %3, i32 0, i32 2
  store %struct.Toggle* (%struct.Toggle*)* bitcast (%struct.NthToggle* (%struct.NthToggle*)* @nth_toggle_activate to %struct.Toggle* (%struct.Toggle*)*), %struct.Toggle* (%struct.Toggle*)** %activate, align 8
  %4 = load %struct.NthToggle*, %struct.NthToggle** %this.addr, align 8
  ret %struct.NthToggle* %4
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.NthToggle* @new_NthToggle(i8 signext %start_state, i32 %max_count) #0 {
entry:
  %start_state.addr = alloca i8, align 1
  %max_count.addr = alloca i32, align 4
  %this = alloca %struct.NthToggle*, align 8
  store i8 %start_state, i8* %start_state.addr, align 1
  store i32 %max_count, i32* %max_count.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 32) #4
  %0 = bitcast i8* %call to %struct.NthToggle*
  store %struct.NthToggle* %0, %struct.NthToggle** %this, align 8
  %1 = load %struct.NthToggle*, %struct.NthToggle** %this, align 8
  %2 = bitcast %struct.NthToggle* %1 to %struct.Toggle*
  %3 = load i8, i8* %start_state.addr, align 1
  %call1 = call %struct.Toggle* @init_Toggle(%struct.Toggle* %2, i8 signext %3)
  %4 = bitcast %struct.Toggle* %call1 to %struct.NthToggle*
  store %struct.NthToggle* %4, %struct.NthToggle** %this, align 8
  %5 = load %struct.NthToggle*, %struct.NthToggle** %this, align 8
  %6 = load i32, i32* %max_count.addr, align 4
  %call2 = call %struct.NthToggle* @init_NthToggle(%struct.NthToggle* %5, i32 %6)
  ret %struct.NthToggle* %call2
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %tog = alloca %struct.Toggle*, align 8
  %ntog = alloca %struct.NthToggle*, align 8
  %val = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 50000000, %cond.false ]
  store i32 %cond, i32* %n, align 4
  store i8 1, i8* %val, align 1
  %call1 = call %struct.Toggle* @new_Toggle(i8 signext 1)
  store %struct.Toggle* %call1, %struct.Toggle** %tog, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.Toggle*, %struct.Toggle** %tog, align 8
  %activate = getelementptr inbounds %struct.Toggle, %struct.Toggle* %5, i32 0, i32 2
  %6 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %activate, align 8
  %7 = load %struct.Toggle*, %struct.Toggle** %tog, align 8
  %call3 = call %struct.Toggle* %6(%struct.Toggle* %7)
  %value = getelementptr inbounds %struct.Toggle, %struct.Toggle* %call3, i32 0, i32 1
  %value4 = bitcast {}** %value to i8 (%struct.Toggle*)**
  %8 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %value4, align 8
  %9 = load %struct.Toggle*, %struct.Toggle** %tog, align 8
  %call5 = call signext i8 %8(%struct.Toggle* %9)
  store i8 %call5, i8* %val, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %11 = load i8, i8* %val, align 1
  %conv = sext i8 %11 to i32
  %tobool = icmp ne i32 %conv, 0
  %12 = zext i1 %tobool to i64
  %cond6 = select i1 %tobool, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %call7 = call i32 @puts(i8* %cond6)
  %13 = load %struct.Toggle*, %struct.Toggle** %tog, align 8
  %14 = bitcast %struct.Toggle* %13 to i8*
  call void @free(i8* %14) #4
  store i8 1, i8* %val, align 1
  %15 = load i8, i8* %val, align 1
  %call8 = call %struct.NthToggle* @new_NthToggle(i8 signext %15, i32 3)
  store %struct.NthToggle* %call8, %struct.NthToggle** %ntog, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc18, %for.end
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %n, align 4
  %cmp10 = icmp slt i32 %16, %17
  br i1 %cmp10, label %for.body12, label %for.end20

for.body12:                                       ; preds = %for.cond9
  %18 = load %struct.NthToggle*, %struct.NthToggle** %ntog, align 8
  %activate13 = getelementptr inbounds %struct.NthToggle, %struct.NthToggle* %18, i32 0, i32 2
  %19 = load %struct.Toggle* (%struct.Toggle*)*, %struct.Toggle* (%struct.Toggle*)** %activate13, align 8
  %20 = load %struct.NthToggle*, %struct.NthToggle** %ntog, align 8
  %21 = bitcast %struct.NthToggle* %20 to %struct.Toggle*
  %call14 = call %struct.Toggle* %19(%struct.Toggle* %21)
  %value15 = getelementptr inbounds %struct.Toggle, %struct.Toggle* %call14, i32 0, i32 1
  %value16 = bitcast {}** %value15 to i8 (%struct.Toggle*)**
  %22 = load i8 (%struct.Toggle*)*, i8 (%struct.Toggle*)** %value16, align 8
  %23 = load %struct.NthToggle*, %struct.NthToggle** %ntog, align 8
  %24 = bitcast %struct.NthToggle* %23 to %struct.Toggle*
  %call17 = call signext i8 %22(%struct.Toggle* %24)
  store i8 %call17, i8* %val, align 1
  br label %for.inc18

for.inc18:                                        ; preds = %for.body12
  %25 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %25, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond9, !llvm.loop !6

for.end20:                                        ; preds = %for.cond9
  %26 = load i8, i8* %val, align 1
  %conv21 = sext i8 %26 to i32
  %tobool22 = icmp ne i32 %conv21, 0
  %27 = zext i1 %tobool22 to i64
  %cond23 = select i1 %tobool22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %call24 = call i32 @puts(i8* %cond23)
  %28 = load %struct.NthToggle*, %struct.NthToggle** %ntog, align 8
  %29 = bitcast %struct.NthToggle* %28 to i8*
  call void @free(i8* %29) #4
  ret i32 0
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @puts(i8*) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
