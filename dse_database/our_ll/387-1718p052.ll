; ModuleID = 'code/387-1718p052.c'
source_filename = "code/387-1718p052.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %x = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 100, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %x, align 4
  %mul = mul nsw i32 %1, 2
  %call = call i32 @same_digits(i32 %0, i32 %mul)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %x, align 4
  %mul1 = mul nsw i32 %3, 3
  %call2 = call i32 @same_digits(i32 %2, i32 %mul1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true4, label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %x, align 4
  %mul5 = mul nsw i32 %5, 4
  %call6 = call i32 @same_digits(i32 %4, i32 %mul5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true8, label %if.end

land.lhs.true8:                                   ; preds = %land.lhs.true4
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %x, align 4
  %mul9 = mul nsw i32 %7, 5
  %call10 = call i32 @same_digits(i32 %6, i32 %mul9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true12, label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %8 = load i32, i32* %x, align 4
  %9 = load i32, i32* %x, align 4
  %mul13 = mul nsw i32 %9, 6
  %call14 = call i32 @same_digits(i32 %8, i32 %mul13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true12
  %10 = load i32, i32* %x, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %for.end

if.end:                                           ; preds = %land.lhs.true12, %land.lhs.true8, %land.lhs.true4, %land.lhs.true, %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %x, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  %12 = load i32, i32* %retval, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @same_digits(i32 %a, i32 %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %digits = alloca [10 x i32], align 16
  %goal = alloca [10 x i32], align 16
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %arraydecay = getelementptr inbounds [10 x i32], [10 x i32]* %digits, i64 0, i64 0
  %0 = bitcast i32* %arraydecay to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false)
  %arraydecay1 = getelementptr inbounds [10 x i32], [10 x i32]* %goal, i64 0, i64 0
  %1 = bitcast i32* %arraydecay1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %a.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %a.addr, align 4
  %rem = srem i32 %3, 10
  %idxprom = sext i32 %rem to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %digits, i64 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %a.addr, align 4
  %div = sdiv i32 %5, 10
  store i32 %div, i32* %a.addr, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %6 = load i32, i32* %b.addr, align 4
  %cmp3 = icmp sgt i32 %6, 0
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %7 = load i32, i32* %b.addr, align 4
  %rem5 = srem i32 %7, 10
  %idxprom6 = sext i32 %rem5 to i64
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %digits, i64 0, i64 %idxprom6
  %8 = load i32, i32* %arrayidx7, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %arrayidx7, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %9 = load i32, i32* %b.addr, align 4
  %div9 = sdiv i32 %9, 10
  store i32 %div9, i32* %b.addr, align 4
  br label %for.cond2, !llvm.loop !6

for.end10:                                        ; preds = %for.cond2
  %arraydecay11 = getelementptr inbounds [10 x i32], [10 x i32]* %digits, i64 0, i64 0
  %10 = bitcast i32* %arraydecay11 to i8*
  %arraydecay12 = getelementptr inbounds [10 x i32], [10 x i32]* %goal, i64 0, i64 0
  %11 = bitcast i32* %arraydecay12 to i8*
  %call = call i32 @memcmp(i8* %10, i8* %11, i64 10) #4
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @memcmp(i8*, i8*, i64) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
