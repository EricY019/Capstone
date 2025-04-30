; ModuleID = './code/027-29273ll_cycle.c'
source_filename = "./code/027-29273ll_cycle.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.node = type { i32, ptr }

@.str = private unnamed_addr constant [60 x i8] c"First list has no cycle, ll_has_cycle says it has %s cycle\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Second list has a cycle, ll_has_cycle says it has %s cycle\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Third list has a cycle, ll_has_cycle says it has %s cycle\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Fourth list has a cycle, ll_has_cycle says it has %s cycle\0A\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"Fifth list has no cycle, ll_has_cycle says it has %s cycle\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"Length-zero list has no cycle, ll_has_cycle says it has %s cycle\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @ll_has_cycle(ptr noundef %head) #0 {
entry:
  %retval = alloca i32, align 4
  %head.addr = alloca ptr, align 8
  %hare = alloca ptr, align 8
  %tortoise = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  %0 = load ptr, ptr %head.addr, align 8
  store ptr %0, ptr %hare, align 8
  %1 = load ptr, ptr %head.addr, align 8
  store ptr %1, ptr %tortoise, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %hare, align 8
  %cmp = icmp ne ptr %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %hare, align 8
  %next = getelementptr inbounds %struct.node, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %next, align 8
  %cmp1 = icmp ne ptr %4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load ptr, ptr %hare, align 8
  %next2 = getelementptr inbounds %struct.node, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %next2, align 8
  %next3 = getelementptr inbounds %struct.node, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %next3, align 8
  store ptr %8, ptr %hare, align 8
  %9 = load ptr, ptr %tortoise, align 8
  %next4 = getelementptr inbounds %struct.node, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %next4, align 8
  store ptr %10, ptr %tortoise, align 8
  %11 = load ptr, ptr %hare, align 8
  %12 = load ptr, ptr %tortoise, align 8
  %cmp5 = icmp eq ptr %11, %12
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @test_ll_has_cycle() #0 {
entry:
  %i = alloca i32, align 4
  %nodes = alloca [25 x %struct.node], align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 %idxprom
  %next = getelementptr inbounds %struct.node, ptr %arrayidx, i32 0, i32 1
  store ptr null, ptr %next, align 8
  %2 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 %idxprom2
  %value = getelementptr inbounds %struct.node, ptr %arrayidx3, i32 0, i32 0
  store i32 0, ptr %value, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 1
  %arrayidx5 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 0
  %next6 = getelementptr inbounds %struct.node, ptr %arrayidx5, i32 0, i32 1
  store ptr %arrayidx4, ptr %next6, align 8
  %arrayidx7 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 2
  %arrayidx8 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 1
  %next9 = getelementptr inbounds %struct.node, ptr %arrayidx8, i32 0, i32 1
  store ptr %arrayidx7, ptr %next9, align 8
  %arrayidx10 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 3
  %arrayidx11 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 2
  %next12 = getelementptr inbounds %struct.node, ptr %arrayidx11, i32 0, i32 1
  store ptr %arrayidx10, ptr %next12, align 8
  %arrayidx13 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 0
  %call = call i32 @ll_has_cycle(ptr noundef %arrayidx13)
  %tobool = icmp ne i32 %call, 0
  %4 = zext i1 %tobool to i64
  %cond = select i1 %tobool, ptr @.str.1, ptr @.str.2
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef %cond)
  %arrayidx15 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 5
  %arrayidx16 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 4
  %next17 = getelementptr inbounds %struct.node, ptr %arrayidx16, i32 0, i32 1
  store ptr %arrayidx15, ptr %next17, align 8
  %arrayidx18 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 6
  %arrayidx19 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 5
  %next20 = getelementptr inbounds %struct.node, ptr %arrayidx19, i32 0, i32 1
  store ptr %arrayidx18, ptr %next20, align 8
  %arrayidx21 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 7
  %arrayidx22 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 6
  %next23 = getelementptr inbounds %struct.node, ptr %arrayidx22, i32 0, i32 1
  store ptr %arrayidx21, ptr %next23, align 8
  %arrayidx24 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 8
  %arrayidx25 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 7
  %next26 = getelementptr inbounds %struct.node, ptr %arrayidx25, i32 0, i32 1
  store ptr %arrayidx24, ptr %next26, align 8
  %arrayidx27 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 9
  %arrayidx28 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 8
  %next29 = getelementptr inbounds %struct.node, ptr %arrayidx28, i32 0, i32 1
  store ptr %arrayidx27, ptr %next29, align 8
  %arrayidx30 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 10
  %arrayidx31 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 9
  %next32 = getelementptr inbounds %struct.node, ptr %arrayidx31, i32 0, i32 1
  store ptr %arrayidx30, ptr %next32, align 8
  %arrayidx33 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 4
  %arrayidx34 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 10
  %next35 = getelementptr inbounds %struct.node, ptr %arrayidx34, i32 0, i32 1
  store ptr %arrayidx33, ptr %next35, align 8
  %arrayidx36 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 4
  %call37 = call i32 @ll_has_cycle(ptr noundef %arrayidx36)
  %tobool38 = icmp ne i32 %call37, 0
  %5 = zext i1 %tobool38 to i64
  %cond39 = select i1 %tobool38, ptr @.str.1, ptr @.str.2
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %cond39)
  %arrayidx41 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 12
  %arrayidx42 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 11
  %next43 = getelementptr inbounds %struct.node, ptr %arrayidx42, i32 0, i32 1
  store ptr %arrayidx41, ptr %next43, align 8
  %arrayidx44 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 13
  %arrayidx45 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 12
  %next46 = getelementptr inbounds %struct.node, ptr %arrayidx45, i32 0, i32 1
  store ptr %arrayidx44, ptr %next46, align 8
  %arrayidx47 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 14
  %arrayidx48 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 13
  %next49 = getelementptr inbounds %struct.node, ptr %arrayidx48, i32 0, i32 1
  store ptr %arrayidx47, ptr %next49, align 8
  %arrayidx50 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 15
  %arrayidx51 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 14
  %next52 = getelementptr inbounds %struct.node, ptr %arrayidx51, i32 0, i32 1
  store ptr %arrayidx50, ptr %next52, align 8
  %arrayidx53 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 16
  %arrayidx54 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 15
  %next55 = getelementptr inbounds %struct.node, ptr %arrayidx54, i32 0, i32 1
  store ptr %arrayidx53, ptr %next55, align 8
  %arrayidx56 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 17
  %arrayidx57 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 16
  %next58 = getelementptr inbounds %struct.node, ptr %arrayidx57, i32 0, i32 1
  store ptr %arrayidx56, ptr %next58, align 8
  %arrayidx59 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 14
  %arrayidx60 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 17
  %next61 = getelementptr inbounds %struct.node, ptr %arrayidx60, i32 0, i32 1
  store ptr %arrayidx59, ptr %next61, align 8
  %arrayidx62 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 11
  %call63 = call i32 @ll_has_cycle(ptr noundef %arrayidx62)
  %tobool64 = icmp ne i32 %call63, 0
  %6 = zext i1 %tobool64 to i64
  %cond65 = select i1 %tobool64, ptr @.str.1, ptr @.str.2
  %call66 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, ptr noundef %cond65)
  %arrayidx67 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 18
  %arrayidx68 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 18
  %next69 = getelementptr inbounds %struct.node, ptr %arrayidx68, i32 0, i32 1
  store ptr %arrayidx67, ptr %next69, align 8
  %arrayidx70 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 18
  %call71 = call i32 @ll_has_cycle(ptr noundef %arrayidx70)
  %tobool72 = icmp ne i32 %call71, 0
  %7 = zext i1 %tobool72 to i64
  %cond73 = select i1 %tobool72, ptr @.str.1, ptr @.str.2
  %call74 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %cond73)
  %arrayidx75 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 20
  %arrayidx76 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 19
  %next77 = getelementptr inbounds %struct.node, ptr %arrayidx76, i32 0, i32 1
  store ptr %arrayidx75, ptr %next77, align 8
  %arrayidx78 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 21
  %arrayidx79 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 20
  %next80 = getelementptr inbounds %struct.node, ptr %arrayidx79, i32 0, i32 1
  store ptr %arrayidx78, ptr %next80, align 8
  %arrayidx81 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 22
  %arrayidx82 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 21
  %next83 = getelementptr inbounds %struct.node, ptr %arrayidx82, i32 0, i32 1
  store ptr %arrayidx81, ptr %next83, align 8
  %arrayidx84 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 23
  %arrayidx85 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 22
  %next86 = getelementptr inbounds %struct.node, ptr %arrayidx85, i32 0, i32 1
  store ptr %arrayidx84, ptr %next86, align 8
  %arrayidx87 = getelementptr inbounds [25 x %struct.node], ptr %nodes, i64 0, i64 19
  %call88 = call i32 @ll_has_cycle(ptr noundef %arrayidx87)
  %tobool89 = icmp ne i32 %call88, 0
  %8 = zext i1 %tobool89 to i64
  %cond90 = select i1 %tobool89, ptr @.str.1, ptr @.str.2
  %call91 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, ptr noundef %cond90)
  %call92 = call i32 @ll_has_cycle(ptr noundef null)
  %tobool93 = icmp ne i32 %call92, 0
  %9 = zext i1 %tobool93 to i64
  %cond94 = select i1 %tobool93, ptr @.str.1, ptr @.str.2
  %call95 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, ptr noundef %cond94)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @test_ll_has_cycle()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
