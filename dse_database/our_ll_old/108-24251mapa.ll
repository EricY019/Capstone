; ModuleID = './code/108-24251mapa.c'
source_filename = "./code/108-24251mapa.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [202 x i8] c"- FIGURE?, UMKC,XYZHello Folks,TFy!QJu ROo TNn(ROo)SLq SLq ULo+UHs UJq TNn*RPn/QPbEWS_JSWQAIJO^NBELPeHBFHT}TnALVlBLOFAkHFOuFETpHCStHAUFAgcEAelclcn^r^r\\tZvYxXyT|S~Pn SPm SOn TNn ULo0ULo#ULo-WHq!WFs XDt!\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 10, ptr %c, align 4
  store i32 10, ptr %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = load i32, ptr %b, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %b, align 4
  %add = add nsw i32 %0, 21
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [202 x i8], ptr @.str, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %1 to i32
  store i32 %conv, ptr %a, align 4
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %cond.end, %for.body
  %2 = load i32, ptr %a, align 4
  %dec = add nsw i32 %2, -1
  store i32 %dec, ptr %a, align 4
  %cmp = icmp sgt i32 %2, 64
  br i1 %cmp, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %c, align 4
  %inc4 = add nsw i32 %3, 1
  store i32 %inc4, ptr %c, align 4
  %cmp5 = icmp eq i32 %inc4, 90
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body3
  %4 = load i32, ptr %c, align 4
  %div = sdiv i32 %4, 9
  store i32 %div, ptr %c, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body3
  %5 = load i32, ptr %b, align 4
  %and = and i32 %5, 1
  %xor = xor i32 33, %and
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div, %cond.true ], [ %xor, %cond.false ]
  %call = call i32 @putchar(i32 noundef %cond)
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.cond, !llvm.loop !7

for.end7:                                         ; preds = %for.cond
  ret i32 0
}

declare i32 @putchar(i32 noundef) #1

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
