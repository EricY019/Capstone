; ModuleID = 'code/027-29273ll_cycle.c'
source_filename = "code/027-29273ll_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

@.str = private unnamed_addr constant [60 x i8] c"First list has no cycle, ll_has_cycle says it has %s cycle\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Second list has a cycle, ll_has_cycle says it has %s cycle\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Third list has a cycle, ll_has_cycle says it has %s cycle\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Fourth list has a cycle, ll_has_cycle says it has %s cycle\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"Fifth list has no cycle, ll_has_cycle says it has %s cycle\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"Length-zero list has no cycle, ll_has_cycle says it has %s cycle\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ll_has_cycle(%struct.node* %head) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca %struct.node*, align 8
  %hare = alloca %struct.node*, align 8
  %tortoise = alloca %struct.node*, align 8
  store %struct.node* %head, %struct.node** %head.addr, align 8
  %0 = load %struct.node*, %struct.node** %head.addr, align 8
  store %struct.node* %0, %struct.node** %hare, align 8
  %1 = load %struct.node*, %struct.node** %head.addr, align 8
  store %struct.node* %1, %struct.node** %tortoise, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.node*, %struct.node** %hare, align 8
  %cmp = icmp ne %struct.node* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.node*, %struct.node** %hare, align 8
  %next = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 1
  %4 = load %struct.node*, %struct.node** %next, align 8
  %cmp1 = icmp ne %struct.node* %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load %struct.node*, %struct.node** %hare, align 8
  %next2 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 1
  %7 = load %struct.node*, %struct.node** %next2, align 8
  %next3 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 1
  %8 = load %struct.node*, %struct.node** %next3, align 8
  store %struct.node* %8, %struct.node** %hare, align 8
  %9 = load %struct.node*, %struct.node** %tortoise, align 8
  %next4 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 1
  %10 = load %struct.node*, %struct.node** %next4, align 8
  store %struct.node* %10, %struct.node** %tortoise, align 8
  %11 = load %struct.node*, %struct.node** %hare, align 8
  %12 = load %struct.node*, %struct.node** %tortoise, align 8
  %cmp5 = icmp eq %struct.node* %11, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, i32* %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ll_has_cycle() #0 {
entry:
  %i = alloca i32, align 4
  %nodes = alloca [25 x %struct.node], align 16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 %idxprom
  %next = getelementptr inbounds %struct.node, %struct.node* %arrayidx, i32 0, i32 1
  store %struct.node* null, %struct.node** %next, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 %idxprom2
  %value = getelementptr inbounds %struct.node, %struct.node* %arrayidx3, i32 0, i32 0
  store i32 0, i32* %value, align 16
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 1
  %arrayidx5 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 0
  %next6 = getelementptr inbounds %struct.node, %struct.node* %arrayidx5, i32 0, i32 1
  store %struct.node* %arrayidx4, %struct.node** %next6, align 8
  %arrayidx7 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 2
  %arrayidx8 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 1
  %next9 = getelementptr inbounds %struct.node, %struct.node* %arrayidx8, i32 0, i32 1
  store %struct.node* %arrayidx7, %struct.node** %next9, align 8
  %arrayidx10 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 3
  %arrayidx11 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 2
  %next12 = getelementptr inbounds %struct.node, %struct.node* %arrayidx11, i32 0, i32 1
  store %struct.node* %arrayidx10, %struct.node** %next12, align 8
  %arrayidx13 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 0
  %call = call i32 @ll_has_cycle(%struct.node* %arrayidx13)
  %tobool = icmp ne i32 %call, 0
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %cond)
  %arrayidx15 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 5
  %arrayidx16 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 4
  %next17 = getelementptr inbounds %struct.node, %struct.node* %arrayidx16, i32 0, i32 1
  store %struct.node* %arrayidx15, %struct.node** %next17, align 8
  %arrayidx18 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 6
  %arrayidx19 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 5
  %next20 = getelementptr inbounds %struct.node, %struct.node* %arrayidx19, i32 0, i32 1
  store %struct.node* %arrayidx18, %struct.node** %next20, align 8
  %arrayidx21 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 7
  %arrayidx22 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 6
  %next23 = getelementptr inbounds %struct.node, %struct.node* %arrayidx22, i32 0, i32 1
  store %struct.node* %arrayidx21, %struct.node** %next23, align 8
  %arrayidx24 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 8
  %arrayidx25 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 7
  %next26 = getelementptr inbounds %struct.node, %struct.node* %arrayidx25, i32 0, i32 1
  store %struct.node* %arrayidx24, %struct.node** %next26, align 8
  %arrayidx27 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 9
  %arrayidx28 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 8
  %next29 = getelementptr inbounds %struct.node, %struct.node* %arrayidx28, i32 0, i32 1
  store %struct.node* %arrayidx27, %struct.node** %next29, align 8
  %arrayidx30 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 10
  %arrayidx31 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 9
  %next32 = getelementptr inbounds %struct.node, %struct.node* %arrayidx31, i32 0, i32 1
  store %struct.node* %arrayidx30, %struct.node** %next32, align 8
  %arrayidx33 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 4
  %arrayidx34 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 10
  %next35 = getelementptr inbounds %struct.node, %struct.node* %arrayidx34, i32 0, i32 1
  store %struct.node* %arrayidx33, %struct.node** %next35, align 8
  %arrayidx36 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 4
  %call37 = call i32 @ll_has_cycle(%struct.node* %arrayidx36)
  %tobool38 = icmp ne i32 %call37, 0
  %5 = zext i1 %tobool38 to i64
  %cond39 = select i1 %tobool38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %cond39)
  %arrayidx41 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 12
  %arrayidx42 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 11
  %next43 = getelementptr inbounds %struct.node, %struct.node* %arrayidx42, i32 0, i32 1
  store %struct.node* %arrayidx41, %struct.node** %next43, align 8
  %arrayidx44 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 13
  %arrayidx45 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 12
  %next46 = getelementptr inbounds %struct.node, %struct.node* %arrayidx45, i32 0, i32 1
  store %struct.node* %arrayidx44, %struct.node** %next46, align 8
  %arrayidx47 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 14
  %arrayidx48 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 13
  %next49 = getelementptr inbounds %struct.node, %struct.node* %arrayidx48, i32 0, i32 1
  store %struct.node* %arrayidx47, %struct.node** %next49, align 8
  %arrayidx50 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 15
  %arrayidx51 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 14
  %next52 = getelementptr inbounds %struct.node, %struct.node* %arrayidx51, i32 0, i32 1
  store %struct.node* %arrayidx50, %struct.node** %next52, align 8
  %arrayidx53 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 16
  %arrayidx54 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 15
  %next55 = getelementptr inbounds %struct.node, %struct.node* %arrayidx54, i32 0, i32 1
  store %struct.node* %arrayidx53, %struct.node** %next55, align 8
  %arrayidx56 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 17
  %arrayidx57 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 16
  %next58 = getelementptr inbounds %struct.node, %struct.node* %arrayidx57, i32 0, i32 1
  store %struct.node* %arrayidx56, %struct.node** %next58, align 8
  %arrayidx59 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 14
  %arrayidx60 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 17
  %next61 = getelementptr inbounds %struct.node, %struct.node* %arrayidx60, i32 0, i32 1
  store %struct.node* %arrayidx59, %struct.node** %next61, align 8
  %arrayidx62 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 11
  %call63 = call i32 @ll_has_cycle(%struct.node* %arrayidx62)
  %tobool64 = icmp ne i32 %call63, 0
  %6 = zext i1 %tobool64 to i64
  %cond65 = select i1 %tobool64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* %cond65)
  %arrayidx67 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 18
  %arrayidx68 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 18
  %next69 = getelementptr inbounds %struct.node, %struct.node* %arrayidx68, i32 0, i32 1
  store %struct.node* %arrayidx67, %struct.node** %next69, align 8
  %arrayidx70 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 18
  %call71 = call i32 @ll_has_cycle(%struct.node* %arrayidx70)
  %tobool72 = icmp ne i32 %call71, 0
  %7 = zext i1 %tobool72 to i64
  %cond73 = select i1 %tobool72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i8* %cond73)
  %arrayidx75 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 20
  %arrayidx76 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 19
  %next77 = getelementptr inbounds %struct.node, %struct.node* %arrayidx76, i32 0, i32 1
  store %struct.node* %arrayidx75, %struct.node** %next77, align 8
  %arrayidx78 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 21
  %arrayidx79 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 20
  %next80 = getelementptr inbounds %struct.node, %struct.node* %arrayidx79, i32 0, i32 1
  store %struct.node* %arrayidx78, %struct.node** %next80, align 8
  %arrayidx81 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 22
  %arrayidx82 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 21
  %next83 = getelementptr inbounds %struct.node, %struct.node* %arrayidx82, i32 0, i32 1
  store %struct.node* %arrayidx81, %struct.node** %next83, align 8
  %arrayidx84 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 23
  %arrayidx85 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 22
  %next86 = getelementptr inbounds %struct.node, %struct.node* %arrayidx85, i32 0, i32 1
  store %struct.node* %arrayidx84, %struct.node** %next86, align 8
  %arrayidx87 = getelementptr inbounds [25 x %struct.node], [25 x %struct.node]* %nodes, i64 0, i64 19
  %call88 = call i32 @ll_has_cycle(%struct.node* %arrayidx87)
  %tobool89 = icmp ne i32 %call88, 0
  %8 = zext i1 %tobool89 to i64
  %cond90 = select i1 %tobool89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i8* %cond90)
  %call92 = call i32 @ll_has_cycle(%struct.node* null)
  %tobool93 = icmp ne i32 %call92, 0
  %9 = zext i1 %tobool93 to i64
  %cond94 = select i1 %tobool93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i8* %cond94)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @test_ll_has_cycle()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
