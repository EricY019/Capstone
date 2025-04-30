; ModuleID = './code/275-6578pr94567.c'
source_filename = "./code/275-6578pr94567.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@a = global i32 1, align 4
@d = global i16 4, align 2
@f = global i16 2, align 2
@e = global i16 -11800, align 2
@g = global i16 0, align 2
@c = global i16 0, align 2
@b = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @foo(i32 noundef %i, i32 noundef %j) #0 {
entry:
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  store i32 %j, ptr %j.addr, align 4
  %0 = load i32, ptr %i.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %j.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr %i.addr, align 4
  %3 = load i32, ptr %j.addr, align 4
  %add = add nsw i32 %2, %3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %add, %cond.false ]
  ret i32 %cond
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i16, align 2
  store i32 0, ptr %retval, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load volatile i32, ptr @a, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i16, ptr @e, align 2
  store i16 %1, ptr %k, align 2
  %2 = load i16, ptr %k, align 2
  %conv = zext i16 %2 to i32
  %shr = ashr i32 %conv, 3
  %conv1 = trunc i32 %shr to i16
  store i16 %conv1, ptr @g, align 2
  %3 = load i16, ptr @g, align 2
  %conv2 = sext i16 %3 to i32
  %4 = load i16, ptr @f, align 2
  %conv3 = sext i16 %4 to i32
  %tobool4 = icmp ne i32 %conv3, 0
  br i1 %tobool4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body
  %5 = load i16, ptr @c, align 2
  %conv5 = sext i16 %5 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.body
  %6 = phi i1 [ true, %for.body ], [ %tobool6, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  %cmp = icmp slt i32 %conv2, %lor.ext
  %conv7 = zext i1 %cmp to i32
  %7 = load volatile i32, ptr @b, align 4
  %call = call i32 @foo(i32 noundef %conv7, i32 noundef %7)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  store i16 0, ptr @d, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  store volatile i32 0, ptr @a, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %8 = load i16, ptr @d, align 2
  %conv9 = sext i16 %8 to i32
  %cmp10 = icmp ne i32 %conv9, 4
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  call void @abort() #2
  unreachable

if.end13:                                         ; preds = %for.end
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare void @abort() #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
