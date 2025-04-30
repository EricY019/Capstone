; ModuleID = 'code/108-24251mapa.c'
source_filename = "code/108-24251mapa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [202 x i8] c"- FIGURE?, UMKC,XYZHello Folks,TFy!QJu ROo TNn(ROo)SLq SLq ULo+UHs UJq TNn*RPn/QPbEWS_JSWQAIJO^NBELPeHBFHT}TnALVlBLOFAkHFOuFETpHCStHAUFAgcEAelclcn^r^r\\tZvYxXyT|S~Pn SPm SOn TNn ULo0ULo#ULo-WHq!WFs XDt!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 10, i32* %c, align 4
  store i32 10, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = load i32, i32* %b, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* %b, align 4
  %add = add nsw i32 %0, 21
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [202 x i8], [202 x i8]* @.str, i64 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, i32* %a, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %cond.end, %for.body
  %2 = load i32, i32* %a, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, i32* %a, align 4
  %cmp = icmp sgt i32 %2, 64
  br i1 %cmp, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, i32* %c, align 4
  %inc4 = add nsw i32 %3, 1
  store i32 %inc4, i32* %c, align 4
  %cmp5 = icmp eq i32 %inc4, 90
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body3
  %4 = load i32, i32* %c, align 4
  %div = sdiv i32 %4, 9
  store i32 %div, i32* %c, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body3
  %5 = load i32, i32* %b, align 4
  %and = and i32 %5, 1
  %xor = xor i32 33, %and
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %xor, %cond.false ]
  %call = call i32 @putchar(i32 %cond)
  br label %for.cond1, !llvm.loop !4

for.end:                                          ; preds = %for.cond1
  br label %for.cond, !llvm.loop !6

for.end7:                                         ; preds = %for.cond
  ret i32 0
}

declare dso_local i32 @putchar(i32) #1

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
