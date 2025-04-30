; ModuleID = 'code/105-30865reverse_list.c'
source_filename = "code/105-30865reverse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ListNode = type { i32, %struct.ListNode* }

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ListNode* @reverseList(%struct.ListNode* %head) #0 {
entry:
  %head.addr = alloca %struct.ListNode*, align 8
  store %struct.ListNode* %head, %struct.ListNode** %head.addr, align 8
  %0 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  %call = call %struct.ListNode* @recursive(%struct.ListNode* null, %struct.ListNode* %0)
  ret %struct.ListNode* %call
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ListNode* @recursive(%struct.ListNode* %prev, %struct.ListNode* %p) #0 {
entry:
  %retval = alloca %struct.ListNode*, align 8
  %prev.addr = alloca %struct.ListNode*, align 8
  %p.addr = alloca %struct.ListNode*, align 8
  %q = alloca %struct.ListNode*, align 8
  store %struct.ListNode* %prev, %struct.ListNode** %prev.addr, align 8
  store %struct.ListNode* %p, %struct.ListNode** %p.addr, align 8
  %0 = load %struct.ListNode*, %struct.ListNode** %p.addr, align 8
  %cmp = icmp eq %struct.ListNode* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.ListNode*, %struct.ListNode** %prev.addr, align 8
  store %struct.ListNode* %1, %struct.ListNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.ListNode*, %struct.ListNode** %p.addr, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %2, i32 0, i32 1
  %3 = load %struct.ListNode*, %struct.ListNode** %next, align 8
  store %struct.ListNode* %3, %struct.ListNode** %q, align 8
  %4 = load %struct.ListNode*, %struct.ListNode** %prev.addr, align 8
  %5 = load %struct.ListNode*, %struct.ListNode** %p.addr, align 8
  %next1 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %5, i32 0, i32 1
  store %struct.ListNode* %4, %struct.ListNode** %next1, align 8
  %6 = load %struct.ListNode*, %struct.ListNode** %p.addr, align 8
  %7 = load %struct.ListNode*, %struct.ListNode** %q, align 8
  %call = call %struct.ListNode* @recursive(%struct.ListNode* %6, %struct.ListNode* %7)
  store %struct.ListNode* %call, %struct.ListNode** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %8 = load %struct.ListNode*, %struct.ListNode** %retval, align 8
  ret %struct.ListNode* %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %head = alloca %struct.ListNode*, align 8
  %p = alloca %struct.ListNode*, align 8
  %prev = alloca %struct.ListNode*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %count, align 4
  store %struct.ListNode* null, %struct.ListNode** %head, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noalias align 16 i8* @malloc(i64 16) #4
  %3 = bitcast i8* %call to %struct.ListNode*
  store %struct.ListNode* %3, %struct.ListNode** %p, align 8
  %4 = load i8**, i8*** %argv.addr, align 8
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %6) #5
  %7 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %val = getelementptr inbounds %struct.ListNode, %struct.ListNode* %7, i32 0, i32 0
  store i32 %call1, i32* %val, align 8
  %8 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %8, i32 0, i32 1
  store %struct.ListNode* null, %struct.ListNode** %next, align 8
  %9 = load %struct.ListNode*, %struct.ListNode** %head, align 8
  %cmp2 = icmp eq %struct.ListNode* %9, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %10 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  store %struct.ListNode* %10, %struct.ListNode** %head, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %12 = load %struct.ListNode*, %struct.ListNode** %prev, align 8
  %next3 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %12, i32 0, i32 1
  store %struct.ListNode* %11, %struct.ListNode** %next3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  store %struct.ListNode* %13, %struct.ListNode** %prev, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %15 = load %struct.ListNode*, %struct.ListNode** %head, align 8
  %call4 = call %struct.ListNode* @reverseList(%struct.ListNode* %15)
  store %struct.ListNode* %call4, %struct.ListNode** %p, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc10, %for.end
  %16 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %cmp6 = icmp ne %struct.ListNode* %16, null
  br i1 %cmp6, label %for.body7, label %for.end12

for.body7:                                        ; preds = %for.cond5
  %17 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %val8 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %17, i32 0, i32 0
  %18 = load i32, i32* %val8, align 8
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body7
  %19 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next11 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %19, i32 0, i32 1
  %20 = load %struct.ListNode*, %struct.ListNode** %next11, align 8
  store %struct.ListNode* %20, %struct.ListNode** %p, align 8
  br label %for.cond5, !llvm.loop !6

for.end12:                                        ; preds = %for.cond5
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

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
