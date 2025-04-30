; ModuleID = './code/393-24370paths.c'
source_filename = "./code/393-24370paths.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_001_expected_1() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_002_expected_2(i32 noundef %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_003_expected_4(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %b.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_004_expected_3(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end3

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %b.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %if.end3

if.end3:                                          ; preds = %if.then, %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_005_expected_4(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %b.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_006_expected_5(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end6

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %b.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i32, ptr %c.addr, align 4
  %tobool4 = icmp ne i32 %2, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then5, %if.end3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_007_expected_6(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %b.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %if.end6

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %c.addr, align 4
  %tobool4 = icmp ne i32 %2, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.then5, %if.end3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_008_expected_8(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %b.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %2 = load i32, ptr %c.addr, align 4
  %tobool4 = icmp ne i32 %2, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_009_expected_4(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end7

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %b.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  br label %if.end6

if.else3:                                         ; preds = %if.else
  %2 = load i32, ptr %c.addr, align 4
  %tobool4 = icmp ne i32 %2, 0
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else3
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_010_expected_3(i32 noundef %a) #0 {
entry:
  %a.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_011_expected_6(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb1, %sw.bb
  %1 = load i32, ptr %b.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_012_expected_5(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  br label %if.end

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb1
  %1 = load i32, ptr %b.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  br label %if.end

if.end:                                           ; preds = %sw.bb, %if.then, %sw.epilog
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_013_expected_5(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %0 = load i32, ptr %a.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %b.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %2 = load i32, ptr %b.addr, align 4
  %cmp1 = icmp eq i32 %2, 2
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %while.end

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %b.addr, align 4
  %cmp4 = icmp eq i32 %3, 3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  br label %while.end

if.end6:                                          ; preds = %if.end3
  %4 = load i32, ptr %a.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %a.addr, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %if.then, %if.then2, %if.then5, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_014_expected_4(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end8

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %b.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  br label %if.end8

if.else3:                                         ; preds = %if.else
  %2 = load i32, ptr %c.addr, align 4
  %tobool4 = icmp ne i32 %2, 0
  br i1 %tobool4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  br label %if.end

if.else6:                                         ; preds = %if.else3
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.then, %if.then2, %if.end7
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_015_expected_3(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %cmp1 = icmp sgt i32 %1, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_016_expected_8(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %a.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %if.end6

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %a.addr, align 4
  %cmp2 = icmp sgt i32 %2, 10
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %sw.bb1
  br label %if.end6

if.end4:                                          ; preds = %sw.bb1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end4, %if.end
  %3 = load i32, ptr %b.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then5, label %if.end6

if.then5:                                         ; preds = %sw.epilog
  br label %if.end6

if.end6:                                          ; preds = %if.then, %if.then3, %if.then5, %sw.epilog
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_017_expected_5(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %a.addr, align 4
  %cmp = icmp sgt i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.then, %sw.bb2, %sw.default, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_018_expected_7(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  br label %if.end4

sw.bb1:                                           ; preds = %entry
  %1 = load i32, ptr %a.addr, align 4
  %cmp = icmp sgt i32 %1, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  br label %if.end4

if.end:                                           ; preds = %sw.bb1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %if.end4

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end
  %2 = load i32, ptr %b.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %sw.epilog
  br label %if.end4

if.end4:                                          ; preds = %sw.bb, %if.then, %sw.bb2, %if.then3, %sw.epilog
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_019_expected_4(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %cmp = icmp sgt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %1 = load i32, ptr %a.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %b.addr, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %if.then2, %while.cond
  br label %if.end3

if.end3:                                          ; preds = %while.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_020_expected_7(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  %cmp = icmp sgt i32 %0, 10
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.then7, %if.then4, %if.then2, %if.then
  %1 = load i32, ptr %a.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %b.addr, align 4
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !9

if.end:                                           ; preds = %while.body
  %3 = load i32, ptr %b.addr, align 4
  %cmp3 = icmp eq i32 %3, 2
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %while.cond, !llvm.loop !9

if.end5:                                          ; preds = %if.end
  %4 = load i32, ptr %b.addr, align 4
  %cmp6 = icmp eq i32 %4, 3
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end5
  br label %while.cond, !llvm.loop !9

if.end8:                                          ; preds = %if.end5
  %5 = load i32, ptr %b.addr, align 4
  %cmp9 = icmp eq i32 %5, 2
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end8
  br label %while.end

if.end11:                                         ; preds = %if.end8
  br label %if.end12

while.end:                                        ; preds = %if.then10, %while.cond
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %while.end, %entry
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_021_expected_7(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %b.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %a.addr, align 4
  switch i32 %1, label %sw.default3 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %while.body
  br label %while.end

sw.bb1:                                           ; preds = %while.body
  %2 = load i32, ptr %a.addr, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb2
  ]

sw.bb2:                                           ; preds = %sw.bb1
  br label %while.end

sw.default:                                       ; preds = %sw.bb1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %sw.epilog4

sw.default3:                                      ; preds = %while.body
  br label %sw.epilog4

sw.epilog4:                                       ; preds = %sw.default3, %sw.epilog
  %3 = load i32, ptr %b.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog4
  %4 = load i32, ptr %b.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %b.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog4
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %sw.bb, %sw.bb2, %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_022_expected_10(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %b.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %b.addr, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %sw.bb1
  br label %sw.epilog

if.end4:                                          ; preds = %sw.bb1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end4, %if.then3, %if.end, %if.then
  %3 = load i32, ptr %b.addr, align 4
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %sw.epilog
  %4 = load i32, ptr %b.addr, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %b.addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %sw.epilog
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_023_expected_3(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %b.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_024_expected_5(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %b.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %2 = load i32, ptr %c.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_025_expected_5(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %b.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  %2 = load i32, ptr %c.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end3
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_026_expected_9(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  br label %if.end8

sw.bb1:                                           ; preds = %entry
  br label %if.end8

sw.bb2:                                           ; preds = %entry
  br label %if.end8

sw.bb3:                                           ; preds = %entry
  br label %if.end8

sw.bb4:                                           ; preds = %entry
  br label %if.end8

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %1 = load i32, ptr %b.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %c.addr, align 4
  %tobool5 = icmp ne i32 %2, 0
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end
  br label %if.end8

if.else7:                                         ; preds = %if.end
  br label %if.end8

if.end8:                                          ; preds = %sw.bb, %sw.bb1, %sw.bb2, %sw.bb3, %sw.bb4, %if.else7, %if.then6
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_027_expected_24(i32 noundef %a, i32 noundef %b, i32 noundef %c) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  store i32 %c, ptr %c.addr, align 4
  %0 = load i32, ptr %a.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %b.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %c.addr, align 4
  %tobool5 = icmp ne i32 %2, 0
  br i1 %tobool5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.end
  br label %if.end8

if.else7:                                         ; preds = %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.else7, %if.then6
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @path_028_expected_2(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4
  %1 = load i32, ptr %y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %x, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %x, align 4
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr %x, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @path_029_expected_2(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %x, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %x, align 4
  %1 = load i32, ptr %y.addr, align 4
  %cmp = icmp slt i32 %inc, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !12

while.end:                                        ; preds = %while.cond
  %2 = load i32, ptr %x, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @path_030_expected_6(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 0, ptr %x, align 4
  %0 = load i32, ptr %y.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 10, label %sw.bb
    i32 9, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 1, ptr %x, align 4
  br label %sw.bb1

sw.bb1:                                           ; preds = %entry, %sw.bb
  %1 = load i32, ptr %y.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1
  %2 = load i32, ptr %x, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %x, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i32 17, ptr %x, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry, %if.end
  %3 = load i32, ptr %x, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @path_031_expected_1(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 0, ptr %x, align 4
  %0 = load i32, ptr %y.addr, align 4
  switch i32 %0, label %sw.epilog [
  ]

sw.epilog:                                        ; preds = %entry
  %1 = load i32, ptr %x, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @path_032_expected_1(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 0, ptr %x, align 4
  %0 = load i32, ptr %y.addr, align 4
  switch i32 %0, label %sw.epilog [
  ]

sw.epilog:                                        ; preds = %entry
  %1 = load i32, ptr %x, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @path_033_expected_2(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 0, ptr %x, align 4
  %0 = load i32, ptr %y.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %x, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %x, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry
  %2 = load i32, ptr %x, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @path_034_expected_2(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  %0 = load i32, ptr %y.addr, align 4
  store i32 %0, ptr %x, align 4
  %1 = load i32, ptr %x, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %x, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @path_035_expected_2(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4
  %1 = load i32, ptr %y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %x, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %x, align 4
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  %3 = load i32, ptr %x, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @path_036_expected_2(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 0, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4
  %1 = load i32, ptr %y.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.end

for.inc:                                          ; No predecessors!
  %2 = load i32, ptr %x, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %x, align 4
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.body, %for.cond
  %3 = load i32, ptr %x, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @path_037_expected_3(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  store i32 0, ptr %x, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 0, ptr %x, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load i32, ptr %x, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_038_expected_1(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %y.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %y.addr, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_039_expected_1(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  br i1 false, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = load i32, ptr %y.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %y.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @path_040_expected_1(i32 noundef %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  store i32 %y, ptr %y.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %y.addr, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %y.addr, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
