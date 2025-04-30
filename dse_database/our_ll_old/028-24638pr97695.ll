; ModuleID = './code/028-24638pr97695.c'
source_filename = "./code/028-24638pr97695.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@a = global ptr null, align 8
@c = global ptr @a, align 8
@d = global i32 0, align 4
@b = global i32 0, align 4
@e = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @f(i32 noundef %g, i32 noundef %h) #0 {
entry:
  %g.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  store i32 %g, ptr %g.addr, align 4
  store i32 %h, ptr %h.addr, align 4
  %0 = load i32, ptr %h.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %cond.true

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %g.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, ptr %h.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true, %entry
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load i32, ptr %g.addr, align 4
  %4 = load i32, ptr %h.addr, align 4
  %div = sdiv i32 %3, %4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %div, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @j() #0 {
entry:
  %call = call ptr @i(i32 noundef 1)
  %0 = load i32, ptr @d, align 4
  %call1 = call ptr @i(i32 noundef %0)
  %1 = load ptr, ptr @c, align 8
  store ptr %call1, ptr %1, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal ptr @i(i32 noundef %g) #0 {
entry:
  %retval = alloca ptr, align 8
  %g.addr = alloca i32, align 4
  store i32 %g, ptr %g.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr @e, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %while.body, label %while.end4

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %g.addr, align 4
  %call = call i32 @f(i32 noundef %1, i32 noundef 9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %if.then
  %2 = load i32, ptr @b, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  br label %while.cond1, !llvm.loop !5

while.end:                                        ; preds = %while.cond1
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !7

while.end4:                                       ; preds = %while.cond
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end4, %while.end
  %3 = load ptr, ptr %retval, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @j()
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
