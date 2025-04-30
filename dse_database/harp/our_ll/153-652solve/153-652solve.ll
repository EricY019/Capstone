; ModuleID = 'code/153-652solve.c'
source_filename = "code/153-652solve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ListNode = type { i32, %struct.ListNode* }

@.str = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@__const.main.a = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 16
@__const.main.b = private unnamed_addr constant [2 x i32] [i32 6, i32 7], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getLength(%struct.ListNode* %head) #0 {
entry:
  %head.addr = alloca %struct.ListNode*, align 8
  %len = alloca i32, align 4
  %p = alloca %struct.ListNode*, align 8
  store %struct.ListNode* %head, %struct.ListNode** %head.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct.ListNode*, %struct.ListNode** %head.addr, align 8
  store %struct.ListNode* %0, %struct.ListNode** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %tobool = icmp ne %struct.ListNode* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %len, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %len, align 4
  %3 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %3, i32 0, i32 1
  %4 = load %struct.ListNode*, %struct.ListNode** %next, align 8
  store %struct.ListNode* %4, %struct.ListNode** %p, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %len, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ListNode* @getIntersectionNode(%struct.ListNode* %ha, %struct.ListNode* %hb) #0 {
entry:
  %retval = alloca %struct.ListNode*, align 8
  %ha.addr = alloca %struct.ListNode*, align 8
  %hb.addr = alloca %struct.ListNode*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %p = alloca %struct.ListNode*, align 8
  %q = alloca %struct.ListNode*, align 8
  %diff = alloca i32, align 4
  store %struct.ListNode* %ha, %struct.ListNode** %ha.addr, align 8
  store %struct.ListNode* %hb, %struct.ListNode** %hb.addr, align 8
  %0 = load %struct.ListNode*, %struct.ListNode** %ha.addr, align 8
  %cmp = icmp eq %struct.ListNode* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.ListNode*, %struct.ListNode** %hb.addr, align 8
  %cmp1 = icmp eq %struct.ListNode* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.ListNode* null, %struct.ListNode** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.ListNode*, %struct.ListNode** %ha.addr, align 8
  %call = call i32 @getLength(%struct.ListNode* %2)
  store i32 %call, i32* %len1, align 4
  %3 = load %struct.ListNode*, %struct.ListNode** %hb.addr, align 8
  %call2 = call i32 @getLength(%struct.ListNode* %3)
  store i32 %call2, i32* %len2, align 4
  %4 = load i32, i32* %len1, align 4
  %5 = load i32, i32* %len2, align 4
  %cmp3 = icmp sge i32 %4, %5
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %6 = load %struct.ListNode*, %struct.ListNode** %ha.addr, align 8
  store %struct.ListNode* %6, %struct.ListNode** %p, align 8
  %7 = load %struct.ListNode*, %struct.ListNode** %hb.addr, align 8
  store %struct.ListNode* %7, %struct.ListNode** %q, align 8
  %8 = load i32, i32* %len1, align 4
  %9 = load i32, i32* %len2, align 4
  %sub = sub nsw i32 %8, %9
  store i32 %sub, i32* %diff, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  %10 = load %struct.ListNode*, %struct.ListNode** %hb.addr, align 8
  store %struct.ListNode* %10, %struct.ListNode** %p, align 8
  %11 = load %struct.ListNode*, %struct.ListNode** %ha.addr, align 8
  store %struct.ListNode* %11, %struct.ListNode** %q, align 8
  %12 = load i32, i32* %len2, align 4
  %13 = load i32, i32* %len1, align 4
  %sub5 = sub nsw i32 %12, %13
  store i32 %sub5, i32* %diff, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end6
  %14 = load i32, i32* %diff, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %diff, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %15, i32 0, i32 1
  %16 = load %struct.ListNode*, %struct.ListNode** %next, align 8
  store %struct.ListNode* %16, %struct.ListNode** %p, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %while.cond7

while.cond7:                                      ; preds = %if.end13, %while.end
  %17 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %tobool8 = icmp ne %struct.ListNode* %17, null
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond7
  %18 = load %struct.ListNode*, %struct.ListNode** %q, align 8
  %tobool9 = icmp ne %struct.ListNode* %18, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond7
  %19 = phi i1 [ false, %while.cond7 ], [ %tobool9, %land.rhs ]
  br i1 %19, label %while.body10, label %while.end16

while.body10:                                     ; preds = %land.end
  %20 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %21 = load %struct.ListNode*, %struct.ListNode** %q, align 8
  %cmp11 = icmp eq %struct.ListNode* %20, %21
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %while.body10
  %22 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  store %struct.ListNode* %22, %struct.ListNode** %retval, align 8
  br label %return

if.end13:                                         ; preds = %while.body10
  %23 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next14 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %23, i32 0, i32 1
  %24 = load %struct.ListNode*, %struct.ListNode** %next14, align 8
  store %struct.ListNode* %24, %struct.ListNode** %p, align 8
  %25 = load %struct.ListNode*, %struct.ListNode** %q, align 8
  %next15 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %25, i32 0, i32 1
  %26 = load %struct.ListNode*, %struct.ListNode** %next15, align 8
  store %struct.ListNode* %26, %struct.ListNode** %q, align 8
  br label %while.cond7, !llvm.loop !7

while.end16:                                      ; preds = %land.end
  store %struct.ListNode* null, %struct.ListNode** %retval, align 8
  br label %return

return:                                           ; preds = %while.end16, %if.then12, %if.then
  %27 = load %struct.ListNode*, %struct.ListNode** %retval, align 8
  ret %struct.ListNode* %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print(%struct.ListNode* %ha, %struct.ListNode* %hb) #0 {
entry:
  %ha.addr = alloca %struct.ListNode*, align 8
  %hb.addr = alloca %struct.ListNode*, align 8
  %p = alloca %struct.ListNode*, align 8
  store %struct.ListNode* %ha, %struct.ListNode** %ha.addr, align 8
  store %struct.ListNode* %hb, %struct.ListNode** %hb.addr, align 8
  %0 = load %struct.ListNode*, %struct.ListNode** %ha.addr, align 8
  %1 = load %struct.ListNode*, %struct.ListNode** %hb.addr, align 8
  %call = call %struct.ListNode* @getIntersectionNode(%struct.ListNode* %0, %struct.ListNode* %1)
  store %struct.ListNode* %call, %struct.ListNode** %p, align 8
  %2 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %cmp = icmp eq %struct.ListNode* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %val = getelementptr inbounds %struct.ListNode, %struct.ListNode* %3, i32 0, i32 0
  %4 = load i32, i32* %val, align 8
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ListNode* @mk_list(%struct.ListNode** %ha, i32* %a, i32 %n) #0 {
entry:
  %ha.addr = alloca %struct.ListNode**, align 8
  %a.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %p = alloca %struct.ListNode*, align 8
  %i = alloca i32, align 4
  %q = alloca %struct.ListNode*, align 8
  store %struct.ListNode** %ha, %struct.ListNode*** %ha.addr, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %call = call noalias align 16 i8* @malloc(i64 16) #4
  %0 = bitcast i8* %call to %struct.ListNode*
  store %struct.ListNode* %0, %struct.ListNode** %p, align 8
  %1 = load i32*, i32** %a.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 0
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %val = getelementptr inbounds %struct.ListNode, %struct.ListNode* %3, i32 0, i32 0
  store i32 %2, i32* %val, align 8
  %4 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %4, i32 0, i32 1
  store %struct.ListNode* null, %struct.ListNode** %next, align 8
  %5 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %6 = load %struct.ListNode**, %struct.ListNode*** %ha.addr, align 8
  store %struct.ListNode* %5, %struct.ListNode** %6, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call noalias align 16 i8* @malloc(i64 16) #4
  %9 = bitcast i8* %call1 to %struct.ListNode*
  store %struct.ListNode* %9, %struct.ListNode** %q, align 8
  %10 = load i32*, i32** %a.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx2 = getelementptr inbounds i32, i32* %10, i64 %idxprom
  %12 = load i32, i32* %arrayidx2, align 4
  %13 = load %struct.ListNode*, %struct.ListNode** %q, align 8
  %val3 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %13, i32 0, i32 0
  store i32 %12, i32* %val3, align 8
  %14 = load %struct.ListNode*, %struct.ListNode** %q, align 8
  %next4 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %14, i32 0, i32 1
  store %struct.ListNode* null, %struct.ListNode** %next4, align 8
  %15 = load %struct.ListNode*, %struct.ListNode** %q, align 8
  %16 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  %next5 = getelementptr inbounds %struct.ListNode, %struct.ListNode* %16, i32 0, i32 1
  store %struct.ListNode* %15, %struct.ListNode** %next5, align 8
  %17 = load %struct.ListNode*, %struct.ListNode** %q, align 8
  store %struct.ListNode* %17, %struct.ListNode** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %19 = load %struct.ListNode*, %struct.ListNode** %p, align 8
  ret %struct.ListNode* %19
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %ha = alloca %struct.ListNode*, align 8
  %hb = alloca %struct.ListNode*, align 8
  %a = alloca [5 x i32], align 16
  %b = alloca [2 x i32], align 4
  %last1 = alloca %struct.ListNode*, align 8
  %last2 = alloca %struct.ListNode*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct.ListNode* null, %struct.ListNode** %ha, align 8
  store %struct.ListNode* null, %struct.ListNode** %hb, align 8
  %0 = load %struct.ListNode*, %struct.ListNode** %ha, align 8
  %1 = load %struct.ListNode*, %struct.ListNode** %hb, align 8
  call void @print(%struct.ListNode* %0, %struct.ListNode* %1)
  %2 = bitcast [5 x i32]* %a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([5 x i32]* @__const.main.a to i8*), i64 20, i1 false)
  %3 = bitcast [2 x i32]* %b to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast ([2 x i32]* @__const.main.b to i8*), i64 8, i1 false)
  %arraydecay = getelementptr inbounds [5 x i32], [5 x i32]* %a, i64 0, i64 0
  %call = call %struct.ListNode* @mk_list(%struct.ListNode** %ha, i32* %arraydecay, i32 5)
  store %struct.ListNode* %call, %struct.ListNode** %last1, align 8
  %arraydecay1 = getelementptr inbounds [2 x i32], [2 x i32]* %b, i64 0, i64 0
  %call2 = call %struct.ListNode* @mk_list(%struct.ListNode** %hb, i32* %arraydecay1, i32 2)
  store %struct.ListNode* %call2, %struct.ListNode** %last2, align 8
  %4 = load %struct.ListNode*, %struct.ListNode** %ha, align 8
  %5 = load %struct.ListNode*, %struct.ListNode** %last2, align 8
  %next = getelementptr inbounds %struct.ListNode, %struct.ListNode* %5, i32 0, i32 1
  store %struct.ListNode* %4, %struct.ListNode** %next, align 8
  %6 = load %struct.ListNode*, %struct.ListNode** %ha, align 8
  %7 = load %struct.ListNode*, %struct.ListNode** %hb, align 8
  call void @print(%struct.ListNode* %6, %struct.ListNode* %7)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

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
!8 = distinct !{!8, !5}
